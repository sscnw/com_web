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
		//��ȡservletPath��addNews����query 
		String servletPath=request.getServletPath();
		
		//��ȡ����һ����ַ����ô��Ҫȥ�ü�
		String methodName=servletPath.substring(12);
		methodName=methodName.substring(0,methodName.length()-7);
		System.out.println(methodName);
		System.out.println(methodName);
		System.out.println(methodName);
		System.out.println(methodName);
		
		//���÷����ȡ�������ҵ���
		try {
			Method method=getClass().getDeclaredMethod(methodName, HttpServletRequest.class,HttpServletResponse.class);
			method.invoke(this, request,response);
		}  catch (Exception e) {
			e.printStackTrace();
		}	
	}
	private void edit(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		String forwardPath="error.jsp";
		//ȡ��id
		String idString=request.getParameter("user_id");
		try {
			//ȡ��id����
			User user=userDAO.get(Integer.parseInt(idString));
			//����Ϊ��
			if (user!=null) {
				//ת��update  ����wrongҳ��
				forwardPath="userUpdate.jsp";
				request.setAttribute("user", user);
			}
		
		} 
		catch (Exception e) {
			// TODO: handle exception
		}
		//ת��
		request.getRequestDispatcher(forwardPath).forward(request, response);
	}
	private void update(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String user_id=request.getParameter("user_id");
		String user_name=request.getParameter("user_name");
		String user_password =request.getParameter("user_password");
		String user_sex=request.getParameter("user_sex");
		String user_address=request.getParameter("user_address");
		String user_oldName=request.getParameter("user_oldName");
		//��ǰ�����ֲ������µ�����
		if(!user_oldName.equalsIgnoreCase(user_name)){
			long count=userDAO.getCountWithName(user_name);
			//û������������¿���update
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
		//��ȡģ����ѯ���������
		String user_name = request.getParameter("user_name");
		String user_password = request.getParameter("user_password");
		String user_sex = request.getParameter("user_sex");
		String user_address=request.getParameter("user_address");
		
		//�����������װΪһ�� CriteriaCustomer ����
		CriteriaUser criteriaUser = new CriteriaUser(user_name, user_password,user_sex,user_address);
		
		//1. ���� CustomerDAO �� getForListWithCriteriaCustomer() �õ� Customer �ļ���
		List<User> users =userDAO.getForListWithCriteriaUser(criteriaUser);
		
		
		//2. �� Customer �ļ��Ϸ��� request ��
		request.setAttribute("users", users);
		
		//3. ת��ҳ�浽 index.jsp(����ʹ���ض���)
		request.getRequestDispatcher("userList.jsp").forward(request, response);
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String idString = request.getParameter("user_id");
		int user_id = 0;
		
		//try ... catch ������: ��ֹ idStr ����תΪ int ����
		//������ת�� id = 0, �޷������κε�ɾ������. 
		try {
			user_id = Integer.parseInt(idString);
			System.out.println(user_id); 
			userDAO.delete(user_id);
		} catch (Exception e) {}
		
		response.sendRedirect("query.doUser");
	}
	private void register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//1. ��ȡ������: name, address, phone
		
		String user_sex= request.getParameter("user_sex");
		System.out.println(user_sex);
		String user_name = request.getParameter("user_name");
		String user_password = request.getParameter("user_password");
		String user_address= request.getParameter("user_address");
		
		//2. ���� name �Ƿ��Ѿ���ռ��:
		
		//2.1 ���� CustomerDAO �� getCountWithName(String name) ��ȡ name �����ݿ����Ƿ����
		long count = userDAO.getCountWithName(user_name);
		System.out.println(count);
		
		//2.2 ������ֵ���� 0, ����Ӧ newcustomer.jsp ҳ��: 
		//ͨ��ת���ķ�ʽ����Ӧ newcustomer.jsp
	if(count > 0){
			//2.2.1 Ҫ���� newcustomer.jsp ҳ����ʾһ��������Ϣ: �û��� name �Ѿ���ռ��, ������ѡ��!
			//�� request �з���һ������ message: �û��� name �Ѿ���ռ��, ������ѡ��!, 
			//��ҳ����ͨ�� request.getAttribute("message") �ķ�ʽ����ʾ
			request.setAttribute("message","User name \""+user_name+"\" is already exist. Please try again!");
			//2.2.2 newcustomer.jsp �ı�ֵ���Ի���. 
			//ͨ�� value="<%= request.getParameter("name") == null ? "" : request.getParameter("name") %>"
			//�����л���
			//2.2.3 ��������: return 
			request.getRequestDispatcher("/secondPage/signup.jsp").forward(request, response);
			//response.sendRedirect(request.getContextPath()+"/secondPage/signup.jsp");
			return;
	}
		//3. ����֤ͨ��, ��ѱ�������װΪһ�� Customer ���� customer
		User user = new User(user_name,user_password,user_sex,user_address);
		
		//4. ���� CustomerDAO ��  save(Customer customer) ִ�б������
		userDAO.save(user);
		
		//5. �ض��� success.jsp ҳ��: ʹ���ض�����Ա�����ֱ����ظ��ύ����.  
		response.sendRedirect(request.getContextPath()+"/otherPage/subscribe.html");
		//request.getRequestDispatcher("/success.jsp").forward(request, response);
	}
	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//1. ��ȡ������: name, address, phone
		String user_name = request.getParameter("user_name");
		String user_password = request.getParameter("user_password");
		String user_sex = request.getParameter("user_sex");
		String user_address= request.getParameter("user_address");
		
		//2. ���� name �Ƿ��Ѿ���ռ��:
		
		//2.1 ���� CustomerDAO �� getCountWithName(String name) ��ȡ name �����ݿ����Ƿ����
		long count = userDAO.getCountWithName(user_name);
		
		//2.2 ������ֵ���� 0, ����Ӧ newcustomer.jsp ҳ��: 
		//ͨ��ת���ķ�ʽ����Ӧ newcustomer.jsp
	if(count > 0){
			//2.2.1 Ҫ���� newcustomer.jsp ҳ����ʾһ��������Ϣ: �û��� name �Ѿ���ռ��, ������ѡ��!
			//�� request �з���һ������ message: �û��� name �Ѿ���ռ��, ������ѡ��!, 
			//��ҳ����ͨ�� request.getAttribute("message") �ķ�ʽ����ʾ
			request.setAttribute("message","User name \""+user_name+"\" is already exist. Please try again!");
			
			//2.2.2 newcustomer.jsp �ı�ֵ���Ի���. 
			//ͨ�� value="<%= request.getParameter("name") == null ? "" : request.getParameter("name") %>"
			//�����л���
			//2.2.3 ��������: return 
			request.getRequestDispatcher("/secondPage/userList.jsp").forward(request, response);
			//response.sendRedirect(request.getContextPath()+"/secondPage/signup.jsp");
			return;
		}
		
		//3. ����֤ͨ��, ��ѱ�������װΪһ�� Customer ���� customer
		User user = new User(user_name,user_password,user_sex, user_address);
		
		//4. ���� CustomerDAO ��  save(Customer customer) ִ�б������
		userDAO.save(user);
		
		//5. �ض��� success.jsp ҳ��: ʹ���ض�����Ա�����ֱ����ظ��ύ����.  
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
