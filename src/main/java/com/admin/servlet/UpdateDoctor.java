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
@WebServlet("/updateDoctor")
public class UpdateDoctor extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			System.out.println("byrctunyn");
			int id=Integer.parseInt(req.getParameter("id"));
			String fullName=req.getParameter("full_name");
			System.out.println("byrctunyn");
			String dob=req.getParameter("dob");
			System.out.println("byrctunyn");
			String qualification=req.getParameter("qualification");
			System.out.println("byrctunyn");
			String specialist=req.getParameter("specialist");
			System.out.println("byrctunyn");
			String email=req.getParameter("email");
			String mobno=req.getParameter("mobno");
			String password=req.getParameter("password");
			
			Doctor d=new Doctor(id, fullName,dob,qualification,specialist,email,mobno,password);
			System.out.println("byrctunyn");
			DoctorDao dao=new DoctorDao(DbConnect.getCon());
			boolean x=dao.updateDoctor(d);
			HttpSession session=req.getSession();
			if(x) {
				session.setAttribute("sucMsg", "Doctor details Updated Successfully");
				resp.sendRedirect("admin/view_doctor.jsp");
			}
			else {
				session.setAttribute("error", "Something went wrong");
				resp.sendRedirect("admin/viw_doctor.jsp");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	

}
