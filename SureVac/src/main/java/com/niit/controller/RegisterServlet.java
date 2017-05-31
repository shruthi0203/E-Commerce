package com.niit.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.niit.dao.RegisterDao;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public RegisterServlet() {
		super();
		// TODO Auto-generated constructor stub
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try{
			String Fname, Lname, Email, UserName, Password;
			Fname = (String) request.getParameter("Fname");
			Lname = (String) request.getParameter("Lname");
			Email = (String) request.getParameter("Email");
			UserName = (String) request.getParameter("UserName");
			Password = (String) request.getParameter("Password");

			boolean regsucc= RegisterDao.insert(Fname,Lname,Email,UserName,Password);
			if (regsucc) {
				System.out.println("inserted");
				RequestDispatcher rs = request.getRequestDispatcher("login.jsp");
				rs.forward(request, response);
			} else {
				System.out.println(" not inserted");
				RequestDispatcher rs = request.getRequestDispatcher("register.jsp");
				rs.forward(request, response);
			}
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();

		}
		catch(ServletException ex){
			ex.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}


