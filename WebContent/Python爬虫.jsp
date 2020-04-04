<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
  <head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>${sessionScope.yu}</title>
<meta name="keywords" content="详情页" />
<meta name="description" content="详情页" />
 <link rel="stylesheet" type="text/css" href="css/normalize.css"/>
 <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
 <script src="js/common.js" type="text/javascript" charset="utf-8"></script>
   <script type="text/javascript">
  $(document).ready(function(){
	  var showproduct = {
		  "boxid":"showbox",
		  "sumid":"showsum",
		  "boxw":400,//宽度,该版本中请把宽高填写成一样
		  "boxh":400,//高度,该版本中请把宽高填写成一样
		  "sumw":60,//列表每个宽度,该版本中请把宽高填写成一样
		  "sumh":60,//列表每个高度,该版本中请把宽高填写成一样
		  "sumi":7,//列表间隔
		  "sums":5,//列表显示个数
		  "sumsel":"sel",
		  "sumborder":1,//列表边框，没有边框填写0，边框在css中修改
		  "lastid":"showlast",
		  "nextid":"shownext"
		  };//参数定义	  
	 $.ljsGlasses.pcGlasses(showproduct);//方法调用，务必在加载完后执行
  });
</script>
</head>
<body>
 <div class="showall">
	                <!--left -->
	                <div class="showbot">
                    <div id="showbox">
                        <img src="imges/111.png" width="400" height="400" />
                        <img src="imges/111.png" width="400" height="400" />
                        <img src="imges/111.png "width="400" height="400" />
                        <img src="imges/111.png" width="400" height="400" />
                        <img src="imges/111.png" width="400" height="400" />
                        <img src="imges/111.png" width="400" height="400" />
                        
                    </div><!--展示图片盒子-->
                        <div id="showsum">
                        	<!--展示图片里边-->
                        </div>
                        <p class="showpage">
                            <a href="javascript:void(0);" id="showlast"> < </a>
                            <a href="javascript:void(0);" id="shownext"> > </a>
                        </p>
                        </div>
                        <!--conet -->
                        <div class="tb-property">
                        	<div class="tr-nobdr">
                        		<h3> Java 从入门到精通</h3>
                        	</div>
                        		<div class="txt">
                        			<span class="nowprice">￥<a href="#">55.1</a></span>
                        			<div class="cumulative">
                        				<span class="number ty1">累计售出<br /><em id="add_sell_num_363">370</em></span>
                        				<span class="number tyu">累计评价<br /><em id="add_sell_num_363">25</em></span>
                        			</div>
                        		</div>
                        	<div class="txt-h">
                        		<span class="tex-o">分类</span>
                        		<ul class="glist" id="glist" data-monitor="goodsdetails_fenlei_click">
                        			<li><a title="经典" href="#">经典</a></li>
                        			<li><a title="限量" href="#">限量</a></li>
                        		<!--<li><a title="红色36g" href="">红色36g</a></li>
                        			<li><a title="蓝色16g" href="">红色36g</a></li>-->
                        		</ul>
                        	</div>
                        	<script>
                        	$(document).ready(function(){
                          	var t = $("#text_box");
                        	$('#min').attr('disabled',true);
                            	$("#add").click(function(){    
                               	 t.val(parseInt(t.val())+1)
                               	 if (parseInt(t.val())!=1){
                                   	 $('#min').attr('disabled',false);
                                	}
      
                           	 }) 
                            	$("#min").click(function(){
                                	t.val(parseInt(t.val())-1);
                                	if (parseInt(t.val())==1){
                                   	 $('#min').attr('disabled',true);
                                	}
      
                            	})  
                        	});
                        	</script>  
                        	<div class="gcIpt">
                        		<span class="guT">数量</span>
                        		<input id="min" name="" type="button" value="-" />  
                        		<input id="text_box" name="" type="text" value="1"style="width:30px; text-align: center; color: #0F0F0F;"/>  
                        		<input id="add" name="" type="button" value="+" />
                        		<span class="Hgt">库存（99）</span>
                        	</div>
                        	<form action="qukan.do" method="post">
                        	<div class="nobdr-btns">
                        		<button class="addcart hu" name="views" value="add"><img src="imges/shop.png" width="25" height="25"/>加入购物车</button>
                        		<button class="addcart yh" name="views" value="look"><img src="imges/ht.png" width="25" height="25"/>查看购物车</button>
                        	</div>
                        	</form>
                        	<div class="guarantee">
                        		<span>邮费：包邮&nbsp;&nbsp;支持货到付款 <a href="#"><img src="imges/me.png"/></a></span>
                        	</div>
                        </div>
                        <!--right -->
                        <div class="extInfo">
            	            <div class="brand-logo">
            	             	<a href="#" title="在线书城">
            	             		<img src="imges/3.PNG" width="55%"/>
            	             	</a>
            	            </div>
            	            <div class="seller-pop-box">
            	            	<span class="tr">商家名称：兰州理工大学在线书城</span>
            	            	<span class="tr">商家等级：初级店铺</span>
            	            	<span class="tr">商家电话：17318702983</span>
            	            	<span class="tr hoh">
            	            		<a title="甘肃省兰州市七里河区">所在地区：甘肃省兰州市七里河区</a>
            	            	</span>
            	            </div>
            	            <div class="seller-phone">
            	            	<span class="pop im">
            	            		<a href="KEfu.jsp" data-name="联系卖家"><img src="imges/phon.png"/>联系卖家</a>
            	            	</span>
            	            	<span class="pop in">
            	            		<a href="KEfu.jsp" data-name="咨询卖家"><img src="imges/qq.png"/>咨询卖家</a>
            	            	</span>
            	            	<span class="pop in">
            	            		<a href="#" data-name="进店逛逛"><img src="imges/shop-line.png"/>进店逛逛</a>
            	            	</span>
            	            	<span class="pop in">
            	            		<a href="#" data-name="关注店铺"><img src="imges/staar.png"/>关注店铺</a>
            	            	</span>
            	            </div>
            	            <div class="suport-icons">
            	            	<h4>扫一扫<br />手机下单更优惠</h4>
            	            	<img src="imges/ho_11.png" width="50%" height="50%"/>
            	            </div>
                        </div>
                    </div>                
