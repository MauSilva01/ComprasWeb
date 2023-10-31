package Compras.Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adicionarProduto
 */
@WebServlet("/adicionarProduto")
public class adicionarProduto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private static final String JDBC_DRIVER = "net.ucanaccess.jdbc.UcanaccessDriver";
	 private static final String DB_URL = "jdbc:ucanaccess://C:/PROGRAMAS/PRJ ACCESS/COMPRAS.accdb";
       
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adicionarProduto() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		Connection conn = null;
        String name = request.getParameter("name");
        String marca = request.getParameter("marca");
        String descricao = request.getParameter("descricao");
        int volume = Integer.parseInt(request.getParameter("volume"));
        String unidade = request.getParameter("unidade");

        try {
        	 Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL);
            String sql = "INSERT INTO Table_produtos (NOME, MARCA, DESCRICAO, VOLUME, UNIDADE) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, marca);
            statement.setString(3, descricao);
            statement.setInt(4, volume);
            statement.setString(5, unidade);
            statement.executeUpdate();
            statement.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("listaProdutos"); // Redireciona de volta para o formulário após a criação do produto
    }
}
