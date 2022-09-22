package multitools;

import model.Usuario;

public class Teste {
	
	public Teste() {
		Usuario usuario = new Usuario(0, "cleber@ifsp.edu.br", "123456", 99, "Cleber Oliveira", "22233344479", "Av Salgado Filho, 3501", "vl Rio", "Gulhos", "SP", "07000-000", "5555-5555", "", "n");
		System.out.print(usuario.toJson());
	}
	public static void main(String[] args) {
		//new Teste();
		System.out.print(Integer.valueOf("1"));
	}

}
