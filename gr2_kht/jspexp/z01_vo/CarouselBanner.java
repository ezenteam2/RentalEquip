package jspexp.z01_vo;

import java.util.Date;

public class CarouselBanner {
	
	private int carou_code;
	private Date carou_date;
	private int carou_order;
	private String carou_img;
	private String carou_link;
	public CarouselBanner() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CarouselBanner(int carou_code, Date carou_date, int carou_order, String carou_img, String carou_link) {
		super();
		this.carou_code = carou_code;
		this.carou_date = carou_date;
		this.carou_order = carou_order;
		this.carou_img = carou_img;
		this.carou_link = carou_link;
	}
	public int getCarou_code() {
		return carou_code;
	}
	public void setCarou_code(int carou_code) {
		this.carou_code = carou_code;
	}
	public Date getCarou_date() {
		return carou_date;
	}
	public void setCarou_date(Date carou_date) {
		this.carou_date = carou_date;
	}
	public int getCarou_order() {
		return carou_order;
	}
	public void setCarou_order(int carou_order) {
		this.carou_order = carou_order;
	}
	public String getCarou_img() {
		return carou_img;
	}
	public void setCarou_img(String carou_img) {
		this.carou_img = carou_img;
	}
	public String getCarou_link() {
		return carou_link;
	}
	public void setCarou_link(String carou_link) {
		this.carou_link = carou_link;
	}
	
	

}
