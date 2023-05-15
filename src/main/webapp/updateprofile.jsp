<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admission Form</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>

<div class="container">
		<div class="card mx-auto mt-5" style="max-width: 500px;">
			<div class="card-header">
				<h2 class="text-center">Apply Student Admission</h2>
			</div>
			<div class="card-body">
<form action="Controller/update_control.jsp">
<div class="form-group">
<label for="dob">Date of Birth</label><input type="date" name="dob" id="dob" class="form-control">
</div>
<div class="form-group">
<label for="gender">Gender</label>
<select id="gender" name="gender" class="form-control">
<option disabled selected>Select gender</option>
<option>Male</option>
<option>Female</option>
<option>Others</option>
</select></div>
<div class="form-group">
<label for="anumber">Adhar Number</label><input type="text" name="anumber" class="form-control" id="anumber">
</div>
<div class="form-group">
<label for="studenttype">Student Type</label>
<select id="studenttype" class="form-control" name="studenttype">
<option disabled selected>Select type</option>
<option value="New Admition">New Admission</option>
<option value="Reguler">Regular</option>
</select>
</div>
<div class="form-group">
<label for="category">Category</label>
<select id="category" class="form-control" name="category">
<option disabled selected>Select Category</option>
<option value="open">Open</option>
<option value="sc">SC</option>
<option value="VJ">VJ</option>
<option value="NT-1">NT-1</option>
<option value="NT-2">NT-2</option>
<option value="NT-3">NT-3</option>
<option value="ST">ST</option>
<option value="SBC">SBC</option>
<option value="OBC">OBC</option>
<option value="SEBC">SEBC</option>
<option value="others">OTHERS</option>
</select>
</div>
<div class="form-group">
<label for="religion">Religion</label><input type="text" class="form-control"  name="religion" id="religion">
</div>
<div class="form-group">
<label for="cast">Cast</label> <input type="text" class="form-control" name="cast" id="cast">
</div>
<div class="form-group">
<label for="nationality">Nationality</label> <input type="text" class="form-control"  name="nationality" id="nationality">
</div>
<div class="form-group">
<label for="mtongue">Mother Tongue</label><input type="text" class="form-control" name="mtongue" id="mtongue">
</div>
<h2 class="text-center">Address Info</h2>
<div class="form-group">
<label for="locality">Locality</label>
<select id="locality" class="form-control" name="locality">
<option disabled selected>Select locality</option>
<option>Rural</option>
<option>Urban</option>
</select>
</div>
<div class="form-group">
<label for="cadr">Current Address</label><input type="text" class="form-control" name="cadr" id="cadr">
</div>
<div class="form-group">
<label for="padr">Permanent Address</label> <input type="text" class="form-control"  name="padr" id="padr">
</div>
<div class="form-group">
<label for="country">Country</label>  <input type="text" class="form-control" name="country" id="country">
</div>
<div class="form-group">
<label for="state">State</label><input type="text" class="form-control" name="state" id="state">
</div>
<div class="form-group">
<label for="district">District</label> <input type="text" class="form-control" name="district" id="district">
</div>
<div class="form-group">
<label for="taluka">Taluka</label> <input type="text" class="form-control" name="taluka" id="taluka">
</div>
<div class="form-group">
<label for="city">City</label><input type="text" class="form-control" name="city" id="city">
</div>
<div class="form-group">
<label for="pcode">Pin Code</label> <input type="tel" class="form-control" name="pcode" id="pcode">
</div>
<h2 class="text-center">Family Info</h2>

