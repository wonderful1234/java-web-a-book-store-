<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎注册</title>
<style>
::-webkit-input-placeholder { /* WebKit, Blink, Edge */
	color: #FF0000;
}

:-moz-placeholder { /* Mozilla Firefox 4 to 18 */
	color: #FF0000;
	opacity: 1;
}
::-moz-placeholder { /* Mozilla Firefox 19+ */
	color: #FF0000;
	opacity: 1;
}

:-ms-input-placeholder { /* Internet Explorer 10-11 */
	color: #FF0000;
}
</style>
<script language="JavaScript" type="text/javascript">
    var xmlHttp;
	var InterValObj; //timer变量，控制时间
	var count = 60; //间隔函数，1秒执行
	var curCount;//当前剩余秒数
	function sendMessage() {
		curCount = count;
		// 设置button效果，开始计时
		document.getElementById("btnSendCode").setAttribute("disabled", "true");//设置按钮为禁用状态
		document.getElementById("btnSendCode").value = "请在" + curCount
				+ "后再次获取";//更改按钮文字
		InterValObj = window.setInterval(SetRemainTime, 1000);  // 启动计时器timer处理函数，1秒执行一次
		validate();		
				
	}

	//timer处理函数

	function SetRemainTime() {
		if (curCount == 0) {
			window.clearInterval(InterValObj);// 停止计时器
			document.getElementById("btnSendCode").removeAttribute("disabled");//移除禁用状态改为可用
			document.getElementById("btnSendCode").value = "重新发送验证码";
		} else {
			curCount--;
			document.getElementById("btnSendCode").value = "请在" + curCount
					+ "秒后再次获取";
		}
	}
	function custCheck() {
		var username = document.getElementById("username");
		var email = document.getElementById("email");
		var password = document.getElementById("password");
		var repassword = document.getElementById("repassword");
		var phone = document.getElementById("phones");
		var yanzheng=document.getElementById("yanzheng");
		var phoneReg = /^1[3-578]\d{9}$/;
		var p = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
		if (username.value.length<6||username.value.length>10) {
			alert("用户名的长度介于6-10!");
			return false;
		} else if (password.value.length<6||password.value.length>16) {
			alert("密码长度介于6-16!");
			return false;
		} else if (password.value != repassword.value) {
			alert("两次密码必须一致!");
			return false;
		} else if (p.test(email.value) == false) {
			alert("邮箱格式不正确!");
			return false;
		}else if (phoneReg.test(phone.value) == false) {
			alert("请输入电话号码");
			return false;
		}else if (yanzheng.value.length<6) {
			alert("请输入验证码");
			return false;
		}
	}
	function createXMLHttpRequest() {
	    if (window.ActiveXObject) {
	        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
	    } 
	    else if (window.XMLHttpRequest) {
	        xmlHttp = new XMLHttpRequest();
	    }
	  }  

	  function validate() {
	    createXMLHttpRequest();
	    var username = document.getElementById("phone");
	    var url = "validation.do?phone=" + escape(phone.value);
	    xmlHttp.open("GET", url, true);
	    xmlHttp.onreadystatechange = handleStateChange;    
	    xmlHttp.send(null);
	  }

	  function handleStateChange() {
	    if(xmlHttp.readyState == 4){
	      if(xmlHttp.status == 200){
	        var message = xmlHttp.responseXML.
	          getElementsByTagName("message")[0].firstChild.data;
	        var messageArea = document.getElementById("results");
	        messageArea.innerHTML = "<p>" + message + "</p>";
	      }
	    }
	  }
</script>
<style>
.LOGO {
	float: left;
	width: 33%;
	/*border-width: 1px;
			border-style: solid;
			border-color: red; */
	/*border: 1px solid red;*/
	height: 60px;
	line-height: 60px;
}

.amenu {
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
			<img src="imges\3.PNG" width="55%" />
		</div>
		<div class="LOGO">
			<img src="imges\header.jpg" />
		</div>
		<div class="LOGO">
			<a href="login.jsp">登录</a> <a href="#">注册</a>
			${sessionScope.messagess}
		</div>

	</div>
	<!--清除浮动-->
	<div style="clear: both;"></div>
	<!--3.第二部分：导航栏部分-->
	<div style="background-color: black; height: 50px;">
		<a href="#" class="amenu">首页</a> <a href="#" class="amenu">技术书籍</a> <a
			href="#" class="amenu">百科知识</a> <a href="#" class="amenu">报刊杂志</a>
	</div>
	<!--4.第三部分：注册页面部分-->
	<div style="background: url(imges/5.jpg); height: 600px;">
		<div
			style="border: 5px solid darkgray; width: 40%; height: 65%; background-color: white; position: absolute; top: 220px; left: 405px;">
			<table width="80%" align="center">
				<tr>
					<td colspan="2"><font color="blue" size="6">会员注册</font>USER
						REGISTER</td>
				</tr>
				<tr>
					<td>电话：</td>
					<td><input type="text" name="rphone"id="phone" /></td>
					<td><input id="btnSendCode" name="btnSendCode" type="button"
						value="点击获取验证码" onclick="sendMessage();" /></td>
						<div id="results" ></div>
				</tr>
				<form action="register.do" method="post"
					onSubmit="return custCheck()">
				<tr>
					<td>验证码：</td>
					<td><input type="text" name="yanzheng" id="yanzheng" /></td>
				</tr>
				<tr>
					<td>用户名：</td>
					<td><input type="text" placeholder="用户名的长度介于6-10"
						name="rusername" id="username" /></td>
				</tr>
				<tr>
					<td>密码：</td>
					<td><input type="password" placeholder="密码长度介于6-16"
						name="rpassword" id="password" /></td>
				</tr>
				<tr>
					<td>确认密码：</td>
					<td><input type="password" placeholder="请确认密码" name="pass"
						id="repassword" /></td>
				</tr>
				<tr>
					<td>确定电话：</td>
					<td><input type="text" name="rphone" id="phones" /></td>
				</tr>
				<tr>
					<td>email：</td>
					<td><input type="text" name="mail" id="email" /></td>
				</tr>
				<tr>
					<td>性别：</td>
					<td><input type="radio" value="男" name="sex" />男 <input
						type="radio" value="女" name="sex" />女</td>
				</tr>
				<tr>
					<td>出生日期：</td>
					<td><input type="date" /></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" name="viewsg" value="注册" /></td>
				</tr>
			</table>
		</div>
	</div>
	</form>

	<!--5.第四部分：页脚图片部分-->
	<div>
		<img src="imges\footer.jpg" width="100%" />
	</div>
	<!--6.第五部分：一堆超链接-->
	<div style="text-align: center;">
		<a href="#">关于我们</a> <a href="#">联系我们</a> <a href="#">招贤纳士</a> <a
			href="#">法律声明</a> <a href="#">友情链接</a> <a href="#">支付方式</a> <a
			href="#">配送方式</a> <a href="#">服务声明</a> <a href="#">广告声明</a> <br />
		2019-版权所有
	</div>
	</div>
</body>
</html>
