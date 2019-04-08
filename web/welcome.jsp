<%-- 
    Document   : Welcome
    Created on : 02-abr-2019, 22:18:01
    Author     : carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/mi-pagina.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <center>
 
<h2>
    <%
    if(session.getAttribute("login")==null || session.getAttribute("login")=="") //check if condition for unauthorize user not direct access welcome.jsp page
    {
        response.sendRedirect("index.jsp");
    }
    %>
    
    Welcome, <%=session.getAttribute("login")%> 

</h2>
    
    <div id='menu'> <%@ include file="menu.jsp" %> </div>
    
    <div class='clear'></div>
    
   <%@ include file="banner.jsp" %>
    
        
        
    <div class='clear'></div>
  
        <div id='contenido'>
            <h1>Primer pagina jsp con datos para probar lo aprendido<br> esperemos se vea bien en el navegador</h1>
        </div>
 
        <div class='clear'></div>
<h3>
    <a href="logout.jsp">Logout</a>
</h3>

</center>
    </body>
</html>
