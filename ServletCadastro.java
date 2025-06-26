package conexaoBanco;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/cadastrar")
public class ServletCadastro extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String nome = req.getParameter("nome").trim();
		String email = req.getParameter("email").trim();
		String senha = req.getParameter("senha").trim();

		Usuario usuario = new Usuario();
		usuario.setNome(nome);
		usuario.setEmail(email);
		usuario.setSenha(senha);

		boolean sucesso = new UsuarioBanco().inserir(usuario);

		if (sucesso) {
			req.getSession().setAttribute("mensagem", "Cadastro realizado com sucesso! Bem-vindo(a), " + nome + ".");
			resp.sendRedirect(req.getContextPath() + "/index.jsp");
		} else {
			resp.getWriter().println("Erro ao cadastrar. Tente novamente.");
		}
	}
}
