<%-- 
    Document   : EmployeesSpace
    Created on : Apr 13, 2018, 9:03:59 PM
    Author     : ngile
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            
            .navbar {
    overflow: hidden;
    background-color: #333;
    font-family: Arial, Helvetica, sans-serif;
}

.navbar a {
    float: left;
    font-size: 16px;
    color: white;
    text-align: center;
    padding: 14px 36px;
    text-decoration: none;
}

.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}
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
#im{
    position:absolute;top:160px;left:220px;right:400px;bottom: 300px;
    background-color: teal;
}
            
        </style>
    </head>
    <body>
         <div class="navbar">
  <a href="Assigned.jsp">Assigned Jobs</a>
  <a href="Work.jsp">Work</a>
  <a href="SearchC.jsp">Search Cargo</a> 
  <a href="http://www.kwatos.kpa.co.ke">Kwatos Website</a>
  <a href="comments.html">Chat Room</a>
  <a href="Pword.jsp">Password reset</a>
  <a href="viewFiles.jsp">View Files</a>
  <a href="Logout.jsp">Log out</a>
</div> 
        <div id='im'>
            <img src="emp.jpg" height="400" width="835" />
        </div>
    </body>
</html>
