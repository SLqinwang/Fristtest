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
	    	//��ȡ���������ֵ
	    	String name=req.getParameter("name");
	    	System.out.println("�û���"+name); 
	    	
	    	//��ʽһ  ƴ���ַ���
	    	String s="";//���ؽ����JSON�ı�
	    	if(name.equals("admin")){
	    		 s="{\"ishas\":\"yes\"}";//{"ishas":"yes"}
	    	 }else{
	    		 s="{\"ishas\":\"no\"}" ;
	    	 }
	    	
	    	//��ʽ��ʹ���ഴ��
	    	/*JSONObject obj=new JSONObject();
	    	 if(name.equals("admin")){
	    		obj.element("ishas", "yes");
	    	 }else{
	    		 obj.element("ishas", "no");
	    	 } 
	    	  
	    	 //ת�ַ���s
	    	  s=obj.toString();*/
	    	
	    	 System.out.println(s);
	    	 PrintWriter writer = resp.getWriter();
	    	 writer.print(s);
	    	 writer.close();
	    	 
	    	 
	    	 
	    }
}
