<%-- 
    Document   : Usuarios
    Created on : 03-jul-2017, 16:25:39
    Author     : WILMAR
--%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Controllers.ControlAccesoPages" %>
<%
    ControlAccesoPages oControlAccesoPages = new ControlAccesoPages();
    oControlAccesoPages.validatePemisions(request, response, "ROOT");
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta name="viewport" content="width-device-width, user-scalable-no, inital-scale=1.0, maximun-scale=1.0, minumun-scale=1.0">
      
       <link rel="shortcut icon" href="Complementos/Imagenes/favicon.png" /> 
        <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,600,700" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="Complementos/css/cssFontAwesome/font-awesome.min.css"/>
        <link rel="stylesheet" type="text/css" href="Complementos/css/CssPets.css">
        
        <title>Data Pets</title>
    </head>
    <body class="fondo-menu">
        
        <jsp:include page="menu.jsp"></jsp:include>
        <c:set var="context" value="${pageContext.request.contextPath}" />
        
        <div class="contenedor-usuario">
            <form class="form-empleados">
                <div class="titulo-lista"><h2>Listado de Usuarios</h2></div>
                
		<div class="div-lCitas">
			<input class="Ilogin-Usu" minlength="6" maxlength="15" type="text" name="login">
            <label class="LfiltroCita">Login:</label>
               
            <input class="Iidentificacion-usu" minlength="6" maxlength="15" type="text" name="identificacion">
            <label class="LfiltroCita">Identificacion:</label>
                
            <input class="Inom-persona" minlength="15" maxlength="45" type="text" name="nombrePersona">
            <label class="LfiltroCita">Nombre de Persona:</label>
                 
            <select class="select-rol" name="rol" >
            	<option>[Todos]</option>
                <option>Baño</option>
                <option>Cepillado</option>
                <option>Baño y Cepillado</option>
			</select>
            <label class="LfiltroCita">Rol:</label>
                
            <select class="estado-usuarioS" name="estadoUsuario">
				<option>Todos</option>
                <option>Abierto</option>
                <option>Confirmado</option>
                <option>Anulado</option>
                <option>Todos</option>
			</select>
            <label class="LfiltroCita">Estado usuario:</label>
		</div>   
         
         <a href="#" class="boton-formFiltrarC">Filtrar <i class="filtro fa fa-filter" aria-hidden="true"></i></a>
         <button type="submit" class="btn-exportarUsuario">Exportar <i class="exportar fa fa-clipboard" aria-hidden="true"></i></button>
         <a href="editar_usuarios.jsp" class="boton-formularioC">Nuevo Usuario <i class="filtro fa fa-user-circle-o" aria-hidden="true"></i></a>
                
    <table class="TablaRegistros-usuarios">
	<tbody>
        <tr class="EncabezadoRegistros">
			<td class="cod-rol">Login</td>
			<td  class="cod-rol">Codigo Rol</td>
            <td  class="nom-rol">Nombre Rol</td>
<!--             <td  class="tipo-Usu">Tipo Usuario</td> -->
            <td  class="num-Identificacion">Numero de Identificacion</td>
            <td  class="nom-persona">Nombre de Persona</td>
<!--             <td  class="info_adicional">Informacion Adicional</td> -->
            <td  class="campo-modificar"><i class="modificarICO fa fa-wrench" aria-hidden="true"></i></td>
		</tr>
		
		<c:forEach items="${listaUsuarios}" var="objUsuario">
			<tr class="listadoEmpleado">
	            <td class="listaEmp"><c:out value="${objUsuario.username}" /></td>
	            <td class="listaEmp"><c:out value="${objUsuario.codigoRol}" /></td>
	            <td class="listaEmp"><c:out value="${objUsuario.nombreRol}" /></td>
<!-- 	            <td class="listaEmp">E</td> -->
	            <td class="listaEmp"><c:out value="${objUsuario.numeroIdentificacion}" /></td>
	            <td class="listaEmp"><c:out value="${objUsuario.nombre}" /> <c:out value="${objUsuario.apellidos}" /></td>
<!-- 	            <td class="listaEmp">en la sucursal cartagena y sus negros</td> -->
				<td class="modificar-datos"><a href="" class="modificar-datosA">Modificar</a></td>
			</tr>
		</c:forEach>
		
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
            <table border='0'>
            	<tr><td><font color='red'>
					<b>1</b></font></td><td><a href='javascript:navegadorClick(2)'>2</a></td><td><a href='javascript:navegadorClick(3)'>3</a></td><td>...</td><td><a href='javascript:navegadorClick(2)'>»</a></td><td><a href='javascript:navegadorClick(158)'>»»</a></td>
					<td>
				    	<input ID="TextBox11" class="irA" type='button' runat="server" name='irA' value='Ir A' onclick='javascript: navegadorClick(this.form.navegador_pagina.value);'>
				    </td>
				</tr>
					</tbody>
				</table>
            </form>
        </div>
        
    
		<% // Importacion de JavaScript %>       
        <script src="Complementos/js/js_franwork/headroom.min.js"></script>
        <script src="Complementos/js/js_paginas/JSdataPets.js"></script>
    </body>
</html>
