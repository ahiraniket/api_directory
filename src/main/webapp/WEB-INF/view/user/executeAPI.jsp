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
<!-- inject:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/userResources/css/style.css">
<!-- endinject -->
<link
	href="<%=request.getContextPath()%>/userResources/css/jquery.json-viewer.css"
	type="text/css" rel="stylesheet">
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/userResources/image/favicon.png" />
<style type="text/css">
p.options label {
	margin-right: 10px;
}

p.options input[type=checkbox] {
	vertical-align: middle;
}

textarea#json-input {
	width: 100%;
	height: 200px;
}

pre#json-renderer {
	border: 1px solid #aaa;
}


</style>
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

										<p class="options">
											 <label title="Generate node as collapsed"> <input
												type="checkbox" id="collapsed"> Collapse nodes
											</label> <label title="Allow root element to be collasped"> <input
												type="checkbox" id="root-collapsable" checked> Root
												collapsable
											</label> <label title="Surround keys with quotes"> <input
												type="checkbox" id="with-quotes"> Keys with quotes
											</label> <label title="Generate anchor tags for URL values">
												<input type="checkbox" id="with-links" checked> With
												Links
											</label>
										</p>
										<br>
										<pre id="json-renderer"></pre>

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
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/userResources/js/jquery.json-viewer.js"></script>
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
	<script>
	$(function() {
		function renderJson() {
			try {
				var input = ${jsonData};
			} catch (error) {
				return alert("Cannot eval JSON: " + error);
			}
			var options = {
				collapsed : $('#collapsed').is(':checked'),
				rootCollapsable : $('#root-collapsable').is(':checked'),
				withQuotes : $('#with-quotes').is(':checked'),
				withLinks : $('#with-links').is(':checked')
			};
			$('#json-renderer').jsonViewer(input, options);
		}

		// Generate on click
		$('#btn-json-viewer').click(renderJson);

		// Generate on option change
		$('p.options input[type=checkbox]').click(renderJson);

		// Display JSON sample on page load
		renderJson();
	});
</script>
</body>

</html>