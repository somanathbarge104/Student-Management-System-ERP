<%
if(session.getAttribute("name")==null){
	response.sendRedirect("login.jsp");
}
%>
 
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Student Management System - Dashboard</title>
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
    <h1>Student Dashboard</h1>
    <nav>
        <ul>
            <li><a href="#">Dashboard</a></li>
            <li><a href="profile.jsp">Profile</a></li>
            <li><a href="updateprofile.jsp">Apply for Admission</a></li>
            <li><a href="#">Assessment</a></li>
            <li><a href="https://www.dnyanshree.edu.in/fee-structure.html">Fees</a></li>
            <li><a href="Logout">Logout</a></li>
        </ul>
    </nav>
        <center><h3>Welcome, <%=session.getAttribute("name")%></h3></center>
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Profile</h3>
                    </div>
                    <div class="panel-body">
                        <p><i class="fa fa-user fa-lg"></i> View and edit your profile information</p>
                        <a href="profile.jsp" class="btn btn-primary"><i class="fa fa-arrow-right"></i> Go to Profile</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <h3 class="panel-title">Apply for Admission</h3>
                    </div>
                    <div class="panel-body">
                        <p><i class="fa fa-graduation-cap fa-lg"></i> Apply for admission to a program</p>
                        <a href="updateprofile.jsp" class="btn btn-success"><i class="fa fa-arrow-right"></i> Apply Now</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
                        <div class="col-md-6">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h3 class="panel-title">Assessment</h3>
                    </div>
                    <div class="panel-body">
                        <p><i class="fa fa-file-text fa-lg"></i> View your assessment results</p>
                        <a href="#" class="btn btn-warning"><i class="fa fa-arrow-right"></i> View Assessment</a>
                    </div>
                </div>
            </div>
            <div class="col-md-6">
                <div class="panel panel-danger">
                    <div class="panel-heading">
                        <h3 class="panel-title">Fees</h3>
                    </div>
                    <div class="panel-body">
                        <p><i class="fa fa-money fa-lg"></i> View your fee details</p>
                        <a href="https://www.dnyanshree.edu.in/fee-structure.html" class="btn btn-danger"><i class="fa fa-arrow-right"></i> View Fees</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <!-- Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
            
