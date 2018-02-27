<%@ page  pageEncoding="UTF-8" contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8"/>
    <title>Insert title here</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="/css/bootstrap.min.cs"/>


</head>
<body>

<div class="container">

    <br>
    <h1>Título</h1>
    <form action="/casadocodigo/produto/gravar" modelAttribute="userForm" method="POST">
        <br>
        <div class="alert alert-${typemsg}" role="alert">
            <b>${msg}</b>
            <br/>
        </div>
        <br>
        <div class="form-group">

    <label for="exampleInputTitulo">Titulo</label>
            <form:errors path="produto.titulo" />
    <input type="text" class=" form-control" name="titulo" id="titulo" aria-describedby="tituloHelp"
           placeholder="Enter titulo"/>
    <small
            id="titulo" class="form-text text-muted">We'll never share
        your titulo with anyone else.
    </small>
</div>

<div class="form-group">

    <label for="exampleInputdesc">Desc</label>
    <form:errors path="produto.description" />
    <input type="text" class="form-control" id="description" name="description" aria-describedby="descHelp"
           placeholder="Enter description"/>
    <small
            id="description" class="form-text text-muted">We'll never
        share your desc with anyone else.
    </small>
</div>
<div class="form-group">

    <!-- 					<select class="custom-select" name="precos"> -->
    <!-- 					<option selected>Open this select menu</option> -->
    <c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
        <div>
            <label>${tipoPreco }</label> <input type="text"
                                                name="precos[${status.index}].valor"
                                                class="col-md-2 form-control"/> <input type="hidden"
                                                                                       name="precos[${status.index}].tipo"
                                                                                       value="${tipoPreco }"/>
        </div>

    </c:forEach>
    <!-- 					</select> -->


</div>

<button type="submit" class="btn btn-primary">Cadastrar</button>
</form>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>