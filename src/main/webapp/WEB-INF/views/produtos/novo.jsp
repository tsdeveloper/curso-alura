<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />


</head>
<body>
	<div class="container">
			<form action="/casadocodigo/produtos/gravar" method="POST" >
				<div class="form-group">
					<label for="exampleInputTitulo">Titulo</label> 
					<input
						type="text" class="form-control"  name="titulo" id="titulo"
						aria-describedby="tituloHelp" placeholder="Enter titulo" /> <small
						id="titulo" class="form-text text-muted">We'll never
						share your titulo with anyone else.</small>
				</div>
				
				<div class="form-group">
					<label for="exampleInputdesc">Desc</label> 
					<input
						type="text" class="form-control" id="desc"  name="desc"
						aria-describedby="descHelp" placeholder="Enter desc" /> <small
						id="desc"   class="form-text text-muted">We'll never
						share your desc with anyone else.</small>
				</div>
				
				
				<button type="submit" class="btn btn-primary">Cadastrar</button>
			</form>
	</div>
</body>
</html>