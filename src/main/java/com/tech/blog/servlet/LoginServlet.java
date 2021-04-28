package com.tech.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.entities.*;
/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		//out.println("hey inside the login servlets");
		
		String email = request.getParameter("user_email");
		String password = request.getParameter("user_password");
		//out.println(email+" "+password);
		UserDao dao = new UserDao(ConnectionProvider.getConnection());
		User user = dao.getUserByEmailAndPassword(email, password);
		if(user!=null)
		{
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			session.setAttribute("password", password);
			session.setAttribute("currentUser", user);
			response.sendRedirect("profile.jsp");
		}
		else
		{
			//out.println("Oops error occurred");
			Message msg = new Message("Invalid Details, Try valid user", "Error", "alert-danger");
			HttpSession s = request.getSession();
			s.setAttribute("msg", msg);
			response.sendRedirect("login_page.jsp");
			
		}
		
		
		
	}

}
