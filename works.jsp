<%-- 
    Document   : works
    Created on : Mar 12, 2018, 8:29:44 PM
    Author     : ngile
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
            <%
              
          String update = request.getParameter("updates");
          String job= request.getParameter("dept");
            
               
            try{
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project", "root", "mainadmin" );
            Statement st=conn.createStatement();
            st.executeUpdate("update Cargo set ClearingProgress = '"+update+"' where CargoId = '"+job+"'");
            out.println("Update Successful!");
                    }
            catch(Exception e){}
              %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    </body>
</html>
