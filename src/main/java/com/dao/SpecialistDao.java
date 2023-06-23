package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.ArrayList;

import com.entity.Specalist;

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
public List<Specalist>getAllSpecialist(){
	List<Specalist> list=new ArrayList<Specalist>();
	Specalist s=null;
	try {
		String sql="select* from specialist";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			s=new Specalist();
			s.setId(rs.getInt(1));
			s.setSpecialistName(rs.getString(2));
			list.add(s);
		}
		
	} catch (Exception e) {
		// TODO: handle exception
		e.printStackTrace();
	}
	return list;
	
	
}

}
