package Dao;
import java.sql.*;

public class Databaseconnector {
	public Connection connect;
	public Connection Dbconnect() {
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
		}
		catch(ClassNotFoundException e)
		{
			System.out.println(e);
		}
		try 
		{
			connect=DriverManager.getConnection("jdbc:mysql://localhost:3306/demo1","root","");
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return connect;
	}
}
