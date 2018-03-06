package news.domain;

public class News {
	public News(){
		
	}
	private Integer news_id;
	private String news_name;
	private String news_author;
	private String news_content;
	private String news_time;
	
	public News(String news_name, String news_author,
			String news_content, String news_time) {
		super();
		this.news_name = news_name;
		this.news_author = news_author;
		this.news_content = news_content;
		this.news_time = news_time;
	}
	public News(String news_name, String news_author, String news_time) {
		super();
		this.news_name = news_name;
		this.news_author = news_author;
		this.news_time = news_time;
	}
	@Override
	public String toString() {
		return "News [news_id=" + news_id + ", news_name=" + news_name + "news_author="
				+ news_author + ", news_content=" + news_content + ", news_time="
				+ news_time + "]";
	}
	public Integer getNews_id() {
		return news_id;
	}
	public void setNews_id(Integer news_id) {
		this.news_id = news_id;
	}
	public String getNews_name() {
		return news_name;
	}
	public void setNews_name(String news_name) {
		this.news_name = news_name;
	}

	public String getNews_author() {
		return news_author;
	}
	public void setNews_author(String news_author) {
		this.news_author = news_author;
	}

	public String getNews_content() {
		return news_content;
	}
	public void setNews_content(String news_content) {
		this.news_content = news_content;
	}
	public String getNews_time() {
		return news_time;
	}
	public void setNews_time(String news_time) {
		this.news_time = news_time;
	}
	
}
