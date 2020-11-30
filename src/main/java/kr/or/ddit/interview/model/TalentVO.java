package kr.or.ddit.interview.model;

public class TalentVO {
	private int talentSq;
	private String talentNm;
	private String talentSt;
	public int getTalentSq() {
		return talentSq;
	}
	public void setTalentSq(int talentSq) {
		this.talentSq = talentSq;
	}
	public String getTalentNm() {
		return talentNm;
	}
	public void setTalentNm(String talentNm) {
		this.talentNm = talentNm;
	}
	public String getTalentSt() {
		return talentSt;
	}
	public void setTalentSt(String talentSt) {
		this.talentSt = talentSt;
	}
	@Override
	public String toString() {
		return "TalentVO [talentSq=" + talentSq + ", talentNm=" + talentNm + ", talentSt=" + talentSt + "]";
	}
	
	
}
