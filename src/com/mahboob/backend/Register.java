package com.mahboob.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Register extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
        PrintWriter out=resp.getWriter();
        String id2=req.getParameter("id1");
        String name2=req.getParameter("name1");
        String email2=req.getParameter("email1");
        String pass2=req.getParameter("pass1");
        String pass_2=req.getParameter("pass22");
        String gender2=req.getParameter("gender1");
        String[] field2=req.getParameterValues("field1");
        String city2=req.getParameter("city1");
        boolean flag=true;
        int i=0;
        if(pass2!=pass_2) flag=false;
        
        String fields2="";
        for(String s:field2)
        {
            fields2=fields2+","+s;
        }
        
        try
        {
        	
            Class.forName("com.mysql.jdbc.Driver");
            
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
          
            PreparedStatement ps=con.prepareStatement("insert into register values(?,?,?,?,?,?,?)");
            ps.setString(1, id2);
            ps.setString(2, name2);
            ps.setString(3, email2);
            ps.setString(4, pass2);
            ps.setString(5, gender2);
            ps.setString(6, fields2);
            ps.setString(7, city2);
            if(flag==true) i=ps.executeUpdate();
            if(i>0&& flag==true)
            {
            	resp.sendRedirect("login.jsp");
            }
            else
            {
            	RequestDispatcher rd1=req.getRequestDispatcher("header.jsp");
                rd1.include(req, resp);
             
                
                RequestDispatcher rd3=req.getRequestDispatcher("registererror.jsp");
                rd3.include(req, resp);
                
                RequestDispatcher rd4=req.getRequestDispatcher("registerdiv.jsp");
                rd4.include(req, resp);
                
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
	}
}
