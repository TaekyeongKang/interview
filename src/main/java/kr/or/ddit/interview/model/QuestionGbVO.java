package kr.or.ddit.interview.model;

public class QuestionGbVO {
	private int quesetionGbSq;
	private String questGbContent;
	public int getQuesetionGbSq() {
		return quesetionGbSq;
	}
	public void setQuesetionGbSq(int quesetionGbSq) {
		this.quesetionGbSq = quesetionGbSq;
	}
	public String getQuestGbContent() {
		return questGbContent;
	}
	public void setQuestGbContent(String questGbContent) {
		this.questGbContent = questGbContent;
	}
	@Override
	public String toString() {
		return "QuestionGbVO [quesetionGbSq=" + quesetionGbSq + ", questGbContent=" + questGbContent + "]";
	}
	
	

}
