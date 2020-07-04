<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	
	<script type="text/javascript">
	  
	    function showjson(){
	       //json对象
	       var user={
	        
	         "username":"tom",
	         "sex":"nan",
	         "info":{"phone":"15571183379","tel":"62578"},
	         "address":[
	                {"city":"yichang","postcode":"445522"},
	                {"city":"biejin","postcode":"111111"}
	         ]
	       }
	       user.username="qinwang";
	       alert(user.username);
	       alert(user.sex);
	       alert(user.info.phone);
	       alert(user.address[0].city);
	       alert(user.address[0].postcode);
	    }
	    
	    function stringtojson(){
	        
	        var a='{"name":"qinwang","sex":"nan"}';
	        //把字符串转成JSON对象
	        var b=JSON.parse(a);
	        alert(b.name);
	        alert(b.sex);
	    }
	    
	    function jsontostring(){
	        
	        var a={"name":"wang",
	                "sex":"nan",
	                "age":"18"
	                }
	        //把字符串转成JSON对象
	        var b=JSON.stringify(a);
	        alert(b);
	        
	    }
	    
	    function jsoncrud(){
	      
	        var ps={
	          "persons":[
	          {"name":"zhangsan","sex":"nan","age":"80"},
	          {"name":"wangwu","sex":"nan","age":"60"},
	          {"name":"lisi","sex":"nan","age":"70"}
	          ]
	        };
	        alert("前"+JSON.stringify(ps));
	        var a={"name":"qinwang","sex":"nan","age":"20"};
	        //ps.persons.push(a);//加最后
	        ps.persons.splice(1, 0, a)//替换
	        alert("后"+JSON.stringify(ps));
	        
	    }
	
	
	</script>
  </head> 
  <body>
      <input type="button" value="test1" onclick="showjson()"><br>
      <button onclick="stringtojson()">test2</button><br>
      <button onclick="jsontostring()">test3</button><br>
       <button onclick="jsoncrud()">test4</button><br>
  </body>
</html>
