<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="conexaoBanco.Usuario"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
	<%
	Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
	if (usuario == null) {
		response.sendRedirect("index.jsp");
		return;
	}
	%>

	<div class="container">
		<h2>Login realizado com sucesso!</h2>
		<p style="text-align: center; margin-top: 20px;">
			Você está logado como: <strong><%=usuario.getEmail()%></strong>
		</p>

		<form action="logout" method="get"
			style="margin-top: 30px; text-align: center;">
			<input type="submit" value="Sair" style="width: 150px;">
		</form>
	</div>
</body>
</html>
