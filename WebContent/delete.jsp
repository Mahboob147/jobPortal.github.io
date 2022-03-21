<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.io.IOException" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
			            	<%
            	
            	try {
        			Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
                    String id=request.getParameter("id");
                    PreparedStatement ps=con.prepareStatement("delete  from company where website=?");
                    ps.setString(1,id);
                   int row=ps.executeUpdate();
                   response.sendRedirect("Profile.jsp");
            	}
			    catch(Exception e){
			    	e.printStackTrace();
			    }
			            	%>
			    
</body>
</html>