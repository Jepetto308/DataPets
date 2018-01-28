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
        	<input type="hidden" value="" id="codigoClienteRetorno">
            
                <div class="titulo-lista"><h2>Lista de Clientes</h2></div>
                
                <label class="Lfiltro1-MmC">Codigo Cliente:</label>
                <input class="filtrar1-MmC" minlength="3" maxlength="5" name="f_codigoCliente" id="f_codigoCliente" value="<c:out value="${f_codigoCliente}" />">
                <label class="Lfiltro2-MmC">Nombre Cliente:</label>
                <input class="filtrar2-MmC" minlength="2" maxlength="25" name="f_nombreCliente" id="f_nombreCliente" value="<c:out value="${f_nombreCliente}" />">
                <a   href="#" class="boton-formFiltrar" id="btnFiltrar">Filtrar <i class="filtro fa fa-filter" aria-hidden="true"></i></a>
<!--                <button type="submit" class="btn-exportarUsuario">Exportar <i class="exportar fa fa-clipboard" aria-hidden="true"></i></button>
                <a   href="#" class="boton-formulario">Nuevo Usuario <i class="fa fa-user" aria-hidden="true"></i> </a>-->
                
    <table class="TablaRegistrosCitas-cliente">
	<tbody>
    
        <tr class="EncabezadoRegistros">
			
			<td class="cod_Cliente">Numero Documento Cliente</td>
			<td  class="Nom_ClienteIcitas">Nombre Cliente</td>
<!--             <td  class="campo-modificar"><i class="modificarICO fa fa-recycle" aria-hidden="true"></i></td> -->
			 
		</tr>
		
		<c:forEach items="${listaClientes}" var="objCliente">
	        <tr class="listadoUsuario listadoEmpleado" onclick="javascript:recuperarCliente('<c:out value="${objCliente.idCliente}"/>')">
	            <td class="listaUsu" id="numeroDocumentoCliente<c:out value="${objCliente.idCliente}"/>"><c:out value="${objCliente.numeroDocumentoCliente}"/></td>
	            <td class="listaUsu" id="nombreCliente<c:out value="${objCliente.idCliente}"/>" >
	            	<c:out value="${objCliente.primerNombreCliente}"/> <c:out value="${objCliente.otrosNombresCliente}"/> <c:out value="${objCliente.primerApellidoCliente}"/> <c:out value="${objCliente.segundoApellidoCliente}"/> 
	            </td>
<%-- 				<td class="modificar-datos"><a href="#" class="modificar-datosA" onclick="javascript:recuperarPais('<c:out value="${objCliente.codigoCliente}"/>')">Recuperar</a></td> --%>
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
        <script src="Complementos/js/js_paginas/modal_cliente.js"></script>
    </body>
</html>
