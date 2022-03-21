<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="ISO-8859-1">
        <title>Add Company</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>

        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<script>
            function val(v)
            {
                document.getElementById(v).innerHTML="";
            } 
            function validation()
            {
                var flag=true;
                
                var cmp_name2=document.addcmp.cmp_name1.value;
                var website2=document.addcmp.website1.value;
                var phone2=document.addcmp.phone1.value;
                var Address2=document.addcmp.Address1.value;
                var City2=document.addcmp.City1.value;
				var State2=document.addcmp.State1.value;
				var Country2=document.addcmp.Country1.value;
				 //var fields2=document.addcmp.field1.value;
				 //"((http|https)://)(www.)?"
               /* var regex = "(www.)?"
              	+ "[a-zA-Z0-9@:%._\\+~#?&//=]"
              	+ "{2,256}\\.[a-z]"
              	+ "{2,6}\\b([-a-zA-Z0-9@:%"
              	+ "._\\+~#?&//=]*)";
 				*/
 				var regex=/^((https?|ftp|smtp):\/\/)?(www.)?[a-z0-9]+\.[a-z]+(\/[a-zA-Z0-9#]+\/?)*$/;
                if(cmp_name2==="")
                {
                    document.getElementById('cmp_name_error').innerHTML="Company Name cannot be empty";
                    flag=false;
                }
 				if(!website2.match(regex)){
                	
                    document.getElementById('cmp_web_error').innerHTML="Please Enter Valid Url ";
                    flag=false;
                }
                if(website2==="")
                {
                    document.getElementById('cmp_web_error').innerHTML="Website cannot be empty";
                    flag=false;
                }
                
               
                if(phone2==="")
                {
                    document.getElementById('cmp_phone_error').innerHTML="Phone cannot be empty";
                    flag=false;
                }
                if(Address2==="")
                {
                    document.getElementById('cmp_address_error').innerHTML="Address cannot be empty";
                    flag=false;
                }
                
                if(City2==="")
                {
                    document.getElementById('cmp_city_error').innerHTML="City cannot be empty";
                    flag=false;
                }
				if(State2==="")
                {
                    document.getElementById('cmp_state_error').innerHTML="State cannot be empty";
                    flag=false;
                }
				if(Country2==="")
                {
                    document.getElementById('cmp_country_error').innerHTML="Country cannot be empty";
                    flag=false;
                }
				/*else if(fields2==="")
                {
                    alert("Please select atleast one field");
                    return false;
                }*/
                return flag;
                

            }
        </script>
    </head>
    <body>
        <div class="container-fluid">
       
            <jsp:include page="header.jsp"></jsp:include>
          

                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="reg_div_design">
                            <form method="post" name="addcmp" onsubmit="return validation() "action="addC">
                                <br> <h2>Add Company </h2> <br>
                                 <input type="text" placeholder="Enter Company Name" name="cmp_name1" class="reglog_tf_design" onkeyup="val('cmp_name_error')"/> <br><span id="cmp_name_error" style="color:red"> </span> <br>
                                <input type="text" placeholder="Enter Website Name" name="website1" class="reglog_tf_design" onkeyup="val('cmp_web_error')"/> <br><span id="cmp_web_error" style="color:red"> </span> <br>
                                <input type="text" placeholder="Enter Phone Number" name="phone1" class="reglog_tf_design" onkeyup="val('cmp_phone_error')"/> <br><span id="cmp_phone_error" style="color:red"> </span> <br>
                                <input type="text" placeholder="Enter Address" name="Address1" class="reglog_tf_design" onkeyup="val('cmp_address_error')"/> <br><span id="cmp_address_error" style="color:red"> </span><br>
                                <input type="text" placeholder="Enter City" name="City1" class="reglog_tf_design" onkeyup="val('cmp_city_error')"/> <br><span id="cmp_city_error" style="color:red"> </span> <br>
                                <input type="text" placeholder="Enter State" name="State1" class="reglog_tf_design" onkeyup="val('cmp_state_error')"/> <br><span id="cmp_state_error" style="color:red"> </span> <br>
                                <input type="text" placeholder="Enter Country" name="Country1" class="reglog_tf_design" onkeyup="val('cmp_country_error')"/> <br><span id="cmp_country_error" style="color:red"> </span><br>
                        
                                <select name="field1"  class="reglog_tf_design" onkeyup="val('cmp_field_error')"/> <br><span id="cmp_field_error" style="color:red"> </span>
                                    <option> Select Fields </option>
                                    <option value="IT"> IT </option>
                                    <option value="Account"> Account</option>
                                    <option value="Sales"> Sales </option>
                                    <option value="Health Care"> Health Care </option>
                                    <option value="Finance"> Finance </option>
                                    <option value="HR"> HR </option>
                                </select> <br> <br>
                                
                                <input type="submit" value="AddCompany" class="btn btn-primary" /> <br> <br>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>

        </div>
    </body>
</html>