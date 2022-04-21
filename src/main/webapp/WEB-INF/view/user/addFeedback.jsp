<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="z" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>APID | Add Feedback</title>
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

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/star.css">
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
									style="background: linear-gradient(91deg, #7571f9, transparent);"\>
									<h3 class="m-0 text-white">Give Your Valuable Feedback</h3>
								</div>
								<div class="card-body">
									<f:form class="cmxform" method="get" action="insertFeedback"
										modelAttribute="manageFeedbacksVO">
										<fieldset>
											<f:hidden path="feedbackId" />
											<div class="form-group">
												<fieldset class="rating">
												
													<f:radiobutton id="star5" path="feedbackRating" value="5" /><label
														class="full" for="star5" title="Awesome - 5 stars"></label>

													<f:radiobutton id="star4" path="feedbackRating" value="4" /><label
														class="full" for="star4" title="Pretty good - 4 stars"></label>

													<f:radiobutton id="star3" path="feedbackRating" value="3" /><label
														class="full" for="star3" title="Meh - 3 stars"></label>
														 
													<f:radiobutton id="star2" path="feedbackRating" value="2" /><label
														class="full" for="star2" title="Kinda bad - 2 stars"></label>

													<f:radiobutton id="star1" path="feedbackRating" value="1" /><label
														class="full" for="star1" title="Sucks big time - 1 star"></label>

												</fieldset>
											</div>

											<div class="form-group">
												<f:textarea id="ccomment" class="form-control"
													path="feedbackDescription"
													placeholder="Enter About Your Feedback..." />
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
									<h3 class="m-0 text-white">User's Feedbacks</h3>
								</div>
								<div class="card-body">

									<c:forEach var="i" items="${viewFeedbacksList}">

										<div class="d-flex align-items-start profile-feed-item">
											<img class="img-sm rounded-circle"
											src="<%=request.getContextPath()%>/adminResources/image/face7.jpg" alt="">
											<div class="ml-4" style="width: 100%">
												<h6>
													${i.loginVO.username}
													
													 <small class="mr-2 text-muted float-right lead">
														 <c:forEach  begin="1" end="${i.feedbackRating}">
															<i class="mdi mdi-star mr-1"></i>
														</c:forEach>
													</small>
												</h6>
												<p>${i.feedbackDescription}</p>
											</div>
										</div>

									</c:forEach>


								
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