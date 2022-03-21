package com.mahboob.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;;

public class UpdateCompany extends HttpServlet {
		@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			resp.setContentType("text/html");
	        PrintWriter out=resp.getWriter();
	        String cmp_name2=req.getParameter("cmp_name1");
	        String website2 =req.getParameter("website1");
	        String phone2 =req.getParameter("phone1");
	        String Address2=req.getParameter("Address1");
	        String City2=req.getParameter("City1");
	        String State2=req.getParameter("State1");
	        String Country2=req.getParameter("Country1");
	        String field2=req.getParameter("field1");
//	        String fields2="";
//	        for(String s:field2)
//	        {
//	            fields2=fields2+s;
//	        }
	        
	        try
	        {
	        	
	            Class.forName("com.mysql.jdbc.Driver");
	            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
	          
	            String str="update company set name=?, website=?, phone=? ,address=? ,city=?,state=?,country=? ,field=? where website=?";
	           
	          
	         
	          PreparedStatement ps=con.prepareStatement(str);  
	          
	            ps.setString(1, cmp_name2);
	            
	            ps.setString(2, website2);
	            ps.setString(3, phone2);
	            ps.setString(4, Address2);
	            
	            ps.setString(5, City2);
	            ps.setString(6, State2);
	            ps.setString(7, Country2);
	            ps.setString(8, field2);
	            ps.setString(9,website2);
	            
	            int i=ps.executeUpdate();  
	            
	            
	             if(i>0)
	             {
	            	 
	            	 resp.sendRedirect("updsuccess.jsp");
	            	 
	             }
	              
	             else {
	            	 out.print("failed");
	             }
	           
	        }
	        catch(Exception e)
	        {
	            e.printStackTrace();
	        }
		}
}
