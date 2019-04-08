<%-- 
    Document   : Registro
    Created on : 02-abr-2019, 22:13:01
    Author     : carlos
--%>

<%
    if(session.getAttribute("login")!=null)
    {
        response.sendRedirect("index.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro de usuarios</title>
        <script language="javascript"> 
         function validate()
         {
           var first_name= /^[a-z A-Z]+$/; //pattern allowed alphabet a-z or A-Z 
           
           var user_name= /^[a-z A-Z]+$/; //pattern allowed alphabet a-z or A-Z 
           var password_valid=/^[A-Z a-z 0-9]{6,12}$/; //pattern password allowed A to Z, a to z, 0-9 and 6 to 12 range
            
           var fname = document.getElementById("fname"); //textbox id fname
          
           var uname = document.getElementById("uname"); //textbox id email
           var password = document.getElementById("password"); //textbox id password
    
           if(!first_name.test(fname.value) || fname.value=='') //apply if condition using test() method match the parameter for pattern allow alphabet only
           {
              alert("Introducir solo Alfabeticamente....!"); //alert message
              fname.focus();
              fname.style.background = '#f08080'; //set textbox color
              return false;                    
           }
          
           if(!user_name.test(uname.value) || uname.value=='') //apply if condition using test() method match the parameter for pattern allow alphabet only
           {
              alert("Enter Username Alphabet Only....!"); //alert message
              uname.focus();
              uname.style.background = '#f08080'; //set textbox color
              return false;                    
           }
           if(!password_valid.test(password.value) || password.value=='') //apply if condition using test() method match the parameter for pattern passoword allow 6 to 12 range 
           {
              alert("Contraseña entre 6 y 12 caracteres); //alert message
              password.focus();
              password.style.background = '#f08080'; //set textbox color
              return false;                    
           }
        }  
      </script>
    </head>
    <body>
        
        <center>
            
            <h2>Registro</h2>
            
            <form method="post" action="RegisterController" onsubmit="return validate();">
                
                Nombre   <input type="text" name="txt_firstname" id="fname"></br></br>
              
                Usuario    <input type="text" name="txt_username" id="uname"></br></br>
                Password    <input type="password" name="txt_password" id="password"></br></br>
                
                <input type="submit" name="btn_register" value="Register">
                
                <h3>Esta registrado? <a href="index.jsp">Login</a></h3>
                
            </form>
            
            <h3 style="color:red">
                <%
                    if(request.getAttribute("RegisterErrorMsg")!=null)
                    {
                        out.println(request.getAttribute("RegisterErrorMsg")); //get register fail error message from "RegisterController"
                    }
                %>
            </h3>
            
        </center>
    
    </body>
    
</html>