<%-- 
    Document   : Modulos
    Created on : 06-jul-2017, 0:19:32
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
        <link rel="stylesheet" type="text/css" href="Complementos/css/jquery-ui.min.css">
        <link rel="stylesheet" type="text/css" href="Complementos/css/CssPets.css">
        
   <title>Data Pets</title>
    </head>
    <body class="fondo-menu">
       
		<c:set var="context" value="${pageContext.request.contextPath}" />
           
        <form class="formulario-modulos">
        
	    <input type="hidden" name="contexto" id="contexto" value="${context}"/>
        
        
            <div class="titulo-lista"><h2>Permisos de Usuarios</h2></div>
            
           <div class="div-Dpersonales"> 
               <select class="Iform-moduloS" name="modulo" id="modulo">
                   <option>[Ninguno]</option>
                   <c:forEach items="${listaPermisos}" var="objPermisos">
                    	<option value="${objPermisos.codigoRecurso}" >
                    		<c:out value="${objPermisos.codigoRecurso}"></c:out> 
                    	</option>
                    </c:forEach>
                </select>
            <label class="Lform-Fcita">Modulo:</label>  
       
         </div> 
         
         
           <div class="div-Dpersonales"> 
               <select class="Iform-moduloS" name="opcionesUser" id="opcionesUser" style="width: 370px;margin-left: 220px;">
                   <option value="">[Ninguno]</option>
                </select>  
                <select class="Iform-moduloS" name="activo" id="activo" style="width: 120px;margin-left: 620px;">
                   <option value="">[Ninguno]</option>
                   <option value="A">Activo</option>
                   <option value="I">Inactivo</option>
                </select>              
            <label class="Lform-Fcita">Opciones Disponibles:</label>  
       
         </div> 
         
            <div class="DB-formModulos">
              
                <button type="submit" class="btn-formEmpleado2" >Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>

        </div> 

        </form>
        <script src="Complementos/js/js_franwork/jQuery3.2.js"></script>
        <script src="Complementos/js/js_paginas/JSdataPets.js"></script>
   		<script src="Complementos/js/js_paginas/modal_modulos.js"></script>
             

    </body>
</html>
