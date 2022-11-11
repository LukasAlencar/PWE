package model;

import java.sql.ResultSet;
import java.sql.SQLException;

import database.DBQuery;
import mail.SendMail;

public class Usuario {
	private int	   	idUsuario;
	private String 	email;
	private String 	senha;
	private int 	idNivelUsuario;
	private String 	nome;
	private String 	cpf;
	private String 	endereco;
	private String 	bairro;
	private String 	cidade;
	private String 	uf;
	private String 	cep;
	private String 	telefone;
	private String 	foto;
	private String 	ativo;
	
	private String tableName	= "gu3025829.usuarios"; 
	private String fieldsName	= "idUsuario, email, senha, idNivelUsuario, nome, cpf, endereco, bairro, cidade, uf, cep, telefone, foto, ativo";  
	private String fieldKey		= "idUsuario";
	
	private DBQuery dbQuery = new DBQuery(tableName, fieldsName, fieldKey);
	
	public Usuario() {
		
	}
	
	public Usuario( int idUsuario, String email, int idNivelUsuario, String nome, String cpf, String endereco, String bairro, String cidade, String uf, String cep, String telefone, String foto, String ativo) {
		this.setIdUsuario(idUsuario);
		this.setEmail(email);
		this.setSenha(senha);
		this.setIdNivelUsuario(idNivelUsuario);
		this.setNome(nome);
		this.setCpf(cpf);
		this.setEndereco(endereco);
		this.setBairro(bairro);
		this.setCidade(cidade);
		this.setUf(uf);
		this.setCep(cep);
		this.setTelefone(telefone);
		this.setFoto(foto);
		this.setAtivo(ativo);
	}
	
	public Usuario( String email, String senha, String nome) {
		this.setIdUsuario(0);
		this.setEmail(email);
		this.setSenha(senha);
		this.setIdNivelUsuario(0);
		this.setNome(nome);
	}
	
	public Usuario( String email) {
		this.setIdUsuario(0);
		this.setEmail(email);
	}
	
	public String toJson() {
		return(
				"{\n\t"+
						"'idUsuario':'"+this.getIdUsuario() + ""+"',\n\t"+
						"'email':'"+this.getEmail()+"',\n\t"+
						"'senha':'"+"********"+"',\n\t"+
						"'idNivelUsuario':'"+this.getIdNivelUsuario() + ""+"',\n\t"+
						"'nome':'"+this.getNome()+"',\n\t"+
						"'cpf':'"+this.getCpf()+"',\n\t"+
						"'endereco':'"+this.getEndereco()+"',\n\t"+
						"'bairro':'"+this.getBairro()+"',\n\t"+
						"'cidade':'"+this.getCidade()+"',\n\t"+
						"'uf':'"+this.getUf()+"',\n\t"+
						"'cep':'"+this.getCep()+"',\n\t"+
						"'telefone':'"+this.getTelefone()+"',\n\t"+
						"'foto':'"+this.getFoto()+",'\n\t"+
						"'ativo':'"+this.getAtivo()+"'\n\t"+
				"}"
		);
	}	

	public String toString() {
		return(
				this.getIdUsuario() + ""+" | "+
				this.getEmail()+" | "+
				"********"+" | "+
				this.getIdNivelUsuario() + ""+" | "+
				this.getNome()+" | "+
				this.getCpf()+" | "+
				this.getEndereco()+" | "+
				this.getBairro()+" | "+
				this.getCidade()+" | "+
				this.getUf()+" | "+
				this.getCep()+" | "+
				this.getTelefone()+" | "+
				this.getFoto()+" | "+
				this.getAtivo()+" | "
		);
	}
	
	private String[] toArray() {
		
		String[] temp =  new String[] {
				this.getIdUsuario() + "",
				this.getEmail(),
				this.getSenha(),
				this.getIdNivelUsuario() + "",
				this.getNome(),
				this.getCpf(),
				this.getEndereco(),
				this.getBairro(),
				this.getCidade(),
				this.getUf(),
				this.getCep(),
				this.getTelefone(),
				this.getFoto(),
				this.getAtivo()
		};
		return(temp);
	}
	
	public void save() {
		if( this.getIdUsuario() > 0 ) {
			this.dbQuery.update(this.toArray());
		}else {
			this.dbQuery.insert(this.toArray());
		}
	}
	
	public void delete() {
		if( this.getIdUsuario() > 0 ) {
			this.dbQuery.delete(this.toArray());
		}
	}
	
	public ResultSet selectAll() {
		ResultSet resultset = this.dbQuery.select("");
		return(resultset);
	}
	
	public ResultSet selectBy( String field, String value ) {
		ResultSet resultset = this.dbQuery.select( " "+field+"='"+value+"'");
		return(resultset);
	}
	
