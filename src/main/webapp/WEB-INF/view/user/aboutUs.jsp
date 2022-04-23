<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="z" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>APID | About Us</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/vendor.bundle.addons.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/userResources/image/favicon.png" />
</head>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_horizontal-navbar.html -->
		<div class="horizontal-menu">
			<!-- ------------Header------------- -->

			<jsp:include page="header.jsp"></jsp:include>

			<jsp:include page="bottomNavBar.jsp"></jsp:include>
		</div>

		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-md-12 grid-margin grid-margin-md-0">
							<div class="card">
								<div class="card-body">
									<div class="row">
										<div class="col-6">
											<img class="rounded mw-100" alt=""
												src="<%=request.getContextPath()%>/userResources/image/about.jpg">
										</div>
										<div class="col-6">
											<h3>API-Directory</h3><br>
											<p class="text-justify text-muted" style="line-height: 2.0;">The
												project consists of a customized directory for the
												APIs(Application Programming Interface) of various genres
												with their visualization as well as previews. Separate
												interface for developers who want to integrate the APIs in
												their project as well as normal users who just want to
												visualize the statistical data of the particular API. The
												web application will include both the interface; however, a
												separate mobile application will be integrated into the
												project for the secondary objective which API is data
												visualization.</p>
										</div>
									</div>
								</div>
							</div>
							<br>
							<br>
						</div>
						<div class="col-md-4 grid-margin grid-margin-md-0">
							<div class="card">
								<div class="card-body">
									<div
										class="wrapper d-flex align-items-center justify-content-start justify-content-sm-center flex-wrap">
										<img class="img-md rounded"
											src="<%=request.getContextPath()%>/adminResources/image/face1.jpg"
											alt="" style="height: 100px; margin-left: 0">
										<div class="wrapper ml-4">
											<p class="font-weight-medium">Aakash Bhalani</p>
											<p class="text-muted">aakash@gmail.com</p>
											<p class="text-info mb-0 font-weight-medium">Developer</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 grid-margin grid-margin-md-0">
							<div class="card">
								<div class="card-body">
									<div
										class="wrapper d-flex align-items-center justify-content-start justify-content-sm-center flex-wrap">
										<img class="img-md rounded"
											src="<%=request.getContextPath()%>/adminResources/image/face2.jpg"
											alt="" style="height: 100px; margin-left: 0">
										<div class="wrapper ml-4">
											<p class="font-weight-medium">Aniket Ahir</p>
											<p class="text-muted">ahiraniket@outlook.in</p>
											<p class="text-info mb-0 font-weight-medium">Developer</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4 grid-margin grid-margin-md-0">
							<div class="card">
								<div class="card-body">
									<div
										class="wrapper d-flex align-items-center justify-content-start justify-content-sm-center flex-wrap">
										<img class="img-md rounded"
											src="<%=request.getContextPath()%>/adminResources/image/face3.jpg"
											alt="" style="height: 100px; margin-left: 0">
										<div class="wrapper ml-4">
											<p class="font-weight-medium">Parth Patat</p>
											<p class="text-muted">parthp@gmail.com</p>
											<p class="text-info mb-0 font-weight-medium">Developer</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>


				<!-- content-wrapper ends -->
				<!-- partial:partials/_footer.html -->
				<jsp:include page="footer.jsp"></jsp:include>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->

	<!-- plugins:js -->
	<script
		src="<%=request.getContextPath()%>/userResources/js/vendor.bundle.base.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/vendor.bundle.addons.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script
		src="<%=request.getContextPath()%>/userResources/js/off-canvas.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/hoverable-collapse.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/template.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/settings.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script
		src="<%=request.getContextPath()%>/userResources/js/dashboard.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/todolist.js"></script>
	<!-- End custom js for this page-->
</body>

</html>