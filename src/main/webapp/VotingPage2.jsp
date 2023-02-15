<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
 
 <%
        String party = request.getParameter("id");
        %>
<html>
<head>
<title>Voting Page</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
<style>
.cen
{
position: relative;
left: 50%;
bottom: 10;
}
.topnav
{
overflow: hidden;
background-color:#FF9933;
text-align: center;
height: 70px;
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
td, th
{
text-align: center;
}
</style>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script>
        
        Swal.fire({
  		  title: "Are you willing to vote to <%out.print(party);%> ?",
  		  text: "Be responsible while voting.You won't be able to change this!",
  		  icon: 'warning',
  		  showCancelButton: true,
  		  confirmButtonColor: '#3085d6',
  		  cancelButtonColor: '#d33',
  		  confirmButtonText: 'Yes, vote!'
  		}).then((result) => {
  		  if (result.isConfirmed) {
  			  
  			  window.location = 'VotingAddCount.jsp?id=<%=party%>';
  		  }
  		  else
  		{
  			window.location = 'VotingPage.jsp?';
  		}
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
   <div class="container">
	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class=" text-center" style="color:#000088">Voting Page</h3>
			<hr>
			
			<br>
			<form method="post" action="Vote" class="register-form"
							id="vote">
			<table class="main table table-bordered">
				<thead>
					<tr>
						<th>Party</th>
						<th>Click to Vote</th>
					</tr>
				</thead>
				<tbody>
				
					
<%  
 
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
        
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ovs_web","root","Vishva11281");
                                
                                  String query = "select * from result";
                                  Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String id = rs.getString("party");
                                   %>
						<tr>
							<td width="50%"><%=rs.getString("party") %></td>
							<td><a href="VotingPage2.jsp?id=<%=id%>">Click here to Vote</a></td>
							<!--  <td><p><button type="button" onclick="vote()"> Click here to vote </button></p></td> -->

						</tr>
					 <%
                                
                                 }
                               %>
		
				</tbody>

			</table>
			</form>
		</div>
	</div>
</div>
<br> <br>
<footer>

</footer>

</body>
</html>