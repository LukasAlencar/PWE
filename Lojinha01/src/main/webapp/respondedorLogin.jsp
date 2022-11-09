<%@page import="model.loginModel"%>
<%@page import="java.net.URL"%>
<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@page import="java.awt.Window"%>
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

	loginModel login = new loginModel();
	String res = login.login(email, senha);
	response.sendRedirect("https://lukasalencar.github.io/ProjetoArt");
	out.write(res);
	
	
	
%>