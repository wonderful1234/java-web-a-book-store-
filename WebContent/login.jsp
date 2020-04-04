<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎登录</title>
<style>
		.LOGO{
			float: left;
			width: 33%;
			/*border-width: 1px;
			border-style: solid;
			border-color: red; */
		/*border: 1px solid red;*/
			height: 60px;
			line-height: 60px;
		}
		
		.amenu{
			color: white;
			text-decoration: none;
			/*上面为去掉下划线*/
			line-height: 50px;
		}
		</style>
</head>
<body>
	<!--1.总共5部分
			2.第一部分：LOGO部分
			3.第二部分：导航栏部分
			4.第三部分：注册页面部分
			5.第四部分：页脚图片部分
			6.第五部分：一堆超链接
		-->
		
		<div>
			<!--2.第一部分：LOGO部分-->
			<div class="LOGO">
				<img src="imges\3.PNG" width="55%"/ hight="30px">
				</div>
				<div class="LOGO">
					<img src="imges\header.jpg" />
				</div>
				<div class="LOGO">
					<a href="register.jsp">注册</a>
					<a href="main.jsp">游客登录</a>
					<a href="manage.jsp">管理员登录</a>
					${sessionScope.messages}
				</div>
				
			</div>
			<br/>
			<!--清除浮动-->
			<div style="clear: both;"></div>
			<!--3第二部分：导航栏部分-->
			<div style="background-color: black; height: 60px;">
				<a href="#" class="amenu">首页</a>
				<a href="#" class="amenu">技术书籍</a>
				<a href="#" class="amenu">百科知识</a>
				<a href="#" class="amenu">报刊杂志</a>
			</div>
			<!--4.第三部分：登录页面部分-->
			<form action="in.do" method="post">
			<div style="background: url(imges/2.jpg);height:400px;">
				<div style="border: 5px solid darkgray;width: 40%; height: 30%;background-color: white; position: absolute;top: 250px;left: 405px;" >
				<table width="60%" align="center" >
					<tr >
						<td colspan="2"><font color="blue" size="6">会员登陆</font>USER LOGIN</td>
					</tr>
					
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
						<td><input type="submit"name="whether" value="登录"/></td>
						<td></td>
						<td><input type="submit" name="whether" value="忘记密码"/></td>
						
				</table>	
				</div>
			</div>
			</form>
			<!--5.第四部分：页脚图片部分-->
			<div>
				<img src="imges\footer.jpg"  width="100%"/>
			</div>
			<!--6.第五部分：一堆超链接-->
			<div style="text-align: center;">
				<a href="#">关于我们</a>
				<a href="KEfu.jsp">联系我们</a>
				<a href="#">招贤纳士</a>
				<a href="#">法律声明</a>
				<a href="#">友情链接</a>
				<a href="#">支付方式</a>
				<a href="#">配送方式</a>
				<a href="#">服务声明</a>
				<a href="#">广告声明</a>
				<br/>
				2019-版权所有
			</div>
		</div>
</body>
</html>
