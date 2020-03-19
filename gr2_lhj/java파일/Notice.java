package zental.gr2_lhj;

public class Notice {
	private String title;
	private String content;
	private String date;
	private String img;
	
	public Notice() {
		
	}

	public Notice(String title, String content, String img, String date) {
		super();
		this.title = title;
		this.content = content;
		this.date = date;
		this.img = img;
	}

	public String getTitle() {
		return title;
	}

	public String getContent() {
		return content;
	}

	public String getDate() {
		return date;
	}

	public String getImg() {
		return img;
	}
	
	
}
