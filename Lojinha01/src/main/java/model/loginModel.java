package model;
import java.sql.ResultSet;
import java.sql.SQLException;

import database.DBQuery;

public class loginModel {

	DBQuery db = new DBQuery();
	
	public String login(String email, String senha) {
		
		ResultSet rs = db.query("SELECT * FROM usuarios WHERE email = '"+ email +"'");
		
		String resposta = "User Not Found!";

		try {
			while(rs.next()){
				if(!senha.equals(rs.getString(3))){
					resposta = "Wrong Password!";
				}else{
					resposta = "Login Successful!";
				}
			}
		} catch (SQLException e){
			e.printStackTrace();
			
		}
		return resposta;
	}
	
}
