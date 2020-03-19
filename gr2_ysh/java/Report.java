package .z01_vo;
import java.util.Date;

public class Report {
	private int report_code;
	private String mem_id;
	private int rent_item_code;
	private Date report_date;
	private String report_cate;
	private String report_reason;
	private String report_curr;
	public Report() { 
		super();
		// TODO Auto-generated constructor stub
	}
	public Report(int report_code, String mem_id, int rent_item_code, Date report_date, String report_cate,
			String report_reason, String report_curr) { 
		super();
		this.report_code = report_code;
		this.mem_id = mem_id;
		this.rent_item_code = rent_item_code;
		this.report_date = report_date;
		this.report_cate = report_cate;
		this.report_reason = report_reason;
		this.report_curr = report_curr;
	}
	public int getReport_code() {
		return report_code;
	}
	public void setReport_code(int report_code) {
		this.report_code = report_code;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getRent_item_code() {
		return rent_item_code;
	}
	public void setRent_item_code(int rent_item_code) {
		this.rent_item_code = rent_item_code;
	}
	public Date getReport_date() {
		return report_date;
	}
	public void setReport_date(Date report_date) {
		this.report_date = report_date;
	}
	public String getReport_cate() {
		return report_cate;
	}
	public void setReport_cate(String report_cate) {
		this.report_cate = report_cate;
	}
	public String getReport_reason() {
		return report_reason;
	}
	public void setReport_reason(String report_reason) {
		this.report_reason = report_reason;
	}
	public String getReport_curr() {
		return report_curr;
	}
	public void setReport_curr(String report_curr) {
		this.report_curr = report_curr;
	}
}