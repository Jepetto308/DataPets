<%-- 
    Document   : Citas
    Created on : 02-abr-2017, 20:43:50
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
        <link rel="stylesheet" type="text/css" href="../Complementos/css/jquery-ui.css"/>
        <link rel="stylesheet" type="text/css" href="../Complementos/css/jquery-ui.structure.css"/>
        <link rel="stylesheet" type="text/css" href="../Complementos/css/jquery-ui.theme.css"/>
        <link rel="stylesheet" type="text/css" href="../Complementos/Imagenes/images/ui-icons_444444_256x240.png"/>
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
           
        <form class="formulario-citas">
            <div class="titulo-lista"><h2>Registro de Citas</h2></div>
            
           <div class="div-Dpersonales"> 
                
               <input type="text" class="Iform-Ncita" maxlength="6" name="numeroCita" />
            <label class="Lform-Fcita">Numero de Cita:</label>           
            
            <input class="formCita-codCliente" minlength="3" maxlength="6" type="text" id="cCliente" name="codigoCliente" value="" onkeyup="activar_input()"/>
            <input class="formCita-nomCliente" minlength="15" maxlength="45" type="text" id="nCliente" name="nombreCliente" disabled/><input type="image" class="modal-deClienteC" src="../Complementos/Imagenes/hombre de la lupa.png" onclick="modalCliente_IC()" />
            <label class="Lform-Fcita">Cliente:</label>
           
            <input type="text" class="input-calendario" name="fechaCita" id="cita" onkeyup="fechacita()" />
            <label class="Lform-Fcita">Fecha de Cita:</label>
            
              <select class="Iform-citaS" name="tipoCita" value="seleccione tipo de documento">
                   <option>------Servicio------</option>
                    <option>Baño</option>
                    <option>Cepillado</option>
                    <option>Baño y Cepillado</option>  
                </select>
            <label class="Lform-Fcita">Servicio en la Cita:</label>
            
            <label class="Lestado-cita" name="estadoCita" >CONFIRMADO</label>
            <label class="Lform-Fcita">Estado de Cita:</label>
            
       
         </div> 
      

 
            
            <div class="DB-formCitas">
                <button type="submit" class="btn-formEmpleado1">Nuevo >></button>
                <button type="submit" class="btn-formEmpleado2" >Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                <button type="submit" class="btn-formEmpleado3">Eliminar <i class="fa fa-trash" aria-hidden="true"></i></button>
                <button type="submit" class="btn-formCitasCon">Confirmar <i class="fa fa-check-square-o" aria-hidden="true"></i></button>
            <div class="DB-formCitas2">  
                <button type="submit" class="btn-formCitasAnu" >Anular <i class="fa fa-ban" aria-hidden="true"></i></button>
                <button type="submit" class="btn-formCitasDes" >Desconfirmar <i class="fa fa-times-circle" aria-hidden="true"></i></button>
                <a href="buscar_citas.jsp" type="submit" class="btn-formEmpleado4"><i class="fa fa-undo" aria-hidden="true"></i> Volver</i></a>
              </div>      
<!--                <button type="submit" class="btn-formUsuario5">Volver</button>
                <button type="submit" class="btn-formUsuario6">Volver</button>-->
            </div>
        </div> 

        </form>
        
        
        
      

        <script src="../Complementos/js/js_franwork/headroom.min.js"></script>
        <script src="../Complementos/js/js_franwork/jQuery3.2.js"></script>
        <script src="../Complementos/js/js_franwork/jquery-ui.min.js"></script>
        <script src="../Complementos/js/js_paginas/JSdataPets.js"></script>
        <script src="../Complementos/js/js_paginas/editar_citas.js"></script>     

    </body>
</html>

