package kr.or.ddit.interview.model;

public class MatchingVO {
	private int talentSq;
	private int keywordSq;
	public int getTalentSq() {
		return talentSq;
	}
	public void setTalentSq(int talentSq) {
		this.talentSq = talentSq;
	}
	public int getKeywordSq() {
		return keywordSq;
	}
	public void setKeywordSq(int keywordSq) {
		this.keywordSq = keywordSq;
	}
	@Override
	public String toString() {
		return "MatchingVO [talentSq=" + talentSq + ", keywordSq=" + keywordSq + "]";
	}
	
	
}
