package zental;
import java.util.Date;
public class Report {
	private String REPORT_CATE;
	private String MEM_ID;
	private String REPORT_CURR;
	private Date REPORT_DATE;
	public Report() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Report(String rEPORT_CATE, String mEM_ID, String rEPORT_CURR, Date rEPORT_DATE) {
		super();
		this.REPORT_CATE = REPORT_CATE;
		this.MEM_ID = MEM_ID;
		this.REPORT_CURR = REPORT_CURR;
		this.REPORT_DATE = REPORT_DATE;
	}
	public String getREPORT_CATE() {
		return REPORT_CATE;
	}
	public void setREPORT_CATE(String REPORT_CATE) {
		this.REPORT_CATE = REPORT_CATE;
	}
	public String getMEM_ID() {
		return MEM_ID;
	}
	public void setMEM_ID(String MEM_ID) {
		this.MEM_ID = MEM_ID;
	}
	public String getREPORT_CURR() {
		return REPORT_CURR;
	}
	public void setREPORT_CURR(String REPORT_CURR) {
		this.REPORT_CURR = REPORT_CURR;
	}
	public Date getREPORT_DATE() {
		return REPORT_DATE;
	}
	public void setREPORT_DATE(Date REPORT_DATE) {
		this.REPORT_DATE = REPORT_DATE;
	}
}
