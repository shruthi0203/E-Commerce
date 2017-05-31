package com.niit.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.dao.ContractDao;

@WebServlet("/DeleteContractServlet")
public class DeleteContractServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DeleteContractServlet() {
		super();

	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		String productcode=request.getParameter("id");  
		ContractDao.delete(productcode);  
		response.sendRedirect("displaycontracts.jsp"); 
	}
	

}
