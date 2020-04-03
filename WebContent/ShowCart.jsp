<%@ page language="java" import="java.util.*,com.demo.BookDao" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style type="text/css">
button{outline:none;background-color:transparent;font-size:20px;font-family:楷体;color:black; }

</style>
<style>
.amenu{
			color: red;
			text-decoration: none;
			font-family:楷体;
			font-size:40px;
			/*上面为去掉下划线*/
			line-height: 50px;
		}
</style>
<div style="background: url(imges/1768.jpg);height:600px;width:100%;">
<table border="2">
<tr><td>商品名</td><td>数量</td></tr>
<form action="yyiii.do" method="post">
<% ArrayList<String>lists=new ArrayList<>();
lists=(ArrayList<String>)session.getAttribute("lll");
BookDao book=new BookDao();
double sum=0;
for(int i=0;i<lists.size();i++){
	sum+=book.findprice(lists.get(i));
%>
<tr><td><%=lists.get(i) %></td>
    <td><%=1 %></td></tr>
<%

}
%>
</table>
<td><button name="viewsoo" value="del">清空</button></td></tr>
<h2 align="center">总计:<%=sum %></h2><br/>
<a href="Pay.jsp" class="amenu" >去结算</a>
</div>
</form>
</body>
</html>