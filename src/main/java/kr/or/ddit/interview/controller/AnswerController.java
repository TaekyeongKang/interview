package kr.or.ddit.interview.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.stringtemplate.v4.compiler.CodeGenerator.includeExpr_return;

import com.google.gson.Gson;
import com.microsoft.cognitiveservices.speech.*;
import com.microsoft.cognitiveservices.speech.audio.AudioConfig;
import com.mysql.fabric.xmlrpc.base.Array;

import kr.or.ddit.interview.fileUpload.FileUploadUtil;
import kr.or.ddit.interview.model.AnswerVO;
import kr.or.ddit.interview.model.HabitAnalysisVO;
import kr.or.ddit.interview.model.HabitVO;
import kr.or.ddit.interview.model.RepetAnalysisVO;
import kr.or.ddit.interview.model.WiseNLU.Morpheme;
import kr.or.ddit.interview.model.WiseNLU.NameEntity;
import kr.or.ddit.interview.service.InterviewServiceI;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Future;

import javax.annotation.Resource;

@RequestMapping("/answer")
@Controller
public class AnswerController {
	
	@Resource(name="interviewService")
	private InterviewServiceI interviewService;
	
	@RequestMapping("/text")
	public String text(MultipartHttpServletRequest mtfRequest) {
		
		System.out.println("text 컨트롤러");
		
		// 첨부파일 multipartFile 배열
		List<MultipartFile> answerFileList = mtfRequest.getFiles("answer");
		
		// 넘어온 답변 파일 경로를 담을 변수
		String atch_realPath = "";
		
		// 넘어온 답변 파일꺼내기
		for (MultipartFile answerFile : answerFileList) {
			if (answerFile.getSize() > 0) {
				String atch_uploadName = answerFile.getOriginalFilename();
				String extension = FileUploadUtil.getExtension(atch_uploadName);
				atch_realPath = "D:\\atchFiles\\" + UUID.randomUUID().toString() + "." + extension;
				try {
					answerFile.transferTo(new File(atch_realPath));
				} catch (IOException | IllegalStateException e) {
					e.printStackTrace();
				}
				
			}
		}

		
		try {
            // Replace below with your own subscription key
            String speechSubscriptionKey = "8e1d8a815cd34bd4b7fee2b71344ef49";
            // Replace below with your own service region (e.g., "westus").
            String serviceRegion = "koreacentral";

            int exitCode = 1;
            SpeechConfig config = SpeechConfig.fromSubscription(speechSubscriptionKey, serviceRegion);
            config.setSpeechRecognitionLanguage("ko-KR");
            assert(config != null);

            
            AudioConfig audioConfig = AudioConfig.fromWavFileInput(atch_realPath);
            SpeechRecognizer recognizer = new SpeechRecognizer(config, audioConfig);
            assert(recognizer != null);

            System.out.println("Say something...");

            Future<SpeechRecognitionResult> task = recognizer.recognizeOnceAsync();
            assert(task != null);

            SpeechRecognitionResult result = task.get();
            assert(result != null);

            if (result.getReason() == ResultReason.RecognizedSpeech) {
                System.out.println("We recognized: " + result.getText());
                exitCode = 0;
            }
            else if (result.getReason() == ResultReason.NoMatch) {
                System.out.println("NOMATCH: Speech could not be recognized.");
            }
            else if (result.getReason() == ResultReason.Canceled) {
                CancellationDetails cancellation = CancellationDetails.fromResult(result);
                System.out.println("CANCELED: Reason=" + cancellation.getReason());

                if (cancellation.getReason() == CancellationReason.Error) {
                    System.out.println("CANCELED: ErrorCode=" + cancellation.getErrorCode());
                    System.out.println("CANCELED: ErrorDetails=" + cancellation.getErrorDetails());
                    System.out.println("CANCELED: Did you update the subscription info?");
                }
            }

            recognizer.close();

            System.exit(exitCode);
        } catch (Exception ex) {
            System.out.println("Unexpected exception: " + ex.getMessage());

            assert(false);
            System.exit(1);
        }
		
		
		return "";
	}
	
