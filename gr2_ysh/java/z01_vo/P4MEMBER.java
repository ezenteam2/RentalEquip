package ZENTAL.z01_vo;
import java.util.Date;

public class P4MEMBER {
	private String mem_id;
	private String mem_pw;
	public P4MEMBER() {
		super();
		// TODO Auto-generated constructor stub
	}
	public P4MEMBER(String mem_id, String mem_pw) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
}
