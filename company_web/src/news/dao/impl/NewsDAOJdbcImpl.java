package news.dao.impl;

import java.util.List;


import news.dao.CriteriaNews;
import news.dao.DAO;
import news.dao.NewsDAO;
import news.domain.News;

public class NewsDAOJdbcImpl extends DAO<News> implements NewsDAO {
	@Override
	public List<News> getForListWithCriteriaNews(CriteriaNews cn) {
		String sql="select news_id,news_name,news_author,news_content,news_time from News "
				+ "where news_name like ? and news_author like ? "
				+ " and news_time like ?" ;
		
		return getForList(sql,cn.getNews_name(),cn.getNews_author(),cn.getNews_time());
	}
	
	@Override
	public List<News> getAll() {
		
		String sql="select news_id,news_name,news_author,news_content,news_time from News";
		return getForList(sql);
	
	}

	@Override
	public void save(News news) {
	
		String sql="insert into News (news_name,news_author,news_content,news_time) values(?,?,?,?)";
		update(sql,news.getNews_name(),news.getNews_author(),news.getNews_content(),news.getNews_time());
		
	}
	public void save_(News news) {
		
		String sql="insert into News (news_name,news_author,news_time) values(?,?,?)";
		update(sql,news.getNews_name(),news.getNews_author(),news.getNews_time());
		
	}

	@Override
	public News get(Integer news_id) {
		
		String sql="select news_id,news_name,news_author,news_content,news_time from News where news_id=?";
		return get(sql,news_id);
	
	}

	@Override
	public void delete(Integer id) {
	
		String sql="delete from News where news_id=?";
		update(sql,id);
		
	}

	@Override
	public void update(News news) {
		
		String sql="update News set news_name=?,news_author=?,news_time=? "
				+ "where news_id=?";
		update(sql,news.getNews_name(),news.getNews_author(),news.getNews_time(),news.getNews_id());
		System.out.println(news.getNews_name()+"  "+news.getNews_author()+" "+news.getNews_time());
	}

	@Override
	public long getCountWithName(String news_name) {
		
		String sql="select count(news_name) from News where news_name=?";
		return getForValue(sql, news_name);
	
	}
}
