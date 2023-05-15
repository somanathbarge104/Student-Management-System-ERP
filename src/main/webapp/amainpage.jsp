<%
if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Admin Dashboard</title>
  <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
        nav {
            background-color: #337ab7;
            color: #fff;
            padding: 10px;
            border-radius: 0;
        }
        nav a {
            color: #fff;
            text-decoration: none;
            margin-right: 10px;
            font-weight: bold;
            font-size: 18px;
        }
        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
        }
        nav li {
            float: left;
        }
        nav li a:hover {
            background-color: #4d4d4d;
            border-radius: 5px;
        }
        .container {
            margin-top: 50px;
        }
        .btn {
            margin-right: 10px;
        }
    </style>
</head>
<body>
    <h1>Admin Dashboard</h1>
    <nav>
        <ul>
            <li><a href="#">Dashboard</a></li>
            <li><a href="allstudentview.jsp">Students</a></li>
            <li><a href="#">Course</a></li>
            <li><a href="#">Enrollments</a></li>
            <li><a href="#">Grades</a></li>
            <li><a href="#">Attendance</a></li>
            <li><a href="#">Finances</a></li>
            <li><a href="#">Reports and Analytics</a></li>
            <li><a href="ALogout">Logout</a></li>
        </ul>
    </nav>
        <center><h3>Welcome, <%=session.getAttribute("name")%></h3><p>Here are some actions you can take:</p>
        </center>
        
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Manage Students</h3>
                    </div>
                    <div class="panel-body">
                        <p><i class="fa fa-user fa-lg"></i> Add, delete or modify student records</p>
                        <a href="allstudentview.jsp" class="btn btn-primary"><i class="fa fa-arrow-right"></i> Manage Students</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">Manage Course</h3>
                    </div>
                    <div class="panel-body">
                         <p><i class="fa fa-book fa-lg"></i> Add, delete or modify course records</p>
                        <a href="#" class="btn btn-success"><i class="fa fa-arrow-right"></i> Manage Course</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-info">
                    <div class="panel-heading">
                        <h3 class="panel-title">Manage Enrollments</h3>
                    </div>
                    <div class="panel-body">
                        <p><i class="fa fa-graduation-cap fa-lg"></i> Enroll or unenroll students in courses</p>
                        <a href="#" class="btn btn-info"><i class="fa fa-arrow-right"></i> Manage Enrollments</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h3 class="panel-title">Manage Grades</h3>
                    </div>
                    <div class="panel-body">
                        <p><i class="fa fa-bar-chart fa-lg"></i> Manage student grades and performance</p>
                        <a href="#" class="btn btn-warning"><i class="fa fa-arrow-right"></i> Manage Grades</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-danger">
                    <div class="panel-heading">
                        <h3 class="panel-title">Manage Attendance</h3>
                    </div>
                    <div class="panel-body">
                        <p><i class="fa fa-clock-o fa-lg"></i> Manage student attendance and absences</p>
                        <a href="#" class="btn btn-danger"><i class="fa fa-arrow-right"></i> Manage Attendance</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Manage Finances</h3>
                    </div>
                    <div class="panel-body">
                        <p><i class="fa fa-money fa-lg"></i> Manage finances and payments</p>
                        <a href="#" class="btn btn-default"><i class="fa fa-arrow-right"></i> Manage Finances</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html> 