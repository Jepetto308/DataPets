
/*modal pais de empleado*/
var paginamodal;
function modalEmpleado_pais() {
paginamodal = window.open ('modal_pais_empleados.jsp','_blank','left=120,top=100,width=980,height=440');

}

/*modal municipio de empleado*/
var paginamodal;
function modalEmpleado_municipio() {
paginamodal = window.open ('modal_municipio_empleados.jsp','_blank','left=120,top=100,width=980,height=440');

}


/*Activar input*/

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
  
/*Campos obligatorios*/

 function validar_campos() {
           var identificacion, nombre1, nombre2, apellido1, apellido2, direccion, telefono, celular, fax, mail, expresion;
                   identificacion = document.getElementById("documento").value;
                   nombre1 = document.getElementById("pNombre").value;
                   nombre2 = document.getElementById("oNombres").value;
                   apellido1 = document.getElementById("pApellido").value;
                   apellido2 = document.getElementById("sApellido").value;
                   direccion = document.getElementById("direccion").value;
                   telefono = document.getElementById("telefono").value;
                   celular = document.getElementById("celular").value;
                   fax = document.getElementById("fax").value;
                   mail = document.getElementById("correo").value;
                   
                   expresion = /\w+@\w+\.+[a-z]/;
                   
if(identificacion === "" || nombre1 === "" || nombre2 === "" || apellido1 === "" || apellido2 === ""||
        direccion === "" || telefono === "" || celular === "" || fax === "" || mail === ""){
               alert ("Todos los campos son obligatorios"); 
               return false;
           } 
           
//           if(identificacion === "" ){
//               alert ("debe insresar su numnero de identificacion"); 
//               return false;
//           } 
//           
//             else  if(nombre1 === "" ){
//               alert ("debe insresar su primer nombre"); 
//               return false;
//           } 
           
//              else if((celular)){ 
//             alert ("el celular ingresado no es un Numero"); 
//               return false;
//           }
           
           if(identificacion.length>=16){ 
             alert ("el numero de documento es demasiado"); 
               return false;
           }
           
            else if(isNaN(identificacion)){ 
             alert ("el documento ingresado no es un  Numero"); 
               return false;
           }
           
            else if(nombre1.length>=21){ 
             alert ("el nombre es muy largo"); 
               return false;
           }
           
            else if(nombre2.length>=21){ 
             alert ("el campo otros nombres es muy largo"); 
               return false;
           }
           
            else if(apellido1.length>=21){ 
             alert ("el el primer apellido es demasiado largo"); 
               return false;
           }
           
            else if(apellido2.length>=21){ 
             alert ("el segundo apellido es demasiado largo"); 
               return false;
           }
           
            else if(direccion.length>=26){ 
             alert ("la direccion rebosa los caracteres permitidos"); 
               return false;
           }
           
            else if(telefono.length>=21){ 
             alert ("el numero de telefono es muy largo"); 
               return false;
           }
           
              else if(isNaN(telefono)){ 
             alert ("el telefono ingresado no es un Numero"); 
               return false;
           }
           
            else if(celular.length>=21){ 
             alert ("ese celular es CHINO"); 
               return false;
           }
           
             else if(isNaN(celular)){ 
             alert ("el celular ingresado no es un Numero"); 
               return false;
           }
           
            else if(fax.length>=21){ 
             alert ("ese fax ya no se usa"); 
               return false;
           }
          
             else if(mail.length>=26){ 
             alert ("esa cuenta es robada"); 
               return false;
           }
           
               else if(!expresion.test(mail)){ 
             alert ("el correo no cumple con la sintaxis apropiada"); 
               return false;
           }
 }