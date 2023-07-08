package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Appointment;
import com.mysql.cj.protocol.Resultset;

public class AppointmentDao {
	private Connection con;

	public AppointmentDao(Connection con) {
		super();
		this.con = con;
	}
	public boolean addApointment(Appointment ap) {
		
		boolean f=false;
		try {
			String sql="insert into appointment(fullname,userid,gender,age,email,appoindate,phoneno,disease,doctorid,address,status) values(?,?,?,?,?,?,?,?,?,?,?)";
			
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1, ap.getFullName());
			ps.setInt(2, ap.getUserId());
			ps.setString(3, ap.getGender());
			ps.setString(4, ap.getAge());
			ps.setString(5, ap.getEmail());
			ps.setString(6, ap.getAppoinDate());
			ps.setString(7, ap.getPhoneNo());
			ps.setString(8, ap.getDisease());
			ps.setInt(9, ap.getDoctorId());
			ps.setString(10,ap.getAddress());
			ps.setString(11, ap.getStatus());
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
	
	public List<Appointment> getAllApointment(int userId){
		List<Appointment> list=new ArrayList<Appointment>();
		Appointment ap=null;
		try {
			String sql="select * from Appointment where userid=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setInt(1, userId);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next()) {
				ap=new Appointment();
				ap.setId(rs.getInt(1));
				ap.setFullName(rs.getString(2));
				ap.setUserId(rs.getInt(3));
				ap.setGender(rs.getString(4));
				ap.setAge(rs.getString(5));
				ap.setEmail(rs.getString(6));
				ap.setAppoinDate(rs.getString(7));
				ap.setPhoneNo(rs.getString(8));
				ap.setDisease(rs.getString(9));
				ap.setDoctorId(rs.getInt(10));
				ap.setAddress(rs.getString(11));
				ap.setStatus(rs.getString(12));
				list.add(ap);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
