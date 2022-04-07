<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Add API</title>
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
				<div class="row grid-margin">
					<div class="col-lg-12">
						<div class="card">
							<div class="card-header"
								style="background: linear-gradient(91deg, #7571f9, transparent);"\>
								<h3 class="m-0 text-white">Add a new API</h3>
							</div>
							<div class="card-body">
								<form class="cmxform" id="commentForm" method="get" action="#">
									<div class="row">
										<div class="form-group col-4">
											<label for="cname">Category Name</label> <select
												class="form-control" id="requestType">
												<option disabled class="nav-item">Select Request
													Method Type</option>
												<option class="nav-item">GET</option>
												<option class="nav-item">POST</option>
												<option class="nav-item">PUT</option>
												<option class="nav-item">DELETE</option>
												<option class="nav-item">POST</option>
											</select>
										</div>

										<div class="form-group col-8">
											<label for="apiEndpoint">API Name</label> <input
												id="apiEndpoint" class="form-control" name="name"
												minlength="2" type="text" required>
										</div>

										<div class="form-group col-4">
											<label for="apiType">API Type</label> <select
												class="form-control " id="apiType">
												<option disabled class="nav-item">Select API Type</option>
												<option class="nav-item">REST</option>
												<option class="nav-item">SOAP</option>
											</select>
										</div>


										<div class="form-group col-4">
											<label for="requestType">Request Method Type</label> <select
												class="form-control " id="requestType">
												<option disabled class="nav-item">Select Request
													Method Type</option>
												<option class="nav-item">GET</option>
												<option class="nav-item">POST</option>
												<option class="nav-item">PUT</option>
												<option class="nav-item">DELETE</option>
												<option class="nav-item">POST</option>
											</select>
										</div>

										<div class="form-group col-4">
											<label for="responseType">Response Type</label> <select
												class="form-control " id="responseType">
												<option disabled class="nav-item">Select Response
													Type</option>
												<option class="nav-item">XML</option>
												<option class="nav-item">JSON</option>
											</select>
										</div>


										<div class="form-group col-12">
											<label for="apiEndpoint">API Endpoint</label> <input
												id="apiEndpoint" class="form-control" name="name"
												minlength="2" type="text" required>
										</div>

										<div class="form-group col-12">
											<label for="ccomment">API Description</label>
											<textarea id="ccomment" class="form-control" name="comment"></textarea>
										</div>

										<div class="form-group col-6">
											<label for="sampleRequest">Sample Request</label>
											<textarea id="ccomment" class="form-control" name="comment"></textarea>
										</div>

										<div class="form-group col-6">
											<label for="sampleResponse">Sample Response</label>
											<textarea id="ccomment" class="form-control" name="comment"
												readonly></textarea>
										</div>
									</div>
									<input class="btn btn-primary" type="submit" value="Save">
								</form>
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
<script src="adminResources/js/form-validation.js"></script>
<script src="adminResources/js/bt-maxLength.js"></script>
<!-- End custom js for this page-->
</body>

</html>
