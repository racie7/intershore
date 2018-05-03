<%-- 
    Document   : updateProc
    Created on : Mar 24, 2018, 9:41:46 AM
    Author     : ngile
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@ page import ="java.sql.*" %>
<%
    String ids=request.getParameter("depts");
    String id = request.getParameter("id");    
    String fname = request.getParameter("fname");
    String sname = request.getParameter("sname");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project",
            "root", "mainadmin");
    Statement st = con.createStatement();
    
    //ResultSet rs;
    int i = st.executeUpdate("update Employee set EmployeeId='" + id + "',FirstName='" + fname + "',SurName='" + sname + "' where EmployeeId='" +ids +"' ");
    if (i > 0) {
        //session.setAttribute("userid", user);
        response.sendRedirect("feedback3.jsp");
       
    } else {
        response.sendRedirect("update.jsp");
    }
%>

    </body>
</html>
