package ZENTAL.z01_vo;

public class Userinfo {
	private String mem_id; 
	private String mem_name;
	private String mem_grade;
	private String mem_curr;
	public Userinfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Userinfo(String mem_id, String mem_name, String mem_grade, String mem_curr) {
		super();
		this.mem_id = mem_id;
		this.mem_name = mem_name;
		this.mem_grade = mem_grade;
		this.mem_curr = mem_curr;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_grade() {
		return mem_grade;
	}
	public void setMem_grade(String mem_grade) {
		this.mem_grade = mem_grade;
	}
	public String getMem_curr() {
		return mem_curr;
	}
	public void setMem_curr(String mem_curr) {
		this.mem_curr = mem_curr;
	}
}
