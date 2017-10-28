<%-- 
    Document   : Roles
    Created on : 05-jul-2017, 15:54:39
    Author     : WILMAR
--%>

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
                <div class="titulo-lista"><h2>Administracion de Roles</h2></div>
                
               
         
       
         <a   href="editar_roles.jsp" class="boton-formularioR">Nuevo Rol <i class="filtro fa fa-id-badge" aria-hidden="true"></i></a>
                
    <table class="TablaRegistros-roles">
	<tbody>
    

        <tr class="EncabezadoRegistros" name="tablaRoles">
			

			
			<td  class="cod-rolR">Codigo Rol</td>
                        <td  class="nom-rolR">Nombre Rol</td>
                        <td class="descripcion-rolR">Descripcion</td>
                 

               <td  class="campo-modificar"><i class="modificarICO fa fa-wrench" aria-hidden="true"></i></td>
			 
			
			

            
		</tr>


		
                <tr class="listadoEmpleado">
                    <td class="listaEmp">ACADENA</td>
                    <td class="listaEmp">DIRCOMEX</td>
                    <td class="listaEmp">ASISTENTE SYGA</td>
                    
			
<td class="modificar-datos"><a href="" class="modificar-datosA">Modificar</a></td>
		</tr>

	

	</tbody>
	</table>
			</td>
		</tr>
		<tr>
			<td align=right>
        	<input ID="TextBox7" type='hidden' runat="server" name='navegador_numeroPaginas' value='158'> 
                <input ID="TextBox8" type='hidden' runat="server" name='navegador_paginaActual' value='1'>
                <input ID="TextBox9" type='hidden' runat="server" name='navegador_paginaInicial' value='1'>
                <input ID="TextBox10" type='hidden' runat="server" name='navegador_paginaFinal' value='3'>
                <table border='0'><tr><td><font color='red'>
                <b>1</b></font></td><td><a href='javascript:navegadorClick(2)'>2</a></td><td><a href='javascript:navegadorClick(3)'>3</a></td><td>...</td><td><a href='javascript:navegadorClick(2)'>»</a></td><td><a href='javascript:navegadorClick(158)'>»»</a></td><td>
                            <input ID="TextBox11" class="irA" type='button' runat="server" name='irA' value='Ir A' onclick='javascript: navegadorClick(this.form.navegador_pagina.value);'>
                                      
			</td>
		</tr>
	</tbody>
</table>
            </form>
        </div>
        
      
	
       
    
       
        <script src="../Complementos/js/js_franwork/headroom.min.js"></script>
        <script src="../Complementos/js/js_franwork/jQuery3.2.js"></script>
        <script src="../Complementos/js/js_paginas/JSdataPets.js"></script>
    </body>
</html>
