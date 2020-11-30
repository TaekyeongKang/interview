package kr.or.ddit.interview.repository;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("interviewRepository")
public class InterviewRepository extends EgovAbstractDAO implements InterviewRepositoryI {


	@Override
	public int insertHabit(Object habitAnalysisVO) {
		return (int) insert("habit.insertHabit", habitAnalysisVO);
	}


	@Override
	public int insertRepet(Object repetAnalysisVO) {
		return (int) insert("repet.insertRepet", repetAnalysisVO);
	}

}
