


/*modal informe de clientes (cliente)*/
var paginamodal;
function modalCliente_IC() {
paginamodal = window.open ('modal_cliente_cita.jsp','_blank','left=120,top=100,width=980,height=440');

}

/*Activar input*/
           function activar_input(){
               var campo = $('#cCliente').val();
               if((campo!==null)&&(campo!==''))
               {
                   $('#nCliente').attr('disabled',false) ;
               }else{
                   $('#nCliente').attr('disabled',true);
               }
           }  
                    

/*Calendario 1*/

  $(function calendarioC1(){
    $('#citaD').datepicker({
           changeMonth:true,
           changeYear:true,
           dateFormat: 'dd/MM/yy',
           showAnim: 'slide',
           
           showOn:"button",
           
           buttonImage:'../Complementos/Imagenes/icono-calendario.png', 
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

     })

/*Calendario 2*/

  $(function calendarioC2(){
    $('#citaH').datepicker({
           changeMonth:true,
           changeYear:true,
           dateFormat: 'dd/MM/yy',
           showAnim: 'slide',
           
           showOn:"button",
           
           buttonImage:'../Complementos/Imagenes/icono-calendario.png', 
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

     })