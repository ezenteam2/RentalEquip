package jspexp.z01_vo;

import java.util.Date;

public class AdminCategoryVO {

	private int cate_code;
	private Date cate_date;
	private String cate_title;
	private int cate_order;
	private String cate_img;
	public AdminCategoryVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AdminCategoryVO(int cate_code, Date cate_date, String cate_title, int cate_order, String cate_img) {
		super();
		this.cate_code = cate_code;
		this.cate_date = cate_date;
		this.cate_title = cate_title;
		this.cate_order = cate_order;
		this.cate_img = cate_img;
	}
	
	public AdminCategoryVO(String cate_title, int cate_order, String cate_img) {
		super();
		this.cate_title = cate_title;
		this.cate_order = cate_order;
		this.cate_img = cate_img;
	}
	
	
	
	public AdminCategoryVO(String cate_title) {
		super();
		this.cate_title = cate_title;
	}
	public int getCate_code() {
		return cate_code;
	}
	public void setCate_code(int cate_code) {
		this.cate_code = cate_code;
	}
	public Date getCate_date() {
		return cate_date;
	}
	public void setCate_date(Date cate_date) {
		this.cate_date = cate_date;
	}
	public String getCate_title() {
		return cate_title;
	}
	public void setCate_title(String cate_title) {
		this.cate_title = cate_title;
	}
	public int getCate_order() {
		return cate_order;
	}
	public void setCate_order(int cate_order) {
		this.cate_order = cate_order;
	}
	public String getCate_img() {
		return cate_img;
	}
	public void setCate_img(String cate_img) {
		this.cate_img = cate_img;
	}	
	
	
	
}
