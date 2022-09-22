<%@page import="mail.SendMail"%>
<%@page import="model.Usuario"%>
<%@page import="model.loginModel"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="database.DBQuery"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 	
	String psw = "uqzbfvedtueejaju";


	DBQuery db = new DBQuery();
			
	String email = request.getParameter("email");
	email = (email == null)?"":email;
	
	String senha = request.getParameter("senha");
	senha = (senha == null)?"":senha;
	
	String senhaConf = request.getParameter("senhaConf");
	senhaConf = (senhaConf == null)?"":senhaConf;
	
	String nome = request.getParameter("nome");
	nome = (nome == null)?"":nome;
	
	String cpf = request.getParameter("cpf");
	cpf = (cpf == null)?"":cpf;
	
	String endereco = request.getParameter("endereco");
	endereco = (endereco == null)?"":endereco;
	
	String bairro = request.getParameter("bairro");
	bairro = (bairro == null)?"":bairro;
	
	String cidade = request.getParameter("cidade");
	cidade = (cidade == null)?"":cidade;
	
	String uf = request.getParameter("uf");
	uf = (uf == null)?"":uf;
	
	String cep = request.getParameter("cep");
	cep = (cep == null)?"":cep;
	
	String numero = request.getParameter("telefone");
	numero = (numero == null)?"":numero;
	
	String nivel = request.getParameter("nivel");
	nivel = (nivel == null)?"":nivel;
	
	int nivelU = Integer.parseInt(nivel);
	
	senha = "teste23";
	String where = "email = '" + email + "'"; 
	
	Usuario usuario = new Usuario( 0, email, senha, nivelU, nome, cpf, endereco, bairro, cidade, uf, cep, numero, "", "0");
	usuario.save();
		
	
	ResultSet rs = usuario.select(where);
	if(rs.next()){
		out.print("Usuario criado!");
		SendMail envio = new SendMail("smtp.mail.smtp.host", "587", "alencarkauan12@gmail.com", psw, "TLS");
		envio.send("alencarkauan12@gmail.com", email, "Senha:", senha);
		
	}else{
		out.print("Deu erro po");
	}
		
	
%>