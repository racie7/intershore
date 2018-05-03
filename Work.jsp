<%-- 
    Document   : Work
    Created on : Apr 13, 2018, 9:59:06 PM
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
            #work{
              color: skyblue;
              background-color: black;
          }
          #del{
              color: black;
          }
          #dash{
                position:absolute;right:115px;top:595px;
                color: white;
            }
            #dashe{
                position:absolute;right:115px;top:595px;
                color: white;
            }
        </style>
    </head>
    <body>
        <div id="work">
            <center>
    <form name="wrk" action="works.jsp" method="post">
        
    <b>Work on a job</b></br>
    Select Job  <select name="dept"> 
         <%
 Class.forName("com.mysql.jdbc.Driver");  
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","root","mainadmin");  
 Statement stmt = con.createStatement();  
 ResultSet rs = stmt.executeQuery("Select * from Jobs where EmployeeId='"+ user+"'");
 while(rs.next()){
     %>
      <option value="<%=rs.getString("JobId")%>"><%=rs.getString("JobId")%></option>  
      <%
 }
     %>
     </select>
     </br>
     <input type="checkbox" name="vehicle" value=""> Arrival at the port</br>
     <input type="checkbox" name="vehicle" value=""> Long room Formalities </br>
     <input type="checkbox" name="vehicle" value=""> Customs clearance</br>
     <input type="checkbox" name="vehicle" value=""> Pick up order </br>
     <textarea rows="4" cols="50" name="updates">
        Brief about your clearing progress on this job
     </textarea> </br>
     <b> <input type="submit" value="UPDATE"/></b>
     
     
    </form>
            </center>
</div>
     
         <a href="EmployeesSpace.jsp" id="dash">Go to Dashboard</a>
         
     
    </body>
</html>