<div class="form-group">
<label for="faname">Father Name</label><input type="text" class="form-control" name="faname" id="faname">
</div>
<div class="form-group">
<label for="maname">Mother Name</label><input type="text" class="form-control" name="maname" id="maname">
</div>
<div class="form-group">
<label for="parentnumber">Parent Contact</label><input type="text" class="form-control"  name="parentnumber" id="parentnumber">
</div>
<div class="form-group">
<label for="parentemail">Parents Email<small> (optional Either NA)</small></label><input type="text" class="form-control" name="parentemail" id="parentemail">
</div>
<div class="form-group">
<label for="occupation">Parents Occupation</label><input type="text" name="occupation" class="form-control" id="occupation">
</div>
<div class="form-group">
<label for="anuincome">Annual Income</label><input type="text"  name="anuincome" class="form-control" id="anuincome">
</div>
<h2 class="text-center">Past Education</h2>
<div class="form-group">
<label for="sclname">SSC School Name</label><input type="text" name="sclname" class="form-control" id="sclname">
</div>
<div class="form-group">
<label for="sboardname">SSC Board</label><input type="text"  name="sboardname" class="form-control" id="sboardname">
</div>
<div class="form-group">
<label for="spassingyear">SSC Passing Year</label><input type="text" name="spassingyear" class="form-control" id="spassingyear">
</div>
<div class="form-group">
<label for="sscpercentage">SSC Percentage</label><input type="text" name="sscpercentage" class="form-control" id="sscpercentage">
</div>
<div class="form-group">
<label for="medu">Medium of Education</label>
<select id="medu" name="medu" class="form-control">
<option disabled selected>Select Medium</option>
<option value="Marathi">Marathi</option>
<option value="English">English</option>
<option value="Semi-English">Semi-English</option>
<option value="Urdu">Urdu</option>
</select>
</div>
<div class="form-group">
<label for="clgname">HSC College Name</label><input type="text" class="form-control" name="clgname" id="clgname">
</div>
<div class="form-group">
<label for="boardname">HSC Board</label><input type="text" class="form-control" name="boardname" id="boardname">
</div>
<div class="form-group">
<label for="hpassingyear">HSC Passing Year</label><input type="text" class="form-control" name="hpassingyear">
</div>
<div class="form-group">
<label for="hscpercentage">HSC Percentage</label><input type="text" class="form-control" name="hscpercentage">
</div>
<div class="form-group">
<label for="totalmarks">HSC Total Marks</label><input type="text" class="form-control" name="totalmarks">
</div>
<div class="form-group">
<label for="group">Group</label>
<select id="group" name="group" class="form-control">
<option disabled selected>Select Group</option>
<option value="PCMB">PCMB</option>
<option value="PCB">PCB</option>
<option value="PCM">PCM</option>
</select>
</div>
<div class="form-group">
<label for="physics">Physics</label><input type="text" class="form-control" name="physics">
</div>
<div class="form-group">
<label for="chemistry">Chemistry</label><input type="text" class="form-control" name="chemistry" >
</div>
<div class="form-group">
<label for="maths">Maths</label><input type="text" name="maths" class="form-control" >
</div>
<div class="form-group">
<label for="biology">Biology</label><input type="text" class="form-control" name="biology">
</div>
<div class="form-group">
<label for="technical">Technical</label><input type="text" class="form-control" name="technical" >
</div>
<div class="form-group">
<label for="cetpercentage">CET percentage</label><input type="text" class="form-control" name="cetpercentage">
</div>
<div class="form-group">
<label for="jeepercentage">JEE Percentage</label><input type="text" class="form-control" name="jeepercentage">
</div>
<div class="form-group">
<label for="dclgname">Diploma Institute Name</label><input type="text" class="form-control" name="dclgname" id="dclgname">
</div>
<div class="form-group">
<label for="course">Diploma Course</label><input type="text" name="course" class="form-control" id="course">
</div>
<div class="form-group">
<label for="dpassingyear">Diploma Passing Year</label><input type="text" class="form-control" name="dpassingyear" id="dpassingyear">
</div>
<div class="form-group">
<label for="dpercentage">Diploma Percentage</label><input type="tel" class="form-control" name="dpercentage" id="dpercentage">
</div>
<h2 class="text-center">Current Education Info</h2>
<div class="form-group">
<label for="branch">Branch</label><select id="branch" class="form-control" name="branch">
<option disabled selected>Select Branch</option>
<option value="Mechanical Engineering">Mechanical Engineering</option>
<option value="Electrical Engineering">Electrical Engineering</option>
<option value="Electronics and Telecommunication Engineering">Electronics and Telecommunication Engineering</option>
<option value="Computer Science & Engineering">Computer Science & Engineering</option>
<option value="Civil Engineering">Civil Engineering</option>
</select>
</div>
<div class="form-group">
<label for="cyear">Current Year</label><select id="cyear" class="form-control" name="cyear">
<option disabled selected>Select Year</option>
<option value="First Year">First Year</option>
<option value="Second Year">Second Year</option>
<option value="Third Year">Third Year</option>
<option value="Final Year">Final Year</option>
</select>
</div>
<div class="form-group">
<label for="doa">Date of Admition</label><input type="date" class="form-control" name="doa" id="doa">
</div>
<div class="form-group">
<label for="prn">PRN No</label><input type="text" name="prn" class="form-control" id="prn">
</div>

<!-- till here -->
<input type="hidden" name="email" value="${email}">
<div class="form-group">
<input type="submit" class="btn btn-primary" value="Apply"/>
</div>
</form>
</div>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
