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
 * Servlet implementation class SalvarEdicaoProduto
 */
@WebServlet("/SalvarEdicaoProduto")
public class SalvarEdicaoProduto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String JDBC_DRIVER = "net.ucanaccess.jdbc.UcanaccessDriver";
	private static final String DB_URL = "jdbc:ucanaccess://C:/PROGRAMAS/PRJ ACCESS/COMPRAS.accdb";
       
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SalvarEdicaoProduto() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nome = request.getParameter("nome");
        String marca = request.getParameter("marca");
        String descricao = request.getParameter("descricao");
        int volume = Integer.parseInt(request.getParameter("volume"));
        String unidade = request.getParameter("unidade");

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL);
            String sql = "UPDATE table_produtos SET nome = ?, marca = ?,descricao = ?,volume = ?,unidade = ? WHERE id = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, nome);
            stmt.setString(2, marca);
            stmt.setString(3, descricao);
            stmt.setInt(4, volume);
            stmt.setString(5, unidade);
            stmt.setInt(6, id);
            stmt.executeUpdate();

            response.sendRedirect("listaProdutos");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }

	}
}
