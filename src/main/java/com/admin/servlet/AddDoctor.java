package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DbConnect;
import com.entity.Doctor;

@WebServlet("/addDoctor")
public class AddDoctor extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fullname = req.getParameter("full_name");
			String dob = req.getParameter("dob");
			String qualification = req.getParameter("qualification");
			String specialist = req.getParameter("specialist");
			String email = req.getParameter("email");
			String mobno = req.getParameter("mobno");
			String password = req.getParameter("password");
			Doctor d = new Doctor(fullname, dob, qualification, specialist, email, mobno, password);
			DoctorDao dao = new DoctorDao(DbConnect.getCon());
			boolean f = dao.registerDoctor(d);
			HttpSession session = req.getSession();
			if (f) {
				session.setAttribute("sucMsg", "Doctor Details Added Successfully");
				resp.sendRedirect("admin/doctor.jsp");
			} else {
				session.setAttribute("error", "Something went wrong");
				resp.sendRedirect("admin/doctor.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
