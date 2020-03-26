package jspexp.z01_vo;

import java.util.Date;

public class UserCouponVO_ht {
	
	private int memcou_code;
	private int cou_code;
	private String mem_id;
	private String cou_title;
	private int cou_price;
	private Date memcou_sdate;
	private Date memcou_udate;
	public UserCouponVO_ht() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserCouponVO_ht(int memcou_code, int cou_code, String mem_id, Date memcou_sdate, Date memcou_udate) {
		super();
		this.memcou_code = memcou_code;
		this.cou_code = cou_code;
		this.mem_id = mem_id;
		this.memcou_sdate = memcou_sdate;
		this.memcou_udate = memcou_udate;
	}
	
	public int getMemcou_code() {
		return memcou_code;
	}
	public void setMemcou_code(int memcou_code) {
		this.memcou_code = memcou_code;
	}
	public int getCou_code() {
		return cou_code;
	}
	public void setCou_code(int cou_code) {
		this.cou_code = cou_code;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public Date getMemcou_sdate() {
		return memcou_sdate;
	}
	public void setMemcou_sdate(Date memcou_sdate) {
		this.memcou_sdate = memcou_sdate;
	}
	public Date getMemcou_udate() {
		return memcou_udate;
	}
	public void setMemcou_udate(Date memcou_udate) {
		this.memcou_udate = memcou_udate;
	}
	public UserCouponVO_ht(String cou_title, int cou_price, Date memcou_sdate) {
		super();
		this.cou_title = cou_title;
		this.cou_price = cou_price;
		this.memcou_sdate = memcou_sdate;
	}
	public String getCou_title() {
		return cou_title;
	}
	public void setCou_title(String cou_title) {
		this.cou_title = cou_title;
	}
	public int getCou_price() {
		return cou_price;
	}
	public void setCou_price(int cou_price) {
		this.cou_price = cou_price;
	}

	
	
	
}
