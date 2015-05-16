package servlet;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value = "/Cadastro")
public class Servlet extends HttpServlet {
	
	@Override
	public void init() throws ServletException {
		try {
			String sql = ""
					+ "create table cliente ("
					+ "  nome varchar(50),"
					+ "  sobrenome varchar(50),"
					+ "	 email varchar(50),"
					+ "  senha varchar(50),"
					+ "  constraint pk_email primary key (email) "
					+ ")";
			String url = "jdbc:derby:db;create=true";
			Connection conexao = DriverManager.getConnection(url);
			Statement stmt = conexao.createStatement();
			stmt.execute(sql);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
			String op = req.getParameter("op");

			if (op == null) {
				chamarJsp(req, resp);
			} 
			//else if (op.equals("carregar")) {
//				carregarUf(req, resp);
//			} else if (op.equals("excluir")) {
//				excluirUf(req, resp);
//			} else
			else if (op.equals("Cadastre-se Já!")) {
					salvarCliente(req, resp);
				
			} 
//			else {
//				chamarJsp(req, resp);
//			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

//	private void excluirUf(HttpServletRequest req, HttpServletResponse resp)
//			throws ServletException, IOException, SQLException {
//		String codigo = req.getParameter("codigo");
//
//		String url = "jdbc:derby:db;create=true";
//		Connection conexao = DriverManager.getConnection(url);
//		Statement stmt = conexao.createStatement();
//		stmt.executeUpdate("delete from uf where codigo = '" + codigo + "'");
//		
//		Cliente cliente = new Cliente();
//		cliente.setCodigo(codigo);
//		cliente.setNome("");
//
//		req.setAttribute("uf", cliente);
//
//		chamarJsp(req, resp);
//	}

//	private void carregarUf(HttpServletRequest req, HttpServletResponse resp)
//			throws ServletException, IOException, SQLException {
//		String codigo = req.getParameter("codigo");
//
//		String url = "jdbc:derby:db;create=true";
//		Connection conexao = DriverManager.getConnection(url);
//		Statement stmt = conexao.createStatement();
//		ResultSet rs = stmt.executeQuery("select nome from uf where codigo = '" + codigo + "'");
//
//		Cliente cliente = new Cliente();
//		cliente.setCodigo(codigo);
//
//		if (rs.next()) {
//			String nome = rs.getString("nome");
//			cliente.setNome(nome);
//		} else {
//			cliente.setNome("");
//		}
//
//		req.setAttribute("uf", cliente);
//
//		chamarJsp(req, resp);
//	}

	private void salvarCliente(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException {
		
		String nome = req.getParameter("nome");
		String sobrenome = req.getParameter("sobrenome");
		String email = req.getParameter("email");
		String senha = req.getParameter("senha");

		String url = "jdbc:derby:db;create=true";
		Connection conexao = DriverManager.getConnection(url);
		Statement stmt = conexao.createStatement();
		
		stmt.executeUpdate("insert into cliente (nome, sobrenome, email, senha) values ('"
			+ nome + "', '" + sobrenome + "','"+ email +"','"+ senha +"')");
		
//		Cliente cliente = new Cliente();
//		cliente.setNome(nome);
//		cliente.setSobrenome(sobrenome);
//
//		req.setAttribute("cliente", cliente);
//
		chamarJsp(req, resp);
	}

	private void chamarJsp(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.getRequestDispatcher("Cadastro.jsp")
			.forward(req, resp);
	}
}
