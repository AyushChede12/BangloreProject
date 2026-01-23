<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<jsp:include page="../header.jsp" />


<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true"
	onload="branchNameDropdown(); dropDownBranchEmployee();">
	<!--     <form method="post" action="" id="form1">
 -->
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
				<h5 style="margin-left: 18px;">SEARCH TEAM MEMBER</h5>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>
							Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Search Employee</li>
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

										<label class="col-sm-4 control-label">Branch : </label>
										<div class="col-sm-8">
											<select name="branch" id="branch"
												class="form-control select2" style="width: 100%;">
												<option value="">Select</option>
											</select>
										</div>
									</div>

									<div class="col-md-3">

										<label class="col-sm-4 control-label">From Date : </label>
										<div class="col-sm-8">
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="fDate" type="date" id="fDate"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>
									</div>

									<div class="col-md-3">

										<label class="col-sm-4 control-label">To Date : </label>
										<div class="col-sm-8">
											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="tDate" type="date" id="tDate"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>
									</div>

									<div class="col-md-3">

										<label class="col-sm-4 control-label">Employee Name :
										</label>
										<div class="col-sm-8">
											<input name="empName" type="text" id="empName"
												class="form-control" Placeholder="Enter Employee Name"
												autocomplete="off" />
										</div>
									</div>
								</div>


								<!-- Row 2 -->
								<div class="row four-field-row">

									<div class="col-md-3">

										<label class="col-sm-4 control-label">Employee Code :
										</label>
										<div class="col-sm-8">
											<input name="empCode" type="text" id="empCode"
												class="form-control" Placeholder="Enter Employee Code"
												autocomplete="off" />
										</div>
									</div>

									<div class="col-md-3">

										<label class="col-sm-4 control-label">Mobile No. : </label>
										<div class="col-sm-8">
											<input name="phoneNo" type="text" id="phoneNo"
												class="form-control" Placeholder="Enter Mobile No."
												autocomplete="off" />
										</div>
									</div>

									<div class="col-md-3">

										<label class="col-sm-4 control-label">Designation : </label>
										<div class="col-sm-8">
											<select name="designation" id="designation"
												class="form-control" style="width: 100%;">
												<option value="">Select</option>
											</select>
										</div>
									</div>

									<div class="col-md-3">

										<label class="col-sm-4 control-label">Department : </label>
										<div class="col-sm-8">
											<select name="department" id="department"
												class="form-control" style="width: 100%;">
												<option value="">Select</option>
											</select>
										</div>
									</div>
								</div>

								<div class="clearfix margin-bottom-10"></div>
								<div class="text-center">
									<a id="ContentPlaceHolder1_btnSearch" class="btn btn-success"
										href="javascript:searchThroughEmployee();"><span
										class="fa fa-search"></span> SEARCH</a>
								</div>
							</div>
						</div>


						<div class="form-container"
							style="box-shadow: none; overflow: auto !important;">
							<div class="box-header">
								<h3 class="box-title">Search Result</h3>

							</div>
							<div class="box-body form-horizontal">
								<div class="clearfix margin-bottom-10"></div>
								<div>
									<table cellspacing="0" cellpadding="3" rules="all"
										class="display nowrap table table-hover table-striped table-bordered"
										border="1" style="width: 100%; border-collapse: collapse;">

										<tr style="color: White; background-color: #008385;">
											<th scope="col">S/N</th>
											<th scope="col">Employee Name</th>
											<th scope="col">DOB</th>
											<th scope="col">Bank Account</th>
											<th scope="col">DOJ</th>
											<th scope="col">Phone No</th>
											<th scope="col">Email ID</th>
										</tr>
										<tbody id="searchEmployee">

										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>

	</div>
	<!-- /.content-wrapper -->
	<%-- <jsp:include page="../footer.jsp" /> --%>
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

	<script src="dist/js/EmpolyeeSection.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>

	<!--     </form>
 -->
</body>
</html>