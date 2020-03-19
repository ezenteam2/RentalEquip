package zental.gr2_lhj;

public class Qna {
	private String category;
	private String title;
	private String content;
	private String answer;
	
	public Qna(String category, String title, String content, String answer) {
		super();
		this.category = category;
		this.title = title;
		this.content = content;
		this.answer = answer;
	}

	public String getCategory() {
		return category;
	}

	public String getTitle() {
		return title;
	}

	public String getContent() {
		return content;
	}

	public String getAnswer() {
		return answer;
	}
	
	
}
