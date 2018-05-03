<%-- 
    Document   : SearchC
    Created on : Apr 13, 2018, 10:14:14 PM
    Author     : ngile
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<% 
String user=(String)session.getAttribute("userid"); 
String pass=(String)session.getAttribute("pwd"); 
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "Project";      
String userid = "root";
String password = "mainadmin";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;


%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
            #difc{
              color: skyblue;
              background-color: black;
          }
          #del{
              color: black;
          }
        </style>
    </head>
    <body>
        <div id="difc">
            <center>
        <form method="post" action="searchProcs.jsp">
            <b>Search Cargo</b></br>
        Select Cargo Id  <select name="cli" onchange="showEmp(this.value)">  
    
       <%
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();  
Connection conns= DriverManager.getConnection("jdbc:mysql://localhost:3306/Project",
            "root", "mainadmin");
Statement stm = conns.createStatement();  
ResultSet rsts = stm.executeQuery("Select * from Cargo");
while(rsts.next()){
%>
<option value="<%=rsts.getString("CargoId")%>"><%=rsts.getString("CargoId")%></option> </br>

<%
}

connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
      </select> 
      </br>
      <td><input type="submit" value="Search"/></td>
      <td><input type="reset" value="CANCEL"/></td>
                </form>
        </center>
    </div>
    </body>
</html>
