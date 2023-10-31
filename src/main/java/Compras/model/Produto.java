package Compras.model;

import java.util.List;

public class Produto {

	private int id;
	private String nome;
	private String marca;
	private String descricao;
	private int volume;
	private String unidade;
	
	public Produto(int id,String nome,String marca,String descricao,int volume,String unidade) {
	
		this.id = id;
		this.nome = nome;
		this.marca = marca;
		this.descricao = descricao;
		this.volume = volume;
		this.unidade = unidade;
	}
	
	public int getId() {
				
		return id;
			
	}
			
	public void setId(int id) {
				
		this.id = id;
	}
			
	public String getNome() {
				
		return nome;
	}
			
	public void setNome(String nome) {
				
		this.nome = nome;
	}

	public String getMarca() {
				
		return marca;
	}
			
	public void setMarca(String marca) {
				
		this.marca = marca;
	}
	
	public String getDescricao() {
				
		return descricao;
	}
			
	public void setDescricao(String descricao) {
				
		this.descricao = descricao;
	}	
			
	public int getVolume() {
				
		return volume;
	}
			
	public void setVolume(int volume) {
				
		this.volume = volume;
	}	
			
	public String getUnidade() {
				
		return unidade;
	}
			
	public void setUnidade(String unidade) {
				
		this.unidade = unidade;
	}

}
