package ZENTAL;

public class kb_Emoney {
	private String Date;
	private String emo_cate;
	private int Emoney;
	
	public kb_Emoney() {};
	public kb_Emoney(String Date, String emo_cate, int Emoney) {
		this.Date = Date;
		this.emo_cate = emo_cate;
		this.Emoney = Emoney;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public String getEmo_cate() {
		return emo_cate;
	}
	public void setEmo_cate(String emo_cate) {
		this.emo_cate = emo_cate;
	}
	public int getEmoney() {
		return Emoney;
	}
	public void setEmoney(int emoney) {
		Emoney = emoney;
	}
}
