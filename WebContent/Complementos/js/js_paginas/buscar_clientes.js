$(document).ready(function(){
	
	$("#exportar").click(function (){
		$("#accion").val("EX");
		$("#formLista").submit();
	});
	
	$("#nuevo").click(function (){
		$("#accion").val("N");
		$("#formLista").submit();
	});
	
	$("#btnFiltrar").click(function (){
		$("#accion").val("L");
		$("#formLista").submit();
	});
});

function editarCliente(idCliente){
	$("#accion").val("D");
	$("#hidCliente").val(idCliente);
	$("#formLista").submit();
}