package zental.gr2_lhj;

public class Want {
	private String title;
	private String content;
	private int price;
	private String img;
	private int[] rentCode;
	
	public Want(String title, String content, int price, String img) {
		super();
		this.title = title;
		this.content = content;
		this.price = price;
		this.img = img;
	}

	public String getTitle() {
		return title;
	}

	public String getContent() {
		return content;
	}

	public int getPrice() {
		return price;
	}

	public String getImg() {
		return img;
	}
	
	
}
