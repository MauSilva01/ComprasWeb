<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="Compras.model.Mercado" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Lista De Mercados</title>
		<link rel="stylesheet" type="text/css" href="semantic.css">
		<link rel="stylesheet" type="text/css" href="TelaInicial.css">
		<script src="https://code.jquery.com/jquery-3.1.1.min.js" ></script>
		<script src="semantic.js"></script>
		<meta charset="UTF-8">
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
		<h1>Lista de mercado:</h1>
		
		<a href="adicionarMercados.jsp" class="ui button">Adicionar mercado</a>
		<table border = "2">
			<thead>
				<tr>
					<th>ID</th>
					<th>MERCADOS</th>          
				</tr>
			</thead>
			<tbody>
				<c:forEach var="mercados" items="${mercadoslist}">
			   		<tr>
						<td>${mercados.id}</td>
						<td>${mercados.nomeMercado}</td>
						<td>
							<a href="editarMercados?id=${mercados.id}">
								<div class="ui fluid small submit button">	
									<i class="blue edit outline icon"></i>
								</div>
							</a>
						<td>
							<a href="excluirMercados?id=${mercados.id}">
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