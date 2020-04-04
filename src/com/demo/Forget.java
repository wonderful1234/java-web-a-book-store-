package com.demo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class Forget
 */
@WebServlet(name="/Forget",urlPatterns= {"/forget.do"})
public class Forget extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cv="";
		UserDao dao=new UserDao();
		response.setContentType("text/html;charset=utf-8");
		String name=request.getParameter("username");
		String phone=request.getParameter("phone");
		String password=MD5.MD5(request.getParameter("password"));
		if(dao.findpassword(name)==null)
		{
			cv="请检查用户名";
			request.getSession().setAttribute("cv",cv);
			request.getRequestDispatcher("/Forget.jsp").forward(request, response);
		}
		if(dao.findphone(name).equals(phone)) {
			boolean m=dao.modify(password, name);
			if(m==true) {
				request.getRequestDispatcher("/Forgete.jsp").forward(request, response);
			}
			if(m==false)
			{
				request.getRequestDispatcher("/Forget.jsp").forward(request, response);
			}
		}
		else {
			cv="请检查电话号码";
			request.getSession().setAttribute("cv",cv);
	     	 response.sendRedirect("Forget.jsp");
		}
		
	}

}
