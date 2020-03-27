package zental;

public class Userinfo {
	private String MEM_ID;
	private String MEM_NAME;
	private String MEM_GRADE;
	private String MEM_CURR;
	private String MEM_PW;
	private String MEM_EMAIL;
	public Userinfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Userinfo(String mEM_ID, String mEM_NAME, String mEM_GRADE, String mEM_CURR) {
		super();
		MEM_ID = mEM_ID;
		MEM_NAME = mEM_NAME;
		MEM_GRADE = mEM_GRADE;
		MEM_CURR = mEM_CURR;
	}
	public Userinfo(String mEM_PW) {
		super();
		MEM_PW = mEM_PW;
	}
	
	public Userinfo(String mEM_ID, String mEM_NAME, String mEM_EMAIL) {
		super();
		MEM_ID = mEM_ID;
		MEM_NAME = mEM_NAME;
		MEM_EMAIL = mEM_EMAIL;
	}
	
	public String getMEM_EMAIL() {
		return MEM_EMAIL;
	}
	public void setMEM_EMAIL(String mEM_EMAIL) {
		MEM_EMAIL = mEM_EMAIL;
	}
	public String getMEM_PW() {
		return MEM_PW;
	}
	public void setMEM_PW(String mEM_PW) {
		MEM_PW = mEM_PW;
	}
	public String getMEM_ID() {
		return MEM_ID;
	}
	public void setMEM_ID(String mEM_ID) {
		MEM_ID = mEM_ID;
	}
	public String getMEM_NAME() {
		return MEM_NAME;
	}
	public void setMEM_NAME(String mEM_NAME) {
		MEM_NAME = mEM_NAME;
	}
	public String getMEM_GRADE() {
		return MEM_GRADE;
	}
	public void setMEM_GRADE(String mEM_GRADE) {
		MEM_GRADE = mEM_GRADE;
	}
	public String getMEM_CURR() {
		return MEM_CURR;
	}
	public void setMEM_CURR(String mEM_CURR) {
		MEM_CURR = mEM_CURR;
	}
}
