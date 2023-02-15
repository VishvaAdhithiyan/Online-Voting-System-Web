package com.ovs.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ovs.db.*;
import com.ovs.login.Voter_Login;
/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	db db1 = Voter_Login.d1;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		String uname = request.getParameter("uname");
		String aadhar = request.getParameter("aadhar");
		String email = request.getParameter("email");
		String pass = request.getParameter("pass");
		String repass = request.getParameter("re_pass");
		String contact = request.getParameter("contact");
		
		
	    RequestDispatcher dispatcher=null;
		try
		{
			Connection con = db1.con;
			int aadharno = Integer.parseInt(aadhar);
			int mno = Integer.parseInt(contact);
			
            java.sql.Statement stmt = con.createStatement();
            String sql = "INSERT into voterinfo (Name1,Username,Aadhar,Email,Pass,Confirm_pass,Mobile,attempt) values (?,?,?,?,?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(sql);
        
	        ps.setString(1, name);
	        ps.setString(2, uname);
	        ps.setInt(3, aadharno);
	        ps.setString(4, email);
	        ps.setString(5,pass);
	        ps.setString(6, repass);
	        ps.setInt(7,mno);
	        ps.setInt(8,0);
          
        
        int i=ps.executeUpdate();
        dispatcher = request.getRequestDispatcher("registration.jsp");
        if(i>0)
        {
            request.setAttribute("status", "success");
        }
        else
        {
        	request.setAttribute("status", "failed");
        }
        
        dispatcher.forward(request, response);
		}
        
		
        catch(Exception e)
        {
        	e.printStackTrace();
        }
		finally
		{
			
		}
	

}
}
