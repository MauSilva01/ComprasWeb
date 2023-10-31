<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<title> detalhes lista</title>
		<link rel="stylesheet" type="text/css" href="semantic.css">
		<link rel="stylesheet" type="text/css" href="TelaInicial.css">
		<script src="https://code.jquery.com/jquery-3.1.1.min.js" ></script>
		<script src="semantic.js"></script>
		<meta charset="ISO-8859-1">	
		<link rel="icon" href="./themes/carrinho.png" type="image/x-icon">
</head>
<body>
	<div class="ui secondary  menu">
			<a class="item" href="menu.jsp">home</a>
			<a class="item" href="listaProdutos">Produtos</a>
			<a class="blue active item" href="listaCompras.jsp">Lista de compras</a>
			<a class="item" href="listaMercados">Mercados</a>
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
		
		<form class="ui form" action="SalvarEdicaoCompras" method="POST">
			<h4 class="ui dividing header">Detalhes Das listas</h4>
			<div class="field">
				<div class="two fields">
					<div class="field">
						<input type="hidden" name="id" value="<%= request.getParameter("id") %>">
						<label for="lista">lista:</label>
						<input type="text" id="nomelista" name="nomelista" value="<%= request.getAttribute("nomelista") %>">
					</div>
					</div>
			</div>
			<input type="submit" value="Salvar">
		</form>

</body>
</html>