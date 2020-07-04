<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript" src="js/json.js"></script>
	<script type="text/javascript" src="js/prototype.js"></script>
	
	<script type="text/javascript">
	
	function usernamecheck(){
	  //获取的输入框内容
	  var name=document.getElementById("name");
	   //请求的url地址
	   var url="CheckUserName?name="+name;
	   //使用Ajax异步请求技术，请求servlet服务
	   new Ajax.Request(url,{
	      method: "get",onComplete: ok})
	
	}
	 //回调函数
	 function ok(d){//d是响应的对象
	    var s=d.responseText//获取响应的内容
	    var a=JSON.parse(s)//把响应的内容从字符串转换成JSON
	    
	    if(a.ishas=="yes"){
	      document.getElementById("span").innerHTML="该账户已注册";
	    }else{
	       document.getElementById("span").innerHTML="该账户没注册";
	    }
	 }
	
	
	
	</script>
  </head>
  <body>
     <form action="">
       用户名：<input type="text" onblur="usernamecheck()" name="name" id="name" placeholder="请输入用户名">
            <span style="color: red" id="span"></span>
     </form>
  </body>
</html>
