<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" isELIgnored="false" pageEncoding="ISO-8859-1"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sinup</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body>
<%@include file="component/navbar.jsp" %>

<div class="container p-5">

		<div class="row">
			<div class="col-md-4 offset-md-4 ">
				<div class="card paint-card container">
					<p class="fs-4 text-center">User Register</p>
					
					<c:if test="${not empty sucMsg }">
					<p class="text-center text-success fs-3">
					${sucMsg}</p>
					<c:remove var="sucMsg" scope="session"/>
					</c:if>
					
					
					
					<c:if test="${not empty error }">
					<p class="text-center text-danger fs-3">
					${error}</p>
					<c:remove var="error" scope="session"/>
					</c:if>
					<form action="user" method="post">
												<div class="mb-4">
													<label class="form-label ">Full Name </label> <input required
														name="fullname" type="text" class="form-control">
												</div>
												<div class="mb-4">
													<label class="form-label ">Email Address</label> <input required
														name="email" type="email" class="form-control">
												</div>

												<div class="mb-3">
													<label class="form-label">Password</label> <input required
														name="password" type="password" class="form-control">
												</div>
						
						<button class=" btn bg-info text-dark col-md-12 " type="submit">Register</button>
						<div class="container p-4"></div>
					</form>
				</div>
			</div>
		</div>
	</div>

<%@include file="component/footer.jsp" %>




</body>
</html>