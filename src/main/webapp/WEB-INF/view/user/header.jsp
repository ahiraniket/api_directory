
<nav class="navbar top-navbar col-lg-12 col-12 p-0">
	<div class="nav-top flex-grow-1">
		<div class="container d-flex flex-row h-100 align-items-center">
			<div
				class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
				<a class="navbar-brand brand-logo" href="index.html"><img
					src="<%=request.getContextPath()%>/userResources/image/api-icon-mini.png"
					alt="logo" /></a> <a class="navbar-brand brand-logo-mini"
					href="index.html"><img
					src="<%=request.getContextPath()%>/userResources/image/api-icon-mini.png"
					alt="logo" /></a>
			</div>



			<div
				class="navbar-menu-wrapper d-flex align-items-center justify-content-end flex-grow-1">
				<ul class="navbar-nav navbar-nav-right">


					<li class="nav-item nav-profile dropdown"><a
						class="nav-link dropdown-toggle" href="#" data-toggle="dropdown"
						id="profileDropdown"> <img
							src="<%=request.getContextPath()%>/userResources/image/face5.jpg"
							alt="profile" /></a>
						<div class="dropdown-menu dropdown-menu-right navbar-dropdown"
							aria-labelledby="profileDropdown">
							<a class="dropdown-item"> <i
								class="mdi mdi-settings text-primary"></i> Settings
							</a>
							<div class="dropdown-divider"></div>
							<a href="/logout" class="dropdown-item"> <i
								class="mdi mdi-logout text-primary"></i> Logout
							</a>
						</div></li>

				</ul>
				<button
					class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
					type="button" data-toggle="horizontal-menu-toggle">
					<span class="mdi mdi-menu"></span>
				</button>
			</div>
		</div>
	</div>
</nav>