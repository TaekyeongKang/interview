package kr.or.ddit.interview.service;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import kr.or.ddit.interview.repository.InterviewRepositoryI;


@Service("interviewService")
public class InterviewService implements InterviewServiceI{

	@Resource(name="interviewRepository")
	private InterviewRepositoryI interviewRepository;
	

	@Override
	public int languageAnalysis(Map<String, List> languageAnalysisMap) {
		int insertHabitCnt = 0;
		int insertRepetCnt = 0;
		
		// 습관어 
		for(int i=0; i<languageAnalysisMap.get("habitList").size(); i++) {
			int insertCnt = interviewRepository.insertHabit(languageAnalysisMap.get("habitList").get(i));
			if(insertCnt==1) {
				insertHabitCnt += insertCnt;
			}
		}
		
		// 반복어
		for(int i=0; i<languageAnalysisMap.get("repetList").size(); i++) {
			int insertCnt = interviewRepository.insertRepet(languageAnalysisMap.get("repetList").get(i));
			if(insertCnt==1) {
				insertRepetCnt += insertCnt;
			}
		}
		
		if((insertHabitCnt+insertRepetCnt)==10) {
			return 1;
		}else {
			return 0;
		}
		
			
	}

}
