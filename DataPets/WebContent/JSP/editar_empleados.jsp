

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <meta name="viewport" content="width-device-width, user-scalable-no, inital-scale=1.0, maximun-scale=1.0, minumun-scale=1.0">
      
            <link rel="shortcut icon" href="../Complementos/Imagenes/favicon.png" />   
        <link href="https://fonts.googleapis.com/css?family=Droid+Sans" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,600,700" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="../Complementos/css/cssFontAwesome/font-awesome.min.css"/>
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
        
        <form class="formulario-empleado"  onsubmit="return validar_campos();">
            <div class="titulo-lista"><h2>Registro de Empleados</h2></div>
           <div class="div-Dpersonales"> 
                
               <select class="Iform-empleadoS" name="tipoDocumento" value="seleccione tipo de documento">
                    <option>cedula de ciudadania</option>
                    <option>tarjeta de identidad</option>
                    <option>registro civil</option>
                    <option>cedula de estrangeria</option>
                </select>
            <label class="Lform-empleado">Tipo de Documento:</label>           
            
            <input type="text" class="Iform-empleado" id="documento" minlength="6" maxlength="15" name="numeroIdentificacion"/>
            <label class="Lform-empleado">Numero de identificacion:</label>
           
            <input type="text" class="Iform-empleado"  id="pNombre" minlength="4" maxlength="20" name="primerNombre"/>
            <label class="Lform-empleado">Primer Nombre:</label>
            
            <input type="text" class="Iform-empleado"  id="oNombres" minlength="4" maxlength="20" name="otrosNombres" />
            <label class="Lform-empleado">Otros nombres:</label>
            
            <input type="text" class="Iform-empleado" id="pApellido" minlength="2" maxlength="20" name="primerApellido" />
            <label class="Lform-empleado">Primer Apellido:</label>
            
            <input type="text" class="Iform-empleado" id="sApellido" minlength="2" maxlength="20" name="segundoApellido"/>
            <label class="Lform-empleado">Segundo apellido:</label>
         </div> 
        <div class="div-ubicacionF"> 
            <input type="text" class="Iform-empleadoPais1" minlength="3" maxlength="3" id="cPais" name="codigoPais" value="" onkeyup="activar_input()"/>
            <input type="text" class="Iform-empleadoPais2" minlength="3" maxlength="3" id="nPais" name="nombrePais" disabled/><input type="image" class="modal-pais" src="../Complementos/Imagenes/lupa de pais.png" onclick="modalEmpleado_pais()" />
            <label class="Lform-empleado">Pais:</label>
            
            <input type="text" class="Iform-empleadoMunicipio1" minlength="3" maxlength="3" id="cMun" name="codigoMunicipio" value="" onkeyup="activar_inputM()"/>
            <input type="text" class="Iform-empleadoMunicipio2" minlength="3" maxlength="3" id="nMun" name="nombreMunicipio" disabled/><input type="image" class="modal-municipio" src="../Complementos/Imagenes/municipioU.png" onclick="modalEmpleado_municipio()" />
            <label class="Lform-empleado">Municipio:</label>
         </div>  
            <div class="div-Dadicionales" >
                <input type="text" class="Iform-empleado" id="direccion" minlength="5" maxlength="25" name="direccion" />
            <label class="Lform-empleado">Direccion:</label>
            
            <input type="tel" class="Iform-empleado" id="telefono" minlength="7" maxlength="20" name="telefono"/>
            <label class="Lform-empleado">Telefono:</label>
            
            <input type="tel" class="Iform-empleado" id="celular" minlength="10" maxlength="20" name="celular"/>
            <label class="Lform-empleado">Celular:</label>
            
            <input type="text" class="Iform-empleado" id="fax" maxlength="20" name="fax"/>
            <label class="Lform-empleado">Fax:</label>
            
            <input type="text" class="Iform-empleado" id="correo" minlength="5" maxlength="25" name="email"/>
            <label class="Lform-empleado">E-mail:</label>
         </div>   
 
            
            <div class="DB-formEmpleado">
                <button type="submit" class="btn-formEmpleado1">Nuevo >></button>
                <button type="submit" class="btn-formEmpleado2" >Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                <button type="submit" class="btn-formEmpleado3">Eliminar <i class="fa fa-trash" aria-hidden="true"></i></button>
                <a      href="buscar_empleados.jsp" class="btn-formEmpleado4"><i class="fa fa-undo" aria-hidden="true"></i>  Volver</a>

            </div>
       
        </form>
        <script src="../Complementos/js/js_franwork/headroom.min.js"></script>
        <script src="../Complementos/js/js_franwork/jQuery3.2.js"></script>
        <script src="../Complementos/js/js_paginas/editar_empleados.js"></script>
        <script src="../Complementos/js/js_paginas/JSdataPets.js"></script>
       
        

    </body>
</html>

