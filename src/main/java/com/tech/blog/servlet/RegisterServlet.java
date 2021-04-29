package com.tech.blog.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.entities.Message;
/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register_user")
public class RegisterServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String check = request.getParameter("check");
		PrintWriter out = response.getWriter();
		if(check==null)
		{
			out.println("Please agree terms and conditions.");
		}
		else {
			String name = request.getParameter("user_name");
			String email = request.getParameter("user_email");
			String password = request.getParameter("user_password");
			String gender = request.getParameter("gender");
			User user = new User(name, email, password, gender);
			UserDao userdao = new UserDao(ConnectionProvider.getConnection());
			int result = userdao.saveUser(user);
			if(result!=0)
			{
				Message msg = new Message("Registered Successfully", "success", "alert-success");
				HttpSession session = request.getSession();
				session.setAttribute("isRegistered", true);
				session.setAttribute("msg", msg);
				response.sendRedirect("register_page.jsp");
			}
			else {
				Message msg = new Message("Email id is already in use...Try another", "error", "alert-danger");
				HttpSession session = request.getSession();
				session.setAttribute("isRegistered", false);
				session.setAttribute("msg", msg);
				response.sendRedirect("register_page.jsp");
			}
				
			
		}
		
	}

}
