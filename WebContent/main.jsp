<%@ page language="java"  contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>欢迎</title>
<embed src="song/jiaoluo.mp3" hidden="true" autostart="true" loop="true">
<script>
			var index = 0;
			
			function changeImg(){
				
				//1. 获得要切换图片的那个元素
				var img = document.getElementById("img1");
				
				//计算出当前要切换到第几张图片
				var curIndex = index%4 + 1;  //0,1,2 
				img.src="imge/"+curIndex+".jpg";  //1,2,3
				//每切换完,索引加1
				index = index + 1;
			}
			
			function init(){
				
				setInterval("changeImg()",2000);
			}
			
		</script>
</head>
<style type="text/css">
input{outline:none;background-color:transparent;font-size:20px;font-family:楷体;color:black; }
</style>
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
		}
		.product{
			style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;"
		}
	</style>
	<body onload="init()">
		
		<div>
			<!--第一部分。LOGO部分，创建三个div-->
			<div>
				<div class="LOGO">
					<img src="imges/3.PNG" width="55%"/>
				</div>
				<div class="LOGO">
					<img src="imges/header.jpg"  />
				</div>
				<div class="LOGO">
					<a href="Shutdown.jsp">注销</a>
					<a href="Deallook.jsp" >购物车</a>
			                欢迎${sessionScope.messages}
				</div>
			</div>
			<!--清除浮动-->
			<div style="clear: both;"></div>
			<!--第二部分：导航栏部分 放置5个超链接-->
			<div style="background-color: black; height: 50px;">
				<a href="#" class="amenu">首页</a>
				<a href="#" class="amenu">技术书籍</a>
				<a href="#" class="amenu">百科知识</a>
				<a href="#" class="amenu">报刊杂志</a>
			</div>
			<!--第三部分:轮播图-->
			<div>
				<img src="imge/1.jpg"  width="100%" id="img1"/>
			</div>
			<!--第四部分-->
			<div>
				<div><h2>最新书籍</h2></div>
				<!--左侧广告图-->
				<div style="width: 15%; height: 480px;  float: left;">
					<img src="imges/5.png" width="100%" height="100%"/>
				</div>
				<!--右侧商品图-->
				<div style="width: 84%; height: 480px;  float: left;">
					<div style="height: 240px;width: 50%; float: left;">
						<img src="imges/9.jpg" height="100%%" width="100%"/>
					</div>
					<form action="main.do" method="post">
					<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/8.jpg" />
						<input type="submit" name="cbtn" value="Python爬虫"/>
						<p style="color: red;">¥69.8</p>
					</div>
					<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/12.jpg" />
						<input type="submit" name="cbtn" value="机器学习"/>
						<p style="color: red;">¥46.6</p>
					</div>
					<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/13.jpg" />
						<input type="submit" name="cbtn"value="黑客心理学"/>
						<p style="color: red;">¥84.50</p>
					</div>
					<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/14.jpg"  />
						<input type="submit"name="cbtn" value="人生海海"/>
						<p style="color: red;">¥41.20</p>
					</div>
					<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/15.jpg" />
						<input type="submit" name="cbtn"value="星火英语四级"/>
						<p style="color: red;">¥37.40</p>
					</div>
					<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/16.jpg" />
						<input type="submit" name="cbtn"value="吃货最怕做饿梦"/>
						<p style="color: red;">¥32.60</p>
					</div>
					<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/17.png" />
						<input type="submit"name="cbtn" value="卷积神经网络"/>
						<p style="color: red;">¥75.90</p>
					</div>
<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/18.jpg" />
						<input type="submit"name="cbtn" value="分析之美"/>
						<p style="color: red;">¥103.70</p>
					</div>
					<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/19.jpg" />
						<input type="submit" name="cbtn"value="精通Java"/>
						<p style="color: red;">¥55.10</p>
					</div>
				</div>
			</div>
			<!--第五部分：放置一张图片-->
			<div>
				 <!-- <img src="imges/19.jpg" width="100%"> -->
			</div>
			<!--第六部分：抄第四部分-->
			<div>
				<div><h2>最新书籍</h2>
			</div>
				<!--左侧广告图-->
				<div style="width: 15%; height: 480px; border: 1px solid red; float: left;">
					<img src="imges/4.gif" width="100%" height="100%"/>
				</div>
				<!--右侧商品图-->
				<div style="width: 84%; height: 480px;  float: left;">
					<div style="height: 240px;width: 50%; float: left;">
						<img src="imges/10.jpg" height="100%" width="100%"/>
					</div>
					<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/19.jpg" />
						<input type="submit" name="cbtn"value="精通Java"/>
						<p style="color: red;">¥55.1</p>
					</div>
					<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/18.jpg" />
						<input type="submit"name="cbtn" value="分析之美"/>
						<p style="color: red;">¥103.70</p>
					</div>
					<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/16.jpg" />
						<input type="submit"name="cbtn" value="吃货最怕做饿梦"/>
						<p style="color: red;">¥32.60</p>
					</div>
					<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/17.png" />
						<input type="submit"name="cbtn" value="卷积神经网络"/>
						<p style="color: red;">¥75.90</p>
					</div>
					<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/8.jpg" />
						<input type="submit" name="cbtn"value="Python爬虫"/>
						<p style="color: red;">¥69.8</p>
					</div>
					<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/12.jpg" />
						<input type="submit" name="cbtn"value="机器学习"/>
						<p style="color: red;">¥46.6</p>
					</div>
					<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/13.jpg" />
						<input type="submit" name="cbtn"value="黑客心理学"/>
						<p style="color: red;">¥84.50</p>
					</div>
					<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/15.jpg" />
						<input type="submit"name="cbtn" value="星火英语四级"/>
						<p style="color: red;">¥37.40</p>
					</div>
					<div style="float: left;text-align: center;border: 1px solid green;width: 16%; height: 240px;" >
						<img src="imges/14.jpg" />
						<input type="submit"name="cbtn" value="人生海海"/>
						<p style="color: red;">¥41.20</p>
					</div>
				</div>
			</div>
			</form>
			<!--第七部分：放置一张图片-->
			<div>
				<img src="imges/footer.jpg"  width="100%"/>
			</div>
			<!--第八部分：放置一堆超链接-->
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
<html> 
					
