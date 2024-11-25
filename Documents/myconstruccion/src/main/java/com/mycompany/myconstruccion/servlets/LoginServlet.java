package com.mycompany.myconstruccion.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.mycompany.myconstruccion.utils.DatabaseConnection;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    /**
     * Handles the HTTP POST method for user login.
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener los parámetros del formulario
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Validar credenciales contra la base de datos
        try (Connection conn = DatabaseConnection.getConnection()) {
            String sql = "SELECT * FROM usuarios WHERE username = ? AND password = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, username);
            stmt.setString(2, password);
            
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                // Credenciales correctas, redirigir a la página de bienvenida
                response.sendRedirect("welcome.jsp");
            } else {
                // Credenciales incorrectas, redirigir al login con un mensaje de error
                response.sendRedirect("login.jsp?error=true");
            }
        } catch (Exception e) {
            // Manejo de errores
            e.printStackTrace();
            response.sendRedirect("login.jsp?error=db");
        }
    }

    /**
     * Handles the HTTP GET method. Redirects to the login page by default.
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }

    @Override
    public String getServletInfo() {
        return "Servlet que maneja el inicio de sesión de usuarios.";
    }
}
