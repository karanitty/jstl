package com.ibsplc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class WelcomeServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//request processing code
		resp.setContentType("text/html");
		
		//get outputstream of servlet.
		PrintWriter pw = resp.getWriter();
		pw.println("<h2>Welcome to servlet</h2>");
		pw.close();
	}
	
	

}
