package com.project.aregistration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ALogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ALogin() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String aempid=request.getParameter("username");
	       String apwd=request.getParameter("password");
	       HttpSession session =request.getSession();
	       RequestDispatcher dispatcher=null;
	       
	   			try {
					Class.forName("com.mysql.cj.jdbc.Driver");
				
	   			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ims_db?useSSL=false","root","password");
	   			PreparedStatement ps=con.prepareStatement("select * from signup_admin where aempid=? and apwd=?");
	   			ps.setString(1,aempid);
	   			ps.setString(2, apwd);    
	   			ResultSet rs=ps.executeQuery();
	   			if(rs.next()) {
	   			session.setAttribute("name", rs.getString("aname"));
	   			session.setAttribute("empid", rs.getString("aempid"));
	   			dispatcher=request.getRequestDispatcher("amainpage.jsp");
	   			}
	    	   
	       
	       else {
	    	   request.setAttribute("status", "failed");
	  			dispatcher=request.getRequestDispatcher("alogin.jsp");

	       }
	       dispatcher.forward(request, response);
	      
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
