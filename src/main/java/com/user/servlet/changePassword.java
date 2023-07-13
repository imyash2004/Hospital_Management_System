package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDao;
import com.db.DbConnect;
@WebServlet("/userchange")
public class changePassword extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int uid=Integer.parseInt(req.getParameter("uid"));
		String oldpass=req.getParameter("oldpass");
		String newpass=req.getParameter("newpass");
		UserDao dao=new UserDao(DbConnect.getCon());
		HttpSession session=req.getSession();
		if(dao.cehckPass(uid, oldpass)) {
			if(dao.changePass(uid, newpass)) {
				resp.sendRedirect("change_pass.jsp");
				session.setAttribute("sucMsg", "Appointment Successfully");

			}
			else {
				session.setAttribute("error","something wrong ");
				resp.sendRedirect("change_pass.jsp");
			}
		}
		else {
			session.setAttribute("error","invalid passwprd");
			resp.sendRedirect("change_pass.jsp");
		}
	}



}
