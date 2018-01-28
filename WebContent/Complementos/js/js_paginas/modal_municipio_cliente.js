var contexto;

$(document).ready(function(){

	contexto = $("#contexto").val();
	
	$("#f_nombreMunicipio").change(function(){
		$("#f_nombreMunicipio").val($("#f_nombreMunicipio").val().toUpperCase());
	});
	
	$("#f_codigoMunicipio").change(function(){
		$("#f_codigoMunicipio").val($("#f_codigoMunicipio").val().toUpperCase());
	});
	
	$("#btnFiltrar").click(function(){
		$("#accion").val("L");
		$("#formLista").submit();
	});
	
});

function recuperarMunicipio(codigoMunicipio){
	$("#codigoMunicipioRetorno").val(codigoMunicipio);
	opener.document.getElementById("codigoMunicipio").value = codigoMunicipio;
	opener.document.getElementById("nombreMunicipio").value = $("#nombreMunicipio"+codigoMunicipio).text();
	window.close();
}