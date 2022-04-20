<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>

<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>APID | View Feedbacks</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/materialdesignicons.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/vendor.bundle.addons.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/adminResources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="<%=request.getContextPath()%>/adminResources/image/favicon.png" />
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
							<h3 class="m-0 text-white">Feedbacks</h3>
						</div>
						<div class="card-body">

							<div class="row">
								<div class="col-12">
									<div class="table-responsive">
										<table id="order-listing" class="table">
											<thead>
												<tr>
													<th>No</th>
													<th>User</th>
													<th class="col-6">Description</th>
													<th>Rating</th>
													<th>Actions</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="i" items="${viewFeedbacksList}" varStatus="j">

													<tr>
														<td>${j.count}</td>										
														<td>${i.feedbackUser}</td>
														<td class="col-6">${i.feedbackDescription}</td>
														<td>${i.feedbackRating}</td>
														<td><a href="deleteFeedback?feedbackId=${i.feedbackId}"> <i
																class="mdi mdi-delete lead text-danger ml-3"></i>
														</a></td>
													</tr>
												</c:forEach>
											</tbody>
											<!-- <tbody>
												<tr>
													<td>parthpatat@gmail.com</td>
													<td><i class="mdi mdi-star lead"></i> <i
														class="mdi mdi-star lead"></i> <i
														class="mdi mdi-star lead"></i> <i
														class="mdi mdi-star lead"></i></td>
													<td>In publishing and graphic design, Lorem ipsum is a
														placeholder text</td>
													<td><a href=""> <i
															class="mdi mdi-delete lead text-danger ml-3"></i>
													</a></td>
												</tr>
											</tbody> -->
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
	<script src="<%=request.getContextPath()%>/adminResources/js/vendor.bundle.base.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/vendor.bundle.addons.js"></script>
	<!-- endinject -->
	<!-- inject:js -->
	<script src="<%=request.getContextPath()%>/adminResources/js/off-canvas.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/hoverable-collapse.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/template.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/settings.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script src="<%=request.getContextPath()%>/adminResources/js/form-validation.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/bt-maxLength.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/formpickers.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/form-addons.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/x-editable.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/dropify.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/dropzone.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/jquery-file-upload.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/formpickers.js"></script>
	<script src="<%=request.getContextPath()%>/adminResources/js/form-repeater.js"></script>
	<!-- End custom js for this page-->
</body>

</html>
