<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib
    prefix="c"
    uri="http://java.sun.com/jsp/jstl/core" 
%><%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
<%-- <%@inlcude file="../component/allcss.jsp" %> --%>
</head>
<body>
<c:if test="${empty doctorObj }">
<c:redirect url="../doctor_login.jsp"></c:redirect>
</c:if>
<%@include file="navbar.jsp" %>

<h1>doctor dashboard</h1>
</body>
</html>