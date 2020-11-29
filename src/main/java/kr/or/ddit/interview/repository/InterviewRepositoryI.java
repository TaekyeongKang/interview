package kr.or.ddit.interview.repository;

import kr.or.ddit.interview.model.HabitAnalysisVO;
import kr.or.ddit.interview.model.RepetAnalysisVO;

public interface InterviewRepositoryI {

	int insertHabit(Object habitAnalysisVO);

	int insertRepet(Object repetAnalysisVO);

}
