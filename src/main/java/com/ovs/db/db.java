package com.ovs.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class db {

	public static String url="jdbc:mysql://localhost:3307/ovs_web";
	public static String user="root";
	public static String password="Vishva11281";
    
	public static Connection con=null;
	
	public db()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url,user,password);
			System.out.println("Connected");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}
