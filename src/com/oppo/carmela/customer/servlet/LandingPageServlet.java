package com.oppo.carmela.customer.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oppo.carmela.admin.dao.entity.CarNewsDao;
import com.oppo.carmela.admin.dao.entity.CarSliderDao;
import com.oppo.carmela.admin.dao.entity.OurClubDao;
import com.oppo.carmela.customer.dao.entity.CarNews;
import com.oppo.carmela.customer.dao.entity.CarSlider;
import com.oppo.carmela.customer.dao.entity.OurClub;

/**
 * Servlet implementation class LandingPageServlet
 */
@WebServlet("/home")
public class LandingPageServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 List<OurClub> clubs = OurClubDao.findClubs();
		 request.setAttribute("clubs", clubs);
		 
		 CarNews carNews=CarNewsDao.findCarNews();
		 request.setAttribute("carNews", carNews);
		 
		 List<CarSlider> sliders = CarSliderDao.findSlider();
		 request.setAttribute("slider", sliders);
		 
		RequestDispatcher dispatcher=request.getRequestDispatcher("home.jsp");
		dispatcher.forward(request, response);
	}

}
