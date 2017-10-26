
/*Validacion Login*/   

 function validar_login() {
           var usuario, pass;
                   usuario = document.getElementById("usuarioLogin").value;
                   pass = document.getElementById("contraseñaLogin").value;
            
     
     
                if(usuario === "" && pass === "" ){
//                  $("#alertaU_C").fadeIn();
               alert ("debe ingresar usuario y contraseña"); 
////                    
               return false;
           } 
 
  
          else if(usuario === ""   ){
//                 $("#alertaU").fadeIn();
               alert ("debe ingresar el USUARIO"); 
                      
               return false;
           } 
           
            else if(pass === "" ){
             $("#alertaC").fadeIn();
               alert ("debe ingresar la CONTRASEÑA"); 
                    
                return false;
           } 
           
    
           
       
       }
       
       
       
