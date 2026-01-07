<jsp:include page="../header.jsp" />
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<body onload="getTalukaDetails(); getSateInDropdown();"
	class="skin-blue sidebar-mini"
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
					<h5 style="margin-left: 18px;">ADD TALUKA</h5>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Add Taluka</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-xs-12">
							<div class="form-container">
								<div class="box-header ">
									<h3 class="box-title">Add New Taluka</h3>
								</div>
								<div class="box-body">
									<div class="row" style="margin-top: 15px;">
										<div class="col-md-4">

											<label>Select State : <strong style="color: Red">*</strong></label>
											<select name="state" id="state" class="form-control"
												onclick="getDistrictInDropdown();">
												<option>Select State</option>
											</select> <span id="fyNameMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												FY Name</span>

										</div>
										<div class="col-md-4">

											<label>Select District : <strong style="color: Red">*</strong></label>
											<select name="district" id="district" class="form-control">
												<option>Select District</option>
											</select> <span id="fyNameMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												FY Name</span>

										</div>
										<div class="col-md-4">

											<label>New Taluka : <strong style="color: Red">*</strong></label>
											<input name="taluka" type="text" id="taluka"
												class="form-control" /> <span id="fyNameMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												FY Name</span>

										</div>
									</div>
									<div class="text-center"></div>
									<div class="row">
										<div class="col-md-12" style="text-align: center;">
											
												<label></label>
												<button type="submit" id="ContentPlaceHolder1_btnSearch"
													name="savebtn" value="Save" id="savebtn"
													onclick="saveTalukaData();"
													class="btn btn-success  margin-20">
													<span class="fa fa-save"></span> Add
												</button>
											
										</div>
									</div>
								</div>
							</div>
							<div class="form-container"
								style=" overflow: auto !important;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<div>
										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" style="width: 100%; border-collapse: collapse;">
											<tr style="color: White; background-color: #008385;">
												<th scope="col">Sr.No</th>
												<th scope="col">Taluka</th>
												<th scope="col">Delete</th>
											</tr>
											<tbody id="tableBody">
											</tbody>
										</table>
									</div>
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
		<script src="dist/js/DistrictMaster.js"></script>
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
		<script type="text/javascript">
			
		</script>
	</form>
</body>
</html>