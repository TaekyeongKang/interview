package kr.or.ddit.interview.model;

public class KeywordAnalysisVO {
	private int ansSq;
	private int keywordSq;
	private int keywordCount;
	public int getAnsSq() {
		return ansSq;
	}
	public void setAnsSq(int ansSq) {
		this.ansSq = ansSq;
	}
	public int getKeywordSq() {
		return keywordSq;
	}
	public void setKeywordSq(int keywordSq) {
		this.keywordSq = keywordSq;
	}
	public int getKeywordCount() {
		return keywordCount;
	}
	public void setKeywordCount(int keywordCount) {
		this.keywordCount = keywordCount;
	}
	@Override
	public String toString() {
		return "KeywordAnalysisVO [ansSq=" + ansSq + ", keywordSq=" + keywordSq + ", keywordCount=" + keywordCount
				+ "]";
	}
	
}
