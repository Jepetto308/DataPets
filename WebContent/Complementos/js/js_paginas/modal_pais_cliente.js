var contexto;

$(document).ready(function(){

	contexto = $("#contexto").val();	
	
});

function recuperarPais(codigoPais){
	$("#codigoPaisRetorno").val(codigoPais);
	opener.document.getElementById("codigoPais").value = codigoPais;
	opener.document.getElementById("nombrePais").value = $("#nombrePais"+codigoPais).text();
	window.close();
}