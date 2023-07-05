<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%@page
	isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Appointment</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 8px 0 rgba(0, 0, 0, 0.3);
}

.backImg {
	background: linear-gradient(rgba(0, 0, 0, .4), rgba(0, 0, 0, .4)),
		url("img/img3.jpeg") height:20vh;
	width: 100%;
	background-size: cover;
	background-repeat: no repeat;
}
</style>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<div class="container-fluid backImg p-5">
		<p class="text-center fs-2 text-white">
	</div>


	<div class="container p-3">
		<div class="row">
			<div class="col-md-6 p-5">
				<img alt="" src="img/i3.jpeg">
			</div>

			<div class="col-md-6">
				<div class="card paint-card">
					<div class="card body">
						<p class="text-center fs-3">User Appointment</p>
						<c:if test="${not empty sucMsg }">
							<p class="text-center text-success fs-4">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>



						<c:if test="${not empty error }">
							<p class="text-center text-danger fs-4">${error}</p>
							<c:remove var="error" scope="session" />
						</c:if>
						<form class="row g-3" action="add_appoint" method="post">
							<input type="hidden" name="user_id" value="${userObj.id }">

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Full name</label><input
									required type="text" class="form-control" name="fullname">


							</div>

							<div class="col-md-6">
								<label>Gender</label><select class="form-control" name="gender"
									required>

									<option value="male">Male</option>
									<option value="female">Female</option>
								</select>


							</div>
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Age</label><input
									required type="number" class="form-control" name="age">


							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Appointment
									Date</label><input required type="date" class="form-control"
									name="appoint_date">


							</div>
							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Email</label><input
									required type="email" class="form-control" name="email">


							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Phone no</label><input
									maxlength="10" required type="number" class="form-control"
									name="phno">


							</div>

							<div class="col-md-6">
								<label for="inputEmail4" class="form-label">Diseases</label><input
									required type="text" class="form-control" name="diseases">


							</div>

							<div class="col-md-6">
								<label for="inputPassword4" class="form-label">Doctor</label><select
									required class="form-control" name="doct">
									<option value="">...select...</option>
									<option value="">Doctor Name</option>


								</select>


							</div>

							<div class="col-md-6">
								<label>Full Address</label>
								<textarea rows="3" cols="" required name="address"
									class="form-control"></textarea>


							</div>




						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>