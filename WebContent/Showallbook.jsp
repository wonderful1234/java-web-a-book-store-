<%@ page contentType="text/html; charset=UTF-8"
                              pageEncoding="UTF-8"%>
<%@ page import="java.util.*,com.demo.Book" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head><title>显示书籍</title></head>
<body>
<div style="background: url(imges/27.jpg);height:600px;width:100%;">
<table border="4">
<tr><td>书名</td><td>价格</td></tr>
<c:forEach var="user" items="${sessionScope.lists}"
varStatus="status">
    <%--为奇数行和偶数行设置不同的背景颜色--%>
    <c:if test="${status.count%2==0}">  
<tr style="background:#eeeeff">
          </c:if>
<c:if test="${status.count%2!=0}">  
<tr style="background:#dedeff">
          </c:if>
<%--用EL访问作用域变量的成员--%>
<td>${user.pname}</td> 
<td>${user.price}</td>
</tr>
</c:forEach>
</table>
</div>
</body></html>
