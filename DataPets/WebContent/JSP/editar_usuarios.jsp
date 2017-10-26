<%-- 
    Document   : formUsuarios
    Created on : 05-jul-2017, 23:06:08
    Author     : WILMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width-device-width, user-scalable-no, inital-scale=1.0, maximun-scale=1.0, minumun-scale=1.0">
      
        <link rel="shortcut icon" href="../Complementos/Imagenes/favicon.png" /> 
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,600,700" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="../Complementos/css/cssFontAwesome/font-awesome.min.css"/>
        <link rel="stylesheet" type="text/css" href="../Complementos/css/jquery-ui.min.css">
        <link rel="stylesheet" type="text/css" href="../Complementos/css/CssPets.css">
        
   <title>Data Pets</title>
    </head>
    <body class="fondo-menu">
        <header id="header" class="encabezado">
            <nav class="navH">
                <div class="logo">
                    <img class="image" src="../Complementos/Imagenes/datapets final.png" alt="">
                </div>
          
         
                <div class="logueado">
                    <label><i class="fa fa-user-circle-o" aria-hidden="true"></i> USUARIO: LUIS JAVIER MORALES BENITEZ</label>
                    <label>ROL: ROOT</label>
                </div>
             </nav>
        </header>
        
       <div class="contenedor-menu">
               <a href="#" class="btn-menu">Menu <i class="icono fa fa-list" aria-hidden="true"></i></a>
               
               <ul class="Menu">
                   <li><a href="#"><i class="icono izquierda fa fa-home" aria-hidden="true"></i>INICIO</a></li>
                   <li><a  href="#"><i class="icono izquierda fa fa-user-circle" aria-hidden="true"></i>ENTIDADES<i class="icono derecha fa fa-chevron-down" aria-hidden="true"></i></a>
                       <ul >
                            <li><a  href="buscar_empleados.jsp">Empleados</a></li>
                            <li><a  href="buscar_clientes.jsp">Clientes</a></li>
                         
                       </ul>
                   </li>
                   <li><a  href="#"><i class="icono izquierda fa fa-calendar" aria-hidden="true"></i>CITAS<i class="icono derecha fa fa-chevron-down" aria-hidden="true"></i></a>
                        <ul >
                            <li><a href="buscar_citas.jsp">Asignacion de citas</a></li>
                            
                         
                       </ul>
                   </li>
                   <li><a  href="#"><i class="icono izquierda fa fa-book" aria-hidden="true"></i>INFORMES<i class="icono derecha fa fa-chevron-down" aria-hidden="true"></i></a>
                          <ul >
                            <li><a  href="informe_general_citas.jsp">Informe general de citas</a></li>

                       </ul>
                   </li> 
                    <li><a  href="#"><i class="icono izquierda fa fa-unlock-alt" aria-hidden="true"></i>SEGURIDAD<i class="icono derecha fa fa-chevron-down" aria-hidden="true"></i></a>
                       <ul >
                            <li><a  href="buscar_roles.jsp">Roles</a></li>
                            <li><a  href="buscar_usuarios.jsp">Usuarios</a></li>
                            <li><a  href="buscar_parametros.jsp">Parametros</a></li>
                         
                       </ul>
                   </li>
               </ul>
        </div>
        
           
        <form class="formulario-usuarios">
            <div class="titulo-lista"><h2>Registro de Usuarios</h2></div>
            
           <div class="div-Dpersonales"> 
                
               <input type="text" class="Iform-loginUsuario" minlength="6" maxlength="15" name="login"/>
            <label class="Lform-Fcita">Login:</label>        
            
               
            <select class="IformRolS" name="rol">
                   <option>ASISTENTE SYGA</option>
                   
                </select>
            <label class="Lform-Fcita">Rol:</label>
           

            <input class="formUsu-pass" type="text" minlength="8"  maxlength="20" name="password"/>
             <label class="Lform-Fcita">Password:</label>
             
             <select class="IformUsu-empleadoS"  name="tipoUsuario">
                   <option>Empleado</option>
                   
                </select>
             <label class="Lform-Fcita">Tipo Usuario:</label>
             
             <select class="IformUsu-EusuarioS" name="estadoUsuario">
                   <option>Activo</option>
                   
                </select>
             <label class="Lform-Fcita">Estado Usuario:</label>
             
             <input class="formUsu-identificacion" minlength="6" maxlength="15" type="text" name="numeroIdentificacion"/>
             <label class="Lform-Fcita">Numero Identificacion:</label>
             
             <input class="formUsu-Nusuario" minlength="15" maxlength="45" type="text" name="nombrePersona"/>
             <label class="Lform-Fcita">Nombre Persona:</label>
             
             <textarea type="text" class="descripcion-Frol" minlength="12" maxlength="55" name="informacionAdicional"></textarea>
                           <div class="div-IadicionalUsu">  
              <label class="Lform-Fcita">Informacion Adicional:</label>
            
                </div> 
            
       
         </div> 
      

 
            <button type="submit" class="btnPermisos-usuario"  onclick="modalPermisos_Usuarios()" >Permisos por Usuario <i class="fa fa-unlock" aria-hidden="true"></i></button>
            <div class="DB-formUsuario">
                <button type="submit" class="btn-formEmpleado1">Nuevo >></button>
                <button type="submit" class="btn-formEmpleado2" >Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                <button type="submit" class="btn-formEmpleado3">Eliminar <i class="fa fa-trash" aria-hidden="true"></i></button>
                    </div>                <div class="DB-formUsuario2">
                <button type="submit" class="btn-buscarRol">Buscar <i class="fa fa-search" aria-hidden="true"></i></button> 
                <a href="buscar_usuarios.jsp" type="submit" class="btn-formEmpleado4"><i class="fa fa-undo" aria-hidden="true"></i> Volver</i></a>
                

            
        </div> 

        </form>
        
        
        
      

        <script src="../Complementos/js/js_franwork/headroom.min.js"></script>
        <script src="../Complementos/js/js_franwork/jQuery3.2.js"></script>
        <script src="../Complementos/js/js_franwork/jquery-ui.min.js"></script>
        <script src="../Complementos/js/js_paginas/JSdataPets.js"></script>
        <script src="../Complementos/js/js_paginas/editar_usuarios.js"></script>
             

    </body>
</html>
