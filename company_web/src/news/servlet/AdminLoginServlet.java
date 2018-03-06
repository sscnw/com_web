package news.servlet;

import java.io.IOException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sun.org.apache.bcel.internal.generic.NEW;

import news.dao.AdminDAO;
import news.dao.impl.AdminDAOJdbcImpl;
import news.domain.Admin;
import news.domain.User;

public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      private AdminDAO adminDAO=new AdminDAOJdbcImpl();
   
    public AdminLoginServlet() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	//��ȡservletPath��addNews����query 
	String servletPath=request.getServletPath();
	
	//��ȡ����һ����ַ����ô��Ҫȥ�ü�
	String methodName=servletPath.substring(11);
	methodName=methodName.substring(0,methodName.length()-7);
	System.out.println(methodName);
	
	//���÷����ȡ�������ҵ���
	try {
		Method method=getClass().getDeclaredMethod(methodName, HttpServletRequest.class,HttpServletResponse.class);
		method.invoke(this, request,response);
	}  catch (Exception e) {
		// û��xiangyingӦҳ��
		e.printStackTrace();
	}
}

	/*protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String admin_name=request.getParameter("admin_name");
		String admin_password =request.getParameter("admin_password");	
		
		Admin admin=adminDAO.get(admin_name,admin_password);
		if(admin!=null){
			admin.setAdmin_isOnline(1);
			response.sendRedirect(request.getContextPath()+"/adminPage/adminWelcome.jsp");
		}	
		else{
			request.setAttribute("message", "�û������������������ѡ��");
			//response.sendRedirect(request.getContextPath()+"/adminPage/adminLogin.jsp");
			request.getRequestDispatcher("/adminPage/adminLogin.jsp").forward(request, response);
			//request.getRequestDispatcher("WebContent/index").forward(request, response);
			return;
		}
		*/	
	private void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

		String admin_name=request.getParameter("admin_name");
		String admin_password =request.getParameter("admin_password");	
	//	System.out.println(user_password);
	//	User user=userDAO.get(user_name,user_password);
	
	
		Admin admin=adminDAO.get(admin_name,admin_password);
		if(admin!=null){
			admin.setAdmin_isOnline(1);
			response.sendRedirect(request.getContextPath()+"/adminPage/adminWelcome.jsp");
		}	
		
		else{
			
			request.setAttribute("message", "Account or password error. Please enter again!");
			request.getRequestDispatcher("/adminPage/adminLogin.jsp").forward(request, response);
			return;
		}
			
		}
	}



