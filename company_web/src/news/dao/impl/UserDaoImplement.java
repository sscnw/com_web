package news.dao.impl;

import news.domain.Admin;
import news.domain.User;

public interface UserDaoImplement {
	public User get(String admin_name ,String admin_password);
}
