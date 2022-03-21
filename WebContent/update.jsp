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
        <title>Update</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>

        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <div class="container-fluid">
            <jsp:include page="header.jsp"></jsp:include>
          
	<%
            	
            	try {
        			Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
                    String id=request.getParameter("id");
                    PreparedStatement ps=con.prepareStatement("select * from company where website=?");
                    ps.setString(1,id);
                    ResultSet resultSet=ps.executeQuery();
                    while(resultSet.next()){
                    %>
                   
                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="reg_div_design">
                            <form method="POST" action="ret">
                                <br> <h2>Update Company </h2> <br>
                                 <input value ="<%=resultSet.getString("name") %>" type="text" placeholder="Enter Company Name" name="cmp_name1" class="reglog_tf_design" /> <br> <br>
                                <input value ="<%=resultSet.getString("website") %>"type="text" placeholder="Enter Website Name" name="website1" class="reglog_tf_design" /> <br> <br>
                                <input value ="<%=resultSet.getString("phone") %>"type="text" placeholder="Enter Phone Number" name="phone1" class="reglog_tf_design" /> <br> <br>
                                <input value ="<%=resultSet.getString("address") %>" type="text" placeholder="Enter Address" name="Address1" class="reglog_tf_design" /> <br> <br>
                                <input value ="<%=resultSet.getString("city") %>" type="text" placeholder="Enter City" name="City1" class="reglog_tf_design" /> <br> <br>
                                <input value ="<%=resultSet.getString("state") %>" type="text" placeholder="Enter State" name="State1" class="reglog_tf_design" /> <br> <br>
                                <input value ="<%=resultSet.getString("country") %>" type="text" placeholder="Enter Country" name="Country1" class="reglog_tf_design" /> <br> <br>
                        
                                <select value ="<%=resultSet.getString("field") %>" name="field1"  class="reglog_tf_design">
                                    <option> Select Fields </option>
                                    <option value="IT"> IT </option>
                                    <option value="Account"> Account</option>
                                    <option value="Sales"> Sales </option>
                                    <option value="Health Care"> Health Care </option>
                                    <option value="Finance"> Finance </option>
                                    <option value="HR"> HR </option>
                                </select> <br> <br>
                            <% }  %>  
                                
                                <input type="submit" value="UpdateCompany" class="btn btn-primary" /> <br> <br>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>
                

        </div>
        			 <% 
            	}

                    	 catch (Exception e) {
                    	e.printStackTrace();
                    	}
                    	%>
    </body>
</html>
        		
            	
                  
                    	