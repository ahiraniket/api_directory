<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>API-D</title>
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
	href="<%=request.getContextPath()%>/adminResources/css//style.css">
<!-- endinject -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/adminResources/image/favicon.png" />
</head>

<body>
	<div class="container-scroller">
		<div class="container-fluid page-body-wrapper full-page-wrapper">
			<div class="content-wrapper d-flex align-items-center auth">
				<div class="row w-100">
					<div class="col-lg-4 mx-auto">
						<div class="auth-form-light text-left p-5">
							<div class="brand-logo"
								style="display: flex; justify-content: center;">
								<img
									src="<%=request.getContextPath()%>/adminResources/image/api-icon-full.png"
									alt="logo"
									style="margin-bottom: 0.5rem; width: 70px; height: 70px">
							</div>
							<h3 class="text-primary">Register</h3>
							<f:form method="post" action="signup"
								modelAttribute="registerVO">
								<div class="form-group">
									<f:input type="text" class="form-control form-control-lg"
										id="firstName" placeholder="First Name" path="firstName"/>
								</div>
								<div class="form-group">
									<f:input type="text" class="form-control form-control-lg"
										id="lastName" placeholder="Last Name" path="lastName"/>
								</div>
								<div class="form-group">
									<f:input type="email" class="form-control form-control-lg"
										id="email" placeholder="Email" path="loginVO.username"/>
								</div>
								<div class="form-group">
									<f:input type="number" class="form-control form-control-lg"
										id="contact" placeholder="Contact" path="contact"/>
								</div>
								<div class="form-group">
									<f:select class="form-control form-control-lg"
										id="exampleFormControlSelect2" path="designation">
										<option selected disabled>Designation</option>
										<option>Developer</option>
										<option>Student</option>
										<option>Freelancer</option>
										<option>Professional</option>
									</f:select>
								</div>
								<div class="form-group">
									<f:input type="password" class="form-control form-control-lg"
										id="password" placeholder="Password" path="loginVO.password"/>
								</div>
								<!-- <div class="mb-4">
									<div class="form-check">
										<label class="form-check-label text-muted"> <input
											type="checkbox" class="form-check-input"> I agree to
											all Terms & Conditions
										</label>
									</div>
								</div> -->
								<div class="mt-3">
									<button type="submit"
										class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">SIGN
										UP</button>
								</div>
								<div class="text-center mt-4 font-weight-light">
									Already have an account? <a href="login" class="text-primary">Login</a>
								</div>
							</f:form>
						</div>
					</div>
				</div>
			</div>
			<!-- content-wrapper ends -->
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
</body>

</html>
