package com.demo;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Addcart
 */
@WebServlet(name="/Addcart",urlPatterns= {"/qukan.do"})
public class Addcart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addcart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession();
		String v=(String)session.getAttribute("messages");
		if(v==null) {
			request.getRequestDispatcher("/login.jsp").forward(request, response);
		}
		if(v!=null) {
			String st="v";
			st=request.getParameter("views");
			if(st.equals("add")) {
				String e=(String) session.getAttribute("yu");
				Jedisway yu=new Jedisway();
				yu.add(v,e);
				request.getRequestDispatcher("/"+e+".jsp").forward(request, response);
			}
			else{
				request.getRequestDispatcher("/Deallook.jsp").forward(request, response);
			}
			
			
			
		}
	}

}
