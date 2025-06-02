<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.db.DbConnect"%>
<%@page import="com.dao.UserDao"%>
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
						<p class="fs-3 text-center">User Details</p>
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
								<th scope="col">Id</th>
									<th scope="col">Full Name</th>
									
									<th scope="col">Email</th>
									
								</tr>
							</thead>
							<tbody>
							
							<%
							UserDao dao2=new UserDao(DbConnect.getCon());
							List<User> list=dao2.getAllUsers();
							for(User d:list){ %>
							<tr>
							<td><%=d.getId() %></td>
							<td><%=d.getFullName() %></td>
							
							<td><%=d.getEmail() %></td>
							
							
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