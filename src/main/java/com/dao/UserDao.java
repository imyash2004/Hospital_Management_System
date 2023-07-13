package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.swing.Spring;

import com.entity.User;
import com.mysql.cj.protocol.Resultset;

public class UserDao {
	private Connection con;

	public UserDao(Connection con) {
		super();
		this.con=con;
		// TODO Auto-generated constructor stub
	}
	public boolean register(User u) {
		boolean f =false;
		try {
			String sql="insert into user_dtls(full_name,email,password) values(?,?,?)";
			
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, u.getFullName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			
			
			int i=ps.executeUpdate(); 
			if(i==1) {
				f=true; 
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public User login(String em,String ps) {
		User u=null;
		try {
			String sql="select * from user_dtls where email=? and password=?";
			PreparedStatement ps1=con.prepareStatement(sql);
			ps1.setString(1, em);
			ps1.setString(2, ps);
			ResultSet rs=ps1.executeQuery();
			while(rs.next()) {
				u=new User();
				u.setId(rs.getInt(1));
				u.setFullName(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setPassword(rs.getString(4));
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return u;
	}
	public List<User> getAllUsers(){
		User u=null;
		List<User>list=new ArrayList<User>();
		try {
			String sql="select * from user_dtls";
			PreparedStatement ps=con.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				u=new User();
				u.setId(rs.getInt(1));
				u.setFullName(rs.getString(2));
				u.setEmail(rs.getString(3));
				u.setPassword(rs.getString(4));
				list.add(u);
				
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return list;
	}
	public boolean cehckPass(int id ,String pass) {
		boolean f=false;
		try {
			String sql="select * from user_dtls where id=? and password=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setString(2, pass);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				f=true;
			}
			
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
		
	}
	public boolean changePass(int id,String pass) {
		boolean f=false;
		try {
			String sql="update user_dtls set password=? where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, pass);
			ps.setInt(2, id);
			int i=ps.executeUpdate();
			if(i==1) {
				f=true;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return f;
	}
}
