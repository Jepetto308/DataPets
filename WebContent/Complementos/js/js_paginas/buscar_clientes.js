$(document).ready(function(){
	
	$("#exportar").click(function (){
		$("#accion").val("E");
		$("#formListaCliente").submit();
	});
	
	$("#nuevo").click(function (){
		$("#accion").val("N");
		$("#formListaCliente").submit();
	});
});

function editarCliente(idCliente){
	$("#accion").val("D");
	$("#hidCliente").val(idCliente);
	$("#formListaCliente").submit();
}