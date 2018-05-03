<%-- 
    Document   : clients
    Created on : Feb 7, 2018, 10:04:26 PM
    Author     : ngile
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <style type="text/css">
            body{
                background-color: teal;
                background-image: url("backg.jpeg");
                background-repeat: no-repeat;
                background-position: center center;
                width: 100%;
                height: 100vh;
                background-size: cover;
                position: relative;
            }
            #login{
                position: absolute;left: 420px;right:421px;
                background-color: teal;
            }
            #comment{
                position:absolute;top:235px;left:10px;right:300px;
            }
            #colp{
                position:absolute;right:115px;top:595px;
                color: #fcf8e3;
            }
        </style>
        <script>  
function validateform(){  
var name=document.myForm.fname.value;  
var lname=document.myForm.lname.value;  
var id=document.myForm.id.value;  
var uname=document.myForm.uname.value;  
var password=document.myForm.pass.value;
var email=document.myForm.email.value;  
var phone=document.myForm.phone.value;  
atpos =email.indexOf("@");
dotpos =email.lastIndexOf(".");
  
if (name==null || name==""){  
  alert("Name can't be blank");  
  document.myForm.fname.focus();
  return false;  
}
 else if (lname==null || lname==""){  
  alert("sName can't be blank");  
  document.myForm.lname.focus();
  return false;  
}
else if (id==null || id==""){  
  alert("Name can't be blank");  
  return false;  
}
else if (uname==null || uname==""){  
  alert("Name can't be blank");  
  return false;  
}
else if(password.length<12){  
  alert("Password must be at least 12 characters long.");  
  return false;  
  }
else if (email==null || email=="" || atpos < 1 || ( dotpos - atpos < 2 ) ){  
  alert("Please enter your email in correct email format");  
  return false;  
  }
else if (phone==null || phone==""){  
  alert("Name can't be blank");  
  return false;  
}

}  
</script>
    </head>
    <body>
        <a href="HOME.html" id="colp"><b>Go to home page</b></a><br/>
        <center>
        <form name="myForm" method="post" onsubmit="validateform()" action="register.jsp" id="login" >
            
        <table border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Sign up Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Surname</td>
                        <td><input type="text" name="lname" value="" /></td>
                    </tr>
                    <tr>
                        <td>National Id</td>
                        <td><input type="text" name="id" value="" /></td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="uname" value="" /></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pass" value="" /></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" value="" /></td>
                    </tr>
                    <tr>
                        <td>Phone no</td>
                        <td><input type="text" name="phone" value="" /></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    
                </tbody>
            </table>
                     </form>
            </center>  
         </body>
</html>
