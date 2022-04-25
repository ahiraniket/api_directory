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
<title>APID | Manage Contributions</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/materialdesignicons.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/vendor.bundle.base.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/vendor.bundle.addons.css">
<!-- endinject -->
<!-- plugin css for this page -->
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/adminResources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/adminResources/image/favicon.png" />
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
							<h3 class="m-0 text-white">Manage Contributions</h3>
						</div>
						<div class="card-body">

							<br>
							<div class="row">
								<div class="col-12">
									<div class="table-responsive">
										<table id="order-listing" class="table">
											<thead>
												<tr>
													<th>No</th>
													<th>User</th>
													<th>Category Name</th>
													<th>API Name</th>
													<th>API Type</th>
													<th>API Endpoint</th>
													<th>API Description</th>
													<th>Request Type</th>
													<th>Response Type</th>
													<th>Status</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="i" items="${viewContributionsList}"
													varStatus="j">
													<tr>
														<td>${j.count}</td>
														<td>${i.loginVO.username}</td>
														<td>${i.manageCategoryVO.categoryName}</td>
														<td>${i.apiName}</td>
														<td>${i.apiType}</td>
														<td>${i.apiEndpoint}</td>
														<td>${i.apiDescription}</td>
														<td>${i.apiRequestMethodType}</td>
														<td>${i.apiResponseType}</td>
														<td><c:if test="${i.contributionStatus eq 'Pending'}">
																<p style="color: yellow">${i.contributionStatus}</p>

															</c:if> <c:if test="${i.contributionStatus eq 'Rejected'}">
																<p style="color: red">${i.contributionStatus}</p>

															</c:if> <c:if test="${i.contributionStatus eq 'Accepted'}">
																<p style="color: #06c258">${i.contributionStatus}</p>
															</c:if></td>
														<td><a
															href="acceptContributions?contributionId=${i.contributionId}">
																<i class="mdi mdi-check lead text-success"></i>
														</a> <%-- <a href="editContributions?contributionId=${i.contributionId}">
																<i class="mdi mdi-eye-outline lead"></i> --%>
														</a> <a href="deleteCountributions?contributionId=${i.contributionId}">
																<i class="mdi mdi-delete lead text-danger ml-3"></i>
														</a></td>
													</tr>
												</c:forEach>
											</tbody>
											<!-- <tbody>
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
	<script
		src="<%=request.getContextPath()%>/adminResources/js/vendor.bundle.base.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/vendor.bundle.addons.js"></script>
	<!-- endinject -->
	<!-- inject:js -->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/off-canvas.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/hoverable-collapse.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/template.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/settings.js"></script>
	<script
		src="<%=request.getContextPath()%>/adminResources/js/todolist.js"></script>
	<!-- endinject -->
	<!-- Custom js for this page-->
	<script
		src="<%=request.getContextPath()%>/adminResources/js/data-table.js"></script>
	<!-- End custom js for this page-->
</body>

</html>
