package com.niit.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.dao.CaseDao;
import com.niit.model.Case;


@WebServlet("/CaseServlet")
public class CaseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	
       
   
    public CaseServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			 PrintWriter out = response.getWriter();
			 String Username = request.getParameter("Username");
	         String Email = request.getParameter("Email");
	         String Message = request.getParameter("Message");
	         
	      

	         Case c = new Case();
	         c.setUsername(Username);
	         c.setEmail(Email);
	         c.setMessage(Message);
	         
	        
	         
	        

	         int status = CaseDao.save(c);
	         if (status > 0) {
	           
	             request.getRequestDispatcher("case.jsp").include(request, response);
	         } else {
	             out.println("Sorry! unable to save record");
	         }
		}
		
		
	}

