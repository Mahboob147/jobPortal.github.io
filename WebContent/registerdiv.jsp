<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Register</title>

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
                var id2=document.regform.id1.value;
                var name2=document.regform.name1.value;
                var email2=document.regform.email1.value;
                var pass_1=document.regform.pass1.value;
                var pass_2=document.regform.pass22.value;
                var gender2=document.regform.gender1.value;
                //var fields2=document.regform.field1.value;
                var city2=document.regform.city1.value;
                var name_pattern=/^[a-zA-Z0-9]{3,30}$/;  
                var email_pattern = /^([a-zA-Z0-9])(([a-zA-Z0-9])*([\._\+-])*([a-zA-Z0-9]))*@(([a-zA-Z0-9\-])+(\.))+([a-zA-Z]{2,4})+$/;
                var password_pattern = /^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
                if(id2==="")
                {
                    document.getElementById('id_error').innerHTML="id cannot be empty";
                    flag=false;
                }
                if(!name2.match(name_pattern))
                {
                    document.getElementById('name_error').innerHTML="please enter a proper name";
                    flag=false;
                }
                if(name2==="")
                {
                    document.getElementById('name_error').innerHTML="Name cannot be empty";
                    flag=false;
                }
                if(!email2.match(email_pattern))
                {
                    document.getElementById('email_error').innerHTML="please enter a proper email";
                    flag=false;
                }
                if(email2==="")
                {
                    document.getElementById('email_error').innerHTML="Email cannot be empty";
                    flag=false;
                }
                if(!(pass_1.match(password_pattern))&&(pass_2.match(password_pattern)))
                {
                    document.getElementById('password_error').innerHTML="password(should contains 0-9,special chars,Alphabets)";
                    flag=false;
                }
                if(pass_1===""||pass_2==="")
                {
                    document.getElementById('password_error').innerHTML="Password cannot be empty";
                    flag=false;
                }
                if(gender2==="")
                {
                    document.getElementById('gender_error').innerHTML="Please select gender";
                    flag=false;
                }
                /*else if(fields2==="")
                {
                    alert("Please select atleast one field");
                    return false;
                }*/
                if(city2==="Select City")
                {
                    document.getElementById('city_error').innerHTML="Please select the city";
                    flag=false;
                }
                return flag;
        
            }
        </script>
    </head>
    <body>
        <div class="container-fluid">
           
          

                <div class="row">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <div class="reg_div_design">
                            <form method="post" name="regform" onsubmit="return validation()" action="reg">
                                <br> <h2> SignUp Here </h2> <br>
                                <input type="text" placeholder="Enter id" name="id1" class="reglog_tf_design" onkeyup="val('id_error')" /> <br> <span id="id_error" style="color: red"> </span> <br> 
                                <input type="text" placeholder="Enter User Name" name="name1" class="reglog_tf_design" onkeyup="val('name_error')" /> <br> <span id="name_error" style="color: red"> </span> <br> 
                                <input type="text" placeholder="Enter Email" name="email1" class="reglog_tf_design" onkeyup="val('email_error')" /> <br> <span id="email_error" style="color: red"> </span> <br> 
                                <input type="password" placeholder="Enter Password" name="pass1" class="reglog_tf_design" onkeyup="val('password_error')" /> <br> <span id="password_error" style="color: red"> </span> <br> 
                                <input type="password" placeholder="ReEnter Password " name="pass22" class="reglog_tf_design" onkeyup="val('password_error')" /> <br> <span id="password_error" style="color: red"> </span> <br> 
                                <b> Select Gender : </b> <input type="radio" name="gender1" value="Male" /> Male <input type="radio" name="gender1" value="Female" /> Female <br> <span id="gender_error" style="color: red"> </span>  <br>
                                <b> Select Fields : </b> <input type="checkbox" name="field1" value="Information Technology" /> Information Technology <br>
                                <input type="checkbox" name="field1" value="Marketing" /> Marketing
                                <input type="checkbox" name="field1" value="Finance" /> Finance <br>
                                <select name="city1" class="reglog_tf_design">
                                    <option> Select City </option>
                                    <option value="Chandigarh"> New Delhi </option>
                                    <option value="Panchkula"> Bangolore </option>
                                    <option value="Mohali"> Varanasi </option>
                                </select> <br> <span id="city_error" style="color: red"> </span> <br> <br>
                                <input type="submit" value="Register" class="btn btn-primary" /> <br> <br>
                            </form>
                        </div>
                    </div>
                    <div class="col-md-3"></div>
                </div>

        </div>
    </body>
</html>