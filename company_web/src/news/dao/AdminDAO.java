package news.dao;

import news.domain.Admin;
import news.domain.News;

public interface AdminDAO {
	public Admin get(String admin_name,String admin_password);
}
