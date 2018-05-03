<%-- 
    Document   : logins
    Created on : Feb 9, 2018, 2:49:37 PM
    Author     : ngile
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style type="text/css">
            body{
                background-color:teal;
                background-image: url("backg.jpeg");
                background-repeat: no-repeat;
                background-position: center center;
                width: 100%;
                height: 100vh;
                background-size: cover;
                position: relative;
            }
            #main{
                background-color: teal;
                color: white;
                    
            }
            </style>
    </head>    
    <body>
        <div id="main">
        <center>
        <%
   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
 %>
         <%@ page import ="java.sql.*" %>
         <%@page import ="java.security.MessageDigest" %>
         <%@page import ="java.io.BufferedReader" %>
<%@page import ="java.io.IOException" %>
<%@page import ="java.io.InputStreamReader" %> 
<%@page import ="java.io.UnsupportedEncodingException" %>
<%@page import ="java.security.NoSuchAlgorithmException" %>
<%@page import="sec.AeSimpleSHA1"%>
<%
    String userid = request.getParameter("uname");  
    String pwd = request.getParameter("pass");
    String Epword= AeSimpleSHA1.SHA1(pwd);
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project",
            "root", "mainadmin");
    Statement st = con.createStatement();
    ResultSet rs;
    
    rs = st.executeQuery("select * from Client where UserName='" + userid + "' and PassWord='" + Epword+ "' ");
    if (rs.next()) {
        session.setAttribute("userid", userid);
        session.setAttribute("Epword", Epword);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("Success.jsp");
    } else {
        out.println("Invalid password  or username<a href='logind.html'></br><b>try again</b></a>");
    }
%>
    </center>
</div>
    </body>
</html>
