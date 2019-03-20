package com.oppo.carmela.customer.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.oppo.carmela.admin.dao.entity.AddNewCarDao;
import com.oppo.carmela.customer.dao.entity.AddNewCar;

@WebServlet("/AddNewCar")
public class AddNewCarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String title = request.getParameter("title");
		String subtitle = request.getParameter("subtitle");
		String yearStr = request.getParameter("year");
		int yearInt = Integer.parseInt(yearStr);
		String description = request.getParameter("description");
		String image = request.getParameter("image");
		
		AddNewCar car = new AddNewCar(title,subtitle,yearInt,description,image);
		AddNewCarDao.addCar(car);
		response.sendRedirect("GalleryPage");
	}

}
