<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title> adicionar Mercado</title>
		<link rel="stylesheet" type="text/css" href="semantic.css">
		<link rel="stylesheet" type="text/css" href="TelaInicial.css">
		<script src="https://code.jquery.com/jquery-3.1.1.min.js" ></script>
		<script src="semantic.js"></script>
		<meta charset="UTF-8">
		<link rel="icon" href="./themes/carrinho.png" type="image/x-icon">
	</head>
<div class="ui secondary  menu">
			<a class="item" href="menu.jsp">home</a>
			<a class="item" href="listaProdutos">Produtos</a>
			<a class="item" href="listaCompras">Lista de compras</a>
			<a class="blue active item" href="listaMercados">Mercados</a>
			<a class="item" href="Apoio.jsp">Apoio</a>
			<div class="right menu">
				<div class="item">
					<div class="ui icon input">
						<input type="text" placeholder="Search...">
						<i class="search link icon"></i>
					</div>
				</div> 
				<a class=" red ui active item" href="home.jsp">Logout</a>			      
			</div>
		</div>
		<h1>Formulário de Criação de Produto</h1>
		<form class="ui form" action="adicionarMercados" method="post">
			<div class="field">
					<div class="field">
						<label for="name">Nome:</label>
						<input type="text" name="mercadonome" id="mercadonome" required><br><br>
					</div>	
			</div>
			<input type="submit" value="Criar Produto">
    	</form>
	</body>
</html>