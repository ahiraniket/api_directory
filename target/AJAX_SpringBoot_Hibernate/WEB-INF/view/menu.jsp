<nav class="sidebar sidebar-offcanvas" id="sidebar">
	<ul class="nav">

		<li class="nav-item"><a class="nav-link" href="index.jsp"> <i
				class="mdi mdi-home menu-icon"></i> <span class="menu-title">Home</span>
		</a></li>

		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
				<i class="mdi mdi-file-tree menu-icon"></i> <span class="menu-title">Manage
					Category</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="ui-basic">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link"
						href="addCategory.jsp">Add Category</a></li>
					<li class="nav-item"><a class="nav-link"
						href="viewCategory.jsp">View Category</a></li>
				</ul>
			</div></li>

		<li class="nav-item"><a class="nav-link" data-toggle="collapse"
			href="#editors" aria-expanded="false" aria-controls="editors"> <i
				class="mdi mdi-code-braces menu-icon"></i> <span class="menu-title">Manage
					APIs</span> <i class="menu-arrow"></i>
		</a>
			<div class="collapse" id="editors">
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="./addapi.jsp">Add
							API</a></li>
				</ul>
				<ul class="nav flex-column sub-menu">
					<li class="nav-item"><a class="nav-link" href="./viewApi.jsp">View
							API</a></li>
				</ul>
			</div></li>

		<li class="nav-item"><a href="viewComplaints.jsp"
			class="nav-link"> <i class="mdi mdi-headset menu-icon"></i> <span
				class="menu-title">Manage Complaints</span>
		</a></li>
		<li class="nav-item"><a class="nav-link" href="viewFeedback.jsp">
				<i class="mdi mdi-thumb-up menu-icon"></i> <span class="menu-title">Manage
					Feedbacks</span>
		</a></li>

		<li class="nav-item"><a class="nav-link" href=""> <i
				class="mdi mdi-logout menu-icon"></i> <span class="menu-title">Logout</span>
		</a></li>
	</ul>
</nav>
