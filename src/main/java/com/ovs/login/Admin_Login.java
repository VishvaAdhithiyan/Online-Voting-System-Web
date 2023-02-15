package com.ovs.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ovs.db.db;

/**
 * Servlet implementation class Admin
 */
@WebServlet("/Admin")
public class Admin_Login extends HttpServlet {
	public static db d1 = new db();
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("username");
		String pass = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher=null;
		 try
	        {
			Connection con = d1.con;
	        Statement stmt = con.createStatement();
	        String sql = "Select * from admin where UserName=? and Pass=?";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setString(1, uname);
	        ps.setString(2, pass);
	        ResultSet rs = ps.executeQuery();
	        String user = uname;
	        
	       if(rs.next())
	       {   
//	               session.setAttribute("name", rs.getString("Username"));
	               dispatcher = request.getRequestDispatcher("user-list.jsp");
	        }
	         else
	           {
	           	request.setAttribute("status", "failed");
	           	dispatcher = request.getRequestDispatcher("admin_login.jsp");
	           }
	           
	           dispatcher.forward(request, response); 
	        }
	        catch(Exception e)
	        {
	            System.out.println(e);
	        }
	}

}
