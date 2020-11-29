package kr.or.ddit.interview.model;

public class HabitAnalysisVO {
	
	private int habitSq;
	private int ansSq;
	private int habitCount;
	public int getHabitSq() {
		return habitSq;
	}
	public void setHabitSq(int habitSq) {
		this.habitSq = habitSq;
	}
	public int getAnsSq() {
		return ansSq;
	}
	public void setAnsSq(int ansSq) {
		this.ansSq = ansSq;
	}
	public int getHabitCount() {
		return habitCount;
	}
	public void setHabitCount(int habitCount) {
		this.habitCount = habitCount;
	}
	@Override
	public String toString() {
		return "HabitAnalysisVO [habitSq=" + habitSq + ", ansSq=" + ansSq + ", habitCount=" + habitCount + "]";
	}
	
	

}
