<%-- 
    Document   : Citas
    Created on : 26/05/2017, 11:28:54 PM
    Author     : USER
--%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri= "http://java.sun.com/jsp/jstl/fmt" %>
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
        <link rel="stylesheet" type="text/css" href="Complementos/css/jquery-ui.css">
        <link rel="stylesheet" type="text/css" href="Complementos/css/jquery-ui.structure.css">
        <link rel="stylesheet" type="text/css" href="Complementos/css/jquery-ui.theme.css">
        
        <title>Data Pets</title>
    </head>
    <body class="fondo-menu">
        
        <jsp:include page="menu.jsp"></jsp:include>
        <c:set var="context" value="${pageContext.request.contextPath}" />        
        <div class="contenedor-citas">
            <form class="form-citas" name="formLista" id="formLista" method="post" action="${context}/ControlCita">
            	<input type="hidden" id="accion" name="accion"> 
            	<input type="hidden" id="hidCita" name="hidCita" value=""> 
            	<input type="hidden" name="contexto" id="contexto" value="${context}"/>
        
                <div class="titulo-lista"><h2>Listado de Citas</h2></div>
                
                <div class="div-lCitas">
                    
                <input class="formCita-codCliente" minlength="3" maxlength="6" type="hidden" id="idCliente" name="idCliente" value="${idCliente}" />
	            <input class="IfiltrarCita1" minlength="3" maxlength="15" type="text" id="numeroDocumentoCliente" name="numeroDocumentoCliente" value="<c:out value="${f_numeroDocumentoCliente}"/>" />
	            <input class="IfiltrarCita2" style="width: 220px;" readonly="readonly" minlength="15" maxlength="45" type="text" id="nombreCompletoCliente" name="nombreCompletoCliente" value="<c:out value="${f_nombreCompletoCliente}"/>"/>
	            <input type="image" style="margin-right: 15px;" class="modalCita" src="Complementos/Imagenes/hombre de la lupa.png" id="modalCliente"/>
	            <label class="LfiltroCita">Cliente:</label>
               
                <input class="Ifiltrar-numeroCita" minlength="3" maxlength="6" name="f_numeroCita" value='<c:out value="${f_numeroCita}"/>' type="text">
                <label class="LfiltroCita">Numero cita:</label>

                <select class="tipoServicio-cita"  name="f_tipoCita" >
                    <option value="">[Todos]</option>
                    <c:forEach items="${listaTiposCitas}" var="objTipoCita">
                    	<option value="${objTipoCita.idTipoCita}" <c:if test="${objTipoCita.idTipoCita == f_tipoCita}"> selected</c:if> >
                    		<c:out value="${objTipoCita.nombreTipoCita}"></c:out> 
                    	</option>
                    </c:forEach>
                </select>
               <label class="LfiltroCita">Tipo de Servicio:</label>
                
               <select class="estado-cita" name="f_estadoCita">
                   
                    <option value="">[Todos]</option>
                    <option value="A" <c:if test="${f_estadoCita == 'A'}"> selected</c:if> >ACTIVO</option>
                    <option value="C" <c:if test="${f_estadoCita == 'C'}"> selected</c:if> >CONFIRMADO</option>
                    <option value="XX" <c:if test="${f_estadoCita == 'XX'}"> selected</c:if> >ANULADO</option>
                    
                </select>
               <label class="LfiltroCita">Estado de la cita:</label>
               
               
                <input class="Ifiltrar-fechaCita1" name="f_fechaDesde" value="<c:out value="${f_fechaDesde}"/>" placeholder="Desde:" id="Bcita1" onkeyup="BcalendarioC1()">
                <input class="Ifiltrar-fechaCita2" name="f_fechaHasta" value="<c:out value="${f_fechaHasta}"/>" placeholder="Hasta:" id="Bcita2" onkeyup="BcalendarioC2()">
                <label class="LfiltroCita">Fecha cita:</label>
               
        </div>        
                 
                <a href="#" id="btnFiltrar" class="boton-formFiltrarC">Filtrar <i class="filtro fa fa-filter" aria-hidden="true"></i></a>
                <button type="button" id="exportar" class="btn-exportarCita">Exportar <i class="exportar fa fa-clipboard" aria-hidden="true"></i></button>
                <a id="nuevo" href="#" class="boton-formularioC">Nueva Cita <i class="nCita fa fa-calendar-check-o" aria-hidden="true"></i> </a>
                
    <table class="TablaRegistros-citas">
	<tbody>
    

    <tr class="EncabezadoRegistros" name="tablaCitas">
			<td class="num_Cita">Numero de la Cita</td>
			<td  class="Clientes-cita">Cliente</td>
			<td  class="fecha-cita">Fecha de la Cita</td>
            <td  class="servicio-cita">Servicio en la Cita</td>
            <td  class="estado-citaT">Estado de Cita</td>
	</tr>

	
	<c:forEach items="${listaCitas}" var="obj">
            <tr class="listadoEmpleado" onclick="javascript:editarCitas(<c:out value="${obj.idCita}" />)">
				 <td class="listaEmp">${obj.numeroCita}</td>
				 <td class="listaEmp">${obj.nombreCompletoCliente}</td>
	             <td class="listaEmp"><fmt:formatDate value="${obj.fechaCita}" pattern="dd/MM/yyyy hh:mm"/></td>
	             <td class="listaEmp">
	             	<c:forEach items="${listaTiposCitas}" var="obj2">
	             		<c:if test="${obj.idServicioCita == obj2.idTipoCita}">
	             			<c:out value="${obj2.nombreTipoCita}" />
	             		</c:if>
	             	</c:forEach>
	             </td>
	             <td class="listaEmp">
		             <c:if test="${obj.estadoCita == 'A'}">ACTIVO</c:if>
	            	 <c:if test="${obj.estadoCita == 'C'}">CONFIRMADO</c:if>
	            	 <c:if test="${obj.estadoCita == 'XX'}">ANULADO</c:if>
	             </td>
				
<%-- 				<td class="modificar-datos"><a href="javascript:editarCliente(<c:out value="${obj.idCliente}" />)" class="modificar-datosA">Modificar</a></td> --%>
			</tr>
   </c:forEach>
		
<!--     <tr class="listadoEmpleado"> -->
<!-- 		<td class="listaEmp">1017</td> -->
<!-- 		<td class="listaEmp">Wilmar Franco</td> -->
<!--         <td class="listaEmp">24 / Julio / 2017</td> -->
<!--         <td class="listaEmp">Baño y cepillado</td> -->
<!--         <td class="listaEmp">Confirmado</td> -->
<!-- 		<td class="modificar-datos"><a href="" class="modificar-datosA">Modificar</a></td> -->
<!-- 	</tr> -->

	</tbody>
	</table>
</form>
	<jsp:include page="paginador.jsp"></jsp:include>
</div>


		<script src="Complementos/js/js_franwork/headroom.min.js"></script>
		<script src="Complementos/js/js_franwork/jQuery3.2.js"></script>
        <script src="Complementos/js/js_franwork/jquery-ui.min.js"></script>
        <script src="Complementos/js/js_paginas/JSdataPets.js"></script>
        <script src="Complementos/js/js_paginas/buscar_citas.js"></script>
    </body>
</html>
