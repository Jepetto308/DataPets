var contexto;

$(document).ready(function(){
	
	fechacita();
	
	contexto = $("#contexto").val();
	$("#nombreCompletoCliente").attr('readonly', true);
	$("#nombreMunicipio").attr('readonly', true);
	
	$("#btnGuardar").click(function(){
		$("#accion").val("G");
		if($("#estadoCita").val() == ""){
			$("#estadoCita").val("A");
		}
		
		if($("#estadoCita").val() == "XX"){
			alert("La Cita se encuentra anulada, no se permite cambiar los datos.");
			return;
		}
		
		$("#formCita").submit();
	});
	
	$("#btnNuevo").click(function(){
		$("#accion").val("N");
		$("#formCita").submit();
	});
	
	$("#btnConfirmar").click(function(){
		$("#accion").val("G");
		if($("#estadoCita").val() == "XX"){
			alert("No se puede confirmar una Cita anulada");
			return;
		}
		$("#estadoCita").val("C");
		$("#formCita").submit();
	});
	
	$("#btnAnular").click(function(){
		$("#accion").val("G");
		$("#estadoCita").val("XX");
		$("#formCita").submit();
	});
	
	$("#btnDesconfirmar").click(function(){
		$("#accion").val("G");
		if($("#estadoCita").val() == "XX"){
			alert("No se puede desconfirmar una Cita anulada");
			return;
		}
		$("#estadoCita").val("A");
		$("#formCita").submit();
	});
	
	$("#btnEliminar").click(function (){
		
		var eliminar = confirm("Esta seguro de eliminar este Registro?");
		if(!eliminar){return;}
		
		$("#accion").val("E");
		$("#formCita").submit();
	});
	
	$("#modalCliente").click(function (event){
		event.preventDefault();
		modalCliente();
	});
	
	$("#numeroDocumentoCliente").change(function (){
		numeroDocumentoClienteChange();
	});

});


function numeroDocumentoClienteChange(){
	
	$("#numeroDocumentoCliente").val($("#numeroDocumentoCliente").val().toUpperCase());
	if($("#numeroDocumentoCliente").val() == ""){
		$("#nombreCompletoCliente").val("");
		$("#idCliente").val("");
		return;
	}
	
	$.ajax({url: contexto + "/ControlCliente?accion=C&numeroDocumentoCliente="+$("#numeroDocumentoCliente").val(),
	    method: "GET",
	    success: function (objCliente) {
	        if (objCliente == "N") {
	        	alert("No existe algun cliente con documento: "+$("#numeroDocumentoCliente").val());
//	        	$("#numeroDocumentoCliente").val("");
	        	$("#numeroDocumentoCliente").focus();
	        	$("#nombreCompletoCliente").val("");
	        } else {
	        	objCliente = JSON.parse(objCliente);
	        	var nombreCliente = objCliente.primerNombreCliente + " " + objCliente.otrosNombresCliente + " " + objCliente.primerApellidoCliente + " " + objCliente.segundoApellidoCliente;
	        	$("#idCliente").val(objCliente.idCliente);
	        	$("#nombreCompletoCliente").val(nombreCliente);
	        }
	}});
}

function modalCliente() {
	var emer = window.open(contexto+"/ControlCliente?subAccion=Emergente",'_blank','left=120,top=100,width=980,height=440');
}

//calendario


function fechacita(){
    $('#cita').datepicker({
           changeMonth:true,
           changeYear:true,
           dateFormat: 'dd/mm/yy',
           showAnim: 'slide',
           
           showOn:"button",
           
           buttonImage:'Complementos/Imagenes/icono-calendario.png', 
//           button:'right=50,top=500,width=980,height=440',
            buttonImageOnly: true,
            buttonText: "Seleccione la fecha",
          
           showButtonPanel:true,
           
		 monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
		 monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
		 dayNames: ['Domingo', 'Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado'],
		 dayNamesShort: ['Dom','Lun','Mar','Mié','Juv','Vie','Sáb'],
		 dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','Sá'],
		 closeText: 'Cerrar',
		 prevText: '< Ant',
		 nextText: 'Sig >',
		 currentText: 'Hoy',
		  weekHeader: 'Sm',
})
 }

