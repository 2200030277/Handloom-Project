package com.sdc.handloom;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnection {
	public static void main(String[] args) throws ClassNotFoundException{
   
        String url = "jdbc:mysql://localhost:3306/handloom";  // Replace 'handloom_db' with your database name
        String user = "root";  
        String password = "1234";  // Replace with your MySQL password
        
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establish connection to the database
            Connection conn = DriverManager.getConnection(url, user, password);
            
            System.out.println("Connected to MySQL database!");
            
         // Create a statement to execute queries
            Statement stmt = conn.createStatement();

            // SQL query to fetch data
            String sql = "SELECT FirstName FROM users";  // Replace with your actual table name
            ResultSet rs = stmt.executeQuery(sql);

            // Process the result set
            while (rs.next()) {
                // Assuming you have columns 'id' and 'name'
               
                String FirstName = rs.getString("FirstName");
                
                System.out.println("FirstName: " + FirstName);
            }

            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            // Close resources
            rs.close();
            stmt.close();
            conn.close();
            
            
            
            
            
            
        } catch (SQLException | ClassNotFoundException e)
        {
            e.printStackTrace();
        }
	}
}
        
     