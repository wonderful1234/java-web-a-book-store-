package com.demo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Delshop
 */
@WebServlet(name="/Delshop",urlPatterns = {"/yyiii.do"})
public class Delshop extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Delshop() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String v=(String)session.getAttribute("messages");
		v=new String(v.getBytes("ISO-8859-1"),"UTF-8");
		response.setContentType("text/html;charset=utf-8");
		String choose=request.getParameter("viewsoo");
		if(choose.equals("del")) {
			Jedisway yhh=new Jedisway();
			yhh.dell(v);
			request.getRequestDispatcher("/main.jsp").forward(request, response);
		}
	}

}
