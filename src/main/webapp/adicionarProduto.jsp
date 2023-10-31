<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
    	<title> adicionar Produto</title>
		<link rel="stylesheet" type="text/css" href="semantic.css">
		<link rel="stylesheet" type="text/css" href="TelaInicial.css">
		<script src="https://code.jquery.com/jquery-3.1.1.min.js" ></script>
		<script src="semantic.js"></script>
		<link rel="icon" href="./themes/carrinho.png" type="image/x-icon">
	</head>
	<body>
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
		<form class="ui form" action="adicionarProduto" method="Post">
			<div class="field">
				<div class="two fields">
					<div class="field">
						<label for="name">Nome:</label>
						<input type="text" name="name" id="name" required><br><br>
						<div class="field">
							<label for="marca">Marca:</label>
							<input type="text" name="marca" id="marca" required><br><br>
						</div>
					</div>
				</div>
			</div>
			<div class="field">
				<label for="descricao">desrição do produto</label>
				<div class="fields">
					<div class="twelve wide field">
						<input type="text" name="descricao" id="descricao" required><br><br>
        
					</div>
				</div>
			</div>      
			<div class="two fields">
				<div class="field">
					<label for="volume">Volume:</label>
					<input type="number" name="volume" id="volume" required><br><br>
				</div>
				<div class="two fields">
					<div class="field">
						<label for="unit">Unidade:</label>
						<input type="text" name="unidade" id="unidade" required><br><br>
					</div>
				</div>
			</div> 
			<input type="submit" value="Criar Produto">
    	</form>
	</body>
</html>