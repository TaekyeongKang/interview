package kr.or.ddit.interview.model;

public class HabitVO {

	private int habitSq;
	private String habitGb;
	private String habitSt;
	public int getHabitSq() {
		return habitSq;
	}
	public void setHabitSq(int habitSq) {
		this.habitSq = habitSq;
	}
	public String getHabitGb() {
		return habitGb;
	}
	public void setHabitGb(String habitGb) {
		this.habitGb = habitGb;
	}
	public String getHabitSt() {
		return habitSt;
	}
	public void setHabitSt(String habitSt) {
		this.habitSt = habitSt;
	}
	@Override
	public String toString() {
		return "HabitVO [habitSq=" + habitSq + ", habitGb=" + habitGb + ", habitSt=" + habitSt + "]";
	}
	
	
}
