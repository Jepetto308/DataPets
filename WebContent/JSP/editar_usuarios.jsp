
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
	           
        <form class="formulario-usuarios" name="formUsuario" id="formUsuario" action="${context}/ControlUsuario" method="POST">
        
        	<input type="hidden" name="contexto" id="contexto" value="${context}"/>
            <input type="hidden" name="accion" id="accion" value=""/>
            <input type="hidden" name="hidUsuario" id="hidUsuario" value="<c:out value="${oUsuario.numeroIdentificacion}" />"/>
        
            <div class="titulo-lista"><h2>Registro de Usuarios</h2></div>
            
           <div class="div-Dpersonales"> 
               <input type="text" class="Iform-loginUsuario" minlength="6" maxlength="15" name="username" id="username" value="<c:out value="${oUsuario.username}" />"/>
            	<input type="text" value="Disponible" id="disponible" disabled="disabled">
            	<label class="Lform-Fcita">Username:</label>        
            
            	<select class="IformRolS" name="rol" id="rol">
            
                   <c:forEach items="${listaRoles}" var="objRol">
                    	<option value="${objRol.codRol}" <c:if test="${objRol.codRol == oUsuario.codigoRol}"> selected</c:if> >
                    		<c:out value="${objRol.nombreRol}"></c:out> 
                    	</option>
                    </c:forEach>
                   
                </select>
            <label class="Lform-Fcita">Rol:</label>
           
            <input class="formUsu-pass" type="password" minlength="8" maxlength="20" name="password" id="password" value="<c:out value="${oUsuario.password}" />"/>
            <input type="button" value="Ver" id="verPass">
            <label class="Lform-Fcita">Password:</label>
             
             <select class="IformUsu-EusuarioS" name="estadoUsuario">
                   <option value="A" <c:if test="${oUsuario.estado == 'A'}">SELECTED</c:if>>Activo</option>
                   <option value="I" <c:if test="${oUsuario.estado == 'I'}">SELECTED</c:if>>Inactivo</option>
             </select>
             <label class="Lform-Fcita">Estado Usuario:</label>
             
             <input class="formUsu-identificacion" minlength="6" maxlength="10" type="text" name="numeroIdentificacion" value="<c:out value="${oUsuario.numeroIdentificacion}" />"/>
             <label class="Lform-Fcita">Numero Identificacion:</label>
             
             <input class="formUsu-Nusuario" minlength="3" maxlength="45" type="text" name="nombre" value="<c:out value="${oUsuario.nombre}" />"/>
             <label class="Lform-Fcita">Nombres:</label>
             
             <input class="formUsu-Nusuario" minlength="15" maxlength="45" type="text" name="apellidos" value="<c:out value="${oUsuario.apellidos}" />"/>
             <label class="Lform-Fcita">Apellidos:</label>
             
             <select class="IformUsu-EusuarioS" name="sexo">
                   <option value="M" <c:if test="${oUsuario.sexo == 'M'}">SELECTED</c:if>>Masculino</option>
                   <option value="F" <c:if test="${oUsuario.sexo == 'F'}">SELECTED</c:if>>Femenino</option>
                </select>
             <label class="Lform-Fcita">Sexo:</label>
             
             <input class="formUsu-Nusuario" minlength="15" maxlength="45" type="number" name="telefono" value="<c:out value="${oUsuario.telefono}" />"/>
             <label class="Lform-Fcita">Telefono:</label>
             
<%--              <textarea type="text" class="descripcion-Frol" minlength="12" maxlength="55" name="informacionAdicional"><c:out value="${oUsuario.apellidos}" /></textarea> --%>
<!--                            <div class="div-IadicionalUsu">   -->
<!--               <label class="Lform-Fcita">Informacion Adicional:</label> -->
            
                </div> 
         </div> 
			<label class="Lform-empleado" style="text-align: center;"><c:out value="${okMessage}" /></label>
            <button type="button" class="btnPermisos-usuario"  onclick="modalPermisos_Usuarios()" >Permisos por Usuario <i class="fa fa-unlock" aria-hidden="true"></i></button>
            <div class="DB-formUsuario">
                <button type="submit" class="btn-formEmpleado1" id="btnNuevo">Nuevo >></button>
                <button type="submit" class="btn-formEmpleado2" id="btnGuardar">Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                <button type="submit" class="btn-formEmpleado3" id="btnEliminar">Eliminar <i class="fa fa-trash" aria-hidden="true"></i></button>
			</div>                
	        <div class="DB-formUsuario2">
				<button type="submit" class="btn-buscarRol">Buscar <i class="fa fa-search" aria-hidden="true"></i></button> 
				<a href="" onclick="javascript:volver();" type="submit" class="btn-formEmpleado4"><i class="fa fa-undo" aria-hidden="true"></i> Volver</i></a>
	       	</div> 
        </form>
        
      

        <script src="Complementos/js/js_franwork/headroom.min.js"></script>
        <script src="Complementos/js/js_franwork/jQuery3.2.js"></script>
        <script src="Complementos/js/js_paginas/JSdataPets.js"></script>
        <script src="Complementos/js/js_paginas/editar_usuarios.js"></script>
             

    </body>
</html>
