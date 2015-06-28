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
	char genero;
	String dataNas;
	String enderec;
	String telefone;

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
		
		stmt.executeUpdate("insert into cliente (nome, sobrenome, email, senha, genero, dataNas, enderec, telefone) values ('"
			+ nome + "', '" + sobrenome + "','"+ email +"','"+ senha +"','"+ genero +"','"+ dataNas +"','"+ enderec +"','"+ telefone +"')");
		stmt.close();
		conexao.close();
	}

	/**
	 * @return the genero
	 */
	public char getGenero() {
		return genero;
	}

	/**
	 * @return the dataNas
	 */
	public String getDataNas() {
		return dataNas;
	}

	/**
	 * @return the enderec
	 */
	public String getEnderec() {
		return enderec;
	}

	/**
	 * @return the telefone
	 */
	public String getTelefone() {
		return telefone;
	}

	/**
	 * @param genero the genero to set
	 */
	public void setGenero(char genero) {
		this.genero = genero;
	}

	/**
	 * @param dataNas the dataNas to set
	 */
	public void setDataNas(String dataNas) {
		this.dataNas = dataNas;
	}

	/**
	 * @param enderec the enderec to set
	 */
	public void setEnderec(String enderec) {
		this.enderec = enderec;
	}

	/**
	 * @param telefone the telefone to set
	 */
	public void setTelefone(String telefone) {
		this.telefone = telefone;
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
