var contexto;

$(document).ready(function(){

	contexto = $("#contexto").val();
	
	$("#f_nombrePais").change(function(){
		$("#f_nombrePais").val($("#f_nombrePais").val().toUpperCase());
	});
	
	$("#f_codigoPais").change(function(){
		$("#f_codigoPais").val($("#f_codigoPais").val().toUpperCase());
	});
	
	$("#btnFiltrar").click(function(){
		$("#accion").val("L");
		$("#formLista").submit();
	});
	
});

function recuperarPais(codigoPais){
	$("#codigoPaisRetorno").val(codigoPais);
	opener.document.getElementById("codigoPais").value = codigoPais;
	opener.document.getElementById("nombrePais").value = $("#nombrePais"+codigoPais).text();
	window.close();
}