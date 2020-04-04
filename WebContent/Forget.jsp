<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>找回/修改</title>
</head>
<body>
<script language="JavaScript" type="text/javascript">
function custCheck(){
    var password = document.getElementById("passwords");
    if(password.value.length<6||password.value.length>16){
      alert("密码长度介于6-16!");
      return false;
    }
  }
</script>
<form action="forget.do" method="post"onSubmit="return custCheck()">
<div style="background: url(imges/77.jpg);height:600px;">
				<div style="border: 5px solid darkgray;width: 40%; height: 30%;background-color: white; position: absolute;top: 220px;left: 405px;" >
<table width="70%" align="center" >
					<tr >
						<td colspan="2"><font color="blue" size="6">重置密码</font></td>${sessionScope.cv}
					</tr>
					<tr>
						<td>用户名：</td>
						<td><input type="text" name="username"placeholder="用户名的长度介于6-10" "/></td>
					</tr>
					<tr>
						<td>电话：</td>
						<td><input type="text" name="phone"/></td>
					</tr>
					<tr>
						<td>新密码：</td>
						<td><input type="password" name="password" id="passwords" placeholder="密码长度介于6-16"  /> </td>
					</tr>
					<tr>
						<td></td>
						<td><input type="submit" /></td>
					</tr>
				</table>	
				</div>
			</div>
				</form>
</body>
</html>
