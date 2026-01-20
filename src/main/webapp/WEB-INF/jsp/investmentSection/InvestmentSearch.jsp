<jsp:include page="../header.jsp" />
<!-- onload="getAllPolicyNumber1();investmentSearchFunction()" -->
<body class="skin-blue sidebar-mini"
	onload="getAllPolicyNumber1(); GetBranchNameInTheDropDown();"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!-- <form method="post" action="investmentSearch" id="form1" modelAttribute="user"> -->

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
					<b>MANAGE POLICY</b>
				</h1>
				<h5 style="margin-left: 18px;">SEARCH POLICY</h5>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Search</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-xs-12">

						<div class="form-container">
							<div class="box-header">
								<h3 class="box-title">Search Box</h3>
							</div>

							<div class="box-body form-horizontal">

								<div class="row four-field-row">
									<div class="col-md-3">
										<label class="col-sm-4 control-label">Branch :</label>
										<div class="col-sm-8">
											<select name="branchName" id="branchName"
												class="form-control select2" style="width: 100%;">
												<option value="">Select</option>
											</select>
										</div>
									</div>
									<div class="col-md-3">

										<label class="col-sm-4 control-label">From Date :</label>
										<div class="col-sm-8">
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="fDate" type="date" value="" id="fDate"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>
									</div>


									<div class="col-md-3">
										<label class="col-sm-4 control-label">To Date :</label>
										<div class="col-sm-8">
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="tDate" type="date" value="" id="tDate"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>
									</div>

									<div class="col-md-3">
										<label class="col-sm-4 control-label">Applicant Name :</label>
										<div class="col-sm-8">
											<input name="applicantName" type="text" id="applicantName"
												class="form-control" Placeholder="Enter Applicant Name"
												autocomplete="off" />
										</div>
									</div>
								</div>

								<div class="row four-field-row">
									<div class="col-md-3">
										<label class="col-sm-4 control-label">Policy No. :</label>
										<div class="col-sm-8">
											<input name="policyno" type="text" id="policyno"
												class="form-control" Placeholder="Enter Policy No."
												autocomplete="off" />
										</div>
									</div>
									<div class="col-md-3">
										<label class="col-sm-4 control-label">Member Code :</label>
										<div class="col-sm-8">
											<input name="searchMemberCode" type="text"
												id="searchMemberCode" class="form-control"
												Placeholder="Enter Member Code" autocomplete="off" />
										</div>
									</div>
									<div class="col-md-3">

										<label class="col-sm-4 control-label">Plan Name :</label>
										<div class="col-sm-8">
											<select name="planName" id="planName"
												class="form-control select2" style="width: 100%;">
												<option value=""></option>
												<option value="DRD">DRD</option>
												<option value="FD">FD</option>
												<option value="MIS">MIS</option>
												<option value="RD">RD</option>

											</select>
										</div>
									</div>
									<div class="col-md-3">

										<label class="col-sm-4 control-label">Advisor Code :</label>
										<div class="col-sm-8">
											<input name="advisorCode" type="text" id="advisorCode"
												class="form-control" Placeholder="Enter Advisor Code"
												autocomplete="off" />
										</div>
									</div>
								</div>

								<div class="text-center">
									<a id="ContentPlaceHolder1_btnSearch" class="btn btn-success">
										<span class="fa fa-search"></span> SEARCH
									</a>
								</div>
							</div>
						</div>
						
						<div class="form-container"
							style="box-shadow: none; overflow: auto !important;">
							<div class="box-header">
								<h3 class="box-title">
									Investment Search
								</h3>
							</div>
							<div class="box-body form-horizontal">
								<table cellspacing="0" cellpadding="3" rules="all"
									class="display nowrap table table-hover table-striped table-bordered"
									border="1" id="ContentPlaceHolder1_gdvDaily"
									style="width: 100%; border-collapse: collapse;">
									<tr style="color: White; background-color: #008385;">
										<th scope="col">ID</th>
										<th scope="col">CSP Name</th>
										<th scope="col">Address</th>
										<th scope="col">Advisor Code</th>
										<th scope="col">Age</th>
										<th scope="col">District</th>
										<th scope="col">DOB</th>
										<th scope="col">Joint Code</th>
										<th scope="col">Joint Name</th>
										<th scope="col">M Date</th>
										<th scope="col">Maturity Amount</th>
										<th scope="col">Member Name</th>
									</tr>
									<tbody id="tablesearch">
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
		<!-- /.content-wrapper -->
		<div class="control-sidebar-bg"></div>
	</div>

	<script src="bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

	<!-- InputMask -->
	<script src="plugins/input-mask/jquery.inputmask.js"></script>
	<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
	<!-- date-range-picker -->
	<script src="bower_components/moment/min/moment.min.js"></script>
	<script
		src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	<!-- bootstrap datepicker -->
	<script
		src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	<!-- bootstrap color picker -->
	<script
		src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
	<!-- bootstrap time picker -->
	<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
	<!-- SlimScroll -->
	<script
		src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<!-- iCheck 1.0.1 -->
	<script src="plugins/iCheck/icheck.min.js"></script>
	<!-- FastClick -->
	<script src="bower_components/fastclick/lib/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	<script src="dist/js/InvestmentSearchJs.js"></script>
	<script src="dist/js/investmentSection .js"></script>
	<script src="dist/js/GetAllBranch.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>

	<!-- </form> -->
</body>

<!-- Dk/Admin/InvestmentSearch.aspx EDB D 09:27:04 GMT -->
</html>