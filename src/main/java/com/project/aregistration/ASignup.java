package com.project.aregistration;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class ASignup extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ASignup() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
				response.setContentType("Text/html");
				//PrintWriter out= response.getWriter();

				String aname=request.getParameter("name");
				String aempid=request.getParameter("empid");
				String apwd=request.getParameter("pass");
				String amobile=request.getParameter("contact");
			    RequestDispatcher dispatcher=null;
				
				

				try {
					Class.forName("com.mysql.cj.jdbc.Driver");
					Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ims_db","root","password");
					PreparedStatement ps=con.prepareStatement("insert into signup_admin(aname,aempid,apwd,amobile) values(?,?,?,?)");

					ps.setString(1,aname);
					ps.setString(2,aempid);
					ps.setString(3, apwd);
					ps.setString(4, amobile);
					
					
					
					int rowCount=ps.executeUpdate();
					dispatcher=request.getRequestDispatcher("asignup.jsp");
					if(rowCount>0) {
						request.setAttribute("status","success");
					
					}
					else {
						request.setAttribute("status","failed");
						
					}
					dispatcher.forward(request, response);
					
				}
				
				catch(Exception e) {
		System.out.println(e);	}
		}

	}


