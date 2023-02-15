

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<%@page import="java.sql.*" %>


<html>
<head>
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

<style>
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

</style>
</head>
<body>
								
	<header>
		<nav class="topnav">
			<div>
				<a style="color:#FFFFFF"> Voter Management </a>
			</div>

		</nav>
	</header>
	<br>
	<div class="container">
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<form class="main" method="POST" action="#" >
				
				

				<caption>
					<h2>
						
            			Edit User
            		
					</h2>
				</caption>
								<%   Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
        
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ovs_web","root","Vishva11281");
                                
                                String Name1 = request.getParameter("Name1");  
                                System.out.println(Name1);
                                pst = con.prepareStatement("select * from voterinfo where Name1 =?");
                                
                                //String query = "select * from voterinfo";
                                  //Statement st = con.createStatement();
                                  pst.setString(1, Name1);
                                  System.out.println(pst);
                                  rs = pst.executeQuery();
                                  
                                    
                                        while(rs.next())
                                        {
                                            
                                   %>
				
					
				<fieldset class="form-group">
					<label>Name</label> <input type="text"
						value="<%= rs.getString("Name1") %>" class="form-control"
						name="Name1">
				</fieldset>

				

				<fieldset class="form-group">
					<label>UserName</label> <input type="text"
						value="<%= rs.getString("Username") %>" class="form-control"
						name="Username">
				</fieldset>

				<fieldset class="form-group">
					<label>Aadhar Card Number</label> <input type="text"
						value="<%= rs.getString("Aadhar") %>" class="form-control"
						name="Aadhar">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Email</label> <input type="text"
						value="<%= rs.getString("Email") %>" class="form-control"
						name="Email">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Password</label> <input type="text"
						value="<%= rs.getString("Pass") %>" class="form-control"
						name="Pass">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Confirm Password</label> <input type="text"
						value="<%= rs.getString("Confirm_pass") %>" class="form-control"
						name="Confirm_pass">
						</fieldset>
				
				<fieldset class="form-group">
					<label>Mobile</label> <input type="text"
						value="<%= rs.getString("Mobile") %>" class="form-control"
						name="Mobile">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Attempt</label> <input type="text"
						value="<%= rs.getString("attempt") %>" class="form-control"
						name="attempt">
				</fieldset>
				<%
                                
                                 }
                               %>
<input type="submit" id="submit" value="Submit" name="submit" class="btn btn-info" onclick="update()">
                         
                         
				</form>
			</div>
		</div>
	</div>
</div>
<br> <br>
<footer>

</footer>
<script>
function update()
{
	Swal.fire({
		  title: "Do you want to update <%out.print(request.getParameter("Name1"));%> profile",
		  text: "Be responsible while voting.You won't be able to change this!",
		  icon: 'warning',
		  showCancelButton: true,
		  confirmButtonColor: '#3085d6',
		  cancelButtonColor: '#d33',
		  confirmButtonText: 'Yes, vote!'
		}).then((result) => {
		  if (result.isConfirmed) {
			  <%
			  if(request.getParameter("submit")!=null)
			  {
			      	String Name12 = request.getParameter("Name1");
			      	System.out.println("Update1:"+Name12);
			  		String Username = request.getParameter("Username");
			  		System.out.println("Update1:"+Username);
			  		String Aadhar=request.getParameter("Aadhar");
			  		System.out.println("Update1:"+Aadhar);
			  		String Email =request.getParameter("Email");
			  		String Pass = request.getParameter("Pass");
			  		String Confirm_pass = request.getParameter("Confirm_pass");
			  		String Mobile=request.getParameter("Mobile");
			  		System.out.println("Update1:"+Mobile);
			  		String attempt=request.getParameter("attempt");
			  		if(Name1 != null)
			  		{
			          
			          Class.forName("com.mysql.jdbc.Driver");
			          con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ovs_web","root","Vishva11281");
			  pst = con.prepareStatement("update voterinfo set UserName=?,Aadhar=?,Email=?,Pass=?,Confirm_pass=?,Mobile=?,attempt=? where Name1 = ?");
			          
			  		pst.setString(8, Name12);        
			  		pst.setString(1, Username);
			          pst.setString(2, Aadhar);
			          pst.setString(3, Email);
			          pst.setString(4, Pass);
			          pst.setString(5, Confirm_pass);
			          pst.setString(6, Mobile);
			          pst.setString(7, attempt);
			          
			          
			          pst.executeUpdate();  
			  		}
			          
			   %>
			          
			          <script>  
			              alert("Record Updateddddd");          
			         </script>
			      <%            
			      }
			   
			  %>
			  
			  
		  }
		  
		})
	}
</script>
</body>

</html>