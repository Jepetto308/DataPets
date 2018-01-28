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
	oControlAccesoPages.validatePemisions(request, response, oControlAccesoPages.getMapPermisos(),oControlAccesoPages.getNoPermisos());
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
            <form class="form-empleados" name="formLista" id="formLista" method="POST" action="${context}/ControlUsuario">
            	<input type="hidden" id="accion" name="accion"> 
            	<input type="hidden" id="hidUsuario" name="hidUsuario" value="">
            
                <div class="titulo-lista"><h2>Listado de Usuarios</h2></div>
                
		<div class="div-lCitas">
			<input class="Ilogin-Usu" minlength="6" maxlength="15" type="text" name="f_login" value="<c:out value="${f_login}" />">
            <label class="LfiltroCita">Login:</label>
               
            <input class="Iidentificacion-usu" minlength="6" maxlength="15" type="text" name="f_identificacion" value="<c:out value="${f_identificacion}" />">
            <label class="LfiltroCita">Identificacion:</label>
                
<!--             <input class="Inom-persona" minlength="15" maxlength="45" type="text" name="f_nombrePersona"> -->
<!--             <label class="LfiltroCita">Nombre de Persona:</label> -->
                 
            <select class="select-rol" name="f_codigoRol" >
            	<option value="">[Todos]</option>
                <c:forEach items="${listaRoles}" var="objRol">
                   	<option value="${objRol.codRol}" <c:if test="${objRol.codRol == f_codigoRol}"> selected</c:if> >
                   		<c:out value="${objRol.nombreRol}"></c:out> 
                   	</option>
                </c:forEach>
			</select>
            <label class="LfiltroCita">Rol:</label>
                
            <select class="estado-usuarioS" name="f_estadoUsuario">
				<option value="">Todos</option>
                <option value="">Activo</option>
                <option value="">Confirmado</option>
                <option value="">Anulado</option>
			</select>
            <label class="LfiltroCita">Estado usuario:</label>
		</div>   
         
         <a id="btnFiltrar" href="#" class="boton-formFiltrarC">Filtrar <i class="filtro fa fa-filter" aria-hidden="true"></i></a>
         <button type="button" id="exportar" class="btn-exportarUsuario">Exportar <i class="exportar fa fa-clipboard" aria-hidden="true"></i></button>
         <a href="#" id="nuevo" class="boton-formularioC">Nuevo Usuario <i class="filtro fa fa-user-circle-o" aria-hidden="true"></i></a>
                
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
<!--             <td  class="campo-modificar"><i class="modificarICO fa fa-wrench" aria-hidden="true"></i></td> -->
		</tr>
		
			<c:forEach items="${listaUsuarios}" var="objUsuario">
				<tr class="listadoEmpleado" onclick="javascript:editarUsuario(<c:out value="${objUsuario.numeroIdentificacion}" />)">
		            <td class="listaEmp"><c:out value="${objUsuario.username}" /></td>
		            <td class="listaEmp"><c:out value="${objUsuario.codigoRol}" /></td>
		            <td class="listaEmp"><c:out value="${objUsuario.nombreRol}" /></td>
	<!-- 	            <td class="listaEmp">E</td> -->
		            <td class="listaEmp"><c:out value="${objUsuario.numeroIdentificacion}" /></td>
		            <td class="listaEmp"><c:out value="${objUsuario.nombre}" /> <c:out value="${objUsuario.apellidos}" /></td>
	<!-- 	            <td class="listaEmp">en la sucursal cartagena y sus negros</td> -->
	<!-- 				<td class="modificar-datos"><a href="" class="modificar-datosA">Modificar</a></td> -->
				</tr>
			</c:forEach>
		</tbody>
	</table>
</form>
        </div>
        
    
		<% // Importacion de JavaScript %>       
        <script src="Complementos/js/js_franwork/headroom.min.js"></script>
        <script src="Complementos/js/js_paginas/JSdataPets.js"></script>
        <script src="Complementos/js/js_paginas/buscar_usuarios.js"></script>
    </body>
</html>
