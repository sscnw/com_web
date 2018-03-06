package news.dao.impl;

import java.util.List;

import news.dao.CriteriaUser;
import news.dao.DAO;
import news.dao.UserDAO;
import news.domain.Admin;
import news.domain.User;

public class UserDAOJdbcImpl  extends DAO<User> implements UserDAO {

	@Override
	public List<User> getForListWithCriteriaUser(CriteriaUser criteriaUser) {
		String sql="select user_id, user_name,user_password,user_sex,user_address from User "
				+ "where user_name like ? and user_password like ? and user_sex like ? and user_address like ? ";
		
		return getForList(sql,criteriaUser.getUser_name(),criteriaUser.getUser_password(),criteriaUser.getUser_sex(),criteriaUser.getUser_address());
	}

	@Override
	public List<User> getAll() {
		String sql="select user_id,user_name,user_password,user_sex,user_address from User";
		return getForList(sql);
	}

	@Override
	public void save(User user) {
		String sql="insert into User (user_name,user_password,user_sex,user_address) values(?,?,?,?)";
		update(sql,user.getUser_name(),user.getUser_password(),user.getUser_sex(),user.getUser_address());
		
		
	}

	@Override
	public User get(Integer user_id) {
		String sql="select user_id,user_name,user_password,user_sex,user_address from User where user_id=?";
		return get(sql,user_id);
	}

	@Override
	public void delete(Integer user_id) {
		String sql="delete from User where user_id=?";
		update(sql,user_id);
		
	}

	@Override
	public void update(User user) {
		String sql="update User set user_name=?,user_password=?, user_sex=? ,user_address=? "
				+ "where user_id=?";
		update(sql,user.getUser_name(),user.getUser_password(),user.getUser_sex(),user.getUser_address(),user.getUser_id());
		System.out.println(user.getUser_name()+"     "+user.getUser_password()+"    "+user.getUser_sex()+"    "+user.getUser_address()+"  "+user.getUser_id());
		
	}

	@Override
	public long getCountWithName(String user_name) {

		String sql="select count(user_id) from User where user_name=?";
		return getForValue(sql, user_name);
	}
	public User get(String user_name,String user_password) {
		String sql="select user_password,user_name,user_sex,user_address from User where user_name =? and user_password=?";
		return get(sql,user_name,user_password);
	}

}
