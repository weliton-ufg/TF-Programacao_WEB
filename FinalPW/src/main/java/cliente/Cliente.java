package cliente;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Cliente {
	String nome;
	String sobrenome;
	String email;
	String senha;

	/**
	 * @param nome
	 * @param sobrenome
	 * @param email
	 * @param senha
	 * @throws SQLException
	 */
	public void insertClient() throws SQLException {
		String url = "jdbc:derby:db;create=true";
		Connection conexao = DriverManager.getConnection(url);
		Statement stmt = conexao.createStatement();
		
		stmt.executeUpdate("insert into cliente (nome, sobrenome, email, senha) values ('"
			+ nome + "', '" + sobrenome + "','"+ email +"','"+ senha +"')");
	}

	public String getNome() {
		return nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public String getEmail() {
		return email;
	}

	public String getSenha() {
		return senha;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}
}
