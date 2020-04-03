<%@ page language="java" import="javax.servlet.http.HttpSession" import="java.util.*" import="com.demo.Jedisway" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String v=(String)session.getAttribute("messages"); 
if(v==null){
	request.getRequestDispatcher("/login.jsp").forward(request, response);
}
if(v!=null){
	ArrayList<String> list=new ArrayList<>();
	Jedisway yu=new Jedisway();
	list=yu.show(v);
	request.getSession().setAttribute("lll", list);
	request.getRequestDispatcher("/ShowCart.jsp").forward(request, response);
	
}
	
%>
</body>
</html>