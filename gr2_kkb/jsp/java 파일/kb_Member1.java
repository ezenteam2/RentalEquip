package ZENTAL;

public class kb_Member1 {
	private String id;
	private String nick;
	private int Point;
	private String grade;
	private String grade_img;
	
	public kb_Member1() {};
	public kb_Member1(String id, String nick, int Point, String grade, String grade_img) {
		this.id = id;
		this.nick = id;
		this.Point = Point;
		this.grade = grade;
		this.grade_img = grade_img;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public int getPoint() {
		return Point;
	}
	public void setPoint(int point) {
		Point = point;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getGrade_img() {
		return grade_img;
	}
	public void setGrade_img(String grade_img) {
		this.grade_img = grade_img;
	}
	
}
