package kr.or.ddit.interview.model;

public class SampleQuestionVO {
	private int sampleQuestSq;
	private String sampleQuestContent;
	private String sampleQuestSt;
	private int questGbSq;
	public int getSampleQuestSq() {
		return sampleQuestSq;
	}
	public void setSampleQuestSq(int sampleQuestSq) {
		this.sampleQuestSq = sampleQuestSq;
	}
	public String getSampleQuestContent() {
		return sampleQuestContent;
	}
	public void setSampleQuestContent(String sampleQuestContent) {
		this.sampleQuestContent = sampleQuestContent;
	}
	public String getSampleQuestSt() {
		return sampleQuestSt;
	}
	public void setSampleQuestSt(String sampleQuestSt) {
		this.sampleQuestSt = sampleQuestSt;
	}
	public int getQuestGbSq() {
		return questGbSq;
	}
	public void setQuestGbSq(int questGbSq) {
		this.questGbSq = questGbSq;
	}
	@Override
	public String toString() {
		return "SampleQuestionVO [sampleQuestSq=" + sampleQuestSq + ", sampleQuestContent=" + sampleQuestContent
				+ ", sampleQuestSt=" + sampleQuestSt + ", questGbSq=" + questGbSq + "]";
	}
	
	
}
