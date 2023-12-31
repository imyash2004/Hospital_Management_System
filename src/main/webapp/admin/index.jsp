<%@page import="com.db.DbConnect"%>
<%@page import="com.dao.DoctorDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
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
	<c:if test="${empty adminObj }">
	<c:redirect url="../admin_login.jsp"></c:redirect>
	</c:if>
	<div class="container p-5">
		<p class="text-center fs-3">Admin Dashboard</p>
		<c:if test="${not empty sucMsg }">
			<p class="text-center text-success fs-3" role="alert">${sucMsg}</p>
			<c:remove var="sucMsg" scope="session" />
		</c:if>



		<c:if test="${not empty error }">
			<p class="text-center text-danger fs-3">${error}</p>
			<c:remove var="error" scope="session" />
		</c:if>
		
		<%
		DoctorDao dao=new DoctorDao(DbConnect.getCon());
		/* int a=dao.countDoc();
		int b=dao.countApp();
		int c=dao.countuser();
		int d=dao.countspec(); */
		%>
		<div class="row">
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-md fa-3x"></i><br>
						<p class="fs-4 text-center">
							Doctor<br><%=dao.countDoc()%>
						</p>

					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="fas fa-user-circle fa-3x"></i><br>
						<p class="fs-4 text-center">
							User<br><%=dao.countuser() %>
						</p>

					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card paint-card">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Total Appointment<br><%=dao.countApp() %>
						</p>

					</div>
				</div>
			</div>
			<div class="col-md-4 mt-2">
				<div class="card paint-card" data-bs-toggle="modal" data-bs-target="#exampleModal">
					<div class="card-body text-center text-success">
						<i class="far fa-calendar-check fa-3x"></i><br>
						<p class="fs-4 text-center">
							Specialist<br><%=dao.countspec() %>
						</p>

					</div>
				</div>
			</div>
		</div>

	</div>
<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Add Specialist</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="../addSpecialist" method="post">
        <div class="from-group">
        <label>Enter Specialist Name</label><input type="text"
        
        name="specName" class="from-control">
        </div>
        <div class="text-center mt-3">
        <button type="submit" class="btn btn-primary" >Add</button>
        </div>
        
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>