<jsp:include page="../header.jsp" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
	integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />


<style>
/* Increase table header strip height */
.custom-table thead th {
	background-color: #C48223; /* header color */
	color: #ffffff;
	text-align: center;
	font-size: 18px; /* heading text bigger */
	font-weight: 700;
	padding: 18px 12px; /* 🔥 HEIGHT CONTROL */
	line-height: 1.8; /* 🔥 OPEN LOOK */
	vertical-align: middle;
	white-space: nowrap;
}

/* Body rows more open */
.custom-table tbody td {
	padding: 14px 12px;
	font-size: 15px;
}

.iconbutton {
    background: none;
    border: none;
    padding: 0;
    cursor: pointer;
}

.iconbutton:focus {
    outline: none;
}

.iconbutton i {
    font-size: 18px;
}

</style>
<body onload="getAllFYDetails()" class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form>
		<div
			style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
			<!-- Header Start-->
			<jsp:include page="../menu.jsp" />
			<!-- Header End -->
			<!-- Left side column. contains the logo and sidebar -->
			<!-- Aside Menu Start-->
			<jsp:include page="../asideMenu.jsp" />
			<!-- Aside Menu end -->
			<script type="text/javascript">
				//<![CDATA[
				Sys.WebForms.PageRequestManager._initialize(
						'ctl00$ScriptManager1', 'form1', [], [], [], 90,
						'ctl00');
				//]]>
			</script>
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper" style="min-height: 1105.75px;">
				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">
						<b>CUSTOMIZATION</b>
					</h1>
					<h5 style="margin-left: 18px">ADD FINANCIAL YEAR</h5>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Add FY Master</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-xs-12">
							<div class="form-container">
								<div class="box-header ">
									<h3 class="box-title">Entry Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-4">

										<label>Financial Year Name : <strong
											style="color: Red">*</strong></label> <input name="fyName"
											type="text" id="fyName" style="text-transform: uppercase;"
											placeholder="Enter FY Name" class="form-control" /> <span
											id="fyNameMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											FY Name</span>
											<small id="chkfyname" style="color: red;"></small>

									</div>
									<div class="col-md-4">

										<label>From Date :</label>
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input name="fDate" type="date" value="01/08/2022" id="fDate"
												class="form-control" data-inputmask="" data-mask="" />
												
										</div>
										<small id="chkdatefrom" style="color: red;"></small>

									</div>
									<div class="col-md-4">

										<label>To Date :</label>
										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input name="tDate" type="date" value="01/08/2022" id="tDate"
												class="form-control" data-inputmask="" data-mask="" />
										</div>
										<small id="chkdateto" style="color: red;"></small>

									</div>

								</div>
								<div class="col-md-11" style="text-align: center;">

									<label></label>
									<button type="button" id="addBtn"
										class="btn btn-primary  margin-20">
										<span class="fa fa-save"></span>&nbsp; Add
									</button>

								</div>
								<div class="text-center"></div>
							</div>
							<div class="form-container table-responsive">
								<div class="box-body">

									<table
										class="table table-bordered table-hover table-striped custom-table datatable">
										<thead>
											<tr>
												<th>Sl No</th>
												<th>FY Name</th>
												<th>From Date</th>
												<th>To Date</th>
												<th>Edit</th>
												<th>Delete</th>
											</tr>
										</thead>
										<tbody>
											<!-- dynamic rows -->
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

		<!-- AdminLTE App -->
		<script src="dist/js/adminlte.min.js"></script>
		<script src="dist/js/customization/financialYear.js"></script>
		<!-- <script src="bower_components/jquery/dist/jquery.min.js"></script>
		Bootstrap 3.3.7
		<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
		InputMask
		<script src="plugins/input-mask/jquery.inputmask.js"></script>
		<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
		<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
		date-range-picker
		<script src="bower_components/moment/min/moment.min.js"></script>
		<script
			src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
		bootstrap datepicker
		<script
			src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
		bootstrap color picker
		<script
			src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
		bootstrap time picker
		<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
		SlimScroll
		<script
			src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
		iCheck 1.0.1
		<script src="plugins/iCheck/icheck.min.js"></script>
		FastClick
		<script src="bower_components/fastclick/lib/fastclick.js"></script>
		
		AdminLTE for demo purposes
		<script src="dist/js/demo.js"></script>
		Select2
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script> -->

	</form>
</body>
</html>