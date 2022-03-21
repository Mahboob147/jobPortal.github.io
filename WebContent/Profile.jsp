

<%@page import="java.io.IOException" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.PreparedStatement" %>
<%@page import="java.sql.ResultSet" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
		<jsp:scriptlet>
    		String name=(String)session.getAttribute("session_name");
    		String gender = (String) session.getAttribute("session_gender");
    	    String city = (String) session.getAttribute("session_city");
    	    String fields = (String) session.getAttribute("session_fields");
    	</jsp:scriptlet>
    	
    	<jsp:scriptlet>
    		if (name == null || name.equals("")) {
        	response.sendRedirect("login.jsp");
    			}
		</jsp:scriptlet>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Job - Profile </title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
		<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
		
		
        <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
         <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
         <script>
                $(document).ready(function() {
                $('#example').DataTable();
                  } );
         </script>
    </head>
    <body style="margin:10px; box-shadow: 0 0 5px rgba(81, 203, 238, 1);">	
    
    	<jsp:include page="profileheader.jsp" />
		<div class="row">
       <div  class="  col-md-3 border shadow py-2 mx-auto text-center text-secondary"> <a href="addcompany.jsp " class=" text "><div  class="col  mx-auto text-center">
			   Add Company</div>
		</div>
		</a>
       </div>
        
        <table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th>Company Name</th>
                <th>Company Website</th>
                <th>Phone Number</th>
                <th>Address</th>
                <th>City</th>
                <th>State</th>
                <th>Country</th>
                <th>Field</th>
                <th>edit</th>
                <th>delete</th>
            </tr>
        </thead>
        <tbody>
        	
        	
        	
            	
            	
            	<%
            	
            	try {
        			Class.forName("com.mysql.jdbc.Driver");
                    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal","root","root");
                    
                    PreparedStatement ps=con.prepareStatement("select * from company ");
                    ResultSet resultSet=ps.executeQuery();
                    int id1=1;
                    while(resultSet.next()){
                   %>
                    	<tr bgcolor="#DEB887">

                    	<td><%=resultSet.getString("name") %></td>
                    	<td id="web<%=id1%>"><%=resultSet.getString("website") %></td>
                    	<td><%=resultSet.getString("phone") %></td>
                    	<td><%=resultSet.getString("address") %></td>
                    	<td><%=resultSet.getString("city") %></td>
                    	<td><%=resultSet.getString("state") %></td>
                    	<td><%=resultSet.getString("country") %></td>
                    	<td><%=resultSet.getString("field") %></td>
                    	<td><a href="update.jsp?id=<%=resultSet.getString("website") %>"> <button class ="btn btn-primary" > Update </button> </a></td>
						<td><a href="delete.jsp?id=<%=resultSet.getString("website") %>"> <button class ="btn btn-primary" > Delete </button> </a></td>
                    	
                    	</tr>
						<% id1++; %>
                    	<% 
                    	}

                    	} catch (Exception e) {
                    	e.printStackTrace();
                    	}
                    	%>
                    	
                    	

                    	
                    	
                    	</table>
                    	<script>
                    		function getString(web){
                    			console.log(web);
                    		}
                    	</script>