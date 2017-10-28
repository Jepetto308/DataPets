<%-- 
    Document   : modal-municipioCliente
    Created on : 23-may-2017, 17:29:45
    Author     : WILMAR
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <meta name="viewport" content="width-device-width, user-scalable-no, inital-scale=1.0, maximun-scale=1.0, minumun-scale=1.0">
      
 <link rel="shortcut icon" href="../Complementos/Imagenes/favicon.png" /> 
        <link href="https://fonts.googleapis.com/css?family=Gloria+Hallelujah" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,600,700" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="../Complementos/css/cssFontAwesome/font-awesome.min.css"/>
        <link rel="stylesheet" type="text/css" href="../Complementos/css/CssPets.css">
        
        <title>Data Pets</title>
    </head>
    <body class="fondo-menu">
       
 
        
        <div class="contenedor-clienteIC">
            <form class="form-usuarios">
                <div class="titulo-lista"><h2>Lista de Municipios para clientes</h2></div>
                
                <label class="Lfiltro1-MmC">Codigo Municipio:</label>
                <input class="filtrar1-MmC" minlength="3" maxlength="4" name="codigoMunicipio">
                <label class="Lfiltro2-MmC">Nombre Municipio:</label>
                <input class="filtrar2-MmC" minlength="2" maxlength="25" name="nombreMunicipio">
                <a   href="#" class="boton-formFiltrar">Filtrar <i class="filtro fa fa-filter" aria-hidden="true"></i></a>
<!--                <button type="submit" class="btn-exportarUsuario">Exportar <i class="exportar fa fa-clipboard" aria-hidden="true"></i></button>
                <a   href="#" class="boton-formulario">Nuevo Usuario <i class="fa fa-user" aria-hidden="true"></i> </a>-->
                
    <table class="TablaRegistrosCitas-cliente">
	<tbody>
    

        <tr class="EncabezadoRegistros">
			

			<td class="cod_Cliente">Codigo Municipio</td>
			<td  class="Nom_ClienteIcitas">Nombre Municipio</td>


               <td  class="campo-modificar"><i class="modificarICO fa fa-recycle" aria-hidden="true"></i></td>
			 
			
			

            
		</tr>


		
                <tr class="listadoUsuario">
                    <td class="listaUsu">4017</td>
                    <td class="listaUsu">Medellin</td>
      
			
<td class="modificar-datos"><a href="" class="modificar-datosA">Recuperar</a></td>
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
        
      
	
       
    
       
        <script src="../Complementos/js/js_franwork/headroom.min.js"></script>
        <script src="../Complementos/js/js_franwork/jQuery3.2.js"></script>
        <script src="../Complementos/js/js_paginas/JSdataPets.js"></script>
    </body>
</html>
