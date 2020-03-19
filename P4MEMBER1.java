package jspexp.z01_vo;
import java.util.Date;

public class P4MEMBER {

	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private String mem_profileimg;
	private String mem_nick;
	private String mem_addr;
	private String mem_email;
	private String mem_phone;
	private Date mem_birth;
	private String mem_grade;
	private int mem_emoney;
	private int mem_point;
	private String mem_curr;
	private String mem_introducer;
	
	public P4MEMBER(String mem_id, String mem_pw) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
	}

	public P4MEMBER () {
		
	}

	public P4MEMBER(String mem_id, String mem_pw, String mem_name, String mem_profileimg, String mem_nick,
			String mem_addr, String mem_email, String mem_phone, Date mem_birth, String mem_grade, int mem_emoney,
			int mem_point, String mem_curr, String mem_introducer) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_profileimg = mem_profileimg;
		this.mem_nick = mem_nick;
		this.mem_addr = mem_addr;
		this.mem_email = mem_email;
		this.mem_phone = mem_phone;
		this.mem_birth = mem_birth;
		this.mem_grade = mem_grade;
		this.mem_emoney = mem_emoney;
		this.mem_point = mem_point;
		this.mem_curr = mem_curr;
		this.mem_introducer = mem_introducer;
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

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public String getMem_profileimg() {
		return mem_profileimg;
	}

	public void setMem_profileimg(String mem_profileimg) {
		this.mem_profileimg = mem_profileimg;
	}

	public String getMem_nick() {
		return mem_nick;
	}

	public void setMem_nick(String mem_nick) {
		this.mem_nick = mem_nick;
	}

	public String getMem_addr() {
		return mem_addr;
	}

	public void setMem_addr(String mem_addr) {
		this.mem_addr = mem_addr;
	}

	public String getMem_email() {
		return mem_email;
	}

	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public String getMem_phone() {
		return mem_phone;
	}

	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}

	public Date getMem_birth() {
		return mem_birth;
	}

	public void setMem_birth(Date mem_birth) {
		this.mem_birth = mem_birth;
	}

	public String getMem_grade() {
		return mem_grade;
	}

	public void setMem_grade(String mem_grade) {
		this.mem_grade = mem_grade;
	}

	public int getMem_emoney() {
		return mem_emoney;
	}

	public void setMem_emoney(int mem_emoney) {
		this.mem_emoney = mem_emoney;
	}

	public int getMem_point() {
		return mem_point;
	}

	public void setMem_point(int mem_point) {
		this.mem_point = mem_point;
	}

	public String getMem_curr() {
		return mem_curr;
	}

	public void setMem_curr(String mem_curr) {
		this.mem_curr = mem_curr;
	}

	public String getMem_introducer() {
		return mem_introducer;
	}

	public void setMem_introducer(String mem_introducer) {
		this.mem_introducer = mem_introducer;
	}
	
	
	
}
