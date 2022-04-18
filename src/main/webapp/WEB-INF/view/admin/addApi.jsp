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
<title>${formName}</title>
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

	<!-- tags -->
	<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>


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
									<h3 class="m-0 text-white">${formName}</h3>
								</div>
								<div class="card-body">
									<f:form class="cmxform" method="get" action="insertApi"
										modelAttribute="manageApiVO">
										<f:hidden path="apiId" />
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
										</div>
										<input class="btn btn-primary" type="submit" value="Submit">
									</f:form>
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
	<!-- End custom js for this page-->
</body>

</html>
