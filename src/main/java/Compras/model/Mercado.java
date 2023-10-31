package Compras.model;

public class Mercado {

	private int id;
	private String nomeMercado;
	
	public Mercado(int id, String nome) {
   
		this.id = id;
		this.nomeMercado = nome;		
	}

	public int getId() {
			
		return id;
	}
	
	public void setId(int id) {
		  
		this.id = id;
	}

	public String getNomeMercado() {
			
		return nomeMercado;	
	}
	
	public void setNomeMercado(String nome) {
		  
		this.nomeMercado = nome;
	}
}