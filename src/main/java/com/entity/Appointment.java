package com.entity;

public class Appointment {
	private int id;
	private String fullName;
	private int userId;
	private String gender;
	private String age;
	private String email;
	private String appoinDate;
	private String phoneNo;
	private String disease;
	private int doctorId;
	private String address;
	private String status;
	public Appointment() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Appointment(String fullName, int userId, String gender, String age, String email, String appoinDate,
			String phoneNo, String disease, int doctorId, String address, String status) {
		super();
		this.fullName = fullName;
		this.userId = userId;
		this.gender = gender;
		this.age = age;
		this.email = email;
		this.appoinDate = appoinDate;
		this.phoneNo = phoneNo;
		this.disease = disease;
		this.doctorId = doctorId;
		this.address = address;
		this.status = status;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAppoinDate() {
		return appoinDate;
	}
	public void setAppoinDate(String appoinDate) {
		this.appoinDate = appoinDate;
	}
	public String getPhoneNo() {
		return phoneNo;
	}
	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public int getDoctorId() {
		return doctorId;
	}
	public void setDoctorId(int doctorId) {
		this.doctorId = doctorId;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
