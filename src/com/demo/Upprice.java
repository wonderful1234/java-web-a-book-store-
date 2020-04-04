package com.demo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Upprice
 */
@WebServlet(name="/Upprice",urlPatterns= {"/up.do"})
public class Upprice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Upprice() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String o="";
		BookDao dao=new BookDao();
		String name=request.getParameter("book");
		double price=Double.parseDouble(request.getParameter("price"));
		name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
		boolean h=dao.modify(name, price);
		if(h==true) {
			o="修改成功";
			request.getSession().setAttribute("kk",o);
	     	 response.sendRedirect("Updateprice.jsp");
		}
	}

}
