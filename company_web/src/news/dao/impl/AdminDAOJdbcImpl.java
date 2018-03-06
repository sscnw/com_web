package news.dao.impl;

import news.dao.AdminDAO;
import news.dao.DAO;
import news.domain.Admin;

public class AdminDAOJdbcImpl extends DAO<Admin> implements AdminDAO {
	public Admin get(String admin_name ,String admin_password) {
		String sql="select admin_id,admin_name,admin_password,admin_isOnline from Admin where admin_name=? and admin_password= ?";
		return get(sql,admin_name,admin_password);
	}
}