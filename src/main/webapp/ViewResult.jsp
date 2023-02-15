<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
 
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/style.css">
</head>
<style>
.topnav
{
overflow: hidden;
background-color:#FF9933;
text-align: center;
}
.topnav a {
  text-align: center;
  color: #f2f2f2;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 40px;
}

</style>
<body>
<div>
<input type="hidden" id="status" value=<%= request.getAttribute("status") %>>
	<header>
		<nav class="topnav">
			<div>
				<a style="color:#FFFFFF"> Online Voting System </a>
			</div>

		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center" style="color:#000088">Live Results</h3>
			<hr>
			
			<br>
			<table class="main table table-bordered" method="post" action="Result" >
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

</body>
</html>