<%@ page import="com.example.main.web_java.Contact" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Contact Form Data</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid black;
        }
        th, td {
            padding: 10px;
            text-align: center;
        }
        th {
            background-color: #f2f2f2;
        }
        .button {
            padding: 5px 10px;
            margin: 5px;
            cursor: pointer;
        }
        .edit-button {
            background-color: #4CAF50;
            color: white;
        }
        .delete-button {
            background-color: #f44336;
            color: white;
        }
    </style>
    <link href="<%= request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

<div class="container">
    <%@ include file="/WEB-INF/includes/navbar.jsp" %>
<table>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Message</th>
        <th>Image</th>
        <th>Actions</th>
    </tr>
    <%
        List<Contact> contacts = (List<Contact>) request.getAttribute("contacts");
        if (contacts != null && !contacts.isEmpty()) {
            for (Contact contact : contacts) {
    %>
    <tr>
        <td><%= contact.getId() %></td>
        <td><%= contact.getName() %></td>
        <td><%= contact.getEmail() %></td>
        <td><%= contact.getMessage() %></td>
        <td><img src="<%= contact.getImage() %>" alt="Contact Image" width="100" height="100" /></td>

        <td>
            <form action="edit-contact" method="get" style="display:inline;">
                <input type="hidden" name="id" value="<%= contact.getId() %>">
                <button type="submit" class="button edit-button">Edit</button>
            </form>
            <form action="delete-contact" method="post" style="display:inline;">
                <input type="hidden" name="id" value="<%= contact.getId() %>">
                <button type="submit" class="button delete-button" onclick="return confirm('Are you sure you want to delete this contact?')">Delete</button>
            </form>
        </td>
    </tr>
    <%
        }
    } else {
    %>
    <tr>
        <td colspan="4">No contact form submissions found.</td>
    </tr>
    <%
        }
    %>
</table>
</div>
</body>
</html>
