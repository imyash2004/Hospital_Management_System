<%@page import="com.entity.Specalist"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DbConnect"%>
<%@page import="com.dao.SpecialistDao"%>
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
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<c:if test="${empty doctorObj }">
<c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>
<%@include file="navbar.jsp" %>


<div class="container p-4">
		<div class="row">
			<div class="col-md-4 ">
				<div class="card paint-card">
				
					<p class="text-center fs-3">change password</p>
					<div class="card-body">
					<c:if test="${not empty sucMsg }">
							<p class="text-center text-success fs-4">${sucMsg}</p>
							<c:remove var="sucMsg" scope="session" />
						</c:if>



						<c:if test="${not empty error }">
							<p class="text-center text-danger fs-4">${error}</p>
							<c:remove var="error" scope="session" />
						</c:if>
						<form action="../doctCP" method="post">
							<div class="mb-3">
								<label>Enter new password</label><input type="text"
									name="newpass" class="form-control" required>
							</div>
							<div class="mb-3">
								<label>Enter old password</label><input type="text"
									name="oldpass" class="form-control" required>
							</div>
							<input type="hidden" value="${doctorObj.id }" name="uid">
							<button class="btn btn-success col-md-12">Change
								Password</button>

						</form>
					</div>

				</div>
			</div>
			<div class="col-md-8">
			<div class="card paint-card">
			<p class="text-center fs-3">Edit Profile</p>
			<div class="card-body">
			
			<form action="../editdoc" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label><input type="text"
									required name="full_name" class="form-control" value="${doctorObj.fullName }">

							</div>
							<div class="mb-3">
								<label class="form-label">DOB</label><input type="date" required
									name="dob" class="form-control" value="${doctorObj.dob }">

							</div>
							<div class="mb-3">
								<label class="form-label">Qualification</label><input
									type="text" required name="qualification" class="form-control" value="${doctorObj.qualification }">

							</div>
							<div class="mb-3">
								<label class="form-label">Specialist</label><select required
									name="specialist" class="form-control">
									<option>${doctorObj.specialist}</option>
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
									required name="email" class="form-control" value="${doctorObj.email }">

							</div>
							<div class="mb-3">
								<label class="form-label">Mob No.</label><input type="text"
									required name="mobno" class="form-control" value="${doctorObj.mobNo }">

							</div>
							
							<input type="hidden" value="${doctorObj.id }" name="uid">
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>
			
			</div>
			</div>
			</div>
		</div>
	</div>


</body>
</html>