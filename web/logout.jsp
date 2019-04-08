<%-- 
    Document   : Logout
    Created on : 02-abr-2019, 22:19:14
    Author     : carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
    session.invalidate(); //session destroy
    response.sendRedirect("index.jsp"); //after destroy redirect to index.jsp page
%>
 
    </body>
</html>
