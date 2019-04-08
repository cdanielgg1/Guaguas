<%-- 
    Document   : proceso
    Created on : 08-abr-2019, 0:48:08
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
   /*podemos leer los datos del request a una variable*/
   String edad=(String)request.getParameter("edad");
   String prefieres=(String)request.getParameter("preferencia");
   out.print("tu nombre es "+request.getParameter("nombre")+" "+request.getParameter("usuario"));
   out.print("<br/>");
   out.print("tienes "+edad+" años");
   out.print("<br/>");
   out.print("tu lenguaje favorito es "+request.getParameter("lenguaje"));
   out.print("<br/>");
   out.print("y prefieres el(a) "+prefieres+" de un proyecto");
   out.print("<br/>");
   /*podemos usar los datos directamente desde el request*/
   out.print("Bienvenido a jsp "+ request.getParameter("nombre").toString().toUpperCase());
 %>
    </body>
</html>
