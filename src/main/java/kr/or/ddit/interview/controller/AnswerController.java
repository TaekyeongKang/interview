package kr.or.ddit.interview.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.microsoft.cognitiveservices.speech.*;
import com.microsoft.cognitiveservices.speech.audio.AudioConfig;

import kr.or.ddit.interview.fileUpload.FileUploadUtil;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

@RequestMapping("/answer")
@Controller
public class AnswerController {
	
	
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
	
}
