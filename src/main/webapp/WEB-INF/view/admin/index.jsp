<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>API-D</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="adminResources/css/materialdesignicons.min.css">
<link rel="stylesheet" href="adminResources/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="adminResources/css/vendor.bundle.addons.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="adminResources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="adminResources/image/favicon.png"/>
</head>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->


		<jsp:include page="header.jsp"></jsp:include>


		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<!-- partial:partials/_sidebar.html -->


			<jsp:include page="menu.jsp"></jsp:include>


			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-md-6 col-lg-3 grid-margin stretch-card">
							<div
								class="card bg-gradient-primary text-white text-center card-shadow-primary">
								<div class="card-body">
									<h6 class="font-weight-normal">Total APIs</h6>
									<h2 class="mb-0">28893</h2>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-3 grid-margin stretch-card">
							<div
								class="card bg-gradient-danger text-white text-center card-shadow-danger">
								<div class="card-body">
									<h6 class="font-weight-normal">Total Categories</h6>
									<h2 class="mb-0">28893</h2>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-3 grid-margin stretch-card">
							<div
								class="card bg-gradient-warning text-white text-center card-shadow-warning">
								<div class="card-body">
									<h6 class="font-weight-normal">Total Users</h6>
									<h2 class="mb-0">28893</h2>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-lg-3 grid-margin stretch-card">
							<div
								class="card bg-gradient-info text-white text-center card-shadow-info">
								<div class="card-body">
									<h6 class="font-weight-normal">Total Feedbacks</h6>
									<h2 class="mb-0">28893</h2>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-4 grid-margin stretch-card">
							<div class="card">
								<div class="card-body pb-0">
									<h4 class="card-title">Daily Users</h4>
									<div
										class="d-flex justify-content-between justify-content-lg-start flex-wrap">
										<div class="mr-5 mb-2">
											<h3>56789</h3>
											<h6 class="font-weight-normal mb-0">Developers</h6>
										</div>
										<div class="mb-2">
											<h3>12345</h3>
											<h6 class="font-weight-normal mb-0">End-Users</h6>
										</div>
									</div>
								</div>
								<div class="card-body d-flex align-items-end p-0">
									<div class="mt-auto w-100">
										<div id="sales-legend" class="chartjs-legend mt-2 mb-4"></div>
										<canvas id="chart-sales"></canvas>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="d-flex justify-content-between">
										<h6 class="card-title">Activity</h6>
									</div>
									<div class="list d-flex align-items-center border-bottom pb-3">
										<img class="img-sm rounded-circle"
											src="adminResources/image/face8.jpg" alt="">
										<div class="wrapper w-100 ml-3">
											<p>
												<b>Dobrick </b>published an article
											</p>
											<small class="text-muted">2 hours ago</small>
										</div>
									</div>
									<div class="list d-flex align-items-center border-bottom py-3">
										<img class="img-sm rounded-circle"
											src="adminResources/image/face5.jpg" alt="">
										<div class="wrapper w-100 ml-3">
											<p>
												<b>Stella </b>created an event
											</p>
											<small class="text-muted">3 hours ago</small>
										</div>
									</div>
									<div class="list d-flex align-items-center border-bottom py-3">
										<img class="img-sm rounded-circle"
											src="adminResources/image/face7.jpg" alt="">
										<div class="wrapper w-100 ml-3">
											<p>
												<b>Peter </b>submitted the reports
											</p>
											<small class="text-muted">1 hours ago</small>
										</div>
									</div>
									<div class="list d-flex align-items-center border-bottom py-3">
										<img class="img-sm rounded-circle"
											src="adminResources/image/face6.jpg" alt="">
										<div class="wrapper w-100 ml-3">
											<p>
												<b>Nateila </b>updated the docs
											</p>
											<small class="text-muted">1 hours ago</small>
										</div>
									</div>
									<div class="list d-flex align-items-center pt-3">
										<img class="img-sm rounded-circle"
											src="adminResources/image/face9.jpg" alt="">
										<div class="wrapper w-100 ml-3">
											<p>
												<b>Tom </b>uploaded the demo
											</p>
											<small class="text-muted">3 hours ago</small>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Traffic</h4>
									<div class="w-50 mx-auto">
										<canvas id="traffic-chart" width="100" height="100"></canvas>
									</div>
									<div class="text-center mt-5">
										<h4 class="mb-2">
											Traffic for the day
											</h5>
											<p class="card-description mb-5">Traffic of the
												developers and end-users for the day</p>
									</div>
									<div id="traffic-chart-legend"
										class="chartjs-legend traffic-chart-legend"></div>
								</div>
							</div>
						</div>
					</div>
					
					
				<%-- 	<jsp:include page="orderStatus.jsp"></jsp:include> --%>
					
					
					
					<div class="row">
						<div class="col-12 grid-margin">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Monthly Analytics</h4>
									<p class="card-description">Most used APIs in the month</p>
									<div id="js-legend"
										class="chartjs-legend mt-4 mb-5 analytics-legend"></div>
									<div class="demo-chart">
										<canvas id="dashboard-monthly-analytics"></canvas>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-4 grid-margin grid-margin-md-0">
							<div class="card">
								<div class="card-body">
									<div
										class="wrapper d-flex align-items-center justify-content-start justify-content-sm-center flex-wrap">
										<img class="img-md rounded"
											src="adminResources/image/face1.jpg" alt="" style="height:100px; margin-left:0">
										<div class="wrapper ml-4">
											<p class="font-weight-medium">Aakash Bhalani</p>
											<p class="text-muted">aakashbhalani0912@gmail.com</p>
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
											src="adminResources/image/face2.jpg" alt="" style="height:100px; margin-left:0">
										<div class="wrapper ml-4">
											<p class="font-weight-medium">Aniket Ahir</p>
											<p class="text-muted">ahiraniket@outlook.in</p>
											<p class="text-info mb-0 font-weight-medium">Developer</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-4">
							<div class="card">
								<div class="card-body">
									<div
										class="wrapper d-flex align-items-center justify-content-start justify-content-sm-center flex-wrap">
										<img class="img-md rounded"
											src="adminResources/image/face3.jpg" alt="">
										<div class="wrapper ml-4">
											<p class="font-weight-medium">Parth Patat</p>
											<p class="text-muted">parthpatat1001@gmail.com</p>
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
	<script src="adminResources/js/vendor.bundle.base.js"></script>
	<script src="adminResources/js/vendor.bundle.addons.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="adminResources/js/off-canvas.js"></script>
	<script src="adminResources/js/hoverable-collapse.js"></script>
	<script src="adminResources/js/template.js"></script>
	<script src="adminResources/js/settings.js"></script>
	<script src="adminResources/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="adminResources/js/dashboard.js"></script>
	<!-- End custom js for this page-->
</body>

</html>

