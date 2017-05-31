package com.niit.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.dao.ProductDao;
import com.niit.model.Product;
@WebServlet("/UpdateProductServlet")
public class UpdateProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public UpdateProductServlet() {
		super();
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String productcode = request.getParameter("pcode");
        String productname = request.getParameter("pname");
        String productprice = request.getParameter("pprice");
        String productdesc1 = request.getParameter("pdesc1");
        String productdesc2 = request.getParameter("pdesc2");
        String productdesc3 = request.getParameter("pdesc3");
         
        Product p = new Product();
        p.setProductcode(productcode);
        p.setProductname(productname);
        p.setProductprice(productprice);
        p.setProductdesc1(productdesc1);
        p.setProductdesc2(productdesc2);
        p.setProductdesc3(productdesc3);
         
          int status = ProductDao.update(p);
         if (status > 0) {
             request.getRequestDispatcher("displaymovies.jsp").include(request, response);
         } else {
             out.println("Sorry! unable to update record");
         }
     }
	}


