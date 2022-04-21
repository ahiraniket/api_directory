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
<title>APID | Home</title>
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
											<h3>About Project Name</h3>
											<p class="text-justify text-muted" style="line-height: 1.7;">When
												I first got into the online advertising business, I was
												looking for the magical combination that would put my
												website into the top search engine rankings When I first got
												into the online advertising business, I was looking for the
												magical combination that would put my website into the top
												search engine rankings When I first got into the online
												advertising business, I was looking for the magical
												combination that would put my website into the top search
												engine rankings</p>
											<p class="text-justify text-muted" style="line-height: 1.7;">When
												I first got into the online advertising business, I was
												looking for the magical combination that would put my
												website into the top search engine rankings When I first got
												into the online advertising business, I was looking for the
												magical combination that would put my website into the top
												search engine rankings When I first got into the online
												advertising business, I was looking for the magical
												combination that would put my website into the top search
												engine rankings</p>
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