package Compras.BancoDados;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Compras.model.Compra;
import Compras.model.Mercado;
import Compras.model.Produto;

public class conexaoAccess {

	public static Connection obterConexao()  {

		String url = "jdbc:ucanaccess://C:/PROGRAMAS/PRJ ACCESS/COMPRAS.accdb";
		Connection conn = null;
		try {
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
			conn = DriverManager.getConnection(url);
		        System.out.println("Conexão com o banco de dados Access estabelecida com sucesso!");
		} 
		catch (Exception e) {
		        System.out.println("Erro ao estabelecer conexão com o banco de dados Access: " + e.toString());
		} 
		    
		return conn;
	}
	
	public static ArrayList<Produto> listarProdutos() throws SQLException {
		
		ArrayList<Produto> produtos = new ArrayList<>();
		
		try {
			Connection conexao = obterConexao();
			Statement statement = conexao.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT * FROM table_produtos"); {
				while (resultSet.next()) {
					int id = resultSet.getInt("ID");
					String nome = resultSet.getString("NOME");
					String marca = resultSet.getString("MARCA");
					String descricao = resultSet.getString("DESCRICAO");
					int volume = resultSet.getInt("VOLUME");
					String unidade = resultSet.getString("UNIDADE");
					produtos.add(new Produto(id, nome, marca, descricao, volume, unidade));
				}        
			}
		}	 
		catch (SQLException e) {
			throw new SQLException("Erro ao listar dados da tabela: " + e.getMessage());
		}
		return produtos;
	}	

 
	public static ArrayList<Mercado> listarMercados() throws SQLException {

		ArrayList<Mercado> lista = new ArrayList<>();
    
		try {
			Connection conexao = obterConexao();
			Statement statement = conexao.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT * FROM table_mercados");
			while (resultSet.next()) {
				int id = resultSet.getInt("ID");
				String nome = resultSet.getString("MERCADOS");
				lista.add(new Mercado(id, nome));
			        
			}	
		} 
		catch (SQLException e) {
			throw new SQLException("Erro ao listar dados da tabela: " + e.getMessage());
		}		
		return lista;

	}
	
	public static ArrayList<Compra> listarCompras() throws SQLException{
		
		ArrayList<Compra> listaCompras = new ArrayList<>();
	    
		try {
			Connection conexao = obterConexao();
			Statement statement = conexao.createStatement();
			ResultSet resultSet = statement.executeQuery("SELECT * FROM table_listacompra");
			while (resultSet.next()) {
				int id = resultSet.getInt("ID");
				String nomelist = resultSet.getString("LISTA_DE_COMPRA");
				listaCompras.add(new Compra(id, nomelist));
			        
			}	
		} 
		catch (SQLException e) {
			throw new SQLException("Erro ao listar dados da tabela: " + e.getMessage());
		}		
		return listaCompras;
	}
	
}

/*
finally {
    try {
        if (conn != null) {
            conn.close();
            System.out.println("Conexão com o banco de dados Access fechada com sucesso!");
        }
    } catch (SQLException e) {
        System.out.println("Erro ao fetchar conexão com o banco de dados Access: " + e.getMessage());
    }
}*/

