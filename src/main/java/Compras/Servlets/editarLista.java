package Compras.Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class editarLista
 */
@WebServlet("/editarLista")
public class editarLista extends HttpServlet {
	private static final long serialVersionUID = 1L;
	 private static final String JDBC_DRIVER = "net.ucanaccess.jdbc.UcanaccessDriver";
	 private static final String DB_URL = "jdbc:ucanaccess://C:/PROGRAMAS/PRJ ACCESS/COMPRAS.accdb";
      
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editarLista() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {int id = Integer.parseInt(request.getParameter("id"));
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName(JDBC_DRIVER);
        conn = DriverManager.getConnection(DB_URL);
        String sql = "SELECT LISTA_DE_COMPRA FROM table_listacompra WHERE id = ?";
        stmt = conn.prepareStatement(sql);
        stmt.setInt(1, id);
        rs = stmt.executeQuery();

        if (rs.next()) {
            String nomelista = rs.getString("LISTA_DE_COMPRA");
            
            request.setAttribute("nomelista", nomelista);
                   
            RequestDispatcher dispatcher = request.getRequestDispatcher("/detalhesLista.jsp");
            dispatcher.forward(request, response);
        } else {
            response.sendRedirect("listaCompras");
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        try {
            if (rs != null) rs.close();
            if (stmt != null) stmt.close();
            if (conn != null) conn.close();
        } catch (SQLException se) {
            se.printStackTrace();
        }
    }
    
}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
