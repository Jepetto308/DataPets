<%-- 
    Document   : Citas
    Created on : 26/05/2017, 11:28:54 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <jsp:include page="JSP/menu.jsp"></jsp:include>
                
        <div class="contenedor-citas">
            <form class="form-empleados">
                <div class="titulo-lista"><h2>Listado de Citas</h2></div>
                
                <div class="div-lCitas">
                    
                    <input class="IfiltrarCita1" minlength="6" maxlength="15" name="numeroDocumento" type="text">
                    <%--concatenar campo de nombre cliente completo ern la tabla de cliente--%>
                    <input class="IfiltrarCita2" minlength="15" maxlength="45" name="nombreCliente" type="text"><input type="image" class="modalCita" src="Complementos/Imagenes/hombre de la lupa.png" onclick="modalCliente_IC()" />
                <label class="LfiltroCita">Cliente:</label>
               
                <input class="Ifiltrar-numeroCita" minlength="3" maxlength="6" name="numeroCita" type="text">
                <label class="LfiltroCita">Numero cita:</label>

                <select class="tipoServicio-cita"  name="tipoServicio" >
                     <option value="">[Todos]</option>
                    <option value="B"> Baño</option>
                    <option value="C">Cepillado</option>
                    <option value="BC">Baño y Cepillado</option>
                </select>
               <label class="LfiltroCita">Tipo de Servicio:</label>
                
               <select class="estado-cita" name="estadoCita">
                   
                    <option value="">[Todos]</option>
                    <option value="A">Abierto</option>
                    <option value="C">Confirmado</option>
                    <option value="N">Anulado</option>
                    
                </select>
               <label class="LfiltroCita">Estado de la cita:</label>
               
               
                <input class="Ifiltrar-fechaCita2" name="citaHasta" placeholder="Hasta:" id="Bcita2" onkeyup="BcalendarioC2()">
                <input class="Ifiltrar-fechaCita1" name="citasDesde" placeholder="Desde:" id="Bcita1" onkeyup="BcalendarioC1()">
                <label class="LfiltroCita">Fecha cita:</label>
               
        </div>        
                 
                <a   href="#" class="boton-formFiltrarC">Filtrar <i class="filtro fa fa-filter" aria-hidden="true"></i></a>
                <button type="submit" class="btn-exportarCita">Exportar <i class="exportar fa fa-clipboard" aria-hidden="true"></i></button>
                <a   href="jsp/editar_citas.jsp" class="boton-formularioC">Nueva Cita <i class="nCita fa fa-calendar-check-o" aria-hidden="true"></i> </a>
                
    <table class="TablaRegistros-citas">
	<tbody>
    

        <tr class="EncabezadoRegistros" name="tablaCitas">
            
                        

			<td class="num_Cita">Numero de la Cita</td>
			<td  class="Clientes-cita">Cliente</td>

                        <td  class="fecha-cita">Fecha de la Cita</td>
                        <td  class="servicio-cita">Servicio en la Cita</td>
                        

                        

                        <td  class="estado-citaT">Estado de Cita</td>
 

                
 <td  class="campo-modificar"><i class="modificarICO fa fa-wrench" aria-hidden="true"></i></td>
			 
			
			

            
		</tr>


		
                <tr class="listadoEmpleado">
			 <td class="listaEmp">1017</td>
                    <td class="listaEmp">Wilmar Franco</td>
                    <td class="listaEmp">24 / Julio / 2017</td>
                    <td class="listaEmp">Baño y cepillado</td>
                    <td class="listaEmp">Confirmado</td>
                  
			
<td class="modificar-datos"><a href="" class="modificar-datosA">Modificar</a></td>
		</tr>

	

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
        <script src="Complementos/js/js_franwork/jquery-ui.min.js"></script>
        <script src="Complementos/js/js_paginas/JSdataPets.js"></script>
        <script src="Complementos/js/js_paginas/buscar_citas.js"></script>
    </body>
</html>
