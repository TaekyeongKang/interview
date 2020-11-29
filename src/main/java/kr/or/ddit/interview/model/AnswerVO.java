package kr.or.ddit.interview.model;

public class AnswerVO {
	
	private int ansSq;
	private String ansContent;
	private String videoPath;
	private int ansTime;
	private int ansSpeed;
	private int questSq;
	public int getAnsSq() {
		return ansSq;
	}
	public void setAnsSq(int ansSq) {
		this.ansSq = ansSq;
	}
	public String getAnsContent() {
		return ansContent;
	}
	public void setAnsContent(String ansContent) {
		this.ansContent = ansContent;
	}
	public String getVideoPath() {
		return videoPath;
	}
	public void setVideoPath(String videoPath) {
		this.videoPath = videoPath;
	}
	public int getAnsTime() {
		return ansTime;
	}
	public void setAnsTime(int ansTime) {
		this.ansTime = ansTime;
	}
	public int getAnsSpeed() {
		return ansSpeed;
	}
	public void setAnsSpeed(int ansSpeed) {
		this.ansSpeed = ansSpeed;
	}
	public int getQuestSq() {
		return questSq;
	}
	public void setQuestSq(int questSq) {
		this.questSq = questSq;
	}
	@Override
	public String toString() {
		return "AnswerVO [ansSq=" + ansSq + ", ansContent=" + ansContent + ", videoPath=" + videoPath + ", ansTime="
				+ ansTime + ", ansSpeed=" + ansSpeed + ", questSq=" + questSq + "]";
	}
	
	
	

}
