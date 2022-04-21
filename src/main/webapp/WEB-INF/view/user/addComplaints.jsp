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
<title>APID | Add Complaints</title>
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
		<div class="horizontal-menu">
			<!-- ------------Header------------- -->

			<jsp:include page="header.jsp"></jsp:include>

			<jsp:include page="bottomNavBar.jsp"></jsp:include>
		</div>



		<!-- partial -->
		<div class="container-fluid page-body-wrapper">
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row grid-margin">
						<div class="col-lg-12">
							<div class="card">
								<div class="card-header"
									style="background: linear-gradient(91deg, #7571f9, transparent);">
									<h3 class="m-0 text-white">How Can I Help You</h3>
								</div>
								<div class="card-body">
									<f:form class="cmxform" method="get" action="insertComplaint"
										modelAttribute="manageComplaintVO">
										<fieldset>
											<f:hidden path="complaintId" />
											<div class="form-group">
												<f:input id="complaintSubject" class="form-control"
													path="complaintSubject"
													placeholder="Enter Your Querie Subject" type="text" />
											</div>

											<div class="form-group">
												<f:textarea id="ccomment" class="form-control"
													path="complaintDescription"
													placeholder="Enter About Your Querie..." />
											</div>
											<input class="btn btn-primary" type="submit" value="Post">
										</fieldset>
									</f:form>
								</div>
							</div>
						</div>
					</div>

					<div class="card">
						<div class="row grid-margin">
							<div class="col-lg-12">
								<div class="card-header"
									style="background: linear-gradient(91deg, #7571f9, transparent);"\>
									<h3 class="m-0 text-white">Your Queries</h3>
								</div>
								<div class="card-body">

									<div class="profile-feed">
										<c:forEach var="i" items="${viewComplaintList}">
											<div class="d-flex align-items-start">
												<img class="img-sm rounded-circle"
													src="<%=request.getContextPath()%>/adminResources/image/face6.jpg"
													alt="">
												<div class="ml-4" style="width: 100%;">
													<h6>
														${i.complaintSubject} <small
															class="mr-2 text-muted float-right"><i
															class="mdi mdi-clock mr-1"></i>${i.complaintDate}</small>
													</h6>
													<p>${i.complaintDescription}.</p>
												</div>
											</div>
											<c:if test="${i.complaintStatus eq 'Resolve'}">
												<div class="d-flex align-items-start mt-2"
													style="color: green; margin-left: 250px">
													<img class="img-sm rounded-circle"
														src="<%=request.getContextPath()%>/adminResources/image/face8.jpg"
														alt="">
													<div class="ml-4" style="width: 100%;">
														<h6>
															admin <small class="mr-2 text-muted float-right"><i
																class="mdi mdi-clock mr-1"></i>${i.replyDate}</small>
														</h6>
														<p>${i.complaintReply}</p>

													</div>
												</div>
											</c:if>
											<hr>
										</c:forEach>
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
	<script
		src="<%=request.getContextPath()%>/userResources/js/vendor.bundle.base.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/vendor.bundle.addons.js"></script>
	<!-- endinject -->
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
		src="<%=request.getContextPath()%>/userResources/js/form-validation.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/bt-maxLength.js"></script>
	<!-- End custom js for this page-->
</body>

</html>