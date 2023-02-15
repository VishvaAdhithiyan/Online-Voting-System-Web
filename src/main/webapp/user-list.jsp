

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<%@page import="java.sql.*" %>

<html>
<head>
<title>Voter Management</title>
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
				<a style="color:#FFFFFF"> Online Voting System </a>
			</div>

		</nav>
	</header>
	<br>
    <div class="container">
	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center" style="color:#000088">Voters List</h3>
			<hr>
			<div class="container text-left">

                <a href="admin_voter_registration.jsp" class="btn btn-success">Add
                    New Voter</a>
            </div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>Name</th>
						<th>User Name</th>
						<th>Aadhar Number</th>
						<th>Email</th>
						<th>Password</th>
						<th>Confirm Password</th>
						<th>Mobile</th>
						<th>Attempt</th>
					</tr>
				</thead>
				<%   Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
        
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ovs_web","root","Vishva11281");
                                
                                  String query = "select * from voterinfo";
                                  Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String Name1 = rs.getString("Name1");
                                   %>
                                   
				<tbody>
					<tr>
                                 <td><%=rs.getString("Name1") %></td>
                                 <td><%=rs.getString("Username") %></td>
                                 <td><%=rs.getString("Aadhar") %></td>
                                 <td><%=rs.getString("Email") %></td>
                                 <td><%=rs.getString("Pass") %></td>
                                 <td><%=rs.getString("Confirm_pass") %></td>
                                 <td><%=rs.getString("Mobile") %></td>
                                 <td><%=rs.getString("attempt") %></td>
                                 <td><a href="Update1.jsp?Name1=<%=Name1%>">Edit</a></td>
                                 <td><a href="user-delete.jsp?Name1=<%=Name1%>">Delete</a></td>
                                 
                             </tr>
					
		
				</tbody>
								<%
                                System.out.println("User-list"+rs.getString("Mobile"));
                                 }
                               %>
			</table>
		</div>
	</div>
</div>
<br> <br>
<footer>

</footer>
</body>
</html>