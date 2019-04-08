<%-- 
    Document   : oficinias
    Created on : 03-abr-2019, 20:21:20
    Author     : carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">  
  <head>    
    <title>Título de la WEB</title>    
    <meta charset="UTF-8">
    <meta name="title" content="Título de la WEB">
    <meta name="description" content="Descripción de la WEB">    
    <link rel="stylesheet" type="text/css" href="css/mi-pagina.css">
  </head>  
  <body>    
    <header>
      <h1>Título de la WEB</h1>      
    </header>    
   <div id="miPagina" class="col-md-51 column" style="display:none">
            <h4 class='modal-title' id='myModalLabel'>Nuevo Cliente</h4> <br />
            <form method="post">
                <div class='field-box'>
                    <label>Nombre</label>
                    <div class='col-md-7'>
                        <input type='text' class='form-control' name='nombre' id='nombre'>
                    </div>
                </div>
                <div class='field-box2'>
                    <label>Rut</label>
                    <div class='col-md-7'>
                        <input type='text' class='form-control' name='rut' id='rut'>
                    </div>
                </div>
                <div class='field-box'>
                    <label>Telefono</label>
                    <div class='col-md-7'>
                        <input type='text' class='form-control' name='telef' id='telef'>
                    </div>
                </div>
                <div class='field-box2'>
                    <label>Fax</label>
                    <div class='col-md-7'>
                        <input type='text' class='form-control' name='fax' id='fax'>
                    </div>
                </div>
                <div class='field-box'>
                    <label>Direccion</label>
                    <div class='col-md-7'>
                        <input type='text' class='form-control' name='direccion' id='direccion'>
                    </div>
                </div>
                <div class='field-box2'>
                    <label>Giro</label>
                    <div class='col-md-7'>
                        <input type='text' class='form-control' name='giro' id='giro'>
                    </div>
                </div>                      
                <div class='field-box'>
                    <label>Correo Electronico</label>
                    <div class='col-md-7'>
                        <input type='text' class='form-control' name='email' id='email'>
                    </div>
                </div>
                <div class='field-box2'>
                    <label>Representante Legal</label>
                    <div class='col-md-7'>
                        <input type='text' class='form-control' name='repleg' id='repleg'>
                    </div>
                </div>
                <div class='field-box'>
                    <label>Rut Representante Legal</label>
                    <div class='col-md-7'>
                        <input type='text' class='form-control' name='rurepleg' id='rurepleg'>
                    </div>
                </div>
                <div class='field-box2'>
                    <label>Celular Representante Legal</label>
                    <div class='col-md-7'>
                        <input type='text' class='form-control' name='celular' id='celular'>
                    </div>
                </div>
                <div class="action">
                    <button onclick='registrarCliente(); mostrarTablas();' id="envio" value="envio" name= "envio" type='button' class='btn-flat2'>Guardar</button>
                    <button type="reset" class='btn-flat3' value="Reset">Reset</button>
                    <button onclick='listarClientes(); mostrarTablas();' type='button' class='btn-flat3'>Cerrar</button>        
                </div>                       
            </form>
            <div id="mensaje" class="col-md-6">                        
            </div>
        </div>
    </footer>
  </body>  
</html>