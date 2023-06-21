<%@page import="com.db.DbConnect" %>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>
<%@include file="component/allcss.jsp"%>
<style type="text/css">
.carousel-item:after {
	content: "";
	display: black;
	position: absolute;
	top: 0;
	bottom: 0;
	left: 0;
	right: 0;
	background: rgba(0, 0, 0, 0.1);
}

.carousel-caption {
	top: 70%;
}

.paint-card {
	box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}

.yash {
	shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>


</head>
<body>
	<%@include file="component/navbar.jsp"%>
	


	<%Connection con=DbConnect.getCon();
	out.print(con);
	%>

	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="3" aria-label="Slide 4"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="4" aria-label="Slide 5"></button>

		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/hos4.webp" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/hos7.webp" class="d-block w-100" alt="..."
					height="500px">
			</div>
			<div class="carousel-item">
				<img src="img/hos3.jpeg" class="d-block w-100" alt="..."
					height="500px">
			</div>

			<div class="carousel-item">
				<img src="img/hos6.jpeg" class="d-block w-100" alt="..."
					height="500px">
			</div>

			<div class="carousel-item">
				<img src="img/hos5.webp" class="d-block w-100" alt="..."
					height="500px">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>
	<div class="container p-3">
		<p class="text-center fs-2">Key Features of Hospital</p>
		<div class="row">
			<div class="col-md-8 p-5">
				<div class="row">
					<div class="col-md-6 ">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Clean Environment</p>
								<p>Hospital cleaners ensure a safe and hygienic environment
									for staff and patients. Through expert knowledge of cleaning
									products, procedures and equipment, they maintain the
									cleanliness of hospital floors, rooms, bathrooms and furniture.
								</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 ">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">A Culture of Excellence</p>
								<p>Hospitals are complex machineries run by human minds and
									hands. And is natural for human errors to creep in sometimes.
									While the medical team at an average hospital will stand
									pointing fingers to each other, the administration, the
									processes,</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Efficient and Empathetic Nursing Staff</p>
								<p>The nursing staff are typically the largest group of
									caregivers in a hospital. Consultants or junior doctors meet a
									patient maybe twice or thrice a day but the regular banter
									between a patient and a nurse is what makes all the difference
									to her experience in a hospital. An efficient nurse would
									provide the correct care and an empathetic one will give the
									patient all the mental soothing she needs.</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 mt-2">
						<div class="card paint-card">
							<div class="card-body">
								<p class="fs-5">Timely Communication</p>
								<p>This is the key to the success of any relationship
									including the one between a patient and a hospital. Delay in
									medication arrival to delay in sample collection to minor human
									errors, everything can be handled with timely and effective
									communication. What the patient and most importantly her
									anxious attendants want is communication.</p>
							</div>
						</div>
					</div>
				</div>
			</div>


			<div class="col-md-4 ">
				<img alt="" src="img/i3.jpeg" width="110%">
			</div>

		</div>



	</div>


	<hr>
	<div class="container p-2">
		<p class="text-center fs-2">Our Team</p>
		<div class="row">
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/i3.jpeg" width="250px" height="300px">
						<p class="fw-bold fs-5">Yash Agarwal</p>
						<p class="fs-7">(CEO & Chairman)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/img2.jpeg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr. Jerwin</p>
						<p class="fs-7">(Cardiologist)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/img1.jpeg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr. Ashwin</p>
						<p class="fs-7">(Radiologist)</p>
					</div>
				</div>
			</div>
			<div class="col-md-3">
				<div class="card paint-card">
					<div class="card-body text-center">
						<img src="img/img4.jpeg" width="250px" height="300px">
						<p class="fw-bold fs-5">Dr. Abhishek</p>
						<p class="fs-7">(Sexologist)</p>
					</div>
				</div>
			</div>

		</div>

	</div>
	<%@include file="component/footer.jsp" %>

</body>
</html>