<!-- 推荐搭配 -->                
                <div class="gdetail">
                	<div class="dp_wrap_title">
                		推荐购买
                	</div>
                	<div class="dp_wrap">
                		<!-- 结算 -->
                		<div class="dq_total_wrap">
                			<div class="icon_equal">
                				=
                			</div>
                			<div class="dp_num">已经选择0个书籍
                				<p class="dq_price">总计<span>￥55.1</span>元</p>
                				<button class="get">立即购买</button>
                			</div> 
                		</div>
                		<!-- 搭配1 -->
                		<div class="dq_ori">
                			<a class="dq_ori_prd" href="#"><img src="imges/0002.jpg"/></a>
                			<a class="ori_prd" href="#">Java 从入门到精通</a>
                			<p class="ori_prd dp_wrap_pprice_ori">￥55.1</p>
                		</div>
                		<div class="scroll_wrap">
                			<!-- 搭配2 -->
                			<div class="dp_prd">
                				<div class="icon_plus">+</div>
                				<div class="dp_p_wrap">
                					<a class="dp_wrap_pimg" href="#" target="_blank"><img src="imges/0004.jpg"/></a>
                					<a class="dp_wrap_pname" href="#" target="_blank">Java 从入门到项目实践</a>
                					<p class="dp_wrap_pprice">
                					<label>
                					<input type="checkbox" data-price="199" data-item="570b1b2f5efb114c378b4575">
                					￥45.00
                					</label>
                					</p>
                				</div>
                			</div>
                			<!-- 搭配3 -->
                			<div class="dp_prd">
                				<div class="icon_plus">+</div>
                				<div class="dp_p_wrap">
                					<a class="dp_wrap_pimg" href="#" target="_blank"><img src="imges/0003.jpg"/></a>
                					<a class="dp_wrap_pname" href="#" target="_blank">Java并发编程的艺术</a>
                					<p class="dp_wrap_pprice">
                					<label>
                					<input type="checkbox" data-price="199" data-item="570b1b2f5efb114c378b4575">
                					41.3
                					</label>
                					</p>
                				</div>
                			</div>
                			<!-- 搭配4 -->
                			<div class="dp_prd">
                				<div class="icon_plus">+</div>
                				<div class="dp_p_wrap">
                					<a class="dp_wrap_pimg" href="#" target="_blank"><img src="imges/0005.jpg"/></a>
                					<a class="dp_wrap_pname" href="#" target="_blank">深入理解Java虚拟机</a>
                					<p class="dp_wrap_pprice">
                					<label>
                					<input type="checkbox" data-price="199" data-item="570b1b2f5efb114c378b4575">
                					￥57.9
                					</label>
                					</p>
                				</div>
                			</div>
                			<!-- 产品结束 -->
                		</div>
                	</div>
                </div>      
                
