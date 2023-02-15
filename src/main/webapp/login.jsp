<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Login Page</title>

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

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="assets/img/login.jpg" alt="sing up image">
						</figure>
						<a href="registration.jsp" class="signup-image-link">New voter? Click here to register</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Login</h2>
						<form method="post" action="Login" class="register-form"
							id="login-form">
							<div class="form-group">
								<label for="username"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="username" id="username"
									placeholder="Username" />
							</div>
							<div class="form-group">
								<label for="password"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="password" id="password"
									placeholder="Password" />
							</div>
							<div class="form-group form-button">
								<input type="submit" name="signin" id="signin"
									class="form-submit" value="Log in" />
							</div>
						</form>
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
	if(status=="exceeded")
	{
	Swal.fire({
		  icon: 'error',
		  title: 'Oops...',
		  text: 'User already voted',
		  footer: ''
		})
	}
	if(status=="failed")
		{
		Swal.fire({
			  icon: 'error',
			  title: 'Oops...',
			  text: 'Invalid credentials',
			  footer: ''
			})
		}
</script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>