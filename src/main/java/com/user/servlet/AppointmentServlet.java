package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDao;
import com.db.DbConnect;
import com.entity.Appointment;
@WebServlet("/add_appoint")
public class AppointmentServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String fullName=req.getParameter("fullName");
		int userId=Integer.parseInt(req.getParameter("userId"));
		String gender=req.getParameter("gender");
		String age=req.getParameter("age");
		String email=req.getParameter("email");
		String date=req.getParameter("appoint_date");
		String phoneNo=req.getParameter("phno");
		String disease=req.getParameter("diseases");
		int doctorId=Integer.parseInt(req.getParameter("doctor_id"));
		String address=req.getParameter("address");
		String status=req.getParameter("status");
		HttpSession session=req.getSession();
		AppointmentDao dao=new AppointmentDao(DbConnect.getCon());
		Appointment ap=new Appointment(fullName, userId, gender, age, email, date, phoneNo, disease, doctorId, address, "Pending");
		if(dao.addApointment(ap)) {
			session.setAttribute("sucMsg", "Appointment Successfully");
			resp.sendRedirect("Appointment.jsp");
		}
		else {
			session.setAttribute("error", "something went wrong on server");
			resp.sendRedirect("Appointment.jsp");
		}
	}
	
}
