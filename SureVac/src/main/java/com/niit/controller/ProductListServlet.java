package com.niit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.dao.ProductDao;
import com.niit.model.Product;

/**
 * Servlet implementation class ProductListServlet
 */
@WebServlet("/ProductListServlet")
public class ProductListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		generateView(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		generateView(request,response);
	}
	
	public void generateView(HttpServletRequest request,HttpServletResponse response) throws IOException
	{ 
		
				ProductDao prodDao=new ProductDao();
				List<Product> product=prodDao.getAllProduct();
				
				PrintWriter out=response.getWriter();
				out.println("<ul>");
				Iterator i=product.iterator();
				while(i.hasNext())
				{
					out.println("<li>" + i.next()+"<li>");
				}
				out.println("</ul>");
		
		
		
		
		
		
	}

}
