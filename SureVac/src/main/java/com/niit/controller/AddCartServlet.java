package com.niit.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.dao.CartDao;
import com.niit.dao.LoginDao;
import com.niit.dao.ProductDao;
import com.niit.model.Cart1;
import com.niit.model.Product;


@WebServlet("/AddCartServlet")
public class AddCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AddCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String name,price;

		name = request.getParameter("name");
		price = request.getParameter("price");
		
		 Cart1 c1 = new Cart1();
         c1.setName(name);
         c1.setPrice(price);
         
         int status = CartDao.save(c1);
         if (status > 0) {
           
             request.getRequestDispatcher("cart.jsp").include(request, response);
         } else {
             out.println("Sorry! unable to save record");
         }
         
		
	}

}
