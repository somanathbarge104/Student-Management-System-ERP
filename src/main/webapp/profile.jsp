<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.project.common.User_Bean"%>
<%@page import="com.project.profile.ReadValues"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Profile</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
        body {
            background-color: #f2f2f2;
        }
        .jumbotron {
            background-color: #337ab7;
            color: #fff;
        }
        .thumbnail {
            background-color: #fff;
            border: 1px solid #ddd;
            padding: 10px;
            box-shadow: 0px 0px 5px #888888;
        }
        .thumbnail img {
            width: 1000px;
        }
        h2 {
            color: #337ab7;
        }
        strong {
            color: #337ab7;
        }
    </style>
</head>
<body>
<%
String email=session.getAttribute("email").toString();
ReadValues obj_Read_Values=new ReadValues();
List<User_Bean> list=obj_Read_Values.get_values(email);
Iterator<User_Bean> it_list=list.iterator();
%>

<%
while(it_list.hasNext()){
    User_Bean obj_User_Bean=it_list.next();
%>
<div class="jumbotron text-center">
        <h1>Student Profile</h1>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="thumbnail">
                    <img src="https://media.licdn.com/dms/image/D5603AQFaK6pjY3eyiQ/profile-displayphoto-shrink_400_400/0/1669436640376?e=1688601600&v=beta&t=AArftb93wgF27JKQI8Dib2_7Ays_V6S7DsmNbXMKCpY" alt="">
                </div>
            </div>
            <div class="col-md-8">
                <h2><%=obj_User_Bean.getName() %></h2>
                <p><strong>Id:</strong> <%=obj_User_Bean.getId() %></p>
                <p><strong>Email id:</strong><%=obj_User_Bean.getEmail() %></p>
                <p><strong>Contact No:</strong> <%=obj_User_Bean.getContact() %></p>
                <p><strong>Address:</strong> <%=obj_User_Bean.getPadr() %></p>
                <p><strong>Date Of Birth:</strong>  <%=obj_User_Bean.getDob() %></p>
                <p><strong>PRN No:</strong><%=obj_User_Bean.getPrn() %></p>
                <p><strong>Current Year:</strong> <%=obj_User_Bean.getCyear() %></p>
                <p><strong>Branch:</strong><%=obj_User_Bean.getBranch() %></p>
                <p><strong>Date Of Admission:</strong> <%=obj_User_Bean.getDoa() %></p>
                
            </div>
        </div>
    </div>
    
<%
}
%>


</body>
</html>