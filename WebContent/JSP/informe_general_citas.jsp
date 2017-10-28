

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width-device-width, user-scalable-no, inital-scale=1.0, maximun-scale=1.0, minumun-scale=1.0">
      
        <link rel="shortcut icon" href="../Complementos/Imagenes/favicon.png" /> 
        <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,600,700" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="../Complementos/css/cssFontAwesome/font-awesome.min.css"/>
        <link rel="stylesheet" type="text/css" href="../Complementos/css/CssPets.css">
        <link rel="stylesheet" type="text/css" href="../Complementos/css/jquery-ui.css">
        <link rel="stylesheet" type="text/css" href="../Complementos/css/jquery-ui.structure.css">
        <link rel="stylesheet" type="text/css" href="../Complementos/css/jquery-ui.theme.css">
        
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
        
    <div class="contenedor-empleado">
     <form class="form-empleados"> 
         <div class="titulo-lista"><h2>Informe General de Citas</h2></div>
         <div class="Div-LinformeC">
             
             <input class="IinformeC-cod" minlength="6" maxlength="15" name="numeroDocumento" type="text" id="cCliente" value="" onkeyup="activar_input()"/>
             <input class="IinformeC-nom" minlength="15" maxlength="45" name="nombreCliente" type="text" id="nCliente"  disabled/><input type="image" class="modalIC" src="../Complementos/Imagenes/hombre de la lupa.png" onclick="modalCliente_IC()" />
        <label class="LinformeC">Cliente:</label>
        
        <input class="IinformeC-fecha2" type="text" placeholder="Hasta:" id="citaH" name="fecha" onkeyup="calendarioC2()"> 
        <input class="IinformeC-fecha1" type="text" placeholder="Desde:" id="citaD" name="fecha" onkeyup="calendarioC1()">
        <label class="LinformeC">Fecha de cita:</label>
        
       <select class="IinformeC-Select" >
                    <option>---Servicio adquirido---</option>
                    <option>Baño</option>
                    <option>Cepillado</option>
                    <option>Baño y Cepillado</option>
                </select>
        <label class="LinformeC">Tipo de cita:</label>
          </div> 
         <div class="Dbtn-informeC">
             
          <a href="#" type="submit" class="btn-formEmpleado4"><i class="fa fa-undo" aria-hidden="true"></i> Volver</a>  
          <button type="submit" class="btn-informeCver"> Ver Informe <i class="fa fa-file-text" aria-hidden="true"></i></button>
        
  </div>  
       </form>
    </div>
        <script src="../Complementos/js/js_franwork/headroom.min.js"></script>
        <script src="../Complementos/js/js_franwork/jQuery3.2.js"></script>
        <script src="../Complementos/js/js_franwork/jquery-ui.min.js"></script>
        <script src="../Complementos/js/js_paginas/JSdataPets.js"></script>
        <script src="../Complementos/js/js_paginas/informe_general_citas.js"></script>
        

    </body>
</html>
