package com.niit.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javax.servlet.http.HttpSession;

import com.niit.dao.LoginDao;
import com.niit.model.Login;
import com.niit.model.Product;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		String UserName,Password;

		UserName = request.getParameter("UserName");
		Password = request.getParameter("Password");
		System.out.println("checking1");

		Login l = new Login();
		l.setUserName(UserName);
       l.setPassword(Password);
       
		HttpSession session;

		if (LoginDao.checkUser(UserName, Password)) {
			 session = request.getSession();
	            session.setAttribute("name", UserName);
			System.out.println("checking");

			session = request.getSession();
			session.setAttribute("name", UserName);
			RequestDispatcher rs = request.getRequestDispatcher("home.jsp");
			rs.forward(request, response);

		} else {
			RequestDispatcher rs = request.getRequestDispatcher("loginerror.jsp");
			rs.forward(request, response);
		}



	}

}
