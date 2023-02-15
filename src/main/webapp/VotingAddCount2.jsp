<%@page import="java.sql.*" %>

<%
        String party = request.getParameter("id");
%>

<html>
<head>
<title>Voting Page</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Online Voting System</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/index-styles.css" rel="stylesheet" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
<style>
.cen
{
text-align: center;
}
.topnav
{
overflow: hidden;
background-color:#FF9933;
text-align: center;
height: 70px;
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
position: fixed;
padding: 10px 0px 10px 0px;
bottom: 0;
width: 100%;
height: 60px;
background-color: #138808;
}

</style>
</head>
<body>

<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
Swal.fire({
	  position: 'center',
	  icon: 'success',
	  title: 'Your vote has been casted to <%out.print(party);%>',
	  showConfirmButton: false,
	  timer: 2000
	})
</script>
      <header>
		<nav class="topnav">
			<div>
				<a style="color:#FFFFFF"> Online Voting System </a>
			</div>
		</nav>
	</header>
	<br>
	<div class="cen">
			<!-- Masthead Avatar Image-->
			<img class="masthead-avatar mb-5" src="assets/img/ashoka-chakra.png"
				alt="..." height="23%" width="23%"/>
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0" style="color:#000088;">Thank you for serving your nation!</h1>
			
			<h4><a href="index.jsp">Click here to logout </a></h4>
	</div>

<footer>

</footer>
</body>
</html>