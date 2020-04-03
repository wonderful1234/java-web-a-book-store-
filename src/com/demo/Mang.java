package com.demo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Mang
 */
@WebServlet(name="/Mang",urlPatterns= {"/manager.do"})
public class Mang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Mang() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		UserDao dao=new UserDao();
		ManagerDao mm=new ManagerDao();
		String messageo="";
		String username=request.getParameter("username");
		String password=MD5.MD5(request.getParameter("password"));
		String repassword=(String)mm.findpassword(username);
		if(password.equals(repassword)==true) {
			request.getRequestDispatcher("/Show.jsp").forward(request, response);
		}else {
			messageo="请检查用户名和密码";
			request.getSession().setAttribute("messageo",messageo);
	     	 response.sendRedirect("manage.jsp");
		}
	}
	

}
