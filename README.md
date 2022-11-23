Instruções:

Alterar nos arquivos todos os textos que comecem com "your" de acordo com a sua configuração:


DBConnection.java

29 this.setHost	("yourHost");
30 this.setPort	("yourPort");
31 this.setSchema("yourSchema");
32 this.setUser	("yourUser");
33 this.setPassword("yourPassword");

_______________________________________________________________________________________________

Usuario.java

28      private String tableName	= "yourTable"; 
246 		String username = "yourEmail";
247 	 	String password = "yourAppPassword";


________________________________________________________________________________________________

respondedorCadastro.jsp

57 String caminho = "yourRoute"+filename ;
75 usuario.enviarEmailComSenha("yourEmail", email, corpoEmail, corpoEmail);


________________________________________________________________________________________________


upload.srv.jsp

18 String caminho = "yourRoute"+filename ;
