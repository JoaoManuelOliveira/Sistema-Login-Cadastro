<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Cadastro</title>
	<link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
	<div class="container">
		<h2>Cadastro</h2>
		<form action="${pageContext.request.contextPath}/cadastrar" method="post">
			<label for="nome">Nome:</label>
			<input type="text" id="nome" name="nome" required>

			<label for="email">Email:</label>
			<input type="email" id="email" name="email" required>

			<label for="senha">Senha:</label>
			<input type="password" id="senha" name="senha" required>

			<input type="submit" value="Cadastrar">
		</form>
	</div>
</body>
</html>
