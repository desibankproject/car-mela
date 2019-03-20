package com.oppo.carmela.customer.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oppo.carmela.admin.dao.entity.LoginDao;

@WebServlet("/LoginPage")
public class LoginPageServlet extends HttpServlet {
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String email = LoginDao.validateUser(username, password);
		
		if(email.length() > 0) {
			HttpSession session = request.getSession();
			
			session.setAttribute("username", username);
			session.setAttribute("email", email);
			//session.setAttribute("role", "adim");
			response.sendRedirect("GalleryPage");
			
		}
		else {
			request.setAttribute("message", "Your login failed");
			RequestDispatcher dispatcher = request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
