package news.dao;
public class CriteriaNews {
	private String news_name;
	private String news_author;
	private String news_time;
	public CriteriaNews(){
	}
	public CriteriaNews(String news_name, String news_author,String news_time) {
		super();
		this.news_name = news_name;
		this.news_author = news_author;
		this.news_time = news_time;
	}
	public String getNews_name() {
		if(news_name==null){
			news_name="%%";
		}
		else {
			news_name="%"+news_name+"%";
		}
		
		return news_name;
	}
	public void setNews_name(String news_name) {
		this.news_name = news_name;
	}
	
	public String getNews_author() {	
		if(news_author==null){
		news_author="%%";
		}
		else {
			news_author="%"+news_author+"%";
		}
	
		return news_author;
	}
	public void setNews_author(String news_author) {
		this.news_author = news_author;
	}
	public String getNews_time() {
		if(news_time==null){
			news_time="%%";
		}
		else {
			news_time="%"+news_time+"%";
		}
		return news_time;
	}
	public void setNews_time(String news_time) {
		this.news_time = news_time;
	}
	
}
