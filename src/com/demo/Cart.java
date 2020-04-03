package com.demo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Cart
 */
@WebServlet(name="/Cart",urlPatterns= {"/main.do"})
public class Cart extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String yu="";
		String book=request.getParameter("cbtn");
		book=new String(book.getBytes("ISO-8859-1"),"UTF-8");
		yu=book;
		String books=book+".jsp";
		request.getSession().setAttribute("yu", yu);
		request.getRequestDispatcher("/"+books).forward(request, response);
	}

}
