<%-- 
    Document   : Citas
    Created on : 02-abr-2017, 20:43:50
    Author     : WILMAR
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
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,600,700" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="Complementos/css/cssFontAwesome/font-awesome.min.css"/>
        <link rel="stylesheet" type="text/css" href="Complementos/css/jquery-ui.css"/>
        <link rel="stylesheet" type="text/css" href="Complementos/css/jquery-ui.structure.css"/>
        <link rel="stylesheet" type="text/css" href="Complementos/css/jquery-ui.theme.css"/>
        <link rel="stylesheet" type="text/css" href="Complementos/Imagenes/images/ui-icons_444444_256x240.png"/>
        <link rel="stylesheet" type="text/css" href="Complementos/css/CssPets.css">
        
   <title>Data Pets</title>
    </head>
    <body class="fondo-menu">
        
        <jsp:include page="menu.jsp"></jsp:include>
        <c:set var="context" value="${pageContext.request.contextPath}" />
        <form class="formulario-citas" name="formCita" id="formCita" action="${context}/ControlCita" method="POST">
        
        	<input type="hidden" name="contexto" id="contexto" value="${context}"/>
            <input type="hidden" name="accion" id="accion" value=""/>
            <input type="hidden" name="hidCita" id="hidCita" value="<c:out value="${oCita.idCita}" />"/>
			           
            <div class="titulo-lista"><h2>Registro de Citas</h2></div>
            
           <div class="div-Dpersonales"> 
                
			<input type="text" class="Iform-Ncita" maxlength="6" name="numeroCita" value="${oCita.numeroCita}"/>
            <label class="Lform-Fcita">Numero de Cita:</label>           
            
            <input class="formCita-codCliente" minlength="3" maxlength="6" type="text" id="idCliente" name="idCliente" value="${oCita.idCliente}" />
            <input class="formCita-codCliente" minlength="3" maxlength="15" type="text" id="numeroDocumentoCliente" name="numeroDocumentoCliente" value="${oCita.numeroDocumentoCliente}" />
            <input class="formCita-nomCliente" minlength="15" maxlength="45" type="text" id="nombreCompletoCliente" name="nombreCompletoCliente" value="${oCita.nombreCompletoCliente}"/>
            <input type="image" class="modal-deClienteC" src="Complementos/Imagenes/hombre de la lupa.png" id="modalCliente"/>
            <label class="Lform-Fcita">Cliente:</label>
           
            <input type="text" class="input-calendario" name="fechaCita" id="cita" value="<fmt:formatDate value="${oCita.fechaCita}" pattern="dd/MM/yyyy"/>" />
            <input type="text" maxlength="2" class="horaFechas" name="horaCita" id="horaCita" value="<fmt:formatDate value="${oCita.fechaCita}" pattern="hh"/>" />
            <input type="text" maxlength="2" class="minutosFechas" name="minutosCita" id="minutosCita" value="<fmt:formatDate value="${oCita.fechaCita}" pattern="mm"/>" />
            <label class="Lform-Fcita">Fecha de Cita:</label>
            
              <select class="Iform-citaS" name="idServicioCita" value="seleccione tipo de cita">
                   <option>------Servicio------</option>
                    <c:forEach items="${listaTiposCitas}" var="objTipoCita">
                    	<option value="${objTipoCita.idTipoCita}" <c:if test="${objTipoCita.idTipoCita == oCita.idServicioCita}"> selected</c:if> >
                    		<c:out value="${objTipoCita.nombreTipoCita}"></c:out> 
                    	</option>
                    </c:forEach>
                    
                </select>
            <label class="Lform-Fcita">Servicio en la Cita:</label>
            
            <label class="Lestado-cita">
            	<input type="hidden" id="estadoCita" name="estadoCita" value="${oCita.estadoCita}">
            	<c:if test="${oCita.estadoCita == 'A'}">ACTIVO</c:if>
            	<c:if test="${oCita.estadoCita == 'C'}">CONFIRMADO</c:if>
            	<c:if test="${oCita.estadoCita == 'XX'}">ANULADO</c:if>
            </label>
            <label class="Lform-Fcita">Estado de Cita:</label>
            
       
         </div> 
 			
 			<div style="text-align: center;">
	            <label class=""><c:out value="${okMessage}" /></label>
 			</div>     
            <div class="DB-formCitas">
            
            	<button type="button" class="btn-formEmpleado1" id="btnNuevo">Nuevo >></button>
                <button type="button" class="btn-formEmpleado2" id="btnGuardar" >Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                <button type="button" class="btn-formEmpleado3" id="btnEliminar">Eliminar <i class="fa fa-trash" aria-hidden="true"></i></button>
            
                <button type="button" class="btn-formCitasCon" id="btnConfirmar">Confirmar <i class="fa fa-check-square-o" aria-hidden="true"></i></button>
            	<div class="DB-formCitas2">  
	                <button type="button" class="btn-formCitasAnu" id="btnAnular">Anular <i class="fa fa-ban" aria-hidden="true"></i></button>
	                <button type="button" class="btn-formCitasDes" id="btnDesconfirmar">Desconfirmar <i class="fa fa-times-circle" aria-hidden="true"></i></button>
	                <a href="" onclick="javascript:volver();" class="btn-formEmpleado4"><i class="fa fa-undo" aria-hidden="true"></i> Volver</i></a>
              	</div>      
<!--                <button type="submit" class="btn-formUsuario5">Volver</button>
                <button type="submit" class="btn-formUsuario6">Volver</button>-->
            </div>
            
        </div> 

        </form>
        

        <script src="Complementos/js/js_franwork/headroom.min.js"></script>
        <script src="Complementos/js/js_franwork/jQuery3.2.js"></script>
        <script src="Complementos/js/js_franwork/jquery-ui.min.js"></script>
        <script src="Complementos/js/js_paginas/JSdataPets.js"></script>
        <script src="Complementos/js/js_paginas/editar_citas.js"></script>     

    </body>
</html>

