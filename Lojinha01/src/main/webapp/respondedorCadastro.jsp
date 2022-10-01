<%@page import="mail.SendMail"%>
<%@page import="model.Usuario"%>
<%@page import="model.loginModel"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="database.DBQuery"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	DBQuery db = new DBQuery();
			
	String email = request.getParameter("email");
	email = (email == null)?"":email;
	
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
	
	String where = "email = '" + email + "'"; 
	
	Usuario usuario = new Usuario( 0, email, nivelU, nome, cpf, endereco, bairro, cidade, uf, cep, numero, "", "N");
	usuario.save();
	
	String corpoEmail = "Sua senha é: " + usuario.getSenha();
		
	
	ResultSet rs = usuario.select(where);
	if(rs.next()){
		usuario.enviarEmailComSenha("lucas.kauan12@yahoo.com", email, corpoEmail, corpoEmail);
	}else{
		out.print("Deu erro po");
	}
%>