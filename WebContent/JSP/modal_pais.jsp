<%-- 
    Document   : modal-paisCliente
    Created on : 23-may-2017, 17:29:01
    Author     : WILMAR
--%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
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
        <c:set var="context" value="${pageContext.request.contextPath}" />
        <input type="hidden" value="" id="codigoPaisRetorno">
        
        <div class="contenedor-clienteIC">
            <form class="form-usuarios" id="formLista" name="formLista">
                <div class="titulo-lista"><h2>Lista de Paises</h2></div>
                <label class="Lfiltro1-MPC">Codigo pais:</label>
                <input class="filtrar1-MPC" maxlength="4" name="f_codigoPais" id="f_codigoPais" value="<c:out value="${f_codigoPais}" />">
                <label class="Lfiltro2-MPC">Nombre pais:</label>
                <input class="filtrar2-MPC" maxlength="20" name="f_nombrePais" id="f_nombrePais" value="<c:out value="${f_nombrePais}" />">
                <a href="#" class="boton-formFiltrar" id="btnFiltrar">Filtrar <i class="filtro fa fa-filter" aria-hidden="true"></i></a>
                
    <table class="TablaRegistrosCitas-cliente">
	<tbody>
    
        <tr class="EncabezadoRegistros">
			<td class="cod_Cliente">Codigo Pais</td>
			<td  class="Nom_ClienteIcitas">Nombre Pais</td>
<!--             <td  class="campo-modificar"><i class="modificarICO fa fa-recycle" aria-hidden="true"></i></td> -->
		</tr>
		
	    <c:forEach items="${listaPais}" var="objPais">
	        <tr class="listadoUsuario listadoEmpleado" onclick="javascript:recuperarPais('<c:out value="${objPais.codigoPais}"/>')">
	            <td class="listaUsu"><c:out value="${objPais.codigoPais}"/></td>
	            <td class="listaUsu" id="nombrePais<c:out value="${objPais.codigoPais}"/>" ><c:out value="${objPais.nombrePais}"/></td>
<%-- 				<td class="modificar-datos"><a href="#" class="modificar-datosA" onclick="javascript:recuperarPais('<c:out value="${objPais.codigoPais}"/>')">Recuperar</a></td> --%>
			</tr>
		</c:forEach>

	</tbody>
	</table>
	
	<%// Paginador %>
	<jsp:include page="paginador.jsp"></jsp:include>
	
</form>
        </div>
        
        <script src="Complementos/js/js_franwork/headroom.min.js"></script>
        <script src="Complementos/js/js_franwork/jQuery3.2.js"></script>
        <script src="Complementos/js/js_paginas/JSdataPets.js"></script>
        <script src="Complementos/js/js_paginas/modal_pais_cliente.js"></script>
    </body>
</html>
