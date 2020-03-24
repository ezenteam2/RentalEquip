package zental;

public class UserinfoBean {
	private String MEM_ID;
	private String MEM_PW;
	private String MEM_NAME;
	private String MEM_NICK;
	private String MEM_ADDR;
	private String MEM_PHONE;
	public UserinfoBean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserinfoBean(String MEM_ID, String MEM_PW, String MEM_NAME, String MEM_NICK, String MEM_ADDR,
			String MEM_PHONE) {
		super();
		this.MEM_ID = MEM_ID;
		this.MEM_PW = MEM_PW;
		this.MEM_NAME = MEM_NAME;
		this.MEM_NICK = MEM_NICK;
		this.MEM_ADDR = MEM_ADDR;
		this.MEM_PHONE = MEM_PHONE;
	}
	public String getMEM_ID() {
		return MEM_ID;
	}
	public void setMEM_ID(String MEM_ID) {
		this.MEM_ID = MEM_ID;
	}
	public String getMEM_PW() {
		return MEM_PW;
	}
	public void setMEM_PW(String MEM_PW) {
		this.MEM_PW = MEM_PW;
	}
	public String getMEM_NAME() {
		return MEM_NAME;
	}
	public void setMEM_NAME(String MEM_NAME) {
		this.MEM_NAME = MEM_NAME;
	}
	public String getMEM_NICK() {
		return MEM_NICK;
	}
	public void setMEM_NICK(String MEM_NICK) {
		this.MEM_NICK = MEM_NICK;
	}
	public String getMEM_ADDR() {
		return MEM_ADDR;
	}
	public void setMEM_ADDR(String MEM_ADDR) {
		this.MEM_ADDR = MEM_ADDR;
	}
	public String getMEM_PHONE() {
		return MEM_PHONE;
	}
	public void setMEM_PHONE(String MEM_PHONE) {
		this.MEM_PHONE = MEM_PHONE;
	}
}
