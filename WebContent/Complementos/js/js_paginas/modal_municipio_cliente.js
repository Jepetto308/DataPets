var contexto;

$(document).ready(function(){

	contexto = $("#contexto").val();	
	
});

function recuperarPais(codigoMunicipio){
	$("#codigoMunicipioRetorno").val(codigoMunicipio);
	opener.document.getElementById("codigoMunicipio").value = codigoMunicipio;
	opener.document.getElementById("nombreMunicipio").value = $("#nombreMunicipio"+codigoMunicipio).text();
	window.close();
}