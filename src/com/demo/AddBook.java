package com.demo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddBook
 */
@WebServlet(name="/AddBook",urlPatterns= {"/addbook.do"})
public class AddBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String n="";
		BookDao dao=new BookDao();
		String name=request.getParameter("book");
		double price=Double.parseDouble(request.getParameter("price"));
		name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
		boolean c=dao.addBook(name, price);
		if(c==true)
		{
			n="Ìí¼Ó³É¹¦";
			request.getSession().setAttribute("cc",n);
	     	 response.sendRedirect("AddBook.jsp");
		}
	}

}
