<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	   <meta charset="ISO-8859-1">
	   <title>Compras</title>
	   <link rel="stylesheet" type="text/css" href="semantic.css">
	   <link rel="stylesheet" type="text/css" href="telaDeLogin.css">
	   <script src="https://code.jquery.com/jquery-3.1.1.min.js" ></script>
	   <script src="semantic.js"></script>
	        
	   <link rel="icon" href="./themes/carrinho.png" type="image/x-icon">    
   
 		<script>   
			$(document).ready(function() {
				
				$('#formLogin').form({
					fields: {
			        	email: {
			            	identifier  : 'email',
			              	rules: [
			              		{
			                		type   : 'empty',
			                  		prompt : 'Please enter your e-mail'
			                	},
			                	{
			                  		type   : 'email',
			                  		prompt : 'Please enter a valid e-mail'
			                	}
			              	]
			            },
			            password: {
			            	identifier  : 'password',
			              	rules: [
				                {
				                	type   : 'empty',
				                	prompt : 'Please enter your password'
				                },
				                {
				                  	type   : 'length[6]',
				                  	prompt : 'Your password must be at least 6 characters'
				                }
			              	]
			            }
					},
				    onSuccess: function() {
			
			    	  // Impede que o evento submit padrão seja disparado
			          event.preventDefault();
			
				   }
				});
			      
			 });
					  
		</script>        	
	</head>
	<body>
	       
		<div class="ui transparent middle aligned center aligned grid" >
			<div class="column">
				<h2 class="ui teal image header">
					<div class="content"> ENTRAR </div>
				</h2>
				<form class="ui large form"  id="formLogin" action="login" method="post">
					<div class="ui stacked segment">
						<div class="field">
					    	<div class="ui left icon input">
						        <i class="user icon"></i>
						        <input type="text" name="email" id="email" placeholder="Endereço de email">
					      	</div>
					    </div>
					    <div class="field">
					      	<div class="ui left icon input">
						        <i class="lock icon"></i>
						        <input type="password" name="senha" id="senha" placeholder="Senha">
					      	</div>
					    </div>
					    <div class="ui fluid large teal submit button">Login</div>
					    <div class="ui message">
					  		<a>Esqueceu a senha?</a>
						</div>
					</div>
					<div class="ui error message"></div>
				</form>				
				<div class="ui message">
					Novo Usuario? <a href="cadastros.jsp">Cadastre-se aqui!</a>
				</div>
			</div>
		</div>	        
	</body>
</html>