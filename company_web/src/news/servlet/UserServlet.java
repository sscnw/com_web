package news.servlet;

import java.io.IOException;
import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.xml.internal.txw2.Document;

import news.dao.CriteriaUser;
import news.dao.UserDAO;
import news.dao.impl.UserDAOJdbcImpl;
import news.domain.User;
/**
 * Servlet implementation class UserServlet
 */
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO=new UserDAOJdbcImpl();
  
    public UserServlet() {
        super();
       
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取servletPath：addNews或者query 
		String servletPath=request.getServletPath();
		
		//获取的是一个地址，那么需要去裁剪
		String methodName=servletPath.substring(12);
		methodName=methodName.substring(0,methodName.length()-7);
		System.out.println(methodName);
		System.out.println(methodName);
		System.out.println(methodName);
		System.out.println(methodName);
		
		//利用反射获取方法并且调用
		try {
			Method method=getClass().getDeclaredMethod(methodName, HttpServletRequest.class,HttpServletResponse.class);
			method.invoke(this, request,response);
		}  catch (Exception e) {
			e.printStackTrace();
		}	
	}
	private void edit(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		String forwardPath="error.jsp";
		//取得id
		String idString=request.getParameter("user_id");
		try {
			//取该id的行
			User user=userDAO.get(Integer.parseInt(idString));
			//若不为空
			if (user!=null) {
				//转向update  否则wrong页面
				forwardPath="userUpdate.jsp";
				request.setAttribute("user", user);
			}
		
		} 
		catch (Exception e) {
			// TODO: handle exception
		}
		//转发
		request.getRequestDispatcher(forwardPath).forward(request, response);
	}
	private void update(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String user_id=request.getParameter("user_id");
		String user_name=request.getParameter("user_name");
		String user_password =request.getParameter("user_password");
		String user_sex=request.getParameter("user_sex");
		String user_address=request.getParameter("user_address");
		String user_oldName=request.getParameter("user_oldName");
		//以前的名字不等于新的名字
		if(!user_oldName.equalsIgnoreCase(user_name)){
			long count=userDAO.getCountWithName(user_name);
			//没有重名的情况下可以update
			if(count>0){
				request.setAttribute("message","User name \""+user_name+"\" is already exist. Please try again!");
				request.getRequestDispatcher("userUpdate.jsp").forward(request, response);
				return;
			}
		}
		User user =new User(user_name,user_password,user_sex,user_address);
		System.out.println("chuangjian:  "+"name"+user.getUser_name() +"pass"+user.getUser_password()+"sex"+user.getUser_sex()+"address"+user.getUser_address());
		user.setUser_id(Integer.parseInt(user_id));
		userDAO.update(user);
		response.sendRedirect("query.doUser");
	}
	private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//获取模糊查询的请求参数
		String user_name = request.getParameter("user_name");
		String user_password = request.getParameter("user_password");
		String user_sex = request.getParameter("user_sex");
		String user_address=request.getParameter("user_address");
		
		//把请求参数封装为一个 CriteriaCustomer 对象
		CriteriaUser criteriaUser = new CriteriaUser(user_name, user_password,user_sex,user_address);
		
		//1. 调用 CustomerDAO 的 getForListWithCriteriaCustomer() 得到 Customer 的集合
		List<User> users =userDAO.getForListWithCriteriaUser(criteriaUser);
		
		
		//2. 把 Customer 的集合放入 request 中
		request.setAttribute("users", users);
		
		//3. 转发页面到 index.jsp(不能使用重定向)
		request.getRequestDispatcher("userList.jsp").forward(request, response);
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String idString = request.getParameter("user_id");
		int user_id = 0;
		
		//try ... catch 的作用: 防止 idStr 不能转为 int 类型
		//若不能转则 id = 0, 无法进行任何的删除操作. 
		try {
			user_id = Integer.parseInt(idString);
			System.out.println(user_id); 
			userDAO.delete(user_id);
		} catch (Exception e) {}
		
		response.sendRedirect("query.doUser");
	}
	private void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//1. 获取表单参数: name, address, phone
		
		String user_sex= request.getParameter("user_sex");
		System.out.println(user_sex);
		String user_name = request.getParameter("user_name");
		String user_password = request.getParameter("user_password");
		String user_address= request.getParameter("user_address");
		
		//2. 检验 name 是否已经被占用:
		
		//2.1 调用 CustomerDAO 的 getCountWithName(String name) 获取 name 在数据库中是否存在
		long count = userDAO.getCountWithName(user_name);
		System.out.println(count);
		
		//2.2 若返回值大于 0, 则响应 newcustomer.jsp 页面: 
		//通过转发的方式来响应 newcustomer.jsp
	if(count > 0){
			//2.2.1 要求再 newcustomer.jsp 页面显示一个错误消息: 用户名 name 已经被占用, 请重新选择!
			//在 request 中放入一个属性 message: 用户名 name 已经被占用, 请重新选择!, 
			//在页面上通过 request.getAttribute("message") 的方式来显示
			request.setAttribute("message","User name \""+user_name+"\" is already exist. Please try again!");
			//2.2.2 newcustomer.jsp 的表单值可以回显. 
			//通过 value="<%= request.getParameter("name") == null ? "" : request.getParameter("name") %>"
			//来进行回显
			//2.2.3 结束方法: return 
			request.getRequestDispatcher("/secondPage/signup.jsp").forward(request, response);
			//response.sendRedirect(request.getContextPath()+"/secondPage/signup.jsp");
			return;
	}
		//3. 若验证通过, 则把表单参数封装为一个 Customer 对象 customer
		User user = new User(user_name,user_password,user_sex,user_address);
		
		//4. 调用 CustomerDAO 的  save(Customer customer) 执行保存操作
		userDAO.save(user);
		
		//5. 重定向到 success.jsp 页面: 使用重定向可以避免出现表单的重复提交问题.  
		response.sendRedirect(request.getContextPath()+"/otherPage/subscribe.html");
		//request.getRequestDispatcher("/success.jsp").forward(request, response);
	}
	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//1. 获取表单参数: name, address, phone
		String user_name = request.getParameter("user_name");
		String user_password = request.getParameter("user_password");
		String user_sex = request.getParameter("user_sex");
		String user_address= request.getParameter("user_address");
		
		//2. 检验 name 是否已经被占用:
		
		//2.1 调用 CustomerDAO 的 getCountWithName(String name) 获取 name 在数据库中是否存在
		long count = userDAO.getCountWithName(user_name);
		
		//2.2 若返回值大于 0, 则响应 newcustomer.jsp 页面: 
		//通过转发的方式来响应 newcustomer.jsp
	if(count > 0){
			//2.2.1 要求再 newcustomer.jsp 页面显示一个错误消息: 用户名 name 已经被占用, 请重新选择!
			//在 request 中放入一个属性 message: 用户名 name 已经被占用, 请重新选择!, 
			//在页面上通过 request.getAttribute("message") 的方式来显示
			request.setAttribute("message","User name \""+user_name+"\" is already exist. Please try again!");
			
			//2.2.2 newcustomer.jsp 的表单值可以回显. 
			//通过 value="<%= request.getParameter("name") == null ? "" : request.getParameter("name") %>"
			//来进行回显
			//2.2.3 结束方法: return 
			request.getRequestDispatcher("/secondPage/userList.jsp").forward(request, response);
			//response.sendRedirect(request.getContextPath()+"/secondPage/signup.jsp");
			return;
		}
		
		//3. 若验证通过, 则把表单参数封装为一个 Customer 对象 customer
		User user = new User(user_name,user_password,user_sex, user_address);
		
		//4. 调用 CustomerDAO 的  save(Customer customer) 执行保存操作
		userDAO.save(user);
		
		//5. 重定向到 success.jsp 页面: 使用重定向可以避免出现表单的重复提交问题.  
		response.sendRedirect(request.getContextPath()+"/otherPage/addUserSuccess.html");
		//request.getRequestDispatcher("/success.jsp").forward(request, response);
	}
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String user_name=request.getParameter("user_name");
		
		String user_password=request.getParameter("user_password");
		System.out.println(user_password);
		User user=userDAO.get(user_name,user_password);
	
		
		if(user!=null){
			
			request.getSession().setAttribute("username",user_name);
			response.sendRedirect(request.getContextPath()+"/otherPage/loginSuccess.html");
			
		}
		
		else{
			request.setAttribute("message", "Account or password error. Please enter again!");
			//response.sendRedirect(request.getContextPath()+"/adminPage/adminLogin.jsp");
			//response.sendRedirect(request.getContextPath()+"/secondPage/login.jsp");
			request.getRequestDispatcher("/secondPage/login.jsp").forward(request, response);;
			return;
		}
			
		}
	}
