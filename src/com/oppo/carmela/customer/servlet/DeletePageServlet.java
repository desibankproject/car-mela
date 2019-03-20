package com.oppo.carmela.customer.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oppo.carmela.admin.dao.entity.DeleteCarDao;

/**
 * Servlet implementation class DeletePageServlet
 */
@WebServlet("/DeletePage")
public class DeletePageServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		///DeletePage?galid=100
		String glaid = request.getParameter("galid");
		int gid=Integer.parseInt(glaid);
		
	DeleteCarDao.deleteCar(gid);
		response.sendRedirect("GalleryPage");
	}

}
