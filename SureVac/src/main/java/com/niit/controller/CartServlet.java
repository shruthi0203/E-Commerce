package com.niit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.niit.model.Cart;

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	Cart shoppingCart;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		processRequest(request, response);

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		processRequest(request, response);

	}

	public void processRequest(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setContentType("text/html");

		HttpSession session = request.getSession();

		List<Cart> shoppingCart;
		shoppingCart = (List<Cart>) session.getAttribute("cart");

		if (shoppingCart == null) {
			shoppingCart = new ArrayList<Cart>();
			session.setAttribute("cart", shoppingCart);
		}
		String name = request.getParameter("name");
		Integer price = Integer.parseInt(request.getParameter("price"));

		System.out.println(name + "" + price);
		
		Cart cart=new Cart();
		cart.addToCart(name, price);
//		shoppingCart.addToCart(name, price);
		session.setAttribute("cart", shoppingCart);
		
		System.out.println(cart);

		

		try (PrintWriter out = response.getWriter()) {
			/* TODO output your page here. You may use following sample code. */
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>result</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h1>Items sucessfully added to cart </h1>");
			// out.println("<form action='index.html'>Add more pizza item<input
			// type='submit' value='go'></form>");
			out.println("<hr>");
			out.println("<h2>Cart</h2>");
			/*
			 * HashMap<String, Integer> items = shoppingCart.getCartItems();
			 * out.println("<table border='1px'>");
			 * 
			 * for (String key : items.keySet()) { out.println("<tr><td>" + key
			 * + " - </td><td>" + "$" + items.get(key) + "</td></tr>"); }
			 * 
			 * 
			 * 
			 * 
			 * 
			 */

Iterator<Cart> items= shoppingCart.iterator();
while(items.hasNext())
{
	System.out.println(items.next());
}
			out.println("<table>");
			out.println("</body>");
			out.println("</html>");

		}

	}
}
