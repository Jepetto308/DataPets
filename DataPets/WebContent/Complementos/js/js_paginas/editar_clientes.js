$(document).ready(function(){
	
	$("#btnGuardar").click(function(){
		$("#accion").val("G");
		$("#formCliente").submit();
	});
	
	$("#btnNuevo").click(function(){
		$("#accion").val("N");
		$("#formCliente").submit();
	});
});

function volver(){
	window.history.back();
}

/*modal pais de cliente*/
var paginamodal;
function modalCliente_pais() {
paginamodal = window.open ('modal_pais_cliente.jsp','_blank','left=120,top=100,width=980,height=440');

}

/*modal municipio de cliente*/
var paginamodal;
function modalCliente_municipio() {
paginamodal = window.open ('modal_municipio_cliente.jsp','_blank','left=120,top=100,width=980,height=440');

}

/*Bloque de input*/

  function activar_input(){
               var campo = $('#cPais').val();
               if((campo!==null)&&(campo!==''))
               {
                   $('#nPais').attr('disabled',false) ;
               }else{
                   $('#nPais').attr('disabled',true);
               }
           }  
           
               function activar_inputM(){
               var campo = $('#cMun').val();
               if((campo!==null)&&(campo!==''))
               {
                   $('#nMun').attr('disabled',false) ;
               }else{
                   $('#nMun').attr('disabled',true);
               }
           }  
