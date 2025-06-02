<%@page import="com.entity.Doctor"%>
<%@page import="com.dao.DoctorDao"%>
<%@page import="javax.print.Doc"%>
<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DbConnect"%>
<%@page import="com.dao.SpecialistDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container-fluid p-3">
		<div class="row">
			
			<div class="col-md-12">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Doctor Details</p>
						<c:if test="${not empty sucMsg }">
							<div class="text-center text-success fs-3" role="alert">${sucMsg}</div>
							<c:remove var="sucMsg" scope="session" />
						</c:if>



						<c:if test="${not empty error }">
							<p class="text-center text-danger fs-3">${error}</p>
							<c:remove var="error" scope="session" />
						</c:if>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">DOB</th>
									<th scope="col">Qualification</th>
									<th scope="col">Specialist</th>
									<th scope="col">Email</th>
									<th scope="col">Mob No</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
							
							<%
							DoctorDao dao2=new DoctorDao(DbConnect.getCon());
							List<Doctor> list=dao2.getAllDoctor();
							for(Doctor d:list){ %>
							<tr>
							<td><%=d.getFullName() %></td>
							<td><%=d.getDob() %></td>
							<td><%=d.getQualification() %></td>
							<td><%=d.getSpecialist() %></td>
							<td><%=d.getEmail() %></td>
							<td><%=d.getMobNo() %></td>
							<td>
							<a href="edit_doctor.jsp?id=<%= d.getId() %>" class="btn btn-sm btn-primary">Edit</a>
							<a href="../deletedoctor?id=<%=d.getId() %>" class="btn btn-sm btn-danger">Delete</a>
							
							</td>
							
							</tr>
							<%}
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