package com.oppo.carmela.customer.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oppo.carmela.admin.dao.entity.CarGalleryDao;
import com.oppo.carmela.customer.dao.entity.CarGallery;

@WebServlet("/GalleryPage")
public class GalleryPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		List<CarGallery> gallery = CarGalleryDao.findCarGallery();
		
		request.setAttribute("galleryDetails", gallery);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("gallery.jsp");
		dispatcher.forward(request, response);
	}
}
