package ZENTAL;

public class kb_MemberUpdate {
	private String id;
	private String mem_profileImg;
	private String nick;
	private String addr;
	private String email;
	private String phone;
	
	public kb_MemberUpdate() {};
	public kb_MemberUpdate(String id, String mem_profileImg, String nick, String addr, String email, String phone) {
		this.id = id;
		this.mem_profileImg  = mem_profileImg;
		this.nick = nick;
		this.addr = addr;
		this.email = email;
		this.phone = phone;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMem_profileImg() {
		return mem_profileImg;
	}
	public void setMem_profileImg(String mem_profileImg) {
		this.mem_profileImg = mem_profileImg;
	}
	public String getNick() {
		return nick;
	}
	public void setNick(String nick) {
		this.nick = nick;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
}
