package com.example.main.web_java;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/view-contact")
public class ViewContactServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Contact> contactList = new ArrayList<>();

        try (Connection connection = DatabaseConnection.getConnection()) {
            String sql = "SELECT * FROM contact_form";
            try (PreparedStatement statement = connection.prepareStatement(sql);
                 ResultSet resultSet = statement.executeQuery()) {

                while (resultSet.next()) {
                    Contact contact = new Contact();
                    contact.setId(resultSet.getInt("id"));
                    contact.setName(resultSet.getString("name"));
                    contact.setEmail(resultSet.getString("email"));
                    contact.setMessage(resultSet.getString("message"));
                    contact.setImage(resultSet.getString("image_path"));

                    contactList.add(contact);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        // Set the contact list as an attribute and forward to JSP
        request.setAttribute("contacts", contactList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view_contact.jsp");
        dispatcher.forward(request, response);
    }
}
