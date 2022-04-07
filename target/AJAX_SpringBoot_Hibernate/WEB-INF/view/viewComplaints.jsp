<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Manage Complaints</title>
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
<link rel="shortcut icon" href="adminResources/image/favicon.png" />
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
					<div class="card">
						<div class="card-header"
							style="background: linear-gradient(91deg, #7571f9, transparent);"\>
							<h3 class="m-0 text-white">Manage Complaints</h3>
						</div>
						<div class="card-body">
							
							<br>
							<div class="row">
								<div class="col-12">
									<div class="table-responsive">
										<table id="order-listing" class="table">
											<thead>
												<tr>
													<th>User</th>
													<th>Date</th>
													<th>Subject</th>
													<th>Description</th>
													<th>Attachments</th>
													<th>Reply</th>
													<th>Status</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>parth123</td>
													<td>2012/08/03</td>
													<td>Subject 1</td>
													<td>All he could think about was how it would all end.
														There was still a bit of uncertainty in the equation, but
														the basics were there for anyone to see.</td>
													<td>Attachment 1</td>
													<td>he amber droplet hung from the branch, reaching
														fullness and ready to drop.</td>
													<td><a href=""> <label class="btn btn-success">Replied</label>
													</a></td>
													<td><a href=""> <i
															class="mdi mdi-delete lead text-danger ml-3"></i>
													</a></td>
												</tr>
												<tr>
													<td>patat123</td>
													<td>2012/08/03</td>
													<td>Subject 2</td>
													<td>It wanted to be remembered long after all the
														other droplets had dissolved into history. So it waited
														for the perfect specimen to fly by to trap and capture
														that it hoped would eventually be discovered hundreds of
														years in the future.</td>
													<td>Attachment 2</td>
													<td></td>
													<td><a href="addComplainReply.jsp" type="button"
														class="btn btn-inverse-danger btn-fw">Reply</a></td>
													<td><a href=""> <i
															class="mdi mdi-delete lead text-danger ml-3"></i>
													</a></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->

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
	<!-- inject:js -->
	<script src="adminResources/js/off-canvas.js"></script>
	<script src="adminResources/js/hoverable-collapse.js"></script>
	<script src="adminResources/js/template.js"></script>
	<script src="adminResources/js/settings.js"></script>
	<script src="adminResources/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="adminResources/js/data-table.js"></script>
	<!-- End custom js for this page-->
</body>

</html>
