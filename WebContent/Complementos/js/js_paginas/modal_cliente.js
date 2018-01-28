var contexto;

$(document).ready(function(){

	contexto = $("#contexto").val();
	
	$("#f_nombreCliente").change(function(){
		$("#f_nombreCliente").val($("#f_nombreCliente").val().toUpperCase());
	});
	
	$("#f_codigoCliente").change(function(){
		$("#f_codigoCliente").val($("#f_codigoCliente").val().toUpperCase());
	});
	
	$("#btnFiltrar").click(function(){
		$("#accion").val("L");
		$("#formLista").submit();
	});
	
});

function recuperarCliente(idCliente){
	$("#idClienteRetorno").val(idCliente);
	opener.document.getElementById("idCliente").value = idCliente;
	opener.document.getElementById("numeroDocumentoCliente").value = $("#numeroDocumentoCliente"+idCliente).text().trim();
	opener.document.getElementById("nombreCompletoCliente").value = $("#nombreCliente"+idCliente).text().trim();
	window.close();
}