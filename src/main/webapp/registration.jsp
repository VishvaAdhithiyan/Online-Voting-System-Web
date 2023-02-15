<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Registration</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="css/style.css">
<style>
.topnav
{
overflow: hidden;
background-color:#FF9933;
text-align: center;
height: 60px;
box-shadow: 0 2px 14px 0 rgba(0,0,0,2);
}
.topnav a {
  text-align: center;
  color: #f2f2f2;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 40px;
}
footer
{
overflow: hidden;
padding: 10px 0px 10px 0px;
bottom: 0;
width: 100%;
height: 70px;
background-color: #138808;
}
</style>
</head>
<body>
<header>
		<nav class="topnav">
			<div>
				<a style="color:#FFFFFF"> Online Voting System </a>
			</div>

		</nav>
</header>
<input type="hidden" id="status" value=<%= request.getAttribute("status") %>>
	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Register</h2>
					
						<form method="post" action="Register" register-form"
							id="register-form">
							<div class="form-group">
								<label for="name"></label> <input
									type="text" name="name" id="name" placeholder="Name" />
							</div>
							<div class="form-group">
								<label for="uname"></label> <input
									type="text" name="uname" id="name" placeholder="Username" />
							</div>
							<div class="form-group">
								<label for="aadhar"></label> <input
									type="text" name="aadhar" id="name" placeholder="Aadhar Number" />
							</div>
							<div class="form-group">
								<label for="email"></label> <input
									type="email" name="email" id="email" placeholder="Email" />
							</div>
							<div class="form-group">
								<label for="pass"></label> <input
									type="password" name="pass" id="pass" placeholder="Password" />
							</div>
							<div class="form-group">
								<label for="re-pass"></label>
								<input type="password" name="re_pass" id="re_pass"
									placeholder="Repeat your password" />
							</div>
							<div class="form-group">
								<label for="contact"></label>
								<input type="text" name="contact" id="contact"
									placeholder="Contact no" />
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Register" />
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="assets/img/register.png" alt="sign up image">
						</figure>
						<a href="login.jsp" class="signup-image-link">Already a member? Click here to LOGIN!</a>
					</div>
				</div>
			</div>
		</section>
		
		</div>
<footer>

</footer>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="js/main.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
	
<script type="text/javascript">
	var status = document.getElementById("status").value;
	if(status=="success")
		{
		Swal.fire({
			  position: 'center',
			  icon: 'success',
			  title: 'Your account has been registered',
			  showConfirmButton: false,
			  timer: 1500
			})
		}
</script>

</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>