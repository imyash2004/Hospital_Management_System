package com.doctor.servelet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDao;
import com.db.DbConnect;
@WebServlet("/comment")
public class UpdateStatus extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			int id=Integer.parseInt(req.getParameter("id"));
			int did=Integer.parseInt(req.getParameter("did"));
			String s=req.getParameter("comm");
			AppointmentDao dao=new AppointmentDao(DbConnect.getCon());
			boolean f=dao.updateComment(id, did, s);
			HttpSession session =req.getSession();
			
			if(f) {
				session.setAttribute("sucMsg", "comment added successfully");
				resp.sendRedirect("doctor/Patient.jsp");
			}
			else {
				session.setAttribute("error", "something went wrong ");
				resp.sendRedirect("doctor/Patient.jsp");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}

}
