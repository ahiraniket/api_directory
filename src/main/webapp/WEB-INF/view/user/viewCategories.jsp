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
					<div class="row">

						<c:forEach var="i" items="${viewCategoryList}" varStatus="j">

							<c:choose>
								<c:when test="${j.count mod 2 == 0}">
									<div class="col-md-6 col-lg-3 grid-margin stretch-card">
										<div
											class="card bg-gradient-danger text-white text-center card-shadow-primary">
											<div class="card-body">
												<h3 class="mb-0">
													<a href="viewApiCategory?categoryId=${i.categoryId}"
														style="color: white">${i.categoryName}</a>
												</h3>
												<br> <br>
												<h6 class="font-weight-normal">${i.categoryDescription}</h6>
											</div>
										</div>
									</div>
								</c:when>
								<c:otherwise>
									<div class="col-md-6 col-lg-3 grid-margin stretch-card">
										<div
											class="card bg-gradient-primary	 text-white text-center card-shadow-primary">
											<div class="card-body" >
												<h3 class="mb-0">
													<a href="viewApiCategory?categoryId=${i.categoryId}" style="color: white">${i.categoryName}</a>
												</h3>
												<br> <br>
												<h6 class="font-weight-normal">${i.categoryDescription}</h6>
											</div>
										</div>
									</div>
								</c:otherwise>
							</c:choose>

						</c:forEach>
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