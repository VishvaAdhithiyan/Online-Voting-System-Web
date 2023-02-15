package com.ovs.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ovs.db.*;

/**
 * Servlet implementation class login
 */
@WebServlet("/Login")
public class Voter_Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
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
	        String sql = "Select * from voterinfo where Username=? and Pass=?";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setString(1, uname);
	        ps.setString(2, pass);
	        ResultSet rs = ps.executeQuery();
	        String user = uname;
	        
	       if(rs.next())
	       {   
	           int a = rs.getInt("attempt");
	           //System.out.println(a);
	           String val1 = rs.getString(2);
	           
	           if(a==0)
	           {
	               session.setAttribute("name", rs.getString("Username"));
	               stmt.executeUpdate("UPDATE voterinfo set attempt = attempt+1 where UserName = '"+val1+"' ");
	               dispatcher = request.getRequestDispatcher("VotingPage.jsp");
	           }
	           else
	           {
	           	request.setAttribute("status", "exceeded");
	           	dispatcher = request.getRequestDispatcher("login.jsp");
	           }
	           
	           dispatcher.forward(request, response); 
	        }
	       else
	       {
	    	   request.setAttribute("status", "failed");
	           dispatcher = request.getRequestDispatcher("login.jsp");
	           dispatcher.forward(request, response); 
	       }
	        }
	        catch(Exception e)
	        {
	            System.out.println(e);
	        }
	    }
		
		
	}


