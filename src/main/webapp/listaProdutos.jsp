<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Compras.model.Produto" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="semantic.css">
		<link rel="stylesheet" type="text/css" href="TelaInicial.css">		
		<script src="https://code.jquery.com/jquery-3.1.1.min.js" ></script>
		<script src="semantic.js"></script>
		<meta charset="UTF-8">
		<title>Lista de Produtos</title>
		<link rel="icon" href="./themes/carrinho.png" type="image/x-icon">		
		<style>
  			.center-table {
   				margin-left: auto;
    			margin-right: auto;
  			}
		</style>
	</head>
	<body>
		<div class="ui secondary  menu">
			<a class="item" href="menu.jsp">home</a>
			<a class="blue active item" href="listaProdutos">Produtos</a>
			<a class="item" href="listaCompras">Lista de compras</a>
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
		<h1>Lista de Produtos</h1>
		
		<a href="formProduto" class="ui button">Adicionar Produto</a>
								    	
		<table border = "2" class="center-table">
			<thead>
				<tr>
					<th>ID</th>
					<th>Nome</th>
					<th>Marca</th>
					<th>Descrição</th>
					<th>Volume</th>
					<th>Unidade</th>
					
				</tr>
			</thead>
			<tbody>
				<c:forEach var="produto" items="${produtos}">
				   	<tr>
						<td>${produto.id}</td>
						<td>${produto.nome}</td>
						<td>${produto.marca}</td>
						<td>${produto.descricao}</td>
						<td>${produto.volume}</td>
						<td>${produto.unidade}</td>
				    	<td>
							<a href="editarProdutos?id=${produto.id}">
								<div class="ui  fluid small submit button">	
									<i class="blue edit icon"></i>
								</div>
							</a>						
				    	</td>
				    	<td>
							<a href="excluirProdutos?id=${produto.id}">
								<div class="ui  fluid small submit button">	
									<i class="blue eraser icon"></i>
								</div>
							</a>						
				    	</td>					    
					</tr>				
				</c:forEach>
				    
			</tbody>
		</table>
	</body>
</html>