<%-- 
    Document   : views
    Created on : Mar 27, 2018, 8:09:45 PM
    Author     : ngile
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
div.box{margin:2px;border:1px white;padding:10px;background-color:teal}
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
           #colps{
                position:absolute;right:115px;top:5px;
                color:black;
                background-color: white;
            }
</style>
</head>
<body>
<a href="Logout.jsp" id="colps"><b>Log out</b></a>
<%@ page import="java.sql.*" %>
<%


try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project",
            "root", "mainadmin");
PreparedStatement ps2=con.prepareStatement("select * from Comments order by id desc");
ResultSet rs=ps2.executeQuery();

out.print("<hr/><center><h2> Clients' Comments and Feedback:</h2></center>");
while(rs.next()){
out.print("<div class='box'>");
out.print("<p>"+rs.getString(3)+"</p>");
out.print("<p><strong>By: "+rs.getString(2)+"</strong></p>");
out.print("</div>");
}
con.close();
}catch(Exception e){out.print(e);}

%>
</body>
</html>