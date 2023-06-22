package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class SpecialistDao {
private Connection con;

public SpecialistDao(Connection con) {
	super();
	this.con = con;
}
public boolean addSpecialist(String spec) {
	boolean f=false;
	try {
		String sql="insert into specialist(spec_name) values(?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, spec);
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
