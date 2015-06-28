package servlet;

import java.io.IOException;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cliente.Cliente;

@WebServlet(value = "/Servlet")
public class Servlet extends HttpServlet {
	
	String idLogin,senha;
	
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
			stmt.close();
			conexao.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		try {
			String op = req.getParameter("op");
			

			if (op == null) {
				//chamarJsp(req, resp);
			} 
			//else if (op.equals("carregar")) {
//				carregarUf(req, resp);
//			} else if (op.equals("excluir")) {
//				excluirUf(req, resp);
//			} else
			else if (op.equals("Cadastre-se Já!")) {
				   idLogin = req.getParameter("email");
					salvarCliente(req, resp,  idLogin);
					
				
			}
			else if(op.equals("Login!")){
				chamarPosLogin(req, resp);
			}
			else if(op.equals("Configurações")){
				carregarCliente(req, resp, idLogin);
			}
			else if(op.equals("Deletar")){
				excluirCliente(req, resp);
			}
//			else {
//				chamarJsp(req, resp);
//			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private void excluirCliente(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException, SQLException {
		String clienteMail = req.getParameter("clienteMail");
		
		String url = "jdbc:derby:db;create=true";
		Connection conexao = DriverManager.getConnection(url);
		Statement stmt = conexao.createStatement();		
		stmt.executeUpdate("delete from cliente where email = '" + clienteMail + "'");
		req.setAttribute("Deletado", "deletar");
		stmt.close();
		conexao.close();
		
		chamarJsp(req, resp,"logout.jsp");
	}

	private void carregarCliente(HttpServletRequest req, HttpServletResponse resp, String N)
			throws ServletException, IOException, SQLException {
		String op = req.getParameter("op");
		String url = "jdbc:derby:db;create=true";
		Connection conexao = DriverManager.getConnection(url);
		Statement stmt = conexao.createStatement();
		ResultSet rs = stmt.executeQuery("select nome, sobrenome, email from cliente where nome = '"+ N +"' or email = '" + N + "'");

		Cliente cliente = new Cliente();

		if (rs.next()) {
			cliente.setNome(rs.getString("nome"));
			cliente.setSobrenome(rs.getString("sobrenome"));
			cliente.setEmail(rs.getString("email"));
			
			if(op.equals("Cadastre-se Já!")){
				req.setAttribute("Cadastrar","UsuarioJaExite");
				rs.close();
				stmt.close();
				conexao.close();
				
				chamarJsp(req, resp, "Cadastro.jsp");
			}
			
		} else {
			cliente.setNome("");
			cliente.setSobrenome("");
			cliente.setEmail("");
			if(op.equals("Cadastre-se Já!")){
				
				req.setAttribute("Cadastrar","sucesso");
				rs.close();
				stmt.close();
				conexao.close();
				
				chamarJsp(req, resp, "Cadastro.jsp");
			}
		}

		req.setAttribute("nome", cliente.getNome());
		req.setAttribute("sobrenome", cliente.getSobrenome());
		req.setAttribute("email", cliente.getEmail());
		
		rs.close();
		stmt.close();
		conexao.close();
		
		chamarJsp(req, resp, "Configuracoes.jsp");
	}

	private void chamarPosLogin(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
		idLogin = req.getParameter("email");
		senha=req.getParameter("senha");
		String url = "jdbc:derby:db;create=true";
		Connection conexao = DriverManager.getConnection(url);
		Statement stmt = conexao.createStatement();
		ResultSet rs = stmt.executeQuery("select nome from cliente where email = '"+ idLogin +"'and senha='"+senha+"'");
		
		if(rs.next()){
			req.setAttribute("nomeUsuario", rs.getString("nome"));
			rs.close();
			stmt.close();
			conexao.close();
			chamarJsp(req, resp,"posLogin.jsp");
			
		}
		else{			
			req.setAttribute("ErroAoLogar","erro");
			rs.close();
			stmt.close();
			conexao.close();
			chamarJsp(req, resp,"Cadastro.jsp");
		}
		
		
			
	}

	private void salvarCliente(HttpServletRequest req, HttpServletResponse resp,String N)
			throws ServletException, IOException, SQLException {
		
	
		
		
		String op = req.getParameter("op");
		String url = "jdbc:derby:db;create=true";
		Connection conexao = DriverManager.getConnection(url);
		Statement stmt = conexao.createStatement();
		ResultSet rs = stmt.executeQuery("select nome, sobrenome, email from cliente where email = '" + N + "'");

		if(rs.next()){
			req.setAttribute("Cadastrar","UsuarioJaExite");
			rs.close();
			stmt.close();
			conexao.close();
			
			
		}
		else{		
			String nome = req.getParameter("nome");
			String sobrenome = req.getParameter("sobrenome");
			String email = req.getParameter("email");
			String senha = req.getParameter("senha");
			
			Cliente cliente = new Cliente();
			
			cliente.setNome(nome);
			cliente.setSobrenome(sobrenome);
			cliente.setEmail(email);
			cliente.setSenha(senha);
			
			cliente.insertClient();		
			req.setAttribute("Cadastrar","sucesso");
			rs.close();
			stmt.close();
			conexao.close();
			
		}

		chamarJsp(req, resp, "Cadastro.jsp");

//		req.setAttribute("cliente", cliente);
//
	}

	private void chamarJsp(HttpServletRequest req, HttpServletResponse resp, String jsp)
			throws ServletException, IOException {
		req.getRequestDispatcher(jsp)
			.forward(req, resp);
		
	}
}
