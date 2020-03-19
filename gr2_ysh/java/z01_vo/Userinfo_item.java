package ZENTAL.z01_vo;

public class Userinfo_item {
	private String rent_item_title;
	private String rent_item_detail;
	private String rent_item_curr;
	public Userinfo_item() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Userinfo_item(String rent_item_title, String rent_item_detail, String rent_item_curr) {
		super();
		this.rent_item_title = rent_item_title;
		this.rent_item_detail = rent_item_detail;
		this.rent_item_curr = rent_item_curr;
	}
	public String getRent_item_title() {
		return rent_item_title;
	}
	public void setRent_item_title(String rent_item_title) {
		this.rent_item_title = rent_item_title;
	}
	public String getRent_item_detail() {
		return rent_item_detail;
	}
	public void setRent_item_detail(String rent_item_detail) {
		this.rent_item_detail = rent_item_detail;
	}
	public String getRent_item_curr() {
		return rent_item_curr;
	}
	public void setRent_item_curr(String rent_item_curr) {
		this.rent_item_curr = rent_item_curr;
	}
}
