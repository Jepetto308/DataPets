
var contexto;

$(document).ready(function(){

	contexto = $("#contexto").val();
	if($("#hidUsuario").val() != ""){
		$("#username").attr('readonly',true).css("background","#cccccc");
	}
	
	$("#btnGuardar").click(function(){
		$("#accion").val("G");
		
		$.ajax({url: contexto + "/ControlUsuario?accion=V&username=" + $("#username").val(),
            method: "GET",
            success: function (result) {	
                if ((result == true || result == "true") && $("#hidUsuario").val() != "") {
                	$("#disponible").val("No Disponible").css("display","block").css("color","red");
                	$("#username").focus();
                	return;
                }
            }});
		
		$("#formEmpleado").submit();
	});
	
	$("#btnNuevo").click(function(){
		$("#accion").val("N");
		$("#formEmpleado").submit();
	});
	
	$("#btnEliminar").click(function (){
		
		var eliminar = confirm("Esta seguro de eliminar este Registro?");
		if(!eliminar){return;}
		
		$("#accion").val("E");
		$("#formEmpleado").submit();
	});
	
	$("#verPass").mouseup(function() {
		$('#password').attr('type', 'password');
	})
	.mousedown(function() {
		$('#password').attr('type', 'text');
	});
	
	$("#username").change(function(){
		$("#disponible").css("display","none");
		if($("#username").val().length >= 3){
			
			$.ajax({url: contexto + "/ControlUsuario?accion=V&username=" + $("#username").val(),
	            method: "GET",
	            success: function (result) {	
	                if (result == true || result == "true") {
	                	$("#disponible").val("No Disponible").css("display","block").css("color","red");
	                }else{
	                	$("#disponible").val("Disponible").css("display","block").css("color","green");
	                }
	            }});
		}
	});
	
});

function volver(){
	window.history.back();
}

/*modal pais de cliente*/
var paginamodal;
function modalPermisos_Usuarios() {
paginamodal = window.open (contexto+"/ControlUsuario?accion=P&username="+ $("#username").val(),"_blank","left=120,top=200,width=980,height=310");

}


