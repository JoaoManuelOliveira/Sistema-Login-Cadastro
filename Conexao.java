package conexaoBanco;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexao {

	public Connection getConexao() {
		String user = "root";
		String pass = "1234";
		String banco = "BancoDsw";
		String server = "127.0.0.1";

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://" + server + ":3306/" + banco + "?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC";
			return DriverManager.getConnection(url, user, pass);

		} catch (Exception e) {

			System.out.println("ERROR :" + e.getMessage());

		}
		return null;
	}

	public void fechar(Connection conn) {
		if (conn != null) {
			try {
				conn.close();
			} catch (Exception e) {
				System.out.println("Error: " + e.getMessage());
			}
		}
	}

}
