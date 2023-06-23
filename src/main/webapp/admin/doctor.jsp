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
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Doctor</p>
						<c:if test="${not empty sucMsg }">
							<div class="text-center text-success fs-3" role="alert">${sucMsg}</div>
							<c:remove var="sucMsg" scope="session" />
						</c:if>



						<c:if test="${not empty error }">
							<p class="text-center text-danger fs-3">${error}</p>
							<c:remove var="error" scope="session" />
						</c:if>
						<form action="add_doctor" method="post">
							<div class="mb-2">
								<label class="form-label">Full Name</label><input type="text"
									required name="full name" class="form-control">

							</div>
							<div class="mb-3">
								<label class="form-label">DOB</label><input type="date" required
									name="dob" class="form-control">

							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label><input
									type="text" required name="quali" class="form-control">

							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label><select required
									name="spec" class="form-control">
									<option>--select--</option>
									<%SpecialistDao dao=new SpecialistDao(DbConnect.getCon());
									List<Specalist> l=dao.getAllSpecialist();
									for(Specalist s:l){%>
										<option><%=s.getSpecialistName() %></option>
									<%}
									%>
									
								</select>

							</div>
							<div class="mb-3">
								<label class="form-label">Email</label><input type="text"
									required name="email" class="form-control">

							</div>
							<div class="mb-3">
								<label class="form-label">Mob No.</label><input type="text"
									required name="mobno" class="form-control">

							</div>
							<div class=" mb-3">
								<label class="form-label">Password</label><input type="password"
									required name="password" class="form-control">

							</div>
							
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
				</div>
			</div>

			<div class="col-md-8">
				<div class="card paint-card">
					<div class="card-body">
						<p class="fs-3 text-center">Doctor Details</p>
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Full Name</th>
									<th scope="col">DOB</th>
									<th scope="col">Qualification</th>
									<th scope="col">Specialist</th>
									<th scope="col">Email</th>
									<th scope="col">Mob No</th>
								</tr>
							</thead>
						</table>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>