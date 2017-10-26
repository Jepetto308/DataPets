<%-- 
    Document   : formClientes
    Created on : 20-abr-2017, 21:31:42
    Author     : WILMAR
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

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
        
        <script src="Complementos/js/js_franwork/headroom.min.js"></script>
        <script src="Complementos/js/js_franwork/jQuery3.2.js"></script>
        <script src="Complementos/js/js_paginas/JSdataPets.js" type="text/javascript "></script>
        <script src="Complementos/js/js_paginas/editar_clientes.js" type="text/javascript "></script>
        
        <title>Data Pets</title>
    </head>
    <body class="fondo-menu">
        <jsp:include page="menu.jsp"></jsp:include>
        <c:set var="context" value="${pageContext.request.contextPath}" />
        <form class="formulario-clientes" name="formCliente" id="formCliente" action="${context}/ControlCliente" method="POST">
            <input type="hidden" name="accion" id="accion" value=""/>
            <input type="hidden" name="hidCliente" id="hidCliente" value="<c:out value="${oCliente.idCliente}" />"/>
            
            <div class="titulo-lista"><h2>Registro de Clientes</h2></div>
           <div class="div-Dpersonales"> 
               <select class="Iform-empleadoS" name="tipoDocumento">
                   <option value="cc">cedula de ciudadania</option>
                    <option value="ti">tarjeta de identidad</option>
                    <option value="rc">registro civil</option>
                    <option value="ce">cedula de extranjeria</option>   
                </select>
            <label class="Lform-empleado">Tipo de Documento:</label>           
            
            <input type="number" class="Iform-empleado" minlength="6" maxlength="15" name="numeroDocumento" value="<c:out value="${oCliente.numeroDocumentoCliente}" />"/>
            <label class="Lform-empleado">Numero de identificacion:</label>
           
            <input type="text" class="Iform-empleado" minlength="4" maxlength="15" name="primerNombre" value="<c:out value="${oCliente.primerNombreCliente}" />"/>
            <label class="Lform-empleado">Primer Nombre:</label>
            
            <input type="text" class="Iform-empleado" minlength="4" maxlength="20" name="otrosNombres" value="<c:out value="${oCliente.otrosNombresCliente}" />">
            <label class="Lform-empleado">Otros nombres:</label>
            
            <input type="text" class="Iform-empleado" minlength="2" maxlength="20" name="primerApellido" value="<c:out value="${oCliente.primerApellidoCliente}" />">
            <label class="Lform-empleado">Primer Apellido:</label>
            
            <input type="text" class="Iform-empleado" minlength="2" maxlength="20" name="segundoApellido" value="<c:out value="${oCliente.segundoApellidoCliente}" />"/>
            <label class="Lform-empleado">Segundo apellido:</label>
            
            <input type="text" class="Iform-empleado" minlength="5" maxlength="50" name="razonSocial"/>
            <label class="Lform-empleado">Razon Social:</label>
         </div> 
        <div class="div-ubicacionF">  
            <input type="text" class="Iform-ClientePais1" minlength="3" maxlength="3" id="cPais" value="" onkeyup="activar_input()"/>
            <input type="text" class="Iform-ClientePais2" minlength="3" maxlength="3" id="nPais"  disabled/><input type="image" class="modal-pais" src="Complementos/Imagenes/lupa de pais.png" name= "codigoPais" onclick="modalCliente_pais()" />
            <label class="Lform-empleado">Pais:</label>
            
            <input type="text" class="Iform-ClienteMunicipio1" minlength="3" maxlength="3" id="cMun" value="" onkeyup="activar_inputM()"/>
            <input type="text" class="Iform-ClienteMunicipio2" minlength="3" maxlength="3" id="nMun"  disabled/><input type="image" class="modal-municipio" src="Complementos/Imagenes/municipioU.png" name = "codigoMunicipio" onclick="modalCliente_municipio()" />
            <label class="Lform-empleado">Municipio:</label>
         </div>   
            <div class="div-Dadicionales" >
                <input type="text" class="Iform-empleado" minlength="5 " maxlength="25" name="direccion"/>
            <label class="Lform-empleado">Direccion:</label>
            
            <input type="tel" class="Iform-empleado" minlength="7" maxlength="20" name="telefono"/>
            <label class="Lform-empleado">Telefono:</label>
            
            <input type="tel" class="Iform-empleado" minlength="10" maxlength="20" name="celular"/>
            <label class="Lform-empleado">Celular:</label>
            
            <input type="text" class="Iform-empleado" minlength="8" maxlength="20" name="fax"/>
            <label class="Lform-empleado">Fax:</label>
            
            <input type="email" class="Iform-empleado" minlength="8" maxlength="25" name="email"/>
            <label class="Lform-empleado">E-mail:</label>
         </div>   
 
            
            <div class="DB-formEmpleado">
                <button type="submit" class="btn-formEmpleado1">Nuevo >></button>
                <button type="button" class="btn-formEmpleado2" id="btnGuardar" >Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                <button type="submit" class="btn-formEmpleado3">Eliminar <i class="fa fa-trash" aria-hidden="true"></i></button>
                <a href="buscar_clientes.jsp" type="submit" class="btn-formEmpleado4"><i class="fa fa-undo" aria-hidden="true"></i> Volver</i></a>
                
                <label class="Lform-empleado"><c:out value="${okMessage}" /></label>
                
            </div>
        </div> 

       
        </form>

    </body>
</html>
