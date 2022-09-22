package multitools;

public class TestePessoa {
	public static void main(String[] args) {
		Pessoa pessoa01 = new Pessoa();
		pessoa01.setNome("Cleber");
		pessoa01.setIdade(40);
		pessoa01.setAltura(1.80);
		pessoa01.setPeso(96);
		pessoa01.setSexo("M");
		System.out.println( pessoa01.toString() );
		
		Pessoa pessoa02 = new Pessoa("Cleber", 40, 1.8, 96, "M");
		System.out.println( pessoa02.toString() );
	}
}
