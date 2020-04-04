package com.demo;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name="/intest",urlPatterns= {"/in.do"})
public class intest extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		UserDao dao=new UserDao();
		String message="";
		String choose=request.getParameter("whether");
		choose=new String(choose.getBytes("ISO-8859-1"),"UTF-8");
		if(choose.equals("登录")) {
		String username=request.getParameter("username");
		String password=MD5.MD5(request.getParameter("password"));
		String repassword=(String)dao.findpassword(username);
		if(password.equals(repassword)==true) {
			message=username;
			request.getSession().setAttribute("messages",message);
	     	 response.sendRedirect("main.jsp");
		}else {
			message="请检查用户名和密码";
			request.getSession().setAttribute("message",message);
	     	 response.sendRedirect("login.jsp");
		}
		}
		if(choose.equals("忘记密码")) {
			request.getRequestDispatcher("/Forget.jsp").forward(request, response);
		}
	}

}


