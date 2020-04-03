<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="main.jsp"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>在线QQ客服</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>

</head>
<body style="height:3000px">

<div id="rightArrow"><a href="javascript:;" title="在线客户"></a></div>
<div id="floatDivBoxs">
	<div class="floatDtt">在线客服</div>
    <div class="floatShadow">
        <ul class="floatDqq">
            <li style="padding-left:0px;"><a target="_blank" href="tencent://message/?uin=1715537876&Site=sc.chinaz.com&Menu=yes"><img src="imges/qqs.png" align="absmiddle">&nbsp;&nbsp;1号客服小哥哥</a></li>
            <li style="padding-left:0px;"><a target="_blank" href="tencent://message/?uin=1559916556&Site=sc.chinaz.com&Menu=yes"><img src="imges/qqs.png" align="absmiddle">&nbsp;&nbsp;2号客服小姐姐</a></li>
            <li style="padding-left:0px;"><a target="_blank" href="tencent://message/?uin=1516274631&Site=sc.chinaz.com&Menu=yes"><img src="imges/qqs.png" align="absmiddle">&nbsp;&nbsp;3号客服小姐姐</a></li>
			<li style="padding-left:0px;"><a target="_blank" href="tencent://message/?uin=3133169343&Site=sc.chinaz.com&Menu=yes"><img src="imges/qqs.png" align="absmiddle">&nbsp;&nbsp;4号客服小哥哥</a></li>
            <li style="padding-left:0px;"><a target="_blank" href="tencent://message/?uin=1047120398&Site=sc.chinaz.com&Menu=yes"><img src="imges/qqs.png" align="absmiddle">&nbsp;&nbsp;5号客服小哥哥</a></li>
        </ul>
        <div class="floatDtxt">热线电话</div>
        <div class="floatDtel"><img src="imges/phoness.png" width="155" height="45" alt=""></div>
    </div>
    <div class="floatDbg"></div>
</div>

<script type="text/javascript">
var flag=1;
$('#rightArrow').click(function(){
	if(flag==1){
		$("#floatDivBoxs").animate({right: '-175px'},300);
		$(this).animate({right: '-5px'},300);
		$(this).css('background-position','-50px 0');
		flag=0;
	}else{
		$("#floatDivBoxs").animate({right: '0'},300);
		$(this).animate({right: '170px'},300);
		$(this).css('background-position','0px 0');
		flag=1;
	}
});
</script>


</body>
</html>