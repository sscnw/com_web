package news.dao;

import java.util.List;

import news.domain.User;

public interface UserDAO {
	public List<User> getForListWithCriteriaUser(CriteriaUser criteriaUser);
	
	public List<User> getAll();
	
	public  void save(User user);
	
	public User get(Integer user_id);
	
	public void delete(Integer user_id) ;
		
	public void update(User user) ;
	/*
	 * ���غ�Name��ȵļ�¼��
	 */
	public long getCountWithName(String user_name);
	public User get(String user_name,String user_password);
}
