<%-- 
    Document   : searchProcs
    Created on : Apr 4, 2018, 10:06:27 PM
    Author     : ngile
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            body{background-color: teal;
                background-image: url("backg.jpeg");
                background-repeat: no-repeat;
                background-position: center center;
                width: 100%;
                height: 100vh;
                background-size: cover;
                position: relative;
        
            
            
            }
            #col{
                color: white;
            }
        </style>
    </head>
    <body>
         <a href="employeesPortal.jsp" id="col"><b>Go back to previous page</b></a><br/>
         <div>
            <center>
         <table border="1">
             
<%
 String cargo=request.getParameter("cli");
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conne = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project", "root", "mainadmin");
String query = "select * from Cargo where CargoId='"+cargo+"'";
Statement st = conne.createStatement();
ResultSet rss = st.executeQuery(query);
if(rss.next()){
%>
<tr>
<tr><td>Cargo Id</td><td><input type="text" name="Id" value="<%=rss.getString("CargoId")%>"></td></tr>
<tr><td>Cargo Type</td><td><input type="text" name="nam" value="<%=rss.getString("CargoType")%>"></td></tr>
<tr><td>Owner</td><td><input type="text" name="owner" value="<%=rss.getString("Owner")%>"></td></tr>
<tr><td>Owners National Id</td><td><input type="Id" name="email" value="<%=rss.getString("NationalId")%>"></td></tr>
<%
}
}
catch(Exception e){}
%>
             
</table>
 <form method="post" action="searchClients.jsp">
                Search Owner</br>
        Select Owners' National Id  <select name="clis" onchange="showEmp(this.value)">  
    
       <%
try{
Class.forName("com.mysql.jdbc.Driver").newInstance();  
Connection conns= DriverManager.getConnection("jdbc:mysql://localhost:3306/Project",
            "root", "mainadmin");
Statement stm = conns.createStatement();  
ResultSet rsts = stm.executeQuery("Select * from Client");
while(rsts.next()){
%>
<option value="<%=rsts.getString("NationalIdNo")%>"><%=rsts.getString("NationalIdNo")%></option> </br>

<%
}

conns.close();
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
