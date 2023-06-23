package com.dao;

import java.sql.Connection;

import com.entity.Doctor;

public class DoctorDao {
private Connection dao;

public DoctorDao(Connection dao) {
	super();
	this.dao = dao;
}
public boolean registerDoctor(Doctor d) {
	boolean f=false;
	try {
		String sql="insert into doctor()";
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
}
 
}
