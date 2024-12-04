package com.example.main.web_java;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;

@WebServlet("/update-contact")
public class UpdateContactServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String contactId = request.getParameter("id");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");


        // Use the common database connection utility
        try (Connection connection = DatabaseConnection.getConnection()) {
            String sql = "UPDATE contact_form SET name = ?, email = ?, message = ? WHERE id = ?";
            try (PreparedStatement statement = connection.prepareStatement(sql)) {
                statement.setString(1, name);
                statement.setString(2, email);
                statement.setString(3, message);
                statement.setInt(4, Integer.parseInt(contactId));

                int rowsAffected = statement.executeUpdate();
                if (rowsAffected > 0) {
                    response.sendRedirect("view-contact");
                } else {
                    response.getWriter().println("Failed to update the contact.");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().println("Error updating contact: " + e.getMessage());
        }
    }
}
