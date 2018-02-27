<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>

	<link rel="stylesheet"
		  href="/css/bootstrap.min.cs"/>
</head>
<body>
	<div class="container">

            <div class="alert alert-${typemsg}" role="alert">
                ${msg}
            </div>


        <br>
        <br>
		<h2>Listagem de Produtos</h2>
        <a href="/casadocodigo/produto/novo" class="btn btn-success">Novo</a>
		<br>
		<br>
		<table class="table table-striped">
			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Título</th>
					<th scope="col">Descricão</th>
					<th scope="col">Ações</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${produtos}" var="produto" >
				<tr>
					<th scope="row">${produto.id}</th>
					<td>${produto.titulo}</td>
					<td>${produto.description}</td>
					<td>
                        <div class="input-group mb-3">
                            <div class="input-group-prepend">
                                <button type="button" class="btn btn-outline-secondary">Ação</button>
                                <button type="button" class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="sr-only">Toggle Dropdown</span>
                                </button>
                                <div class="dropdown-menu">
                                    <a hreflang="#" class="dropdown-item" href="#">Editar</a>
                                    <a hreflang="#" class="dropdown-item" href="#">Excluir</a>
                                </div>
                            </div>
                        </div>


                    </td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

<script src="../js/bootstrap.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>