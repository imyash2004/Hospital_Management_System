<%@page import="com.entity.User"%>
<%@page import="com.entity.Doctor"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Appointment"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="com.db.DbConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>

	<%@include file="component/navbar.jsp"%>
	<div class=container-fluid backImgp-5">

		<p class="text-center fs-2 text-white"></p>
	</div>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-9">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-4 fw-bold text-center text-success">Appointment
							List</p>
						<table class="table">

							<thead>

								<tr>

									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appoint Date</th>
									<th scope="col">Disease</th>
									<th scope="col">Doctor Name</th>
									<th scope="col">Status</th>
									</tr>
									
									</thead>
									
									
									<tbody>
									<%
									User u=(User)session.getAttribute("userObj");
									AppointmentDao dao=new AppointmentDao(DbConnect.getCon());
									DoctorDao d=new DoctorDao(DbConnect.getCon());
									List<Appointment> list=dao.getAllApointment(u.getId());
									
									for(Appointment ap:list){
										
										Doctor d1=d.getDoctorById(ap.getDoctorId());
									
									%>
									<tr>
									<th><%=ap.getFullName() %></th>
									<td><%=ap.getGender() %></td>
									<td><%=ap.getAge() %></td>
									<td><%=ap.getAppoinDate() %></td>
									<td><%=ap.getDisease() %></td>
									<td><%=d1.getFullName() %></td>
									<td><%if ("Pending".equals(ap.getStatus())){
										
										%><a href="#" class="btn btn-sm btn-warning">Pending</a><% 
									}else{%><%=ap.getStatus() %>
												<%} %>
									</td>
									
									
									
									
									
									</tr>
									
									<%
									
									}
									
									%>
									
									</tbody>
						</table>
					</div>
				</div>
			</div>
			
			<div class="col-md-3 p-3">
			<img alt=" " src="img/img1.jpeg"width="auto" height="500">
			</div>
			
		</div>


	</div>

</body>
</html>