<%@ page contentType="text/html; charset=UTF-8"
                              pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.demo.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>显示用户信息</title></head>
<body>
<div style="background: url(imges/25.jpg);height:600px;width:100%;">

<table border="1">
<tr><td>用户名</td><td>密码</td><td>邮箱</td><td>电话</td></tr>
<c:forEach var="user" items="${sessionScope.list}"
varStatus="status">
    <%--为奇数行和偶数行设置不同的背景颜色--%>
    <c:if test="${status.count%2==0}">  
<tr style="background:#eeeeff">
          </c:if>
<c:if test="${status.count%2!=0}">  
<tr style="background:#dedeff">
          </c:if>
<%--用EL访问作用域变量的成员--%>
<td>${user.name}</td> 
<td>${user.password}</td>
<td>${user.email}</td>
<td>${user.phone}</td>
</tr>
</c:forEach>
</table>
</div>
</body></html>

