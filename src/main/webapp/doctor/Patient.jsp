<%@page import="com.entity.Appointment"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.UserDao"%>
<%@page import="com.db.DbConnect"%>
<%@page import="com.dao.AppointmentDao"%>
<%@page import="com.entity.Doctor"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@page
	isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<c:if test="${empty doctorObj }">
		<c:redirect url="../doctor_login.jsp"></c:redirect>

	</c:if>

	<%@include file="navbar.jsp"%>
	<div class="container p-3">
		<div class="row">
			<div class="col-md-12">



				<div class="card paint-card">
					<div class="card body">
						<p class="fs-3 text-center">Patient Details</p>
						<c:if test="${not empty sucMsg }">
							<p class="text-center text-success fs-3">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>



						<c:if test="${not empty error }">
							<p class="text-center text-danger fs-5">${error}</p>
							<c:remove var="error" scope="session" />
						</c:if>

						<table class="table">

							<thead>

								<tr>

									<th scope="col">Full Name</th>
									<th scope="col">Gender</th>
									<th scope="col">Age</th>
									<th scope="col">Appoint Date</th>
									<th scope="col">Email</th>
									<th scope="col">mob No</th>
									<th scope="col">Disease</th>


									<th scope="col">Status</th>
									<th scope="col">Action</th>



								</tr>

							</thead>
							<tbody>
							
							<% 
							Doctor d=(Doctor)session.getAttribute("doctorObj");
							AppointmentDao dao=new AppointmentDao(DbConnect.getCon());
							//UserDao dao2=new UserDao(DbConnect.getCon());
							List<Appointment> list=dao.getAllApointmentByDoctor(d.getId());
							for(Appointment ap:list){%>
								<tr>
							
							<th><%=ap.getFullName() %></th>
							<td><%=ap.getGender() %></td>
							<td><%=ap.getAge() %></td>
							<td><%=ap.getAppoinDate() %></td>
							
							<td><%=ap.getEmail() %></td>
							<td><%=ap.getPhoneNo() %></td>
							<td><%=ap.getDisease() %></td>
							
							<td><%=ap.getStatus() %></td>
							
							<td>
							<% 
							if("Pending".equals(ap.getStatus())){%>
							<a href="comment.jsp?id=<%=ap.getId() %>" class="btn btn-success btn-sm">
							
							Comment</a><%}else{ %>
							<a href="#" class="btn btn-success btn-sm disabled">Comment</a>
							<% }
							%>
							
							</tr>
							<% }

							%> 
							




							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>