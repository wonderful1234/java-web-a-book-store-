<%@ page language="java" import="javax.servlet.http.HttpSession" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> title here</title>
</head>
<body>

<%request.getSession().invalidate();
request.getRequestDispatcher("login.jsp").forward(request, response); %>
</body>
</html>