<!-- 商品介紹 -->                
                <div class="gdetail">
                	<!-- left -->
                	<div class="aside">
                		  <h3>看了还看<span><img src="imges/fod.png"width="22" height="22"/>换一批</span></h3>
                		  <dl class="ac-mod-list">
                		  	<dt><a href="#"><img src="imges/0006.jpg"/></a></dt>
                		  	<dd>
                		  		  Java项目开发全程实录
                		  		  <span>￥66.3</span>
                		  	</dd>
                		  </dl>
                		  <dl class="ac-mod-list">
                		  	<dt><a href="#"><img src="imges/0007.jpg"/></a></dt>
                		  	<dd>
                		  		  Java项目开发全程实录
                		  		  <span>￥66.3</span>
                		  	</dd>
                		  </dl>
                		  <dl class="ac-mod-list">
                		  	<dt><a href="#"><img src="imges/0008.png"/></a></dt>
                		  	<dd>
                		  		  Java从小白到大牛
                		  		  <span>￥78.2</span>
                		  	</dd>
                		  </dl>
                	</div>
                	<!-- right -->
                	<script>
                	var detail = document.querySelector('.detail');
var origOffsetY = detail.offsetTop;
function onScroll(e) {
window.scrollY >= origOffsetY ? detail.classList.add('sticky') :
detail.classList.remove('sticky');
}
document.addEventListener('scroll', onScroll); 
</script>
                	<div class="detail">
                		<div class="active_tab" id="outer">
													<ul class="act_title_left" id="tab">
														<li class="act_active">
															<a href="#">商品介绍</a>
														</li>
														<li>
															<a href="#">商品内容</a>
														</li>
														<li>
															<a href="#">商品评价</a>
														</li>
														<li>
															<a href="#">售后保障</a>
														</li>
													</ul>
													<ul class="act_title_right">
														<li class="mui">  
															<a id="mui-a" href="#">扫手机下单+</a>
														</li>
														<li class="mui-ac">
															<a href="#">加入购物车</a>
														</li>
													</ul>
													<div class="clear"></div>
												</div>
												<div id="content" class="active_list"> 
													<!--0-->
													<div id="ui-a" class="ui-a">
												        <ul style="display:block;">
												        <li>商品名称：Python(第5五版)</li>
												        <li>商品编码：12555860</li>
												        <li>品牌：清华大学出版社（TSINGHUA UNIVERSITY PRESS）</li>
												        <li>出版时间：2019-02-01</li>
												        <li>字数：1090000</li>
												        <li>ISBN：9787302517597</li>
												        <li><img src="imges/112.jpg"/></li>
												        </ul>
												   </div>
												   <!--商品规格-->
												    	<div id="bit" class="bit">
												        <ul style="display:none;">
												            <li><img src="imges/113.png"/></li>
												            <li><img src="imges/114.png"/></li>
												            <li><img src="imges/115.png"/></li>
												            <li><img src="imges/00013.PNG"/></li>
												            <li><img src="imges/00014.PNG"/></li>
												                
												       </ul>
												       </div>
												       
												 <!--商品评价-->      
												   
												    <div id="ui-c" class="ui-c">
												         <ul style="display:none;">
												         	  <li><img src="imges/112.png"/></li>
												         	  <li><img src="imges/00018.PNG"/></li>
												         </ul>
												    </div>
												 <!--售后保障-->
												 <div id="uic" class="uic">
												         <ul style="display:none;">
												         	<p>商品名称：Python(第5版)</p>
												         	<p>商品编码：12555860</p>
												         	<p>品牌:商品编码：12555860</p>
												         	<p>出版时间：2019-02-01</p>
												         	<span><img src="imges/00016.PNG"/></span>
												            
												         </ul>
												    </div>
												</div>
												<script>
													$(function(){
														window.onload = function()
														{
															var $li = $('#tab li');
															var $ul = $('#content ul');
																		
															$li.mouseover(function(){
																var $this = $(this);
																var $t = $this.index();
																$li.removeClass();
																$this.addClass('act_active');
																$ul.css('display','none');
																$ul.eq($t).css('display','block');
															})
														}
													});  
												</script>
                	</div>
                </div>
                
</body>
</html>
