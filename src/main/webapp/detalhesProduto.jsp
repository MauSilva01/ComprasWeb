<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title> detalhes Produto </title>
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
			<a class="blue active item" href="listaProdutos.jsp">Produtos</a>
			<a class="item" href="listaCompras.jsp">Lista de compras</a>
			<a class="item" href="listaMercados.jsp">Mercados</a>
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
    
    <form class="ui form" action="SalvarEdicaoProduto" method="post">
			<h4 class="ui dividing header">Detalhes Do Produtos</h4>
			<div class="field">
				<div class="two fields">
					<div class="field">
						<input type="hidden" name="id" value="<%= request.getParameter("id") %>">
						<label for="nome">Nome:</label>
						<input type="text" name="nome" value="<%= request.getAttribute("nome") %>">
					</div>
					<div class="field">
						<label for="marca">Marca</label>
						<input type="text" name="marca" value="<%= request.getAttribute("marca") %>">
					</div>
				</div>
			</div>		  
			<div class="field">
				<label for="descricao">Descrição:</label>
				<div class="fields">
					<div class="twelve wide field">
						<input type="text" name="descricao" value="<%= request.getAttribute("descricao") %>">
					</div>
					<div class="four wide field"></div>
				</div>
			</div>		  	
			<div class="two fields">
				<div class="field">
					<label for="volume">Volume</label>
					<input type="text" name="volume" value="<%= request.getAttribute("volume") %>">				
				</div>	
				<div class="two fields">
				    <div class="field">
				        <label for="unidade">Unidade</label>
				        <select class="ui fluid dropdown" name="unidade">
				            <option value="<%= request.getAttribute("unidade") %>"><%= request.getAttribute("unidade") %></option>
				            <option value="ml">ml</option>
				            <option value="Kg">Kg</option>
				            <option value="g">g</option>
				            <option value="L">L</option>
				            <option value="pct">pct</option>
				            <option value="UN">UN</option>
				        </select>
				    </div>
				</div>
			</div>		  
			<input type="submit" value="Salvar">

		</form>
	</body>
</html>
