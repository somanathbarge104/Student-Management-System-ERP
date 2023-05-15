<%@page import="com.project.profile.UpdateValues"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String dob=request.getParameter("dob");
String gender=request.getParameter("gender");
String anumber=request.getParameter("anumber");
String studenttype=request.getParameter("studenttype");
String category=request.getParameter("category");
String religion=request.getParameter("religion");
String cast=request.getParameter("cast");
String nationality=request.getParameter("nationality");
String mtongue=request.getParameter("mtongue");
String locality=request.getParameter("locality");
String cadr=request.getParameter("cadr");
String padr=request.getParameter("padr");
String country=request.getParameter("country");
String state=request.getParameter("state");
String district=request.getParameter("district");
String taluka=request.getParameter("taluka");
String city=request.getParameter("city");
String pcode=request.getParameter("pcode");
String faname=request.getParameter("faname");
String maname=request.getParameter("maname");
String parentnumber=request.getParameter("parentnumber");
String parentemail=request.getParameter("parentemail");
String occupation=request.getParameter("occupation");
String anuincome=request.getParameter("anuincome");
String sclname=request.getParameter("sclname");
String sboardname=request.getParameter("sboardname");
String spassingyear=request.getParameter("spassingyear");
String sscpercentage=request.getParameter("sscpercentage");
String medu=request.getParameter("medu");
String clgname=request.getParameter("clgname");
String boardname=request.getParameter("boardname");
String hpassingyear=request.getParameter("hpassingyear");
String hscpercentage=request.getParameter("hscpercentage");
String totalmarks=request.getParameter("totalmarks");
String group=request.getParameter("group");
String physics=request.getParameter("physics");
String chemistry=request.getParameter("chemistry");
String maths=request.getParameter("maths");
String biology=request.getParameter("biology");
String technical=request.getParameter("technical");
String cetpercentage=request.getParameter("cetpercentage");
String jeepercentage=request.getParameter("jeepercentage");
String dclgname=request.getParameter("dclgname");
String course=request.getParameter("course");
String dpassingyear=request.getParameter("dpassingyear");
String dpercentage=request.getParameter("dpercentage");
String branch=request.getParameter("branch");
String cyear=request.getParameter("cyear");
String doa=request.getParameter("doa");
String prn=request.getParameter("prn");




String email=request.getParameter("email");


UpdateValues obj_Insert_Values=new UpdateValues();
obj_Insert_Values.insert_values(dob, gender, anumber, studenttype, category, religion, cast, nationality, mtongue, locality, cadr, padr, country, state, district, taluka, city, pcode,faname, maname, parentnumber, parentemail, occupation, anuincome, sclname,  sboardname, spassingyear, sscpercentage, medu, clgname, boardname, hpassingyear, hscpercentage, totalmarks, group, physics,  chemistry, maths, biology, technical, cetpercentage, jeepercentage, dclgname, course, dpassingyear, dpercentage, email,branch,cyear,doa,prn);

%>
<script type="text/javascript">
	window.location.href="http://localhost:8080/ABC_Project/updateprofile.jsp"
</script>
</body>
</html>