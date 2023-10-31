package Compras.Servlets;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Compras.BancoDados.conexaoAccess;
import Compras.model.Produto;

import java.util.ArrayList;



/**
 * Servlet implementation class listaProdutosServlet
 */
@WebServlet("/listaProdutos")
public class listaProdutos extends HttpServlet {
	private static final long serialVersionUID = 1L;	
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public listaProdutos() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	ArrayList<Produto> produtos = null;
		try {
			produtos = conexaoAccess.listarProdutos();
		}
		catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        request.setAttribute("produtos", produtos);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/listaProdutos.jsp");
        dispatcher.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}
