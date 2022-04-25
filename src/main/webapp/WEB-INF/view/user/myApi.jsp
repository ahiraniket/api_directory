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
<title>APID | Contributions</title>
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
									<h3 class="m-0 text-white">Contribute Here</h3>
								</div>
								<div class="card-body">
									<f:form class="cmxform" method="get"
										action="requestContribution"
										modelAttribute="manageContributionsVO">
										<f:hidden path="contributionId" />
										<div class="row">
											<div class="form-group col-4">
												<label for="categoryId">Category Name</label>
												<f:select class="form-control" id="categoryId"
													path="manageCategoryVO.categoryId">
													<option selected class="nav-item">Select Category</option>
													<c:forEach var="i" items="${viewCategoryList}">
														<f:option value="${i.categoryId}" class="nav-item">${i.categoryName}</f:option>
													</c:forEach>
												</f:select>
											</div>

											<div class="form-group col-8">
												<label for="apiName">API Name</label>
												<f:input id="apiName" class="form-control" path="apiName"
													minlength="2" type="text" />
											</div>

											<div class="form-group col-4">
												<label for="apiType">API Type</label>
												<f:select class="form-control " id="apiType" path="apiType">
													<option disabled class="nav-item">Select API Type</option>
													<option class="nav-item">REST</option>
													<option class="nav-item">SOAP</option>
												</f:select>
											</div>


											<div class="form-group col-4">
												<label for="apiRequestMethodType">Request Method
													Type</label>
												<f:select class="form-control " id="apiRequestMethodType"
													path="apiRequestMethodType">
													<option disabled class="nav-item">Select Request
														Method Type</option>
													<option class="nav-item">GET</option>
													<option class="nav-item">POST</option>
													<option class="nav-item">PUT</option>
													<option class="nav-item">DELETE</option>
													<option class="nav-item">POST</option>
													<option class="nav-item">PATCH</option>
												</f:select>
											</div>

											<div class="form-group col-4">
												<label for="apiResponseType">Response Type</label>
												<f:select class="form-control " id="apiResponseType"
													path="apiResponseType">
													<option disabled class="nav-item">Select Response
														Type</option>
													<option class="nav-item">XML</option>
													<option class="nav-item">JSON</option>
												</f:select>
											</div>


											<div class="form-group col-12">
												<label for="apiEndpoint">API Endpoint</label>
												<f:input id="apiEndpoint" class="form-control"
													path="apiEndpoint" minlength="2" type="text" />
											</div>

											<div class="form-group col-12">
												<label for="apiDescription">API Description</label>
												<f:textarea id="apiDescription" class="form-control"
													path="apiDescription"></f:textarea>
											</div>

											<div class="form-group col-6">
												<label for="apiSampleRequest">Sample Request</label>
												<f:textarea id="apiSampleRequest" class="form-control"
													path="apiSampleRequest"></f:textarea>
											</div>

											<div class="form-group col-6">
												<label for="apiSampleResponse">Sample Response</label>
												<f:textarea id="apiSampleResponse" class="form-control"
													path="apiSampleResponse"></f:textarea>
											</div>
											<f:hidden path="contributionStatus" value="Pending" />
										</div>
										<input class="btn btn-primary" type="submit"
											value="Request Contribution">
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
									<h3 class="m-0 text-white">Your Contributions</h3>
								</div>
								<div class="card-body">
									<div class="row">
										<div class="col-12">
											<div class="table-responsive">

												<table id="order-listing" class="table">
													<thead>
														<tr>
															<th>Sr No</th>
															<th>Category Name</th>
															<th>API Name</th>
															<th>API Type</th>
															<th>API Endpoint</th>
															<th>API Description</th>
															<th>Request Type</th>
															<th>Response Type</th>
															<th>Status</th>
														</tr>
													</thead>
													<tbody>
														<c:forEach var="i" items="${viewContributionsList}"
															varStatus="j">


															<tr>
																<td>${j.count}</td>
																<td>${i.manageCategoryVO.categoryName}</td>
																<td>${i.apiName}</td>
																<td>${i.apiType}</td>
																<td>${i.apiEndpoint}</td>
																<td>${i.apiDescription}</td>
																<td>${i.apiRequestMethodType}</td>
																<td>${i.apiResponseType}</td>
																<td>
																<c:if test="${i.contributionStatus eq 'Pending'}">
																	<p style="color: orange">Pending</p>
																</c:if>
																<c:if test="${i.contributionStatus eq 'Rejected'}">
																	<p style="color: red">Rejected</p>

																</c:if> <c:if test="${i.contributionStatus eq 'Accepted'}">
																	<p style="color: #06c258">Accepted</p>
																</c:if></td>

															</tr>

														</c:forEach>
														<!-- <tr>
															<td>1</td>
															<td>XYZ</td>
															<td>XYZ</td>
															<td>SOAP</td>
															<td>https://github.com/Api-D/APID-web-app/tree/main/admin</td>
															<td>This is a Football API</td>
															<td>PUT/PATCH</td>
															<td>JSON</td>
															<td>
																<p style="color: red">Pending</p>

															</td>
														</tr> -->
													</tbody>
												</table>
											</div>
										</div>
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