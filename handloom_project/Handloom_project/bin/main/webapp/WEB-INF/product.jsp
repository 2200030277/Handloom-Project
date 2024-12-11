<%@ page import="java.util.*, java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Products - E-commerce</title>
    <link rel="stylesheet" href="Style.css"> <!-- Link to your CSS file -->
</head>
<body>
    <h1>Product List</h1>
    <table>
        <tr>
            <th>Product ID</th>
            <th>Product Name</th>
            <th>Price</th>
        </tr>
        <% 
            // Database connection and query to fetch products
            Connection conn = (Connection) request.getAttribute("dbConnection");
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM products");
            while (rs.next()) {
        %>
        <tr>
            <td><%= rs.getInt("product_id") %></td>
            <td><%= rs.getString("product_name") %></td>
            <td><%= rs.getDouble("price") %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>