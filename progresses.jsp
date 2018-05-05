<%-- 
    Document   : progresses
    Created on : Mar 22, 2018, 11:08:49 AM
    Author     : ngile
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "Project";      
String userid = "root";
String password = "mainadmin";
String pas=request.getParameter("pass");

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
            #selec{
              color: skyblue;
              background-color: black;
          }
          #del{
              color: black;
          }
        </style>
    </head>
    <body>
         <a href="admin.jsp" id="col"></a><br/>
        <div id="quer">
            <center>
            <table border="1" id="selec">
                <thead>
                    <tr>
                        <th colspan="6">Progresses</th>
                    </tr>
                </thead>
                
<tr>
    <td><b>Cargo Id</b></td>
    <td><b>Cargo Type</b></td>
    <td><b>Client</b></td>
    <td><b>Cargo Description</b></td>
    <td><b>Clearing Progress</b></td>
    <td><b>Status</b></td>
    
    

</tr>
<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project",
            "root", "mainadmin");
statement=connection.createStatement();
String sql ="select * from Cargo";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
    <td><a href="" id="selec"><%=resultSet.getString("CargoId") %></a></td>
    <td><a href="" id="selec"><%=resultSet.getString("CargoType") %></a></td>
    <td><a href="" id="selec"><%=resultSet.getString("Owner") %></a></td>
    <td><a href="" id="selec"><%=resultSet.getString("CargoDescription") %></a></td>
     <td><a href="" id="selec"><%=resultSet.getString("ClearingProgress") %></a></td>
    <td><a href="" id="selec"><%=resultSet.getString("Status") %></a></td>


</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
            
            </table>
</center>
        </div>

   </body>
</html>
