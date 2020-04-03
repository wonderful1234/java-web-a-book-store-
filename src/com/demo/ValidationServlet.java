package com.demo;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

import com.aliyuncs.exceptions.ClientException;

import javax.servlet.annotation.WebServlet;

@WebServlet(name = "validationServlet", urlPatterns = { "/validation.do" })
public class ValidationServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/xml;charset=UTF-8");
		response.setHeader("Cache-Control", "no-cache");
		String message = "";
		String d = "";
		String vvv = request.getParameter("phone").trim();
		if (vvv.length()==0) {
			message = "请填写手机号";
		} else {
			int c;
			Jedisway f = new Jedisway();
			c = f.setset(vvv);
			if (c == 0)
				message = "此手机号已经注册";
			if (c == 1) {
				new SendInformation();
				try {
					d = SendInformation.sendSms(vvv);
				} catch (ClientException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				Jedisway s = new Jedisway();
				s.sets(vvv, d);
				message = "请查收！";
			}
		}
		PrintWriter out = response.getWriter();
		//
		out.println("<response>");
		out.println("<message>" + message + "</message>");
		out.println("</response>");
	}
}
