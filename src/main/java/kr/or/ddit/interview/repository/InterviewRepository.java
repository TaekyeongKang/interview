package kr.or.ddit.interview.repository;

import org.springframework.stereotype.Repository;

import kr.or.ddit.interview.model.HabitAnalysisVO;
import kr.or.ddit.interview.model.RepetAnalysisVO;

@Repository("interviewRepository")
public class InterviewRepository implements InterviewRepositoryI{


	@Override
	public int insertHabit(Object habitAnalysisVO) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertRepet(Object repetAnalysisVO) {
		// TODO Auto-generated method stub
		return 0;
	}

}
