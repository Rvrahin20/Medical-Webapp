package Servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Bean.Register;
import Dao.Dao;
/**
 * Servlet implementation class Controller
 */
@WebServlet("/Controller")

public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Controller() {
        super();
        
    }
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
/**
 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
 */
@SuppressWarnings("unused")

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		String action=request.getParameter("action");
		
		Dao dobj=new Dao();
		HttpSession ses=request.getSession();
		
	//reg
		
		if(action.equals("reg"))
		{
			Register robj=new Register();
			robj.setOn(request.getParameter("on"));
			robj.setOname(request.getParameter("oname"));
			robj.setOpassword(request.getParameter("opassword"));
			robj.setOemail(request.getParameter("oemail"));
			
			String result=dobj.regUser(robj);
			ArrayList<Register> viewUser=dobj.viewUser();
			
			if(result.equals("success"))
			{
				ses.setAttribute("ulist", viewUser);
				request.getRequestDispatcher("Ownerlogin.jsp").forward(request, response);
			}
		}
		
						
		// User
			
		if(action.equals("ureg"))
		{
			Register robj=new Register();
			robj.setUn(request.getParameter("un"));
			robj.setUname(request.getParameter("uname"));
			robj.setUpassword(request.getParameter("upassword"));
			robj.setUemail(request.getParameter("uemail"));
			
			String result=dobj.regUser1(robj);
			ArrayList<Register> viewUser1=dobj.viewUser1();
			
			if(result.equals("success"))
			{
				ses.setAttribute("ulist", viewUser1);
				request.getRequestDispatcher("Userlogin.jsp").forward(request, response);
				}
		}
		
		
		if(action.equals("log"))
		{
			String name=request.getParameter("oname");
		    String password=request.getParameter("opassword");

			Register robj=new Register();
			robj.setOname(name);
			robj.setOpassword(password);
			String result=dobj.loginowner(robj);
			
			
			if(result.equals("success"))
			{
			ses.setAttribute("name", name); 
			request.setAttribute("password", password);			
			request.getRequestDispatcher("Homepage.jsp").forward(request, response);
		    }
		}
		
		if(action.equals("log1"))
		{
			String uname=request.getParameter("uname");
		    String upassword=request.getParameter("upassword");

			Register robj=new Register();
			robj.setUname(uname);
			robj.setUpassword(upassword);
			
			String result=dobj.loginuser(robj);
			
			
			if(result.equals("success"))
			{
			ses.setAttribute("name", uname); 
			request.setAttribute("password", upassword);			
			request.getRequestDispatcher("Homeuser.jsp").forward(request, response);
		    }
		}
		
		
		
		//userview request page
		
		if(action.equals("submit"))
		{	
			ArrayList<Register> view=dobj.viewUser1();
			ArrayList<Register> v=dobj.sub1();
				ses.setAttribute("li", view);
				ses.setAttribute("li1", v);
				request.getRequestDispatcher("Searchimage.jsp").forward(request, response);
		}
		
		
		//ownerview
		
		if(action.equals("submit1"))
		{
		ArrayList<Register> view1=dobj.view1();
		ses.setAttribute("ulist", view1);
		request.getRequestDispatcher("Viewimage.jsp").forward(request, response);
		}
		
		
		//request button
		
		if(action.equals("app"))
		{
			
			Register robj=new Register();
			robj.setUn(request.getParameter("un"));
			robj.setFid(request.getParameter("fid"));
			robj.setImgname(request.getParameter("imgname"));
			robj.setDes(request.getParameter("des"));
			robj.setImage(request.getParameter("image"));
			
			String result=dobj.req(robj);
			
			if(result.equals("success"))
			{
			request.getRequestDispatcher("1.jsp").forward(request, response);
			}
		}
		
		//approval page
		
		if(action.equals("app1"))
		{	
			    ArrayList<Register> re=dobj.req1();
				ses.setAttribute("ulist", re);
				request.getRequestDispatcher("Approval.jsp").forward(request, response);
		}
		
		
		//approval button
		
		if(action.equals("app2"))
		{
			Register robj=new Register();
			robj.setUn(request.getParameter("un"));
			robj.setFid(request.getParameter("fid"));
			robj.setImgname(request.getParameter("imgname"));
			robj.setDes(request.getParameter("des"));
			robj.setStatus(request.getParameter("status"));
			
			String result=dobj.approval(robj);
			
			if(result.equals("success"))
			{
			request.getRequestDispatcher("Homepage.jsp").forward(request, response);
			}
			
		 }
			
		//reject
		
		if(action.equals("ap"))
			{
				Register robj=new Register();
				robj.setUn(request.getParameter("un"));
				robj.setFid(request.getParameter("fid"));
				robj.setImgname(request.getParameter("imgname"));
				robj.setDes(request.getParameter("des"));
				robj.setStatus(request.getParameter("status"));
				
				String result=dobj.appro(robj);
				
				if(result.equals("success"))
				{
				request.getRequestDispatcher("Homepage.jsp").forward(request, response);
			}
			}	
		//download
				
			if(action.equals("do"))
			{	
				    ArrayList<Register> re1=dobj.down();
					ses.setAttribute("ul", re1);
					request.getRequestDispatcher("Download.jsp").forward(request, response);
			}
		
   }
}



