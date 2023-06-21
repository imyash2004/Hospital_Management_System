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
import com.entity.User;

@WebServlet("/user")
public class UserRegister extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String fullName=req.getParameter("fullname");
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			
			
			
			User u=new User(fullName,email,password);
			
			
			
			
			UserDao dao=new UserDao(DbConnect.getCon());
			HttpSession session=req.getSession();
			
			boolean f=dao.register(u);
			if(f) {
				session.setAttribute("sucMsg", "Registered Successfully");
				resp.sendRedirect("sinup.jsp");
				System.out.println("Data Inserted Successfully");
			}else {
				session.setAttribute("error", "something wrong on server");
				resp.sendRedirect("sinup.jsp");
				System.out.println("something wrong on server");
			}
			
			
			
		} catch (Exception e) {
			e.printStackTrace(); 
		}
	}

}
