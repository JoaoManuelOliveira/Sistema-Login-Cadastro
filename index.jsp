<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Index</title>
	<link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>

<%
	String mensagem = (String) session.getAttribute("mensagem");
	if (mensagem != null) {
%>
	<div class="alerta" id="mensagemAlerta"><%= mensagem %></div>
<%
		session.removeAttribute("mensagem");
	}
%>

<div class="container">
	<h2>Login</h2>
	<form action="${pageContext.request.contextPath}/login" method="post">
		<label for="email">Email:</label>
		<input type="email" id="email" name="email" required>

		<label for="senha">Senha:</label>
		<input type="password" id="senha" name="senha" required>

		<input type="submit" value="Entrar">

		<p style="text-align: center; margin-top: 10px;">
			<a href="cadastro.jsp" style="color: #a100f2;">Criar nova conta</a>
		</p>
	</form>
</div>

</body>
</html>
