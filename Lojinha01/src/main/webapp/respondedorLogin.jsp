<%@page import="model.Usuario"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="database.DBQuery"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 	

	DBQuery db = new DBQuery();
			
	String email = request.getParameter("email");
	String senha = request.getParameter("senha");
	
	
// 	loginModel login = new loginModel();
	
// 	String resposta = login.login(email, senha);
	

	Usuario usuario = new Usuario(email, senha, "");
	String resposta = "Achei nao";
	
	if(usuario.checkLogin()){
		resposta = "Deu certo";
	}else{
		resposta = "deu errado";
	}

	out.print(resposta);
	
	
%>