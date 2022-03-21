<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:scriptlet>
    String name=(String)session.getAttribute("session_name");
    String gender=(String)session.getAttribute("session_gender");
	</jsp:scriptlet>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="../css/style.css">
<title> Welcome : <jsp:expression> name </jsp:expression> </title>
</head>
<body>
	<div class="row justify-content-end ">

			
             <div class="col  justify-content-end my-2 lead " >
                <span > Welcome : <a href="Profile.jsp"></a> <jsp:expression> name </jsp:expression>  </span>
                
   
            	<a href="Logout" class="hyperlinks_design_align"> Logout </a>
            </div>
          
        </div>
</body>
</html>