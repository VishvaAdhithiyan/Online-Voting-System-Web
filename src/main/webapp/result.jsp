<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%
 
    if(request.getParameter("submit")!=null)
    {
        String name = request.getParameter("party");
        String course = request.getParameter("votes");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ovs_web","root","Vishva11281");
        
        
        %>
    <script>  
        alert("Record Adddeddddd");    
    </script>
    <%            
    }
   %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
<title>Results</title>
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
td, th
{
text-align: center;
}
</style>
</head>
<body>
<div>
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
			<h3 class="text-center" style="color:#000088">Live Results</h3>
			<hr>
			
			<br>
			<table class="main table table-bordered" >
				<thead>
					<tr>
						<th>Party</th>
						<th>Votes</th>
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
                                            Blob a = rs.getBlob("image");
                                   %>
						<tr>
							<td width="50%"><%=rs.getString("party") %></td>
							<td><%=rs.getString("votes") %></td>
						</tr>
					 <%
                                
                                 }
                               %>
		
				</tbody>
			</table>
		</div>
	</div>
</div>
</div>
<br> <br>
<footer>

</footer>
</body>
</html>