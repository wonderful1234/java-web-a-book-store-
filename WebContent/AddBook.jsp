<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> title here</title>
</head>
<body>
<form action="addbook.do" method="post">
<div style="background: url(imges/26.jpg);height:600px;">
				<div style="border: 5px solid darkgray;width: 40%; height: 30%;background-color: white; position: absolute;top: 220px;left: 405px;" >
<table width="70%" align="center" >
					<tr >
						<td colspan="2"><font color="blue" size="6">添加书籍</font></td>${sessionScope.cc}
					</tr>
					<tr>
						<td>书名：</td>
						<td><input type="text" name="book"/></td>
					</tr>
					<tr>
						<td>价格：</td>
						<td><input type="text" name="price"/></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="提交" /></td>
					</tr>
				</table>	
				</div>
			</div>
				</form>
</body>
</html>