	@RequestMapping("/language")
	public String language(String answer) {
		
		char[] answerArr = answer.toCharArray();
		// 습관어 사용 카운트
		List<Integer> habitAList = new ArrayList<>();
		List<Integer> habitUmList = new ArrayList<>();
		List<Integer> habitUList = new ArrayList<>();
		List<Integer> habitGuList = new ArrayList<>();
		List<Integer> habitJuList = new ArrayList<>();
		
		int answerArrLength = answerArr.length;
		for(int i = 0; i<answerArrLength; i++) {
			if(answerArr[i]=='아') {
				habitAList.add(i);
			}else if(answerArr[i]=='음') {
				habitUmList.add(i);
			}else if(answerArr[i]=='어') {
				habitUList.add(i);
			}else if(answerArr[i]=='그') {
				habitGuList.add(i);
			}else if(answerArr[i]=='저') {
				habitJuList.add(i);
			}
			
		}
		
		// db에 보낼 answer객체 생성
		AnswerVO answerVO = new AnswerVO();
		answerVO.setAnsContent(answer);	// 스크립트 저장
		
		// db에 보낼 습관어 분석 객체 생성
		HabitAnalysisVO habitAAnalysisVO = new HabitAnalysisVO();
		habitAAnalysisVO.setAnsSq(1);
		habitAAnalysisVO.setHabitSq(1);
		habitAAnalysisVO.setHabitCount(habitAList.size());
		
		HabitAnalysisVO habitUmAnalysisVO = new HabitAnalysisVO();
		habitUmAnalysisVO.setAnsSq(1);
		habitUmAnalysisVO.setHabitSq(2);
		habitUmAnalysisVO.setHabitCount(habitUmList.size());
		
		HabitAnalysisVO habitUAnalysisVO = new HabitAnalysisVO();
		habitUAnalysisVO.setAnsSq(1);
		habitUAnalysisVO.setHabitSq(3);
		habitUAnalysisVO.setHabitCount(habitUList.size());
		
		HabitAnalysisVO habitGuAnalysisVO = new HabitAnalysisVO();
		habitGuAnalysisVO.setAnsSq(1);
		habitGuAnalysisVO.setHabitSq(4);
		habitGuAnalysisVO.setHabitCount(habitGuList.size());
		
		HabitAnalysisVO habitJuAnalysisVO = new HabitAnalysisVO();
		habitJuAnalysisVO.setAnsSq(1);
		habitJuAnalysisVO.setHabitSq(5);
		habitJuAnalysisVO.setHabitCount(habitJuList.size());
		
		List<HabitAnalysisVO> habitList = new ArrayList<>();
		habitList.add(habitAAnalysisVO);
		habitList.add(habitUmAnalysisVO);
		habitList.add(habitUAnalysisVO);
		habitList.add(habitGuAnalysisVO);
		habitList.add(habitJuAnalysisVO);
		
		
		
		
		// 언어 분석 기술 문어/구어 중 한가지만 선택해 사용
        // 언어 분석 기술(문어)
        String openApiURL = "http://aiopen.etri.re.kr:8000/WiseNLU";  
        // 언어 분석 기술(구어)
        //String openApiURL = "http://aiopen.etri.re.kr:8000/WiseNLU_spoken";         
        String accessKey = "d119ee9a-e502-4236-8f15-61ac9e8dad04";   // 발급받은 API Key
        String analysisCode = "ner";        // 언어 분석 코드
        String text = answer;           // 분석할 텍스트 데이터
        Gson gson = new Gson();
         
        // 언어 분석 기술(문어)
//        text += "윤동주(尹東柱, 1917년 12월 30일 ~ 1945년 2월 16일)는 한국의 독립운동가, 시인, 작가이다." +
//                "중국 만저우 지방 지린 성 연변 용정에서 출생하여 명동학교에서 수학하였고, 숭실중학교와 연희전문학교를 졸업하였다. 숭실중학교 때 처음 시를 발표하였고, 1939년 연희전문 2학년 재학 중 소년(少年) 지에 시를 발표하며 정식으로 문단에 데뷔했다." +
//                "일본 유학 후 도시샤 대학 재학 중 , 1943년 항일운동을 했다는 혐의로 일본 경찰에 체포되어 후쿠오카 형무소(福岡刑務所)에 투옥, 100여 편의 시를 남기고 27세의 나이에 옥중에서 요절하였다. 사인이 일본의 생체실험이라는 견해가 있고 그의 사후 일본군에 의한 마루타, 생체실험설이 제기되었으나 불확실하다. 사후에 그의 시집 《하늘과 바람과 별과 시》가 출간되었다." +
//                "일제 강점기 후반의 양심적 지식인으로 인정받았으며, 그의 시는 일제와 조선총독부에 대한 비판과 자아성찰 등을 소재로 하였다. 그의 친구이자 사촌인 송몽규 역시 독립운동에 가담하려다가 체포되어 일제의 생체 실험으로 의문의 죽음을 맞는다. 1990년대 후반 이후 그의 창씨개명 '히라누마'가 알려져 논란이 일기도 했다. 본명 외에 윤동주(尹童柱), 윤주(尹柱)라는 필명도 사용하였다.";
        // 언어 분석 기술(구어)
        //text += "네 안녕하세요 홍길동 교숩니다"+;
         
        Map<String, Object> request = new HashMap<>();
        Map<String, String> argument = new HashMap<>();
 
        argument.put("analysis_code", analysisCode);
        argument.put("text", text);
 
        request.put("access_key", accessKey);
        request.put("argument", argument);
 
        URL url;
        Integer responseCode = null;
        String responBodyJson = null;
        Map<String, Object> responeBody = null;
 
        try {
            url = new URL(openApiURL);
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            con.setRequestMethod("POST");
            con.setDoOutput(true);
 
            DataOutputStream wr = new DataOutputStream(con.getOutputStream());
            wr.write(gson.toJson(request).getBytes("UTF-8"));
            wr.flush();
            wr.close();
 
            responseCode = con.getResponseCode();
            InputStream is = con.getInputStream();
            BufferedReader br = new BufferedReader(new InputStreamReader(is));
            StringBuffer sb = new StringBuffer();
 
            String inputLine = "";
            while ((inputLine = br.readLine()) != null) {
                sb.append(inputLine);
            }
            responBodyJson = sb.toString();
 
            // http 요청 오류 시 처리
            if ( responseCode != 200 ) {
                // 오류 내용 출력
                System.out.println("[error] " + responBodyJson);
//                return ;
            }
 
            responeBody = gson.fromJson(responBodyJson, Map.class);
            Integer result = ((Double) responeBody.get("result")).intValue();
            Map<String, Object> returnObject;
            List<Map> sentences;
 
            // 분석 요청 오류 시 처리
            if ( result != 0 ) {
 
                // 오류 내용 출력
                System.out.println("[error] " + responeBody.get("result"));
//                return ;
            }
 
            // 분석 결과 활용
            returnObject = (Map<String, Object>) responeBody.get("return_object");
            sentences = (List<Map>) returnObject.get("sentence");
 
            Map<String, Morpheme> morphemesMap = new HashMap<String, Morpheme>();
            Map<String, NameEntity> nameEntitiesMap = new HashMap<String, NameEntity>();
            List<Morpheme> morphemes = null;
            List<NameEntity> nameEntities = null;
 
            for( Map<String, Object> sentence : sentences ) {
                // 형태소 분석기 결과 수집 및 정렬
                List<Map<String, Object>> morphologicalAnalysisResult = (List<Map<String, Object>>) sentence.get("morp");
                for( Map<String, Object> morphemeInfo : morphologicalAnalysisResult ) {
                    String lemma = (String) morphemeInfo.get("lemma");
                    Morpheme morpheme = morphemesMap.get(lemma);
                    if ( morpheme == null ) {
                        morpheme = new Morpheme(lemma, (String) morphemeInfo.get("type"), 1);
                        morphemesMap.put(lemma, morpheme);
                    } else {
                        morpheme.count = morpheme.count + 1;
                    }
                }
 
                // 개체명 분석 결과 수집 및 정렬
                List<Map<String, Object>> nameEntityRecognitionResult = (List<Map<String, Object>>) sentence.get("NE");
                for( Map<String, Object> nameEntityInfo : nameEntityRecognitionResult ) {
                    String name = (String) nameEntityInfo.get("text");
                    NameEntity nameEntity = nameEntitiesMap.get(name);
                    if ( nameEntity == null ) {
                        nameEntity = new NameEntity(name, (String) nameEntityInfo.get("type"), 1);
                        nameEntitiesMap.put(name, nameEntity);
                    } else {
                        nameEntity.count = nameEntity.count + 1;
                    }
                }
            }
 
            if ( 0 < morphemesMap.size() ) {
                morphemes = new ArrayList<Morpheme>(morphemesMap.values());
                morphemes.sort( (morpheme1, morpheme2) -> {
                    return morpheme2.count - morpheme1.count;
                });
            }
 
            if ( 0 < nameEntitiesMap.size() ) {
                nameEntities = new ArrayList<NameEntity>(nameEntitiesMap.values());
                nameEntities.sort( (nameEntity1, nameEntity2) -> {
                    return nameEntity2.count - nameEntity1.count;
                });
            }
            
            
            // 반복어 리스트
            List<RepetAnalysisVO> repetList = new ArrayList<>();
            
            // 형태소들 중 명사들에 대해서 많이 노출된 순으로 출력 ( 최대 5개 )
            morphemes
                .stream()
                .filter(morpheme -> {
                    return morpheme.type.equals("NNG") ||
                            morpheme.type.equals("NNP") ||
                            morpheme.type.equals("NNB");
                })
                .limit(5)
                .forEach(morpheme -> {
                	// db에 보낼 반복어 객체 생성
                	RepetAnalysisVO repetAnalysisVO = new RepetAnalysisVO();
                	repetAnalysisVO.setAnsSq(1);
                	repetAnalysisVO.setRepetContent(morpheme.text);
                	repetAnalysisVO.setRepetCount(morpheme.count);
                	repetList.add(repetAnalysisVO);
                });
 
            Map<String, List> languageAnalysisMap = new HashMap<>();
            languageAnalysisMap.put("habitList", habitList);
            languageAnalysisMap.put("repetList", repetList);
            int insertCnt = interviewService.languageAnalysis(languageAnalysisMap);
            if(insertCnt ==1) {
            	return ""; // 잘 들어갔을 때 
            }
            
            
            /*
            // 형태소들 중 동사들에 대해서 많이 노출된 순으로 출력 ( 최대 5개 )
            System.out.println("");
            morphemes
                .stream()
                .filter(morpheme -> {
                    return morpheme.type.equals("VV");
                })
                .limit(5)
                .forEach(morpheme -> {
                    System.out.println("[동사] " + morpheme.text + " ("+morpheme.count+")" );
                });
 
            // 인식된 개채명들 많이 노출된 순으로 출력 ( 최대 5개 )
            System.out.println("");
            nameEntities
                .stream()
                .limit(5)
                .forEach(nameEntity -> {
                    System.out.println("[개체명] " + nameEntity.text + " ("+nameEntity.count+")" );
                });
                
                */
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        
        
        
        
		return""; // 잘 안들어갔을 때
	}
	
	
}
