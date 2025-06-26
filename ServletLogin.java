package conexaoBanco;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet(urlPatterns = "/login")
public class ServletLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email").trim();
		String senha = req.getParameter("senha").trim();

		Usuario usuario = new UsuarioBanco().login(email, senha);

		if (usuario == null) {
			req.getSession().setAttribute("mensagem", "Email ou senha incorretos.");
			resp.sendRedirect(req.getContextPath() + "/index.jsp");
		} else {
			HttpSession sessao = req.getSession();
			sessao.setAttribute("usuarioLogado", usuario);

			resp.sendRedirect(req.getContextPath() + "/login.jsp");
		}
	}
}
