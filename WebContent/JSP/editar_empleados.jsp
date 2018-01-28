
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
        <link href="https://fonts.googleapis.com/css?family=Droid+Sans" rel="stylesheet">
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
        
        <form class="formulario-clientes" name="formEmpleado" id="formEmpleado" action="${context}/ControlEmpleado" method="POST">
            
            <input type="hidden" name="contexto" id="contexto" value="${context}"/>
            <input type="hidden" name="accion" id="accion" value=""/>
            <input type="hidden" name="hidEmpleado" id="hidEmpleado" value="<c:out value="${oEmpleado.idEmpleado}" />"/>
            
            <div class="titulo-lista"><h2>Registro de Empleados</h2></div>
           <div class="div-Dpersonales"> 
                
               <select class="Iform-empleadoS" name="tipoDocumento">
                   <option value="cc" <c:if test="${oEmpleado.tipoDocumentoEmpleado == 'cc'}">SELECTED</c:if>>Cedula de ciudadania</option>
                    <option value="ti" <c:if test="${oEmpleado.tipoDocumentoEmpleado == 'ti'}">SELECTED</c:if>>Tarjeta de identidad</option>
                    <option value="rc" <c:if test="${oEmpleado.tipoDocumentoEmpleado == 'rc'}">SELECTED</c:if>>Registro civil</option>
                    <option value="ce" <c:if test="${oEmpleado.tipoDocumentoEmpleado == 'ce'}">SELECTED</c:if>>Cedula de extranjeria</option>   
                </select>
            <label class="Lform-empleado">Tipo de Documento:</label>           
            
            <input type="text" class="Iform-empleado" id="numeroDocumento" minlength="6" maxlength="15" name="numeroDocumento" value="<c:out value="${oEmpleado.numeroDocumentoEmpleado}"/>"/>
            <label class="Lform-empleado">Numero de identificacion:</label>
           
            <input type="text" class="Iform-empleado"  id="primerNombre" minlength="4" maxlength="20" name="primerNombre" value="<c:out value="${oEmpleado.primerNombreEmpleado}"/>" />
            <label class="Lform-empleado">Primer Nombre:</label>
            
            <input type="text" class="Iform-empleado"  id="otrosNombres" minlength="4" maxlength="20" name="otrosNombres" value="<c:out value="${oEmpleado.otrosNombresEmpleado}"/>"/>
            <label class="Lform-empleado">Otros nombres:</label>
            
            <input type="text" class="Iform-empleado" id="primerApellido" minlength="2" maxlength="20" name="primerApellido" value="<c:out value="${oEmpleado.primerApellidoEmpleado}"/>" />
            <label class="Lform-empleado">Primer Apellido:</label>
            
            <input type="text" class="Iform-empleado" id="segundoApellido" minlength="2" maxlength="20" name="segundoApellido" value="<c:out value="${oEmpleado.segundoApellidoEmpleado}"/>" />
            <label class="Lform-empleado">Segundo apellido:</label>
         </div> 
        <div class="div-ubicacionF">  
            <input type="text" class="Iform-ClientePais1" minlength="3" maxlength="3" name="codigoPais" id="codigoPais" value="<c:out value="${oEmpleado.codigoPais}" />" />
            <input type="text" class="Iform-ClientePais2" minlength="3" maxlength="3" id="nombrePais" name="nombrePais" value="<c:out value="${oEmpleado.nombrePais}" />"/>
            <input type="image" class="modal-pais" src="Complementos/Imagenes/lupa de pais.png" id="emergentePais" />
            <label class="Lform-empleado">Pais:</label>
            
            <input type="text" class="Iform-ClienteMunicipio1" minlength="3" maxlength="5" id="codigoMunicipio" name="codigoMunicipio" value="<c:out value="${oEmpleado.codigoMunicipio}" />" />
            <input type="text" class="Iform-ClienteMunicipio2" minlength="3" maxlength="60" id="nombreMunicipio" name="nombreMunicipio" value="<c:out value="${oEmpleado.nombreMunicipio}" />"/>
            <input type="image" class="modal-municipio" src="Complementos/Imagenes/municipioU.png" id="emergenteMunicipio"  />
            <label class="Lform-empleado">Municipio:</label>
         </div>
            <div class="div-Dadicionales" >
                <input type="text" class="Iform-empleado" id="direccion" minlength="5" maxlength="25" name="direccion" value="<c:out value="${oEmpleado.direccionEmpleado}"/>" />
            <label class="Lform-empleado">Direccion:</label>
            
            <input type="tel" class="Iform-empleado" id="telefono" minlength="7" maxlength="20" name="telefono" value="<c:out value="${oEmpleado.telefonoEmpleado}"/>"/>
            <label class="Lform-empleado">Telefono:</label>
            
            <input type="tel" class="Iform-empleado" id="celular" minlength="10" maxlength="20" name="celular" value="<c:out value="${oEmpleado.celularEmpleado}"/>" />
            <label class="Lform-empleado">Celular:</label>
            
            <input type="text" class="Iform-empleado" id="fax" maxlength="20" name="fax" value="<c:out value="${oEmpleado.faxEmpleado}"/>"/>
            <label class="Lform-empleado">Fax:</label>
            
            <input type="text" class="Iform-empleado" id="correo" minlength="5" maxlength="60" name="email" value="<c:out value="${oEmpleado.correoEmpleado}"/>" />
            <label class="Lform-empleado">E-mail:</label>
         </div>   
 
            
            <div class="DB-formEmpleado">
                <button type="button" class="btn-formEmpleado1" id="btnNuevo">Nuevo >></button>
                <button type="button" class="btn-formEmpleado2" id="btnGuardar" >Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                <button type="button" class="btn-formEmpleado3" id="btnEliminar">Eliminar <i class="fa fa-trash" aria-hidden="true"></i></button>
                <a href="" onclick="javascript:volver();" class="btn-formEmpleado4"><i class="fa fa-undo" aria-hidden="true"></i> Volver</i></a>
                
                <label class="Lform-empleado"><c:out value="${okMessage}" /></label>
                
            </div>
       
        </form>
        <script src="Complementos/js/js_franwork/headroom.min.js"></script>
        <script src="Complementos/js/js_franwork/jQuery3.2.js"></script>
        <script src="Complementos/js/js_paginas/editar_empleados.js"></script>
        <script src="Complementos/js/js_paginas/JSdataPets.js"></script>
       
        

    </body>
</html>

