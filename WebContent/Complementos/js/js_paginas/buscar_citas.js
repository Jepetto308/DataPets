var contexto;

$(document).ready(function(){
	
	contexto = $("#contexto").val();
	
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
	
	$("#modalCliente").click(function (event){
		event.preventDefault();
		modalCliente();
	});
	
	$("#numeroDocumentoCliente").change(function (){
		numeroDocumentoClienteChange();
	});
	
	Calendario('Bcita1');
	Calendario('Bcita2');
});

function editarCitas(idCita){
	$("#accion").val("D");
	$("#hidCita").val(idCita);
	$("#formLista").submit();
}

function Calendario(Input){
    $('#'+Input).datepicker({
         changeMonth:true,
         changeYear:true,
         dateFormat: 'dd-mm-yy',
         showAnim: 'slide',
           
//         showOn:"button",
           
//         buttonImage:'Complementos/Imagenes/icono-calendario.png', 
//         buttonImageOnly: true,
//         buttonText: "Seleccione la fecha",
          
//         showButtonPanel:true,
           
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
  };
  
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
//		        	$("#numeroDocumentoCliente").val("");
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

