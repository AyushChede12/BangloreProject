<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!-- <form method="post"
		action="http://admin:eqfi%23123@eqfinidhi.eadmin.in/Admin/IncentiveDetailsPrint.aspx"
		id="form1"> -->

	<div
		style="height: auto; min-height: 100%;  margin: 15px; background: url(dist/img/back.jpg);">

		<!-- Header Start-->
		<jsp:include page="../menu.jsp" />
		<!-- Header End -->
		<!-- Left side column. contains the logo and sidebar -->
		<!-- Aside Menu Start-->
		<jsp:include page="../asideMenu.jsp" />
		<!-- Aside Menu end -->
		<script type="text/javascript">
			//<![CDATA[
			Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1',
					'form1', [], [], [], 90, 'ctl00');
			//]]>
		</script>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1105.75px;">
			<section class="content-header">
				<h1 id="ContentPlaceHolder1_IdHeader">
					<b>BONUS MANAGEMENT</b>
				</h1>
				<h5 style="margin-left: 18px;">INCENTIVE PAYMENTS DETAILS</h5>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Details</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-xs-12">
						<div class="box box-success form-container">
							<div class="box-header ">
								<h3 class="box-title">Search Box</h3>
							</div>
							<div class="box-body">
								<div class="col-md-6" style="margin-top: 15px;">

									<label>Month Name :</label> <select name="invmonth"
										id="invmonth" class="form-control" style="width: 100%;">
										<option selected="selected" value="">--SELECT MONTH
											NAME--</option>
										<option value="January">January</option>
										<option value="February">February</option>
										<option value="March">March</option>
										<option value="April">April</option>
										<option value="May">May</option>
										<option value="June">June</option>
										<option value="July">July</option>
										<option value="August">August</option>
										<option value="September">September</option>
										<option value="October">October</option>
										<option value="November">November</option>
										<option value="December">December</option>
									</select>

								</div>
								<div class="col-md-6"style="margin-top: 15px;">

									<label>Code :</label> <input name="code" type="text" id="code"
										class="form-control" />

								</div>
								<div class="col-md-12 text-center"style="margin-top: 20px;">
									
										<label></label><input type="submit"
											name="ctl00$ContentPlaceHolder1$btnSave" value="Search"
											onclick="searchIncentiveDetailsPrints();"
											id="ContentPlaceHolder1_btnSave"
											class="btn btn-success  margin-r-5" />
									
								</div>

							</div>
						</div>
						<div class="box box-success form-container"
							style="box-shadow: none; overflow: auto !important;">
							<div class="box-header with-border">
								<div class="box-tools pull-right"></div>
							</div>
							<table cellspacing="0" cellpadding="3" rules="all"
								class="display nowrap table table-hover table-striped table-bordered"
								border="1" style="width: 100%; border-collapse: collapse;">
								<caption></caption>
								<tr style="color: White; background-color: #008385;">
									<th scope="col">S/N</th>
									<th scope="col">MONTH NAME</th>
									<th scope="col">CODE</th>
								</tr>
								<tbody id="shareTableBody">

								</tbody>
							</table>
							<div class="box-body"></div>
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
	<script src="dist/js/incentive.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>

	<!-- </form> -->
</body>

<!-- Dk/Admin/IncentiveDetailsPrint.aspx EDB D 09:27:20 GMT -->
</html>
