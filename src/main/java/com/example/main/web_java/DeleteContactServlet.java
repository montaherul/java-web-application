package com.example.main.web_java;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;

@WebServlet("/delete-contact")
public class DeleteContactServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String contactId = request.getParameter("id");

        // Use the common database connection utility
        try (Connection connection = DatabaseConnection.getConnection()) {
            String sql = "DELETE FROM contact_form WHERE id = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setInt(1, Integer.parseInt(contactId));
                int rowsAffected = statement.executeUpdate();
                if (rowsAffected > 0) {
                    response.sendRedirect("view-contact");
                } else {
                    response.getWriter().println("Failed to delete the contact.");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error deleting contact: " + e.getMessage());
        }
    }
}
