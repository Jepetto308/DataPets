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
    
    
    <!-- PONERLE HOVER A LA FILA COMPLETA CUANDO LE HAGAN HOVER -->
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
       
       	<jsp:include page="menu.jsp"></jsp:include>
        <c:set var="context" value="${pageContext.request.contextPath}" />        
        <div class="contenedor-empleado">
            <form class="form-empleados" name="formListaCliente" id="formListaCliente" method="post" action="${context}/ControlCliente">
            	<input type="hidden" id="accion" name="accion"> 
            	<input type="hidden" id="hidCliente" name="hidCliente" value=""> 
                <div class="titulo-lista"><h2>Listado de Clientes</h2></div>
                
                <label class="Lfiltro1">Identificacion:</label>
                <input class="filtrar1" minlength="6" maxlength="15" name="numeroDocumento">
                <label class="Lfiltro2">Nombre:</label>
                <%-- concatenar nombre completo en la DB tabla clientes--%>
                <input class="filtrar2" minlength="15" maxlength="45" name="nombreCliente">
                <a   href="#" class="boton-formFiltrar">Filtrar <i class="filtro fa fa-filter" aria-hidden="true"></i></a>
                <button type="button" id="exportar" class="btn-exportarEmpleado">Exportar <i class="exportar fa fa-clipboard" aria-hidden="true"></i></button>
                <a   href="#" id="nuevo" class="boton-formulario">Nuevo Cliente <i class="fa fa-users" aria-hidden="true"></i> </a>
                
    <table class="TablaRegistros">
	<tbody>
    

        <tr class="EncabezadoRegistros" name="tablaClientes">
            
                        
<!--			<td class="TD_Clientes">Tipo de Documento:</td>-->
			<td class="ID_Clientes">Numero de Identificación</td>
			<td  class="Nom_Clientes">Primer Nombre</td>
<!--                        <td  class="ONom_Clientes">Otros Nombre:</td>-->
                        <td  class="Ape_Clientes">Primer Apellido</td>
                        <td  class="SApe_Clientes">Segundo Apellido</td>
                        
<!--                        <td  class="pais-cliente">Pais:</td>
                        <td  class="mun-cliente">Municipio:</td>-->
                        
<!--                        <td  class="Dir_Clientes">Direccion:</td>-->
                        <td  class="TEL_Clientes">Telefono</td>
                        <td  class="CEL_Clientes">Celular</td>
<!--                        <td  class="Fax_Clientes">Fax:</td>
                        <td  class="E-mail_Clientes">E-mail:</td>-->
                
 <td  class="campo-modificar"><i class="modificarICO fa fa-wrench" aria-hidden="true"></i></td>
			 
			
			

            
		</tr>


		<c:forEach items="${listaClientes}" var="obj">
            <tr class="listadoEmpleado">
				 <td class="listaEmp">${obj.numeroDocumentoCliente}</td>
	             <td class="listaEmp">${obj.primerNombreCliente}</td>
	             <td class="listaEmp">${obj.primerApellidoCliente}</td>
	             <td class="listaEmp">${obj.segundoApellidoCliente}</td>
	             <td class="listaEmp">${obj.telefonoCliente}</td>
	             <td class="listaEmp">${obj.celularCliente}</td>
				
				<td class="modificar-datos"><a href="javascript:editarCliente(<c:out value="${obj.idCliente}" />)" class="modificar-datosA">Modificar</a></td>
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
                <table border='0'><tr><td><font color='red'>
                <b>1</b></font></td><td><a href='javascript:navegadorClick(2)'>2</a></td><td><a href='javascript:navegadorClick(3)'>3</a></td><td>...</td><td><a href='javascript:navegadorClick(2)'>»</a></td><td><a href='javascript:navegadorClick(158)'>»»</a></td><td>
                            <input ID="TextBox11" class="irA" type='button' runat="server" name='irA' value='Ir A' onclick='javascript: navegadorClick(this.form.navegador_pagina.value);'>
                                      
			</td>
		</tr>
	</tbody>
</table>
            </form>
        </div>
        
    
       
        <script src="Complementos/js/js_franwork/headroom.min.js"></script>
        <script src="Complementos/js/js_franwork/jQuery3.2.js"></script>
        <script src="Complementos/js/js_paginas/JSdataPets.js"></script>
        <script src="Complementos/js/js_paginas/buscar_clientes.js"></script>
    </body>
</html>
