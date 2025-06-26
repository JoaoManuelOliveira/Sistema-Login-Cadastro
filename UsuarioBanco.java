package conexaoBanco;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UsuarioBanco {

	public boolean inserir(Usuario usuario) {
		Connection conn = null;
		try {
			conn = new Conexao().getConexao();
			String sql ="insert into usuarios (email, senha, nome) "
					+ " values (?,?,?)";
			PreparedStatement statement = conn.prepareStatement(sql);
			statement.setString(1, usuario.getEmail());
			statement.setString(2, usuario.getSenha());
			statement.setString(3, usuario.getNome());
			statement.execute();
			return true;
			
		} catch (Exception e) {
			System.err.println("Error: "+e.getMessage());
			return false;
		} finally {
			new Conexao().fechar(conn);
		}
	}
	public Usuario login(String email, String senha) {
		Connection conn = null;
		try {
			conn = new Conexao().getConexao();
			String sql = "select * from usuarios"
					+ " where "
					+ " email = '"+email+"' and "
					+ " senha = '"+senha+"'";
			PreparedStatement statement = 
					conn.prepareStatement(sql);
			ResultSet rs = statement.executeQuery();
			while(rs.next()) {
				Usuario user = new Usuario();
				user.setNome(rs.getString("nome"));
				user.setEmail(rs.getString("email"));
				user.setSenha(rs.getString("senha"));
				
				
				user.setId(rs.getInt("idUsuario"));
				return user;
			}
		} catch (Exception e) {
			System.err.println("Error: "+e.getMessage());
		} finally {
			new Conexao().fechar(conn);
		}
		return null;
	}
}
