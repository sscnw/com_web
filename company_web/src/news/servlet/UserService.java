package news.servlet;

import news.dao.UserDAO;
import news.dao.impl.UserDAOJdbcImpl;
import news.dao.impl.UserDaoImplement;
import news.domain.*;
public class UserService  {
	private UserDaoImplement userDaoImplement; 
	 
	 public  UserService(UserDaoImplement userDaoImplement) {
		this.userDaoImplement=userDaoImplement;
	 }
	 
	 public User login(String name,String password) {  
	        if (name == null)  
	            throw new RuntimeException("�û�����Ϊ��");  
	        if (password ==null)  
	            throw new RuntimeException("����Ϊ��");  
	        User user = userDaoImplement.get(name,password); 
	        if (user == null)  
	            throw new RuntimeException("�����ڸù���Ա");  	    
	                return user;  
	     
	    }
}
