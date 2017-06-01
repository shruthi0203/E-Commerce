package com.niit.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.dao.CartDao;
import com.niit.dao.ProductDao;

@WebServlet("/DeleteCartServlet")
public class DeleteCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public DeleteCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String productname=request.getParameter("id");  
		 
			
		int status = CartDao.delete(productname); 
		if (status > 0) {

			request.getRequestDispatcher("cart.jsp").include(request, response);
		} else {
			out.println("Sorry! unable to delete product");
		}
	}

}
