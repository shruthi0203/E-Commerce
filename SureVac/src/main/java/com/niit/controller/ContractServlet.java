package com.niit.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.dao.ContractDao;
import com.niit.dao.ProductDao;
import com.niit.model.Contract;
import com.niit.model.Product;

/**
 * Servlet implementation class ContractServlet
 */
@WebServlet("/ContractServlet")
public class ContractServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ContractServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		String productcode = request.getParameter("pcode");
		String productname = request.getParameter("pname");
		String contractdesc= request.getParameter("cdesc");
		String startdate = request.getParameter("startdate");
		String warrantyprd = request.getParameter("wrntyprd");
		
		Contract c = new Contract();
		c.setProductcode(productcode);
		c.setProductname(productname);
		c.setDescription(contractdesc);
		c.setStartdate(startdate);
		c.setWarrantyprd(warrantyprd);
		

		int status = ContractDao.save(c);
		if (status > 0) {

			request.getRequestDispatcher("displaycontracts.jsp").include(request, response);
		} else {
			out.println("Sorry! unable to save record");
		}
	}
}

