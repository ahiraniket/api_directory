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
<title>APID | View API</title>
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
<!-- tags -->


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
							style="background: linear-gradient(91deg, #7571f9, transparent);">
							<h3 class="m-0 text-white">View API</h3>
						</div>
						<div class="card-body">
							<div class="row">
								<div class="col-12">
									<div class="table-responsive">

										<table id="order-listing" class="table">
											<thead>
												<tr>
													<th>Category Name</th>
													<th>API Name</th>
													<th>API Type</th>
													<th>API Endpoint</th>
													<th>API Description</th>
													<th>Request Type</th>
													<th>Response Type</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach var="i" items="${viewApiList}">
													
													<c:if test="${i.apiStatus == true}">
														<tr>
															<td>${i.manageCategoryVO.categoryName}</td>
															<td>${i.apiName}</td>
															<td>${i.apiType}</td>
															<td>${i.apiEndpoint}</td>
															<td>${i.apiDescription}</td>
															<td>${i.apiRequestMethodType}</td>
															<td>${i.apiResponseType}</td>
															<td><a href="editApi?apiId=${i.apiId}"> <i
																	class="mdi mdi-pencil lead"></i>
															</a><a href="deleteApi?apiId=${i.apiId}">
																	<i class="mdi mdi-delete lead text-danger ml-3"></i>
															</a></td>

														</tr>
													</c:if>
												</c:forEach>
												<!-- <tr>
													<td>XYZ</td>
													<td>XYZ</td>
													<td>SOAP</td>
													<td>https://github.com/Api-D/APID-web-app/tree/main/admin</td>
													<td>This is a Football API</td>
													<td>PUT/PATCH</td>
													<td>JSON</td>
													<td><a href=""> <i class="mdi mdi-pencil lead"></i>
													</a><a href=""> <i
															class="mdi mdi-delete lead text-danger ml-3"></i>
													</a></td>
												</tr> -->
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
