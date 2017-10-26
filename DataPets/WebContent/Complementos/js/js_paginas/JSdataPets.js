
/*MENU*/
 $(document).ready(function(){
    $('.Menu li:has(ul)').click(function(e){
        e.preventDefault();
     
        if ($(this).hasClass('activado')){
            $(this).removeClass('activado');
            $(this).children('ul').slideUp();  
        }else{
            $('.Menu li ul').slideUp();
            $('.Menu li').removeClass('activado');
            $(this).addClass('activado');
            $(this).children('ul').slideDown();
        }

    });
     
     $('.btn-menu').click(function(){
         $('.contenedor-menu .Menu').slideToggle();
    });     
     
     $(window).resize(function(){
         
         if($(document).width() > 450){
            $('.contenedor-menu .Menu').css({'display':'block'});
         }
         
        if($(document).width() < 450){
            $('.contenedor-menu .Menu').css({'display':'none'});
            $('.Menu li ul').slideUp();
            $('.Menu li ').removeClass('activado');
         }
    });
         
     $('.Menu li ul li a').click(function(){
        window.location.href= $(this).attr("href");
     });
});        
     
   /*Head*/      

$(function(){
    
    var header = document.getElementById('header');
    var headroom = new Headroom(header);
    headroom.init();

});
     
     
     
     
     
     
     
     
     
     
     
     
     
     
 /*Validar Usuario*/   
 
  function validar_nombre(){
                usuario=document.form1.txtUsuario.value;
                if(usuario.length===0){
                    alert("Ingrese el usuario");
                    return false;
                } else{
                    si=true;
                }
    }
    
    function validar_passwork(){
                password=document.form1.password.value;
                if(password.length===0) {
                    alert("Ingrese la contraseña");
                    return false;
                } else {
                    si=true;
                }
    }
    
    function validar_ingreso(){
                var nombre=document.getElementById('usuario');
                var pass=document.getElementById('password');
                
                if((nombre.value === "")||(pass.value == "")){
                    alert("Los datos ingresados no son correctos")
                    
                } else {
                    window.location="Menu_DataPets.jsp";
                }
                    
                    
        
    }
    
    /*calendario*/
    
//$(function(){
//    
// $("#fecha").datepicker();
//  
//})

/*MODALES*/




/*modal modulos de Usuario*/
//var paginamodal;
//function modalUsuario_municipio() {
//paginamodal = window.open ('Modulos.jsp','_blank','left=120,top=100,width=980,height=440');
//
//}
//
//
//
///*Bloquear input*/
//          function activar_input(){
//               var campo = $('#cPais').val();
//               if((campo!==null)&&(campo!==''))
//               {
//                   $('#nPais').attr('disabled',false);
//               }else{
//                   $('#nPais').attr('disabled',true);
//               }
//           }  