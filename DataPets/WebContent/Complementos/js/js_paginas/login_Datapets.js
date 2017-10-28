
/*Validacion Login*/   

$(document).ready(function () {
	$(".mensajeError").css("display","none");
    $(".mensajeError").css("height", "0");

    $("#IngresoLog").click(function () {
    	var usuario, pass;
        usuario = document.getElementById("username").value;
        pass = document.getElementById("password").value;
         
        if(usuario === "" && pass === "" ){
        	alert ("debe ingresar usuario y contraseña"); 
        	return false;
        } 
        else if(usuario === ""   ){
            alert ("debe ingresar el USUARIO"); 
            return false;
        } 
        else if(pass === "" ){
            alert ("debe ingresar la CONTRASEÑA"); 
            return false;
        } 
    	
        $.ajax({url: contexto + "/ControlLogin?username=" + $("#username").val() + "&password=" + $("#password").val(),
            method: "GET",
            success: function (result) {
                if (result == true || result == "true") {
                	$(".mensajeError").css("display","block");
                	$(".mensajeError").animate({
                        height: '30px'
                    }, function () {
                        setTimeout(function () {
                        	$(".mensajeError").css("display","none");
                            $(".mensajeError").animate({
                                height: '0'
                            });
                        },5000);
                    });
                } else {
                    window.location = contexto + "/ControlCliente";
                }
            }});
    });
});

       
       
       
