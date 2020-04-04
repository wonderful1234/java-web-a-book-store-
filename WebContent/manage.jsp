<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> title here</title>
</head>
<body>
<form action="manager.do" method="post">
			<div style="background: url(imges/1234.jpg);height:800px;">
				<div style="border: 5px solid darkgray;width: 40%; height: 20%;background-color: white; position: absolute;top: 300px;left: 405px;" >
				<table width="60%" align="center" >
					${sessionScope.messageo}
					<tr>
						<td>用户名：</td>
						<td><input type="text" name="username" placeholder="请输入用户名"/></td>
					</tr>
					<tr>
						<td>密码：</td>
						<td><input type="password" name="password" placeholder="请输入密码"/></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" value="登录"/></td>
						
						<br/>
					</tr>
					
					
				</table>	
				</div>
			</div>
			</form>
</body>
</html>
