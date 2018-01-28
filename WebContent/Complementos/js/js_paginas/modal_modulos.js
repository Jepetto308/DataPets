
var contexto;

$(document).ready(function(){

	contexto = $("#contexto").val();
	
});

$("#modulo").change(function(){
	
	$.ajax({url: contexto + "/ControlUsuario?accion=PP&username=" + $("#username").val()+"&modulo="+$("#modulo").val(),
        method: "GET",
        success: function (result) {	
        var opciones = eval(result);
        var selectedOption = '';

        var select = $('#opcionesUser');
        select.html('');
        
        if(opciones.length > 0){
        	for(var i=0;i<opciones.length;i++){
        		var objOpcion = opciones[i];
        		select.append( '<option value="'+objOpcion.codigoOpcion+'">'+objOpcion.nombreOpcion+'</option>' );
        	}
        }
        
        }});
});