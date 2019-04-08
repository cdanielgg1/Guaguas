<%-- 
    Document   : conductores
    Created on : 03-abr-2019, 19:29:34
    Author     : carlos
--%>

<%@page import="mvc.controlador.Conductor"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="mvc.controlador.IConductor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="mvc.bean.RegistroBean"%>

<%@page language="java"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>

<%
            Conductor objusu = new Conductor();
%>

 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link href="css/mi-pagina.css" rel="stylesheet" type="text/css"/>
        <title>Formulario de contacto</title>
        <script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js" ></script>
        <script type="text/javascript">
            $(document).ready(iniciar);
            function iniciar() {
                $(".fila").hover(entraRaton, saleRaton);
            }
            function entraRaton() {
                $(this).css("background-color", "#7A8BA1");
            }
            function saleRaton() {
                $(this).css("background-color", "white");
            }
           
        </script>
         <script type="text/javascript">
        $().ready(function() 
	{
		$('.pasar').click(function() { return !$('#origen option:selected').remove().appendTo('#destino'); });  
		$('.quitar').click(function() { return !$('#destino option:selected').remove().appendTo('#origen'); });
		$('.pasartodos').click(function() { $('#origen option').each(function() { $(this).remove().appendTo('#destino'); }); });
		$('.quitartodos').click(function() { $('#destino option').each(function() { $(this).remove().appendTo('#origen'); }); });
		$('.submit').click(function() { $('#destino option').prop('selected', 'selected'); });
	});
          </script>
        <style>
            table{
                width: 50%;
            }
            thead{
                background-color: #0070A8;
                color: #FFFFFF;
            }
        </style>
    </head>
   
    
    <body>
    <nav>
        <div id='menu'> <%@ include file="menu.jsp" %> </div>
    </nav>
        
    <center>
    
   <%@ include file="banner.jsp" %>
    
    </center>
        
    <div class='clear'></div>
    <div class="container">
 
      <div class="left">

          <form action="proceso.jsp" method="post">
Nombre <input type="text" name="nombre" size="30" maxlength="100">
<br>
Email <input type="text" name="email" size="25" maxlength="100" value="@">
<br>
Sexo
<br>
<input type="radio" name="sexo" value="Varon" checked> Hombre
<br>
<input type="radio" name="sexo" value="Hembra"> Mujer
<br>
<br>
Grupo<select name="utilizacion">
	<option value="1">1
	<option value="2">2
	<option value="3">3
	<option value="4">4
</select>
<br>
<br>
<form action="" method="post" id="formulario">
<div>
<select name="origen[]" id="origen" multiple="multiple" size="8">
<option value="1">Opción 1</option>
<option value="2">Opción 2</option>
<option value="3">Opción 3</option>
<option value="4">Opción 4</option>
<option value="5">Opción 5</option>
<option value="6">Opción 6</option>
<option value="7">Opción 7</option>
<option value="8">Opción 8</option>
</select>
</div>
 <center>


            <h2>Listado de Conductores</h2>
            <table>
                <thead>

                <th align="center">CODIGO</th>
                <th align="center">NOMBRE</th>
                <th align="center">USUARIO</th>
               
                <th align="center" colspan="2">MANTENIMIENTO</th>

                </thead>
                <tbody>


                    <%
                                ResultSet rss = objusu.Listar();
                                while (rss.next()) {
                    %>
                    <tr class="fila">
                        <td> <%= rss.getString(1)%></td>
                        <td> <%= rss.getString(2)%></td>
                        <td> <%= rss.getString(3)%></td>
                        
                        
                        <td align="center"> <a href="#" ><img src="img/Editar.png" title="Editar"/> </a> </td>
                        <td align="center"> <a href="#" ><img src="img/Borrar.png" title="Eliminar" /> </a> </td>
                    </tr>
                    <%
                                }
                    %>
                </tbody>
            </table>
        </center>


      </div>
   
        <div class="right">
            
           <form action="proceso.jsp" method="post">
Nombre <input type="text" name="nombre" size="30" maxlength="100">
<br>
Email <input type="text" name="email" size="25" maxlength="100" value="@">

<br>
Sexo
<br>
<input type="radio" name="sexo" value="Varon" checked> Hombre
<br>
<input type="radio" name="sexo" value="Hembra"> Mujer
<br>
<br>
Grupo <select name="utilizacion">
	<option value="1">1
	<option value="2">2
	<option value="3">3
	<option value="4">4
</select>
<br>
<br>
<div class="">
<select name="destino[]" id="destino" multiple="multiple" size="8"></select>
</div>
<%-- <p class="clear"><input type="submit" class="submit" value="Procesar formulario"></p>--%>
</form>

<center>


            <h2>Conductores de baja</h2>
            <table>
                <thead>

                <th align="center">CODIGO</th>
                <th align="center">NOMBRE</th>
                <th align="center">USUARIO</th>
               
                <th align="center" colspan="2">MANTENIMIENTO</th>

                </thead>
                <tbody>


                    <%
                                ResultSet rssB = objusu.Listar();
                                while (rss.next()) {
                    %>
                    <tr class="fila">
                        <td> <%= rss.getString(1)%></td>
                        <td> <%= rss.getString(2)%></td>
                        <td> <%= rss.getString(3)%></td>
                        
                        
                        <td align="center"> <a href="#" ><img src="img/Editar.png" title="Editar"/> </a> </td>
                        <td align="center"> <a href="#" ><img src="img/Borrar.png" title="Eliminar" /> </a> </td>
                    </tr>
                    <%
                                }
                    %>
                </tbody>
            </table>
        </center>
        </div>
    
        <div class="center">
            <p>Formulario de envio de notificaciones por correo</p>
             <br>
            <p>eleccion</p>
            
           
<div>
<input type="button" class="pasar izq" value="Pasar »"><input type="button" class="quitar der" value="« Quitar"><br />
<input type="button" class="pasartodos izq" value="Todos »"><input type="button" class="quitartodos der" value="« Todos">
</div>
    </div>
     
    <div class='clear'></div>
 <footer>
     <h2>NOTAS</h2>
 <textarea cols="30" rows="7" name="comentarios"></textarea>
<br>
<br>
<input type="checkbox" name="recibir_info" checked> Deseo recibir notificación del recibo del correo
<br>
<br>
<p><input type="submit" value="Enviar"></p>
<br>
<br>
<input type="Reset" value="Borrar todo">
</form>
      </footer>  
    
    </body>
    
</html>

    
    
   
  