package com.demo;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aliyuncs.exceptions.ClientException;

/**
 * Servlet implementation class registr
 */
@WebServlet(name = "/registr", urlPatterns = "/register.do")
public class registr extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String messages = "";
		response.setContentType("text/html;charset=utf-8");
			String vvv = request.getParameter("rphone").trim();
			UserDao dao = new UserDao();
			User user = new User();
			String tpassword = dao.findpassword(request.getParameter("rusername"));
			if (tpassword == null) {
				Jedisway s = new Jedisway();
				String x=s.gets(vvv);
				if(x==null) {
					messages="请检查验证码!";
					request.getSession().setAttribute("messagess", messages);
					request.getRequestDispatcher("/register.jsp").forward(request, response);
				}
				if(x.equals(request.getParameter("yanzheng"))) {
				user.setName(request.getParameter("rusername"));
				user.setPassword(MD5.MD5(request.getParameter("rpassword")));
				user.setEmail(request.getParameter("mail"));
				user.setPhone(vvv);
				dao.addUser(user);
					request.getRequestDispatcher("/Successful.jsp").forward(request, response);
				}
				if(x.equals(request.getParameter("yanzheng"))==false) {
					messages="验证码错误";
					request.getSession().setAttribute("messagess", messages);
					response.sendRedirect("register.jsp");
				}
			}
			
			if (tpassword.length() > 0) {
				messages = "此用户名已经注册";
				request.getSession().setAttribute("messagess", messages);
				response.sendRedirect("register.jsp");
			}
		
	}
}
