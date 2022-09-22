package multitools;

public class Pessoa {
	
	private String 	nome;
	private int   	idade;
	private double 	altura;
	private double 	peso;
	private String  sexo;
	
	public Pessoa() {
		
	}
	
	public Pessoa(String nome, int idade, double altura, double peso, String sexo) {
		this.setNome(nome);
		this.setIdade(idade);
		this.setAltura(altura);
		this.setPeso(peso);
		this.setSexo(sexo);
	}
	
	@Override
	public String toString() {
		return ( this.getNome()   + ", "+
				 this.getIdade()  + ", "+
				 this.getAltura() + ", "+
				 this.getPeso()   + ", "+
				 this.getSexo()   
				);
	}

	public String getNome() {
		return  this.nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public int getIdade() {
		return  this.idade;
	}

	public void setIdade(int idade) {
		this.idade = idade;
	}

	public double getAltura() {
		return  this.altura;
	}

	public void setAltura(double altura) {
		this.altura =  altura;
	}

	public double getPeso() {
		return  this.peso;
	}

	public void setPeso(double peso) {
		this.peso = peso;
	}

	public String getSexo() {
		return  this.sexo;
	}

	public void setSexo(String sexo) {
		this.sexo = sexo;
	}
	


	
}
