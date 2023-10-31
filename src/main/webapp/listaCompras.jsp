<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.List" %>
    <%@ page import="Compras.model.Compra" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta charset="ISO-8859-1">
		<title> Lista De Compras</title>
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
			<a class="blue active item" href="listaCompras">Lista de compras</a>
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
		<h1>Lista de compra:</h1>
	
		<a href="adicionarListaCompras.jsp" class="ui button">Adicionar lista</a>
		
		<table border = "2">
			<thead>
				<tr>
					<th>ID</th>
					<th>Lista De Compras</th>  
					        
				</tr>
			</thead>
			<tbody>
				<c:forEach var="listacompra" items="${Compraslist}">
			   		<tr>
						<td>${listacompra.id}</td>
						<td>${listacompra.nomeCompras}</td>
						<td>
							<a href="editarLista?id=${listacompra.id}">
								<div class="ui fluid small submit button">	
									<i class="blue edit outline icon"></i>
								</div>
							</a>
						<td>
							<a href="excluirListaCompras?id=${listacompra.id}">
								<div class="ui  fluid small submit button">	
									<i class="blue eraser icon"></i>
								</div>
							</a>						
				    	</td>		
						</td>
			   		</tr>
			  	</c:forEach>
			</tbody>
		</table>
	
	</body>
</html>