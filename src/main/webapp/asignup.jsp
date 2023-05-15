<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Section</title>

	<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

	<!-- SweetAlert CSS -->
	<link rel="stylesheet" href="https://unpkg.com/sweetalert/dist/sweetalert.css">

</head>
<body>
	<input type="hidden" id="status" value=<%= request.getAttribute("status") %> ></input>
	
	<div class="container">
		<div class="card mx-auto mt-5" style="max-width: 500px;">
			<div class="card-header">
				<h2 class="text-center">Create Admin Account</h2>
			</div>
			<div class="card-body">
				<form method="post" action="ASignup">
					<div class="form-group">
						<label for="name">Your Name</label>
						<input type="text" name="name" id="name" class="form-control" placeholder="Your Name" />
					</div>
					<div class="form-group">
						<label for="email">Your Employee Id</label>
						<input type="text" name="empid" id="empid" class="form-control" placeholder="Your Employee Id" />
					</div>
					<div class="form-group">
						<label for="pass">Password</label>
						<input type="password" name="pass" id="pass" class="form-control" placeholder="Password" />
					</div>
					<div class="form-group">
						<label for="re-pass">Repeat Password</label>
						<input type="password" name="re_pass" id="re_pass" class="form-control"	placeholder="Repeat your password" />
					</div>
					<div class="form-group">
						<label for="contact">Contact no</label>
						<input type="text" name="contact" id="contact" class="form-control" placeholder="Contact no" />
					</div>
					<div class="form-group text-center">
						<input type="submit" name="ASignup" id="ASignup" class="btn btn-primary" value="Signup" />
					</div>
				</form>
				<p class="text-center">Already have an account? <a href="alogin.jsp">Log in</a></p>
			</div>
		</div>
	</div>

	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script type="text/javascript">
var status=document.getElementById("status").value;
if(status=="success"){
	swal("Congratulations","Your account has been created", "success");
}
</script>
</body>
</html>