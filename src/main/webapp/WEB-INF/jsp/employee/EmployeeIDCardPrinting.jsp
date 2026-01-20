<jsp:include page="../header.jsp" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">

	<div
		style="height: auto; min-height: 100%; background: url(dist/img/back.jpg);">
		<!-- Header Start-->
		<jsp:include page="../menu.jsp" />
		<!-- Header End -->
		<!-- Left side column. contains the logo and sidebar -->
		<!-- Aside Menu Start-->
		<jsp:include page="../asideMenu.jsp" />
		<!-- Aside Menu end -->
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1105.75px;">
			<section class="content-header">
				<h1 id="ContentPlaceHolder1_IdHeader">
					<b>MANAGE TEAM</b>
				</h1>
				<h5 style="margin-left: 18px;">IDENTITY CARD</h5>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>
							Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">ID Card</li>
				</ol>
			</section>


			<section class="content">
				<div class="row">
					<div class="col-md-12">

						<div class="form-container">
							<div class="box-header">
								<h3 class="box-title">Search Box</h3>
							</div>


							<div class="box-body form-horizontal">

								<!-- Row 1 -->
								<div class="row four-field-row">

									<div class="col-md-3">

										<label class="col-sm-4 control-label">Team Code : </label>
										<div class="col-sm-8">
											<input type="text" class="form-control" name="EmployeeById"
												id="EmployeeById" Placeholder="Enter Team Code"
												autocomplete="off" />
										</div>
									</div>
								</div>

								<div class="col-md-3">
									<label></label> <input type="button" id="search1"
										class="btn btn-success margin-20" value="Search"
										onclick="showEmployeeDetailsnew2();">
								</div>
							</div>
						</div>

						<!-- Table -->
						<div class="form-container"
							style="box-shadow: none; overflow: auto !important;">
							<div class="box-header">
								<h3 class="box-title">Search Result</h3>
							</div>

							<div class="box-body form-horizontal">

								<table cellspacing="0" cellpadding="3" rules="all"
									class="display nowrap table table-hover table-striped table-bordered"
									border="1" style="width: 100%; border-collapse: collapse;">
									<tr style="color: White; background-color: #008385;">
										<th scope="col">ID</th>
										<th scope="col">Employee Name</th>
										<th scope="col">Branch Name</th>
										<th scope="col">Date Of Joining</th>
										<th scope="col">Date Of Birth</th>
										<th scope="col">Mobile No.</th>
										<th scope="col">Address</th>
										<th scope="col">Department</th>
										<th scope="col">Email</th>
									</tr>
									<tbody id="tabelBody">
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>

	<script src="dist/js/EmpolyeeSection.js"></script>
	<!-- /.content-wrapper -->
	<script type="text/javascript">
		
	</script>
	<%-- <jsp:include page="../footer.jsp" /> --%>
</body>
</html>