<%@page import="java.nio.file.Paths"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="mail.SendMail"%>
<%@page import="model.Usuario"%>
<%@page import="model.loginModel"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="database.DBQuery"%>
<%@page import="java.nio.file.Files"%>
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
	
	
	// Upload foto
	String filename = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS", Locale.ENGLISH).format(new Date());
	filename += ".base64";

	filename = filename.replaceAll(":", "-");

	String caminho = "yourRoute"+filename ;
	String strFoto = request.getParameter("foto");
	byte[] bytes = strFoto.getBytes();
	Files.write( Paths.get(caminho), bytes);

	Files.readAllBytes(Paths.get(caminho));
	out.print(strFoto);

	
	//Criar user
	Usuario usuario = new Usuario( 0, email, nivelU, nome, cpf, endereco, bairro, cidade, uf, cep, numero, caminho, "N", 0);
	usuario.save();
	
	String corpoEmail = "Sua senha é: " + usuario.getSenha();
		
	
	ResultSet rs = usuario.select(where);	
	if(rs.next()){
		usuario.enviarEmailComSenha("yourEmail", email, corpoEmail, corpoEmail);
	}else{
		out.print("Deu erro po");
	}
%>