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
				<h1 id="ContentPlaceHolder1_IdHeader">GL Head List</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Accounting</li>
				</ol>
			</section>
			<!-- <form method="" action="" id="form1" modelAttribute=""
				enctype="multipart/form-data"> -->
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">GL Head List</h3>
							</div>
							<div class="box-body">
								<div class="col-md-6">
									<div class="form-group row">
										<label class="col-sm-4 control-label">Account Group </label>
										<div class="col-sm-8">
											<select name="accountGroup" id="accountGroup"
												class="form-control select2" style="width: 100%;">
												<option value="">All</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Account Type </label>
										<div class="col-sm-8">
											<select name="accountType" id="accountType"
												class="form-control select2" style="width: 100%;">
												<option value="">All</option>
											</select>
										</div>
									</div>
									<div class="form-group row">
										<label for="glHeadNoFrom" class="col-sm-4 control-label">GL
											Head No.(From)</label>
										<div class="col-sm-8">
											<input name="glHeadNoFrom" type="text" id="glHeadNoFrom"
												class="form-control" Placeholder="Enter GL Head No.(From)" />
										</div>
									</div>
									<div class="form-group row">
										<label for="glHeadNoFrom" class="col-sm-4 control-label">GL
											Head No.(To)</label>
										<div class="col-sm-8">
											<input name="glHeadNoTo" type="text" id="glHeadNoTo"
												class="form-control" Placeholder="Enter GL Head No.(To) " />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-group row">
										<label for="startDate" class="col-sm-4 control-label">Start
											Date </label>
										<div class="col-sm-8">
											<input name="startDate" type="date" id="startDate"
												class="form-control" Placeholder="Enter Start Date " />
										</div>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Status </label>
										<div class="col-sm-8">
											<select name="status" id="status"
												class="form-control select2" style="width: 100%;">
												<option value="">Open</option>
												<option value="">Close</option>
											</select>
										</div>
									</div>
									<div class="row col-md-12">
										<input type="button" name="btnShow" value="Show" id="btnShow"
											class="btn btn-success pull-right margin-r-5"
											onclick="getAllGLHeadListData();"> <input
											type="button" name="btnDetails" value="Details"
											id="btnDetails" class="btn btn-success pull-right margin-r-5"
											onclick="" disabled="disabled"> <input type="button"
											name="btnExport" value="Export" id="btnExport"
											class="btn btn-success pull-right margin-r-5" onclick=""
											disabled="disabled"> <input type="button"
											name="btnDelete" value="Delete" id="btnDelete"
											class="btn btn-success pull-right margin-r-5" onclick=""
											disabled="disabled">
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-2"></div>
					<div class="box box-success"
						style="box-shadow: none; overflow: auto !important;">
						<div class="box-header with-border">
							<div class="box-tools pull-right"></div>
						</div>
						<div class="box-body">
							<div class="clearfix margin-bottom-10"></div>
							<table cellspacing="0" cellpadding="3" rules="all"
								class="display nowrap table table-hover table-striped table-bordered"
								border="1" id="glGroupTable"
								style="width: 100%; border-collapse: collapse;">
								<caption></caption>
								<thead>
									<tr style="color: White; background-color: #008385;">
										<th scope="col">Select</th>
										<th scope="col">Sr No.</th>
										<th scope="col">GL Head No</th>
										<th scope="col">GL Head</th>
										<th scope="col">Primary Group</th>
										<th scope="col">Balance Type</th>
										<th scope="col">Balance</th>
										<th scope="col">Status</th>
									</tr>
								</thead>
								<tbody id="glHeadListTableId">
								</tbody>
							</table>
						</div>
					</div>
					<div class="box-body">
						<div class="clearfix margin-bottom-10"></div>
					</div>
				</div>
			</section>
			<!-- </form> -->
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
	<script src="dist/js/config.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
</body>
<!-- Dk/Admin/ShareIssue.aspx?ismodify=false EDB D 09:26:56 GMT -->
</html>