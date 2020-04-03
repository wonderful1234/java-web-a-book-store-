package com.demo;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Show
 */
@WebServlet(name="/Show",urlPatterns= {"/Showoo.do"})
public class Show extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String views=request.getParameter("view");
		views=new String(views.getBytes("ISO-8859-1"),"UTF-8");
		if(views.equals("查看用户信息")) {
			UserDao dao=new UserDao();
			ArrayList<User>list=new ArrayList<User>();
			list=(ArrayList)dao.findAllUser();
			request.getSession().setAttribute("list",list);
			request.getRequestDispatcher("/Showalluser.jsp").forward(request, response);
		}
		if(views.equals("查看书籍信息")) {
			BookDao daov=new BookDao();
			ArrayList<Book>lists=new ArrayList<Book>();
			lists=(ArrayList)daov.findAllBook();
			request.getSession().setAttribute("lists",lists);
			request.getRequestDispatcher("/Showallbook.jsp").forward(request, response);
		}
		if(views.equals("增加书籍")) {
			request.getRequestDispatcher("/AddBook.jsp").forward(request, response);
		}
		if(views.equals("修改价格")) {
			request.getRequestDispatcher("/Updateprice.jsp").forward(request, response);
		}
		
	}

}
