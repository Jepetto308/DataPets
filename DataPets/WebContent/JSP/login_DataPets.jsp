
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <link rel="shortcut icon" href="../Complementos/Imagenes/favicon.png" /> 
         <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../Complementos/css/cssBootstrap/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../Complementos/css/cssLogin.css" rel="stylesheet" type="text/css"/>
        
        <title>Data Pets</title>
    </head>
 <body class="fondoLogin">
         <section class="container login-form">
	
		<section class="panel panel-default">
                    <form method="post"  enctype="application/x-www-form-urlencoded" name="frmLogin" role="login" onsubmit="return validar_login()">
				<!--<img src="assets/images/logos.png" alt="" class="img-responsive" />-->
			<div>
                            <img class="img-responsive" style="width: 280px; height: 140px;" alt="Agencia de Aduanas Agencomex Ltda. Nivel 2" src="../Complementos/Imagenes/datapets final.png">
				</div>
				<div class="form-group">
                                    <input  type="text"  minlength="6" maxlength="15" id="usuarioLogin" name="txtUsuario"  class="form-control" placeholder="INGRESAR USUARIO"  />
					<span class="glyphicon glyphicon-user"></span>
                                        
                                            <div class="row">
                
                                                      <div class="alertaU alert alert-danger" id="alertaU">
                                                          <button class="close" data-dismiss="alert"><span>&times;</span></button>
                                                                 <span class="glyphicon glyphicon-exclamation-sign"></span> 
                                                             <strong>Error</strong> dede ingresar el USUARIO</div>
                                     </div>
				</div>
				
                                
				<div class="form-group">
                                    <input type="password"  minlength="6" maxlength="20" id="contraseñaLogin" name="password"  class="form-control" placeholder="INGRESAR CONTRASEÑA" />
					<span class="glyphicon glyphicon-lock"></span>
                                        
                                             <div class="row">
                
                                                <div class="alertaC alert alert-danger" id="alertaU">
                                                 <button class="close" data-dismiss="alert"><span>&times;</span></button>
                                                 <span class="glyphicon glyphicon-exclamation-sign"></span> 
                                                <strong>Error</strong> dede ingresar la CONTRASEÑA</div>
                                         </div>
				</div>
				
				<button type="submit" name="btnIngresar" class="btn btn-primary btn-block" >Iniciar Session</button>
				
                                <p>Medellin - Colombia</p>
			</form>
                    
		</section>
             
              <div class="row">
                
                <div class="alertaU_C alert alert-danger" id="alertaU">
                    <button class="close" data-dismiss="alert"><span>&times;</span></button>
                    <span class="glyphicon glyphicon-exclamation-sign"></span> 
                    <strong>Error</strong> dede ingresar el USUARIO y la CONTRASEÑA</div>
              </div>
             
             
               
             
          
          
	</section>
        
       
  
     
     <script src="../Complementos/js/js_franwork/jQuery3.2.js"></script>
     <script src="../Complementos/js/js_franwork/bootstrap.min.js"></script>
     <script src="../Complementos/js/js_paginas/login_Datapets.js"></script>
    </body>
</html>
