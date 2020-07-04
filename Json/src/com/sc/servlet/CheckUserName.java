package com.sc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONObject;

@WebServlet("/CheckUserName")
public class CheckUserName extends HttpServlet {
   
	    @Override
	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    	//获取请求参数的值
	    	String name=req.getParameter("name");
	    	System.out.println("用户是"+name); 
	    	
	    	//方式一  拼接字符串
	    	String s="";//返回结果的JSON文本
	    	if(name.equals("admin")){
	    		 s="{\"ishas\":\"yes\"}";//{"ishas":"yes"}
	    	 }else{
	    		 s="{\"ishas\":\"no\"}" ;
	    	 }
	    	
	    	//方式二使用类创建
	    	/*JSONObject obj=new JSONObject();
	    	 if(name.equals("admin")){
	    		obj.element("ishas", "yes");
	    	 }else{
	    		 obj.element("ishas", "no");
	    	 } 
	    	  
	    	 //转字符给s
	    	  s=obj.toString();*/
	    	
	    	 System.out.println(s);
	    	 PrintWriter writer = resp.getWriter();
	    	 writer.print(s);
	    	 writer.close();
	    	 
	    	 
	    	 
	    }
}
