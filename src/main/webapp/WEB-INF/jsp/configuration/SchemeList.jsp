<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="">
	<div
		style="height: auto; min-height: 100%;  background: url(dist/img/back.jpg);">
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
				<h1 id="ContentPlaceHolder1_IdHeader">Scheme List</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Accounting</li>
				</ol>
			</section>
			<form method="post" action="" id="form1" modelAttribute=""
				enctype="multipart/form-data">
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title"></h3>
								</div>
								<div class="box-body">
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Organization </label>
											<div class="col-sm-8">
												<select name="organization" id="organization"
													class="form-control select2" style="width: 100%;"
													disabled="disabled">
													<option selected="selected" value="">Sumukha Nidhi</option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Organization</span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Status </label>
											<div class="col-sm-8">
												<select name="status" id="status"
													class="form-control select2" style="width: 100%;">
													<option selected="selected" value="">Select</option>
													<option value="Open">Open</option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Status</span>
											</div>
										</div>
									</div>
									<div class="col-md-4">
										<input type="button" name="btnSave" value="Show" id="btnShow" onclick="getAllGLHeadNo();" class="btn btn-success pull-right margin-r-5" />
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="box box-success"
									style="box-shadow: none; overflow: auto !important;">
									<div class="box-header with-border">
									</div>
									<div class="box-body">
										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" id="ContentPlaceHolder1_gdvData"
											style="width: 100%; border-collapse: collapse;"
											id="shareCertificate">
											<caption></caption>
											<tr style="color: White; background-color: #008385;">
												<th scope="col">Select</th>
												<th scope="col">Sr No.</th>
												<th scope="col">G.L. Head No.</th>
												<th scope="col">Scheme Name</th>
												<th scope="col">Status</th>
												<th scope="col">View</th>
												<th scope="col">Delete</th>
											</tr>
											<tbody id="SchemeListTable">

											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</form>
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
	<script src="dist/js/accountingJs.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
</body>
<!-- Dk/Admin/ShareIssue.aspx?ismodify=false EDB D 09:26:56 GMT -->
</html>