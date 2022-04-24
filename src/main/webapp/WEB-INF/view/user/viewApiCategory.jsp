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
						<div class="col-12">

							<div class="col-md-12 grid-margin stretch-card d-none d-md-flex">
								<div class="card">
									<div class="card-body">
										<h4 class="card-title">
											<b>${category.categoryName}</b>
										</h4>
										<div class="row">
											<div class="col-3">
												<ul class="nav nav-pills nav-pills-vertical nav-pills-info"
													id="v-pills-tab" role="tablist" aria-orientation="vertical">


													<c:forEach var="i" items="${viewApiCategoryList}"
														varStatus="j">

														<li class="nav-item"><a class="nav-link"
															id="v-pills-home-tab" data-toggle="pill"
															href="#v-pills-home" role="tab"
															onclick="getAPIDetails('${i.apiName}','${i.manageCategoryVO.categoryId}')"
															aria-controls="v-pills-home" aria-selected="false">

																${j.count}. ${i.apiName } </a></li>
													</c:forEach>
												</ul>
											</div>

											<div class="col-8">
												<div class="tab-content tab-content-vertical"
													id="v-pills-tabContent">
													<div class="tab-pane fade" id="v-pills-home"
														role="tabpanel" aria-labelledby="v-pills-home-tab">



														<div class="accordion accordion-multi-colored"
															id="accordion-6" role="tablist"></div>


														<c:forEach items="${apiResponseList}" var="k"
															varStatus="l">

															<div class="card">
																<%-- <div class="card-header" role="tab"
																	id="heading-${l.count}">
																	<h6 class="mb-0">
																		<a class="collapsed" data-toggle="collapse"
																			href="#collapse-${l.count}" aria-expanded="false"
																			aria-controls="collapse-${l.count}"> I canât sign
																			in to my account </a>
																	</h6>
																</div> --%>
																<div id="collapse-${l.count}" class="collapse"
																	role="tabpanel" aria-labelledby="heading-${l.count}"
																	data-parent="#accordion-6">
																	<div class="card-body">
																		If while signing in to your account you see an error
																		message, you can do the following
																		<ol class="pl-3 mt-4">
																			<li>Check your network connection and try again</li>
																			<li>Make sure your account credentials are
																				correct while signing in</li>
																			<li>Check whether your account is accessible in
																				your region</li>
																		</ol>
																		<br>
																		<p class="text-danger">
																			<i class="mdi mdi-alert-octagon mr-2"></i>If the
																			problem persists, you can contact our support.
																		</p>
																	</div>
																</div>
															</div>


														</c:forEach>

													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>


						</div>

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


	<script type="text/javascript">
		function getAPIDetails(apiName, categoryId) {

			$('#accordion-6').html();

			const
			xhttp = new XMLHttpRequest();

			xhttp.onreadystatechange = function() {

				if (xhttp.readyState === 4) {

					var jsn = JSON.parse(xhttp.responseText);

					if (jsn && jsn.length > 0) {

						var data = "";

						for (var i = 0; i < jsn.length; i++) {

							data = data + '<div class="card">';
							data = data
									+ '			<div class="card-header" role="tab" id="heading-'+i+'">';
							data = data + '			<h6 class="mb-0">';
							data = data
									+ '				<a class="collapsed" data-toggle="collapse"';
							data = data + '					href="#collapse-'+i+'" aria-expanded="false"';
							data = data + '					aria-controls="collapse-'+i+'"> '
									+ jsn[i].apiRequestMethodType + '</a>';
							data = data + '			</h6>';
							data = data + '		</div>';
							data = data
									+ '		<div id="collapse-'+i+'" class="collapse" role="tabpanel"';
							data = data + '			aria-labelledby="heading-'+i+'" data-parent="#accordion-6">';
							data = data + '			<div class="card-body">';
							data = data
									+ '				message, you can do the following';
							data = data + '				<ol class="pl-3 mt-4">';
							data = data
									+ '					<li>Check your network connection and try again</li>';
							data = data
									+ '					<li>Make sure your account credentials are correct';
							data = data + '						while signing in</li>';
							data = data
									+ '					<li>Check whether your account is accessible in';
							data = data + '						your region</li>';
							data = data + '				</ol>';
							data = data + '				<br>';
							data = data + '				<p class="text-danger">';
							data = data
									+ '					<i class="mdi mdi-alert-octagon mr-2"></i>If the';
							data = data
									+ '					problem persists, you can contact our support.';
							data = data + '				</p>';
							data = data + '			</div>';
							data = data + '		</div>';
							data = data + '	</div>';
						}

						$('#accordion-6').html(data);

					}
				}

			}

			xhttp.open("GET", "getAPIDetails?apiName=" + apiName
					+ "&categoryId=" + categoryId, true);
			xhttp.send();
		}
	</script>

	<!-- End custom js for this page-->
</body>

</html>