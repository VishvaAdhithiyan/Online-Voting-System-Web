package com.ovs.result;

import java.io.IOException;
import java.sql.Connection;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ovs.db.db;
import com.ovs.login.Voter_Login;

/**
 * Servlet implementation class Result
 */
@WebServlet("/Result")
public class Result extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	db db1 = Voter_Login.d1;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		RequestDispatcher dispatcher=null;
	    if(request.getParameter("submit")!=null)
	    {
	        String name = request.getParameter("party");
	        String course = request.getParameter("votes");
	        try
	        {
	        Connection con = db1.con;
	        Statement stmt = con.createStatement();
            String sql = "Select * from result";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            int count=0;
            while(rs.next())
            {
            	count++;
            }
            System.out.println(count);
            String[] party = new String[count];
            rs = ps.executeQuery();
            int i=0;
            if(rs.next())
            {
            		String id1 = rs.getString("party");
            		System.out.println("java file kulla iruken");
            		request.setAttribute("status", "good");
            		party[i]=id1;
            		i++;
            }
	        }
	        catch(Exception e)
	        {
	        	
	        }
	        
	        
	}

}
}