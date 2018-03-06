package news.servlet;

import java.io.IOException;

import java.lang.reflect.Method;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import news.dao.CriteriaNews;
import news.dao.NewsDAO;
import news.dao.impl.NewsDAOJdbcImpl;
import news.domain.News;
import sun.tools.jar.resources.jar;


public class NewsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private NewsDAO newsDAO=new NewsDAOJdbcImpl();
    public NewsServlet() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//获取servletPath：addNews或者query 
		String servletPath=request.getServletPath();
		
		//获取的是一个地址，那么需要去裁剪
		String methodName=servletPath.substring(11);
		methodName=methodName.substring(0,methodName.length()-7);
		System.out.println(methodName);
		
		//利用反射获取方法并且调用
		try {
			Method method=getClass().getDeclaredMethod(methodName, HttpServletRequest.class,HttpServletResponse.class);
			method.invoke(this, request,response);
		}  catch (Exception e) {
			// 没有xiangying应页面
			e.printStackTrace();
		}
	}
	//获取id，看是否有这样的id，防止在地址栏的任意添加
	private void edit(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException {
		String forwardPath="error.jsp";
		//取得id
		String idString=request.getParameter("news_id");
		try {
			//取该id的行
			News news=newsDAO.get(Integer.parseInt(idString));
			//若不为空
			if (news!=null) {
				//转向update  否则wrong页面
				forwardPath="newsUpdate.jsp";
				request.setAttribute("news", news);
			}
		
		} 
		catch (Exception e) {
			// TODO: handle exception
		}
		//转发
		request.getRequestDispatcher(forwardPath).forward(request, response);
		
	}
	private void update(HttpServletRequest request,HttpServletResponse response) throws ServletException, IOException{
		String news_id=request.getParameter("news_id");
		String news_name=request.getParameter("news_name");
		String news_author=request.getParameter("news_author");
		String news_time=request.getParameter("news_time");
		String news_oldName=request.getParameter("news_oldName");
		//以前的名字不等于新的名字
		if(!news_oldName.equalsIgnoreCase(news_name)){
			long count=newsDAO.getCountWithName(news_name);
			//没有重名的情况下可以update
			if(count>0){
				request.setAttribute("message","News 《"+ news_name +"》is already exist. Please try again!");
				request.getRequestDispatcher("newsUpdate.jsp").forward(request, response);
				return;
			}
		}
		News news =new News(news_name,news_author,news_time);
		news.setNews_id(Integer.parseInt(news_id));
		newsDAO.update(news);
		response.sendRedirect("query.doNews");
	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String idString=request.getParameter("news_id");
		int news_id=0;
		try {
			news_id=Integer.parseInt(idString);
			newsDAO.delete(news_id);
		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect("query.doNews");
		
	}


	private void query(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String news_name=request.getParameter("news_name");
		String news_author=request.getParameter("news_author");
		String news_time=request.getParameter("news_time");

		CriteriaNews criteriaNews=new CriteriaNews(news_name,news_author,news_time);
		
		List<News> news_=newsDAO.getForListWithCriteriaNews(criteriaNews);
		
		
		request.setAttribute("news_", news_);
		String strUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + "/" + request.getContextPath() + "/adminPage/newsList.jsp";
		strUrl = "newsList.jsp";
		request.getRequestDispatcher(strUrl).forward(request, response);
		//request.getRequestDispatcher("/index.jsp").forward(request, response);
		//response.sendRedirect(request.getContextPath()+"/adminPage/newsList.jsp");
	}


	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//int news_id=Integer.parseInt(request.getParameter("news_id"));
		String news_name=request.getParameter("news_name");
		String news_author=request.getParameter("news_author");
		String news_content=request.getParameter("news_content");
		String news_time=request.getParameter("news_time");
		
		long count=newsDAO.getCountWithName(news_name);
		System.out.println(count);
		if (count>0) {
			request.setAttribute("message", "News 《"+news_name+"》 is already exist.");
			request.getRequestDispatcher("/adminPage/newsList.jsp").forward(request, response);
			return  ;	
		}
		News news=new News(news_name,news_author,news_content,news_time);
		newsDAO.save(news);
		response.sendRedirect(request.getContextPath()+"/otherPage/addNewsSuccess.html");
	}

}
