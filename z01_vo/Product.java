package jspexp.z01_vo;
//jspexp.z01_vo.Product.java
public class Product {
	private int num;
	private String kind;
	private String name;
	private int price;
	private int cnt;
	
	
	
	
	public Product(String kind, String name, int price, int cnt) {
		super();
		this.kind = kind;
		this.name = name;
		this.price = price;
		this.cnt = cnt;
	}
	
	


	public Product(String kind, int cnt) {
		super();
		this.kind = kind;
		this.cnt = cnt;
	}	
	
	
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(String name, int price, int num) {
		super();
		this.name = name;
		this.price = price;
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	
	
	
}
