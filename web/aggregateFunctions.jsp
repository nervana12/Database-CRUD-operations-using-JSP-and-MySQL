<%-- 
    Document   : aggregateFunctions
    Created on : May 6, 2023, 12:56:55 AM
    Author     : Nova
--%>

<%@ page import="java.sql.*" %>
<%@page import="java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Class.forName("com.mysql.cj.jdbc.Driver");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Our Data Aggregates</title>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
                padding: 5px;
            }             
        </style>
    </head>
    
    <body>
        <%
            // JDBC driver name and database URL
            String DB_URL = "jdbc:mysql://127.0.0.1:3306/mycvproject?allowPublicKeyRetrieval=true&useSSL=false";

            // Database credentials
            String USER = "root";
            String PASS = "root";

            // Open a connection to the database
            Connection conn = null;
            // Statement stmt = null;
            
            try {
                // start connection with the DB server
                conn = DriverManager.getConnection(DB_URL, USER, PASS);
            } catch (SQLException ex) {
                    ex.printStackTrace();

            }
        %>
        <h2>Here Are Some Analysis Done on The Stored Data!</h2>
        
        <%
            // Execute SELECT query
            Statement stmt = conn.createStatement();        // only once
            
            ResultSet rs = stmt.executeQuery("SELECT languageName, COUNT(*) AS count "
                    + "FROM mycvproject.language "
                    + "GROUP BY languageName "
                    + "ORDER BY count DESC "
                    + "LIMIT 1;");
        %>    
        <%--Display results in HTML table--%>
        <p>(1) The most spoken language and no. of users speak it:</p>
        <table>
            <tr>
            <th>Language Name</th>
            <th>Count</th>
            </tr>
  
            <% while (rs.next()) { %>
                <tr>
                    <td><%= rs.getString("languageName") %></td>
                    <td><%= rs.getInt("count") %></td>
                </tr>
            <% } %>
        </table>
        
        <%    
            rs = stmt.executeQuery("SELECT COUNT(person_idperson) AS count, projectName "
                    + "FROM mycvproject.project "
                    + "WHERE projectName = 'Maze';");
        %>
        <p>(2) Number of users did the "MAZE" project:</p>  
            <% while (rs.next()) { %>
                    <div><%= rs.getInt("count") %></div>
            <% } %>
            
        <%    
            rs = stmt.executeQuery("SELECT COUNT(person_idperson) AS count , hobbyName "
                    + "FROM mycvproject.hobby "
                    + "WHERE hobbyName = 'Fashion';");
        %>
        <p>(3) Number of users interested in "Fashion":</p>  
            <% while (rs.next()) { %>
                    <div><%= rs.getInt("count") %></div>
            <% } %>            
            
        <%    
            rs = stmt.executeQuery("SELECT courseName, COUNT(*) AS count "
                    + "FROM mycvproject.course "
                    + "GROUP BY courseName "
                    + "ORDER BY count DESC "
                    + "LIMIT 3;");
        %>
        <p>(4) The most common 3 courses:</p>
        <table>
            <tr>
            <th>Course Name</th>
            <th>NO. of users take</th>
            </tr>
  
            <% while (rs.next()) { %>
                <tr>
                    <td><%= rs.getString("courseName") %></td>
                    <td><%= rs.getInt("count") %></td>
                </tr>
            <% } %>
        </table>


        <%
            // Clean up resources
            rs.close();
            stmt.close();
            conn.close();
        %>       
 
    </body>
</html>
