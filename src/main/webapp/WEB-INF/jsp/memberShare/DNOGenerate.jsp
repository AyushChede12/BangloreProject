<jsp:include page="../header.jsp" />

<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="GetBranchNameInTheDropDown();">
	<form method="post" action="" id="form1">
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
					<h1 id="ContentPlaceHolder1_IdHeader"><b>MANAGE SHARES</b></h1>
					<h5>GENERATE DNO</h5>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">DNO</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-xs-12 form-container">
							
								
								<div class="box-body">

									<!-- ROW 1 -->
									<div class="row">
										<div class="col-md-3">
											
												<label>BRANCH :</label> <select name="branchName"
													id="branchName" class="form-control" style="width: 100%;">
													<option selected value="">SELECT CRITERIA</option>
												</select>
											
										</div>

										<div class="col-md-3">
											
												<label>FROM DATE :</label>
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="fDate" type="date" id="fDate"
														class="form-control" data-inputmask="'alias':'dd/mm/yyyy'"
														data-mask="">
												</div>
											
										</div>

										<div class="col-md-3">
											
												<label>TO DATE :</label>
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="tDate" type="date" id="tDate"
														class="form-control" data-inputmask="'alias':'dd/mm/yyyy'"
														data-mask="">
												</div>
											
										</div>

										<div class="col-md-3">
											
												<label>MEMBER NAME :</label> <input name="memberName"
													type="text" id="memberName" class="form-control"
													placeholder="ENTER MEMBER NAME" autocomplete="off" style="text-transform: uppercase;">
											
										</div>
									</div>

									<!-- ROW 2 -->
									<div class="row" style="margin-top: 20px;">
										<div class="col-md-3">
											
												<label>MEMBER NO. :</label> <input name="memberNo"
													type="text" id="memberNo" class="form-control"
													placeholder="ENTER PAN NO." autocomplete="off">
											
										</div>

										<div class="col-md-3">
											
												<label>CLIENT NO. :</label> <input name="clientNo"
													type="text" id="clientNo" class="form-control"
													placeholder="ENTER PAN NO." autocomplete="off" >
											
										</div>
									</div>

									<!-- BUTTONS -->
									<div class="row" style="margin-top: 30px;">
										<div class="col-md-12 text-center">
											<a id="ContentPlaceHolder1_btnSearch" class="btn btn-success"
												href="javascript:getMemberShareDataInTable();"> <span
												class="fa fa-search"></span> SEARCH
											</a> 
										</div>
									</div>

								</div>

							
							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-header with-border">
									<h3 class="box-title">SEARCH RESULT</h3>
									
								</div>
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<table cellspacing="0" cellpadding="3" rules="all"
										class="display nowrap table table-hover table-striped table-bordered"
										border="1" style="width: 100%; border-collapse: collapse;">
										<caption>SEARCH</caption>
										<tr style="color: White; background-color: #008385;">
											<th scope="col">S/N</th>
											<th scope="col">MEMBER NAME</th>
											<th scope="col">Branch NAME</th>
											<th scope="col">DOJ</th>
											<th scope="col">NO. OF SHARE</th>
											<th scope="col">SHARE BALANCE</th>
											<th scope="col">PAYMODE</th>
											<th scope="col">MEMBER NO.</th>
											<th scope="col">CLIENT NO.</th>
										</tr>
										<tbody id="table1">

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
		<script src="dist/js/memberShare.js"></script>
		<script src="dist/js/GetAllBranch.js"></script>
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>

	</form>
</body>
</html>
