<%@page import="java.sql.*" %>
 
 
<%
        String Name1 = request.getParameter("Name1");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3307/ovs_web","root","Vishva11281");
        pst = con.prepareStatement("delete from voterinfo where Name1 = ?;");
         pst.setString(1, Name1);
        pst.executeUpdate();  
        
%>
<html>
<body>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script>
Swal.fire({
	  position: 'center',
	  icon: 'success',
	  title: 'The profile of <%out.print(Name1);%> has been deleted.',
	  showConfirmButton: false,
	  timer: 2000
	})
window.location = 'user-list.jsp';
</script>
</body>
</html>