	public ResultSet select( String where ) {
		ResultSet resultset = this.dbQuery.select(where);
		return(resultset);
	}
	
	public void enviarEmailComSenha( String mailFrom, String mailTo, String mailSubject, String mailBody ){
		
		String smtpHost = "smtp.gmail.com"; 
		String smtpPort = "587"; 
		String username = "alencarkauan12@gmail.com";
		String password = "";
		String auth     = "TLS";  
		
		SendMail sendMail =  new SendMail( smtpHost,  smtpPort,  username,  password,  auth  );		
		sendMail.send( mailFrom, mailTo, mailSubject, mailBody );
		
	}
	
	
	static String getRandomString() 
    { 
		int i = 10;
        String theAlphaNumericS;
        StringBuilder builder;
        
        theAlphaNumericS = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
                                    + "0123456789"; 

        //create the StringBuffer
        builder = new StringBuilder(i); 

        for (int m = 0; m < i; m++) { 

            // generate numeric
            int myindex 
                = (int)(theAlphaNumericS.length() 
                        * Math.random()); 

            // add the characters
            builder.append(theAlphaNumericS 
                        .charAt(myindex)); 
        } 

        return builder.toString(); 
    }
	
	public String newPassword() {
		
		if (this.getEmail() != "" && this.getEmail()!= null) {
			if ( this.getIdUsuario() > 0 ) {
				try {
					ResultSet resultset = this.select(" email ='"+this.getEmail()+"'");
					boolean existe = resultset.next();
					if ( existe ) {
//						this.setSenha(  new RandomCode().generate(32) );
						this.save();
						return( this.getSenha());
					}
					resultset.getInt("idUsuario");
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}	
//			 else {
//				this.setSenha(  new RandomCode().generate(32));
//				return(  this.getSenha() );
//			}
		} else {
			// Sem email não deve gerar senha
		}
		return this.getSenha(); 
	}

	public boolean checkLogin(String psw) {
		
		int id = 0;
		try {
			ResultSet resultSet = this.select(" email='"+ this.getEmail()+ "' AND senha = '"+psw+"'");
			while (resultSet.next()) {
				System.out.println( "\n"+resultSet.getString("nome"));
				id =  resultSet.getInt("idUsuario");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		this.setIdUsuario(id);
		return(id > 0);	
	}
	
	public int getIdUsuario() {
		return idUsuario;
	}

	public String listAllHtml() {
		ResultSet rs =  this.dbQuery.select("");
		String saida = "<br>";
		saida += "<table border=1>";
		try {
			while (rs.next()) {
				saida += "<tr>";
		     
				saida += "<td>" + rs.getString("idUsuario" ) +  "</td>";
				saida += "<td>" + rs.getString("email" ) +  "</td>";
				saida += "<td>" + rs.getString("senha" ) +  "</td>";
				saida += "<td>" + rs.getString("idNivelUsuario" ) +  "</td>";
				saida += "<td>" + rs.getString("nome" ) +  "</td>";
				saida += "<td>" + rs.getString("cpf" ) +  "</td>";
				saida += "<td>" + rs.getString("endereco" ) +  "</td>";
				saida += "<td>" + rs.getString("bairro" ) +  "</td>";
				saida += "<td>" + rs.getString("cidade" ) +  "</td>";
				saida += "<td>" + rs.getString("uf" ) +  "</td>";
				saida += "<td>" + rs.getString("cep" ) +  "</td>";
				saida += "<td>" + rs.getString("telefone" ) +  "</td>";
				saida += "<td>" + rs.getString("foto" ) +  "</td>";
				saida += "<td>" + rs.getString("ativo" ) +  "</td>";
				saida += "</tr> <br>";
			}
	   } catch (SQLException e) {
		 e.printStackTrace();
	   }
	   saida += "</table>";
	   return (saida);
	}

	public void setIdUsuario(int idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = getRandomString();
	}

	public int getIdNivelUsuario() {
		return idNivelUsuario;
	}

	public void setIdNivelUsuario(int idNivelUsuario) {
		this.idNivelUsuario = idNivelUsuario;
	}
	
	public void setIdNivelUsuario(String idNivelUsuario) {
		this.idNivelUsuario = ((idNivelUsuario == "") ? 0 : Integer.parseInt(idNivelUsuario));
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCidade() {
		return cidade;
	}

	public void setCidade(String cidade) {
		this.cidade = cidade;
	}

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getFoto() {
		return foto;
	}

	public void setFoto(String foto) {
		this.foto = foto;
	}

	public String getAtivo() {
		return ativo;
	}

	public void setAtivo(String ativo) {
		this.ativo = ativo;
	}
	

}
