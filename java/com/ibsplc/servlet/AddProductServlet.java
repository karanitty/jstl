package com.ibsplc.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ibsplc.jdbc.dao.Product;
import com.ibsplc.jdbc.dao.ProductDAO;
import com.ibsplc.jdbc.dao.ProductDAOImpl;

@SuppressWarnings("serial")
public class AddProductServlet extends HttpServlet{


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		resp.setContentType("text/html");
		PrintWriter pw = resp.getWriter();
		
		ProductDAO productdao = new ProductDAOImpl();
		
		int productCode = Integer.parseInt(req.getParameter("productCode"));
		String productName = req.getParameter("productName");
		double unitPrice = Double.parseDouble(req.getParameter("unitPrice"));
		int quantity = Integer.parseInt(req.getParameter("quantity"));
		String category = req.getParameter("category");
		
		boolean add = productdao.addProduct(productCode, productName, unitPrice, quantity, category);
		
		RequestDispatcher rd = req.getRequestDispatcher("header.jsp");
		rd.include(req, resp);
		
		if(add) 
			pw.println("<h2>Product added succesfully</h2>");
		else 
			pw.println("<h2>Error while adding product</h2>");
		
		pw.close();
	}
}
