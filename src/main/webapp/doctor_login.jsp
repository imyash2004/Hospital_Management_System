<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doctor Login</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>

<body>
	<%@include file="component/navbar.jsp"%>
	<div class="container p-5">

		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card paint-card container">
					<p class="fs-4 text-center">Doctor Login</p>
					<form  method="post">
												<div class="mb-4">
													<label class="form-label ">Email Address</label> <input required
														name="email" type="email" class="form-control">
												</div>

												<div class="mb-3">
													<label class="form-label">Password</label> <input required
														name="password" type="password" class="form-control">
												</div>
						
						<button class="btn bg-info text-dark col-md-12" type="button">Login</button>
					<div class="container p-4"></div>
					</form>
					
				</div>
			</div>
		</div>
	</div>










	<%@include file="component/footer.jsp"%>





</body>
</html>