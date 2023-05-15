<%@page import="com.project.common.User_Bean"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.project.aregistration.ARead_Values"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Manage Students</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
    /* Custom styles */
    body {
        background-color: #f2f2f2;
    }
    h1 {
        margin-top: 50px;
        margin-bottom: 50px;
        text-align: center;
        color: #337ab7;
    }
    table {
        margin-top: 50px;
        border-collapse: collapse;
        width: 100%;
        background-color: #fff;
    }
    th, td {
        text-align: left;
        padding: 8px;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    a.btn {
        color: #fff;
        text-decoration: none;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Manage Students</h1>

    <% ARead_Values obj_Read_Values=new ARead_Values();
    List<User_Bean> list=obj_Read_Values.get_values();
    Iterator<User_Bean> it_list=list.iterator();
    %>
    <p>Total number of students: <%= list.size() %></p>

    <table class="table table-bordered">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Contact</th>
                <th>Email</th>
                <th>View</th>
                <th>Admit Student</th>
                <th>Block User</th>
            </tr>
        </thead>
        <tbody>
        <% while(it_list.hasNext()){
        User_Bean obj_User_Bean=new User_Bean();
        obj_User_Bean=it_list.next();
        %>

        <tr>
            <td><%=obj_User_Bean.getId() %></td>
            <td><%=obj_User_Bean.getName() %></td>
            <td><%=obj_User_Bean.getContact() %></td>
            <td><%=obj_User_Bean.getEmail() %></td>
            <td>
                <a href="#" class="btn btn-primary">View</a>
            </td>
            <td>
                <a href="#" class="btn btn-success">Admit Student</a>
            </td>
            <td>
                <a href="#" class="btn btn-danger">Block User</a>
            </td>
        </tr>
        <% } %>
        </tbody>
    </table>
</div>

<!-- Bootstrap JS and jQuery -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</body>
</html>
