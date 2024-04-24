package Dao;

import java.sql.*;
import java.util.*;
import Bean.Register;

public class Dao {
	Connection con = null;
	PreparedStatement ps = null;
	Statement st = null;
	ResultSet rs = null;
	String query = null;
	Databaseconnector dobj = new Databaseconnector();
    
	public String regUser(Register robj)

	{
		try {
			con = dobj.Dbconnect();
			query = "insert into owner(Name,Username,Password,Email) values(?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setString(1, robj.getOn());
			ps.setString(2, robj.getOname());
			ps.setString(3, robj.getOpassword());
			ps.setString(4, robj.getOemail());
			int i = ps.executeUpdate();

			if (i != 0) {
				return "success";

			}
		}

		catch (Exception e) {
			System.out.println(e);
		}
		return " ";

	}

	public String regUser1(Register robj)

	{
		try {
			con = dobj.Dbconnect();
			query = "insert into user(Name,Username,Password,Email) values(?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setString(1, robj.getUn());
			ps.setString(2, robj.getUname());
			ps.setString(3, robj.getUpassword());
			ps.setString(4, robj.getUemail());

			int i = ps.executeUpdate();

			if (i != 0) {
				return "success";

			}
		}

		catch (Exception e) {
			System.out.println(e);
		}
		return " ";

	}

public ArrayList<Register> viewUser() {
		ArrayList<Register> viewL = new ArrayList<Register>();
		try {
			query = "select * from owner";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);

			while (rs.next()) {
				Register robj = new Register();
				robj.setOn(rs.getString(1));
				robj.setOname(rs.getString(2));
				robj.setOpassword(rs.getString(3));
				robj.setOemail(rs.getString(4));
				robj.setId(rs.getString(5));
				viewL.add(robj);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return viewL;
	}

public ArrayList<Register> viewUser1() {
		ArrayList<Register> viewL = new ArrayList<Register>();
		try {
			query = "select * from user";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				Register robj = new Register();
				robj.setUn(rs.getString("Name"));
				robj.setUname(rs.getString(2));
				robj.setUpassword(rs.getString(3));
				robj.setUemail(rs.getString(4));
				robj.setUid(rs.getString(5));
				System.out.println(robj.getUn()+"555555");
				viewL.add(robj);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return viewL;
	}

public String loginowner(Register robj) {
		String user = robj.getOname();
		String pass = robj.getOpassword();
		try {
			String query = "select * from owner where Username='" + user + "' and Password='" + pass + "'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				String s = rs.getString("Username");
				System.out.println(s);
				String s1 = rs.getString("Password");
				System.out.println(s1);

				robj.setOname(rs.getString(1));
				robj.setOpassword(rs.getString(2));
				if ((user.equals(s)) && (pass.equals(s1))) {
					return "success";
				}
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "invalid";
	}

public String loginuser(Register robj) {
		String user1 = robj.getUname();
		String pass1 = robj.getUpassword();
		try {
			String query = "select * from user where Username='" + user1 + "' and Password='" + pass1 + "'";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) {
				String a = rs.getString("username");
				String b = rs.getString("password");

				robj.setUname(rs.getString(1));
				robj.setUpassword(rs.getString(2));

				if ((user1.equals(a)) && (pass1.equals(b))) {
					return "success";
				}
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return "invalid";
	}

//submit table insertion

public String sub(Register robj)
	{
		try {
			con = dobj.Dbconnect();
			query = "insert into sub(name,keyword,description,ownername,image) values(?,?,?,?,?)";
			ps = con.prepareStatement(query);
			ps.setString(1, robj.getImgname());
			ps.setString(2, robj.getKey());
			ps.setString(3, robj.getDes());
			ps.setString(4, robj.getIname());
			ps.setString(5, robj.getImage());

			int i = ps.executeUpdate();

			if (i != 0) {
				return "success";

			}
		}

		catch (Exception e) {
			System.out.println(e);
		}
		return " ";
	}

//Ownersubmit

public ArrayList<Register> sub1() {
		ArrayList<Register> viewL = new ArrayList<Register>();
		try {
			query = "select * from sub";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			
			while (rs.next()) {
				Register robj1 = new Register();
				robj1.setFid(rs.getString("id"));
				//robj1.setIname(rs.getString("2"));
				//robj1.setKey(rs.getString("3"));
				robj1.setDes(rs.getString("description"));
				robj1.setImage(rs.getString("image"));
				System.out.println(robj1.getImage());
				robj1.setImgname(rs.getString("name"));
				System.out.println(robj1.getDes()+"555555");
				viewL.add(robj1);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return viewL;
	}
	


//User Searchpage

public ArrayList<Register> view(){ 
	{
		ArrayList<Register> viewS=new ArrayList<Register>();
		try {
			System.out.println("here");
			String query = "select * from sub";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next()) 
			{
				Register robj=new Register();
				robj.setFid(rs.getString("id"));
				robj.setImgname(rs.getString("name"));
				robj.setDes(rs.getString("description"));
				viewS.add(robj);
			}
		} 
		catch (Exception e)
		{
			System.out.println(e);
		}
		return viewS;
	}
}

//view owner

public ArrayList<Register> view1(){
{
		ArrayList<Register> viewS=new ArrayList<Register>();
		try {
			System.out.println("here");
			String query = "select * from sub";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			while (rs.next())
			{
				Register robj=new Register();
				robj.setFid(rs.getString("id"));
				robj.setKey(rs.getString("keyword"));
				robj.setImgname(rs.getString("name"));
				robj.setDes(rs.getString("description"));
				robj.setImgname(rs.getString("image"));
				viewS.add(robj);
			}
			}
		catch (Exception e)
		{
			System.out.println(e);
		}
		return viewS;
	}
}

//request

public String req(Register robj)
	{
		try {
			System.out.println("here");
			String query = "insert into request(username,id,name,description,image,status) values(?,?,?,?,?,?)";
			con=dobj.Dbconnect();
			ps = con.prepareStatement(query);
			ps.setString(1, robj.getUn());
			ps.setString(2, robj.getFid());
			ps.setString(3, robj.getImgname());
			ps.setString(4, robj.getDes());
			ps.setString(5, robj.getImage());
			ps.setString(6, "0");

			int i = ps.executeUpdate();

			if (i != 0) {
				return "success";
			}
		}
		catch (Exception e) {
			System.out.println(e);
		}
		return "";

}

//request view

public ArrayList<Register> req1(){ 
	{
		ArrayList<Register> viewS=new ArrayList<Register>();
		try {
			System.out.println("here");
			String query = "select * from request";
			con = dobj.Dbconnect();
			st = con.createStatement();
			rs = st.executeQuery(query);
			
			while (rs.next()) 
			{
				Register robj=new Register();
				robj.setUn(rs.getString("username"));
				robj.setFid(rs.getString("id"));
				robj.setImgname(rs.getString("image"));
				robj.setDes(rs.getString("description"));
				robj.setImage(rs.getString("image"));
				viewS.add(robj);
			}
		} 
		catch (Exception e)
		{
			System.out.println(e);
		}
		return viewS;
	}
}

//approval

public String approval(Register robj)
	{
		try {
			
			String id= robj.getFid();
			con=dobj.Dbconnect();
			
			System.out.println("here");
			String query = "update request set status = '1' where id = '"+id+"'";
			ps = con.prepareStatement(query);
			//ps.setString(1, robj.getStatus());
			int i=ps.executeUpdate();
			System.out.println("here");
			if (i != 0)
			{
				return "success";

			}
		}

		catch (Exception e) 
		{
			System.out.println(e);
		}
		return " ";
	}

//reject

public String appro(Register robj)
{
	try {
		
		String id= robj.getFid();
		con=dobj.Dbconnect();
		
		System.out.println("here");
		String query = "update request set status = '0' where id = '"+id+"'";
		ps = con.prepareStatement(query);
		//ps.setString(1, robj.getStatus());
		int i=ps.executeUpdate();
		System.out.println("here");
		if (i != 0)
		{
			return "success";

		}
	}

	catch (Exception e) 
	{
		System.out.println(e);
	}
	return " ";
}

//download

public ArrayList<Register> down() 
{
	ArrayList<Register> viewL = new ArrayList<Register>();
	try 
	{
		query = "select id,name,description,image from request where status='1'";
		con = dobj.Dbconnect();
		st = con.createStatement();
		rs = st.executeQuery(query);

		while (rs.next())
		{
			Register robj=new Register();
			robj.setFid(rs.getString("id"));
			robj.setImgname(rs.getString("name"));
			robj.setDes(rs.getString("description"));
			robj.setImgname(rs.getString("image"));
			viewL.add(robj);
		}
	}
	catch (Exception e) 
	{
		System.out.println(e);
	}
		return viewL;
	}
}




