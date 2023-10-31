package Compras.Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class adicionarListaCompra
 */
@WebServlet("/adicionarListaCompra")
public class adicionarListaCompra extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private static final String JDBC_DRIVER = "net.ucanaccess.jdbc.UcanaccessDriver";
	 private static final String DB_URL = "jdbc:ucanaccess://C:/PROGRAMAS/PRJ ACCESS/COMPRAS.accdb";
       
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adicionarListaCompra() {
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

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
		Connection conn = null;
        String listanome = request.getParameter("listanome");
        

        try {
        	 Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL);
            String sql = "INSERT INTO table_listacompra (LISTA_DE_COMPRA) VALUES (?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, listanome);
            statement.executeUpdate();
            statement.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.sendRedirect("listaCompras"); // Redireciona de volta para o formulário após a criação do produto
    }
}
