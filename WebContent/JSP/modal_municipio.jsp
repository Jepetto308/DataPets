<%-- 
    Document   : modal-municipioCliente
    Created on : 23-may-2017, 17:29:45
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
       
        <div class="contenedor-clienteIC">
            <form class="form-usuarios" id="formLista" name="formLista">
            
            <c:set var="context" value="${pageContext.request.contextPath}" />
        	<input type="hidden" value="" id="codigoMunicipioRetorno">
            
                <div class="titulo-lista"><h2>Lista de Municipios</h2></div>
                
                <label class="Lfiltro1-MmC">Codigo Municipio:</label>
                <input class="filtrar1-MmC" minlength="3" maxlength="5" name="f_codigoMunicipio" id="f_codigoMunicipio" value="<c:out value="${f_codigoMunicipio}" />">
                <label class="Lfiltro2-MmC">Nombre Municipio:</label>
                <input class="filtrar2-MmC" minlength="2" maxlength="25" name="f_nombreMunicipio" id="f_nombreMunicipio" value="<c:out value="${f_nombreMunicipio}" />">
                <a   href="#" class="boton-formFiltrar" id="btnFiltrar">Filtrar <i class="filtro fa fa-filter" aria-hidden="true"></i></a>
<!--                <button type="submit" class="btn-exportarUsuario">Exportar <i class="exportar fa fa-clipboard" aria-hidden="true"></i></button>
                <a   href="#" class="boton-formulario">Nuevo Usuario <i class="fa fa-user" aria-hidden="true"></i> </a>-->
                
    <table class="TablaRegistrosCitas-cliente">
	<tbody>
    
        <tr class="EncabezadoRegistros">
			
			<td class="cod_Cliente">Codigo Municipio</td>
			<td  class="Nom_ClienteIcitas">Nombre Municipio</td>
<!--             <td  class="campo-modificar"><i class="modificarICO fa fa-recycle" aria-hidden="true"></i></td> -->
			 
		</tr>
		
		<c:forEach items="${listaMunicipio}" var="objMunicipio">
	        <tr class="listadoUsuario listadoEmpleado" onclick="javascript:recuperarMunicipio('<c:out value="${objMunicipio.codigoMunicipio}"/>')">
	            <td class="listaUsu"><c:out value="${objMunicipio.codigoMunicipio}"/></td>
	            <td class="listaUsu" id="nombreMunicipio<c:out value="${objMunicipio.codigoMunicipio}"/>" ><c:out value="${objMunicipio.nombreMunicipio}"/></td>
<%-- 				<td class="modificar-datos"><a href="#" class="modificar-datosA" onclick="javascript:recuperarPais('<c:out value="${objMunicipio.codigoMunicipio}"/>')">Recuperar</a></td> --%>
			</tr>
		</c:forEach>		
	</tbody>
	</table>
	
	<jsp:include page="paginador.jsp"></jsp:include>
	
</form>
</div>
        
      
       
        <script src="Complementos/js/js_franwork/headroom.min.js"></script>
        <script src="Complementos/js/js_franwork/jQuery3.2.js"></script>
        <script src="Complementos/js/js_paginas/JSdataPets.js"></script>
        <script src="Complementos/js/js_paginas/modal_municipio_cliente.js"></script>
    </body>
</html>
