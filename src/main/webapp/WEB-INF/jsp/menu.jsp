<style>
/* ===== Profile Dropdown Wrapper ===== */
.profile-dropdown {
	position: relative;
}

/* Toggle link */
.profile-toggle {
	display: flex;
	align-items: center;
	gap: 8px;
	padding: 10px;
	color: #fff;
}

/* Small avatar */
.profile-avatar {
	width: 32px;
	height: 32px;
	border-radius: 50%;
	border: 2px solid #fff;
}

/* User name */
.profile-name {
	font-weight: 600;
}

/* Dropdown menu */
.profile-menu {
	position: absolute;
	right: 0;
	top: 100%;
	width: 230px;
	background: #fff;
	border-radius: 8px;
	padding: 0;
	margin-top: 8px;
	list-style: none;
	display: none;
	box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
	z-index: 1000;
}

/* Bootstrap open state support */
.profile-dropdown.open .profile-menu {
	display: block;
	animation: profileFade 0.25s ease;
}

/* Header */
.profile-header {
	background: linear-gradient(135deg, #008385, #00b3b3);
	padding: 20px;
	text-align: center;
	color: #fff;
	border-radius: 8px 8px 0 0;
}

/* Large avatar */
.profile-avatar-lg {
	width: 72px;
	height: 72px;
	border-radius: 50%;
	border: 3px solid #fff;
	margin-bottom: 8px;
}

/* Welcome text */
.profile-welcome {
	margin: 0;
	font-weight: 600;
}

.profile-status {
	display: block;
	font-size: 12px;
	opacity: 0.9;
}

/* Footer */
.profile-footer {
	padding: 15px;
	background: #f7f7f7;
	border-radius: 0 0 8px 8px;
}

/* Logout button */
.btn-profile-logout {
	display: block;
	width: 100%;
	text-align: center;
	padding: 8px;
	background: #dc3545;
	color: #fff;
	border-radius: 20px;
	font-weight: 600;
	text-decoration: none;
}

.btn-profile-logout:hover {
	background: #c82333;
	color: #fff;
}

/* Animation */
@
keyframes profileFade {from { opacity:0;
	transform: translateY(10px);
}

to {
	opacity: 1;
	transform: translateY(0);
}
}
</style>
<header class="main-header  ">
	<!-- Header Navbar: style can be found in header.less -->
	<nav class="navbar navbar-static-top">
		<!-- Sidebar toggle button-->
		<a href="#" class="sidebar-toggle" data-toggle="push-menu"
			role="button"> <span class="sr-only">Toggle navigation</span>
		</a>
		<!-- Navbar Right Menu -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#myNavbar">
				<i class="fa fa-bars" aria-hidden="true"></i>
			</button>
		</div>
		<div class="collapse navbar-collapse pull-left" id="myNavbar">
			<!-- <ul class="nav navbar-nav">
				<li><a class="b-1" href="dashboard">Home</a></li>
				<li id="idconfig" class="dropdown"><a
					class="dropdown-toggle b-1" data-toggle="dropdown" href="#"
					aria-expanded="false">Configuration <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="CompanyDetails">Company Setting</a></li>
						<li><a href="FYMater">Add FY Master</a></li>
						<li><a href="branchMaster">Bank Creation</a></li>
						<ul class="sub-menu">
							<li><a href="bankRegister" style="color: white">Bank Register</a></li>
						</ul>
						<li><a href="AddBankAccount">Bank Master</a></li>
						<li><a href="relativeMaster">Relative Master</a></li>
						<li><a href="casteMaster">Caste Master</a></li>
						<li><a href="categoryMaster">Category Master</a></li>
						<li><a href="talukaMaster">Taluka Master</a></li>
						<li><a href="">Saving</a>
							<ul class="sub-menu">
								<li><a href="newScheme" style="color: white">New Scheme</a></li>
								<li><a href="schemeList" style="color: white">Scheme
										List</a></li>
							</ul></li>
						<li><a href="">Accounting</a>
							<ul class="sub-menu">
								<li><a href="branchInterestCalculation"
									style="color: white">Branch Interest 
									Calculation</a></li>
								<li><a href="newGLHead" style="color: white">New GL
										Head</a></li>
								<li><a href="glHeadList" style="color: white">GL Head 
									List</a></li>
								<li><a href="newGLGroup" style="color: white">New GL
										Group</a></li>
								<li><a href="gLGroupList" style="color: white">GL Group
										List</a></li>
								<li><a href="changeSequence" style="color: white">Change
										Sequence</a></li>
								<li><a href="accountFamily" style="color: white">Account
										Family</a></li>
								<li><a href="voucherType" style="color: white">Voucher
										Type</a></li>
							</ul></li>
						<li><a href="DirectorDetail">Add Director/Promoter</a></li>
						<li><a href="UserCreate">User Creation</a></li>
						<li><a href="UserMenuAccess">User Menu Access</a></li>
						<li><a href="UserActivityReport">User Activity Report</a></li>
					</ul></li>
				<li id="idLegal" class="dropdown"><a
					class="dropdown-toggle b-1" data-toggle="dropdown" href="#"
					aria-expanded="false">Report <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/SocietyManagement/downloadPdf/Form_NDH-1">NDH-1</a></li>
						<li><a href="/SocietyManagement/downloadPdf/Form_NDH-2">NDH-2</a></li>
						<li><a href="/SocietyManagement/downloadPdf/Form_NDH-3">NDH-3</a></li>
						<li><a href="/SocietyManagement/downloadPdf/Form_NDH-4">NDH-4</a></li>
						<li><a href="memberDetailRptt">Member Report</a></li>
						<li><a href="InvestmentReport">Investment Report</a></li>
						<li><a href="savingsStatement">Savings Account Report</a></li>
						<li><a href="loanSearch">Loan Report</a></li>
					</ul></li>
				<li id="idcollsheet"><a class="b-1" href="AllCollectionSheet.html">Collection Sheet</a></li>
				<li id="idquickdep"><a class="b-1" href="QuickDeposit.html">Quick Deposit <span
               class="label label-success">NEW</span></a></li>
			</ul> -->
		</div>
		<div class="navbar-custom-menu">
			<ul class="nav navbar-nav p-1">
				<!-- Messages: style can be found in dropdown.less-->
				<%-- <li class="dropdown messages-menu"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="fa fa-envelope-o"></i> <span class="label label-success">3</span>
				</a>
					<ul class="dropdown-menu">
						<li class="header">You have 3 messages</li>
						<li>
							<!-- inner menu: contains the actual data -->
							<ul class="menu">
								<li>
									<!-- start message --> <a href="#">
										<div class="pull-left">
											<i class="fa fa-align-right text-danger"></i>
										</div>
										<h4>
											LogIn Branch <small><i class="fa fa-clock-o"></i></small>
										</h4>
										<p>
											<%
											String userBranchName = (String) session.getAttribute("loggedInBranchName");
											%>
											<%=userBranchName%>
										</p>
								</a>
								</li>
								<!-- end message -->
								<li><a href="#">
										<div class="pull-left">
											<i class="fa fa-align-right text-danger"></i>
										</div>
										<h4>
											Last LogIn Date/Time <small><i class="fa fa-clock-o"></i></small>
										</h4>
										<p>
											<%
											String userLastLogin = (String) session.getAttribute("userLastLogin");
											%>
											<%=userLastLogin%>
										</p>
								</a></li>
								<li><a href="#">
										<div class="pull-left">
											<i class="fa fa-align-right text-danger"></i>
										</div>
										<h4>
											Server Date/Time <small><i class="fa fa-clock-o"></i></small>
										</h4>
										<p>
											<%=(new java.util.Date()).toLocaleString()%>
										</p>
								</a></li>
								<li></li>
							</ul>
						</li>
					</ul></li> --%>
				<!-- Notifications: style can be found in dropdown.less -->
				<!-- User Account: style can be found in dropdown.less -->
				<li class="profile-dropdown"><a href="#" class="profile-toggle"
					data-toggle="dropdown"> <img id="navProfileImg"
						class="profile-avatar hidden-xs" src="dist/img/User.png"
						alt="Profile">
				</a>

					<ul class="profile-menu">

						<!-- Profile Header -->
						<li class="profile-header"><img src="dist/img/User.png"
							class="profile-avatar-lg" alt="Profile">
							<p class="profile-welcome">
								Welcome User <small class="profile-status">Logged in</small>
							</p></li>

						<!-- Profile Footer -->
						<li class="profile-footer"><a id="btnLogout" href="logout"
							class="btn-profile-logout"> <i class="fa fa-sign-out"></i>
								Logout
						</a></li>

					</ul></li>


				<!-- Control Sidebar Toggle Button -->
				<!-- <li>
               <a href="#" data-toggle="control-sidebar"><i class="fa fa-gears"></i></a>
               </li> -->
			</ul>
		</div>
	</nav>
</header>

