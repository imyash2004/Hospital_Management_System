package com.doctor.servelet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.dao.UserDao;
import com.db.DbConnect;
import com.entity.Doctor;
import com.entity.User;
@WebServlet("/doctorLogin")
public class DoctorLogin extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		
		HttpSession session=req.getSession();
		DoctorDao dao=new DoctorDao(DbConnect.getCon());
		Doctor doctor=dao.login(email, password);
		
		if(doctor!=null) {
			System.out.println("ubrcul l");

			session.setAttribute(  "doctorObj", doctor );
			resp.sendRedirect("doctor/index.jsp");
			System.out.println("ubrcul l");

			
		}
		else {
			//System.out.println("ubrcul l");

			session.setAttribute(  "error", "invalid email && password");
			resp.sendRedirect("doctor_login.jsp");
			//System.out.println("ubrcul l");

		} 
		//System.out.println(doctor.getDob());
	}

}
