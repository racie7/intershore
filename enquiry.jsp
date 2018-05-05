<%-- 
    Document   : enquiry
    Created on : Feb 15, 2018, 5:43:59 PM
    Author     : ngile
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enquiry</title>
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
            #bck{
                position:absolute;right:115px;top:595px;
                color: #fcf8e3;
            }
            #col{
                color: white;
            }
            #enquiry{
                background-color: teal;
            }
            
        </style>
    </head>
    <body>
     <div id="enquiry">
        <form method="post" action="select.jsp">
            <center>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Do Enquiry Here</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Cargo Code</td>
                        <td><input type="text" name="cargoid" value="" /></td>
                    </tr>
                    
                    <tr>
                        <td><input type="submit" value="ENQUIRE" /></td>
                        <td><input type="reset" value="RESET" /></td> 
                    </tr>
                    </center>
                    </form>
        </div>
        <div id="bck"> <a href="cargo.jsp" id="col"><b>Previous page</b></a></div>
    </body>
</html>
