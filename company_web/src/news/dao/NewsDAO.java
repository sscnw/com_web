package news.dao;
import java.util.List;
import news.domain.News;

	public interface NewsDAO {
		public  List<News> getForListWithCriteriaNews(CriteriaNews cn);
		
		public List<News> getAll();
		
		public  void save(News news);
		
		public News get(Integer news_id);
		
		public void delete(Integer news_id) ;
			
		public void update(News news) ;
		/*
		 * 返回和Name相等的记录数
		 */
		public long getCountWithName(String news_name);
}

