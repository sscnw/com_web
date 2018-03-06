package test;
import news.dao.*;

import static org.junit.Assert.*;

import org.easymock.EasyMock;

import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;

import news.dao.impl.UserDAOJdbcImpl;
import news.dao.impl.UserDaoImplement;
import news.domain.User;
import news.servlet.UserService;
public class Test {
	private User user;
	 private UserDaoImplement userDaoImplement;
	private UserService userService;
	@Before
	public void setUp() throws Exception {
		user=new User("abc","123");
		userDaoImplement = EasyMock.createMock(UserDaoImplement.class);
		userService=new UserService(userDaoImplement);
	}
	@org.junit.Test
	public void testLogin(){
	        EasyMock.expect(userDaoImplement.get("abc", "123")).andReturn(user);  
	        EasyMock.replay(userDaoImplement); 
	        User loginUser =userService.login("abc","123");
	        Assert.assertNotNull(loginUser); 
	        EasyMock.verify(userDaoImplement);
		
	}					
}

