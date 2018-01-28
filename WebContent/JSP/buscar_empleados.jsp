<%-- 
    Document   : Usuarios
    Created on : 04-abr-2017, 21:40:23
    Author     : WILMAR
--%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Controllers.ControlAccesoPages" %>
<%@ page import="java.util.HashMap" %>
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
        
        <div class="contenedor-empleado">
             <form class="form-empleados" name="formLista" id="formLista" method="post" action="${context}/ControlEmpleado">
            	<input type="hidden" id="accion" name="accion"> 
            	<input type="hidden" id="hidEmpleado" name="hidEmpleado" value="">
            	
                <div class="titulo-lista"><h2>Listado de Empleados</h2></div>
                
                <label class="Lfiltro1">Identificacion:</label>
                <input class="filtrar1" minlength="6" maxlength="15" name="f_numeroDocumento" value="<c:out value="${f_numeroDocumento}" />" >
                <label class="Lfiltro2">Nombre Completo:</label>
                <%-- concatenar nombre completo en la DB tabla clientes--%>
                <input class="filtrar2" minlength="15" maxlength="45" name="f_nombreEmpleado" value="<c:out value="${f_nombreEmpleado}" />">
                <a id="btnFiltrar" href="#" class="boton-formFiltrar">Filtrar <i class="filtro fa fa-filter" aria-hidden="true"></i></a>
                <button type="button" id="exportar" class="btn-exportarEmpleado">Exportar <i class="exportar fa fa-clipboard" aria-hidden="true"></i></button>
                <a href="#" id="nuevo" class="boton-formulario">Nuevo Empleado <i class="fa fa-users" aria-hidden="true"></i> </a>
                
    <table class="TablaRegistros">
	<tbody>
    

        <tr class="EncabezadoRegistros" name="tablaEmpleados">
			
<!--                        <td class="tipo_documentoU">Tipo de Documento</td>-->
			<td class="ID_Empleado">Numero de Identificación</td>
			<td  class="Nom_Empleado">Primer Nombre</td>
<!--                        <td  class="ONom_Usuario">Otros Nombre</td>-->
                        <td  class="Ape_Empleado">Primer Apellido</td>
                        <td  class="SApe_Empleado">Segundo Apellido</td>
                        
<!--                        <td  class="pais-usuario">Pais:</td>
                        <td  class="mun-usuario">Municipio:</td>-->
                        
<!--                        <td  class="Dir_Usuario">Direccion:</td>-->
                        <td  class="TEL_Empleado">Telefono</td>
                        <td  class="CEL-Empleado">Celular</td>
                        <!--
                        <td  class="Fax_Usuario">Fax:</td>
                        <td  class="E-mail_Usuario">E-mail:</td>-->

<!--                <td  class="campo-modificar"><i class="modificarICO fa fa-wrench" aria-hidden="true"></i></td> -->
            
		</tr>

			
		<c:forEach items="${listaEmpleados}" var="obj">
            <tr class="listadoEmpleado" onclick="javascript:editarEmpleado(<c:out value="${obj.idEmpleado}" />)">
				 <td class="listaEmp">${obj.numeroDocumentoEmpleado}</td>
	             <td class="listaEmp">${obj.primerNombreEmpleado}</td>
	             <td class="listaEmp">${obj.primerApellidoEmpleado}</td>
	             <td class="listaEmp">${obj.segundoApellidoEmpleado}</td>
	             <td class="listaEmp">${obj.telefonoEmpleado}</td>
	             <td class="listaEmp">${obj.celularEmpleado}</td>
				
<%-- 				<td class="modificar-datos"><a href="javascript:editarCliente(<c:out value="${obj.idCliente}" />)" class="modificar-datosA">Modificar</a></td> --%>
			</tr>
        </c:forEach>
        
<!--                 <tr class="listadoEmpleado"> -->
<!--                     <td class="listaEmp">1017196647</td> -->
<!--                     <td class="listaEmp">Wilmar</td> -->
<!--                     <td class="listaEmp">Franco</td> -->
<!--                     <td class="listaEmp">Ramirez</td> -->
<!--                     <td class="listaEmp">2586882</td> -->
<!--                     <td class="listaEmp">3113659901</td> -->
<!-- <!-- 					<td class="modificar-datos"><a href="" class="modificar-datosA">Modificar</a></td> -->
<!-- 				</tr> -->

	</tbody>
	</table>
		
		<jsp:include page="paginador.jsp"></jsp:include>
            </form>
        </div>
       
        <script src="Complementos/js/js_franwork/headroom.min.js"></script>
        <script src="Complementos/js/js_franwork/jQuery3.2.js"></script>
        <script src="Complementos/js/js_paginas/JSdataPets.js"></script>
        <script src="Complementos/js/js_paginas/buscar_empleados.js"></script>
    </body>
</html>
