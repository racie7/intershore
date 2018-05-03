<%-- 
    Document   : viewFiles
    Created on : Apr 15, 2018, 9:17:58 PM
    Author     : ngile
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
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
            #centr{
              color: white;
              background-color: teal;
              position: absolute;left: 300px; right: 300px
          }
          #del{
              color: black;
          }
          #centrs{
              color: wheat
          }
          #dash{
                position:absolute;right:115px;top:595px;
                color: white;
            }
        </style>
    </head>
    <body>
        <div id="centr">
            <center>
       <table>
<tr><th>File Name</th><th>Download File</th>
<%
File f = new File("/home/ngile/Files/");
        File[] files = f.listFiles();
        for(int i=0;i<files.length;i++){
            String name=files[i].getName();
            String path=files[i].getPath();
%>
<tr><td><%=name%></td><td><a href="download.jsp?f=<%=path%>" id="centrs">Download File</a></td></tr>
     <%
        }
%>
</table>
            </center>
        </div>
<a href="EmployeesSpace.jsp" id="dash">Go to Dashboard</a>
    </body>
</html>
