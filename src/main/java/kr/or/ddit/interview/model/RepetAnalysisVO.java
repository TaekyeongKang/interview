package kr.or.ddit.interview.model;

public class RepetAnalysisVO {

	private int repetAnalysisSq;
	private String repetContent;
	public String getRepetContent() {
		return repetContent;
	}
	public void setRepetContent(String repetContent) {
		this.repetContent = repetContent;
	}
	private int repetCount;
	private int ansSq;
	public int getRepetAnalysisSq() {
		return repetAnalysisSq;
	}
	public void setRepetAnalysisSq(int repetAnalysisSq) {
		this.repetAnalysisSq = repetAnalysisSq;
	}
	public int getRepetCount() {
		return repetCount;
	}
	public void setRepetCount(int repetCount) {
		this.repetCount = repetCount;
	}
	public int getAnsSq() {
		return ansSq;
	}
	public void setAnsSq(int ansSq) {
		this.ansSq = ansSq;
	}
	@Override
	public String toString() {
		return "RepetAnalysisVO [repetAnalysisSq=" + repetAnalysisSq + ", repetContent=" + repetContent
				+ ", repetCount=" + repetCount + ", ansSq=" + ansSq + "]";
	}
	
	
}
