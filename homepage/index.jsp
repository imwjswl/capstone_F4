<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="util.ConnectionPool" %>

<%
    Connection conn = ConnectionPool.get();
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM Student");
%>
<html>
<head>
    <title>Student Table</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }
        
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Grade</th>
            <th>Student ID</th>
            <th>Subject</th>
            <th>Scheduled Days</th>
            <th>Attend</th>
            <th>Time at Enter</th>
        </tr>
        <% while (rs.next()) { %>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getInt("grade") %></td>
                <td><%= rs.getString("studentId") %></td>
                <td><%= rs.getString("subject") %></td>
                <td><%= rs.getInt("schedulendDays") %></td>
                <td><%= rs.getInt("attend") %></td>
                <td><%= rs.getTimestamp("timeAtEnter") %></td>
            </tr>
        <% } %>
    </table>
</body>
</html>

<%
    rs.close();
    stmt.close();
    conn.close();
%>
