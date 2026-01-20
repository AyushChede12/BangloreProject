<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true"
	onload="getAllPolicyNumber1();getfetchbranchinvmaturity();">
	<div
		style="height: auto; min-height: 100%; background: url(dist/img/back.jpg);">
		<!-- Header Start-->
		<jsp:include page="../menu.jsp" />
		<!-- Header End -->
		<!-- Left side column. contains the logo and sidebar -->
		<!-- Aside Menu Start-->
		<jsp:include page="../asideMenu.jsp" />
		<!-- Aside Menu end -->
		<script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ScriptManager1', 'form1', [], [], [], 90, 'ctl00');
//]]>
</script>
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1105.75px;">
			<section class="content-header">
				<h1 id="ContentPlaceHolder1_IdHeader">
					<b>APPROVALS</b>
				</h1>
				<h5 style="margin-left: 18px;">MATURITY APPROVAL </h5>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Maturity Approval</li>
				</ol>
			</section>
			<form id="myForm" name="myForm">
				<section class="content">
					<div class="row">
						<div class="col-md-12">

							<div class="form-container">
								<div class="box-header">
									<h3 class="box-title">Search Box</h3>
								</div>

								<div class="box-body form-horizontal">

									<div class="row four-field-row">
										<div class="col-md-6">
											<label class="col-sm-4 control-label">Policy No. :</label>
											<div class="col-sm-8">
												<select name="searchbyPolicyNo" type="text"
													id="searchbyPolicyNo"
													onchange="getdataAddInvesmentCodeforMAturity();"
													class="form-control">
													<option>Select</option>
												</select>
											</div>
										</div>
									</div>

									<div class="form-group text-center">
										<label></label> <a id="btnSearch"
											class="btn btn-success margin-20"
											href="javascript:getMemberApproval()"> <span
											class="fa fa-search"></span> SEARCH
										</a>
									</div>
								</div>
							</div>

							<div class="form-container">
								<div class="box-header">
									<h3 class="box-title">Policy Details</h3>
								</div>

								<div class="box-body form-horizontal">
									<div class="row four-field-row">
										<div class="col-md-3">
											<label class="col-sm-4 control-label">Policy No. :</label>
											<div class="col-sm-8">
												<input name="id" type="text" readonly="readonly" id="id"
													class="form-control" />
											</div>
										</div>
										<div class="col-md-3">

											<label class="col-sm-4 control-label">Applicant Name
												:</label>
											<div class="col-sm-8">
												<input name="applicantName" type="text" readonly="readonly"
													id="applicantName" class="form-control" />
											</div>
										</div>
										<div class="col-md-3">

											<label class="col-sm-4 control-label">Plan Name :</label>
											<div class="col-sm-8">
												<input name="planName" type="text" readonly="readonly"
													id="planName" class="form-control" />
											</div>
										</div>
										<div class="col-md-3">

											<label class="col-sm-4 control-label"> Plan Code :</label>
											<div class="col-sm-8">
												<input name="planCode" type="text" readonly="readonly"
													id="planCode" class="form-control" />
											</div>
										</div>
									</div>

									<div class="row four-field-row">
										<div class="col-md-3">

											<label class="col-sm-4 control-label">Mode</label>
											<div class="col-sm-8">
												<input name="mode" type="text" readonly="readonly" id="mode"
													class="form-control" />
											</div>
										</div>

										<div class="col-md-3">

											<label class="col-sm-4 control-label">Term :</label>
											<div class="col-sm-8">
												<input name="term" type="text" readonly="readonly" id="term"
													class="form-control" />
											</div>
										</div>
										<div class="col-md-3">

											<label class="col-sm-4 control-label">Policy Date :</label>
											<div class="col-sm-8">
												<input name="policyDate" type="text" readonly="readonly"
													id="policyDate" class="form-control" />
											</div>
										</div>
										<div class="col-md-3">

											<label class="col-sm-4 control-label">Mat. Date :</label>
											<div class="col-sm-8">
												<input name="mDate" type="text" readonly="readonly"
													id="mDate" class="form-control" />
											</div>
										</div>
									</div>

									<div class="row four-field-row">
										<div class="col-md-3">
											<label class="col-sm-4 control-label">Plan Amt.</label>
											<div class="col-sm-8">
												<input name="policyAmount" type="text" readonly="readonly"
													id="policyAmount" class="form-control" />
											</div>
										</div>
										<div class="col-md-3">
											<label class="col-sm-4 control-label">Mat. Amt.</label>
											<div class="col-sm-8">
												<input name="maturityAmount" type="text" readonly="readonly"
													id="maturityAmount" class="form-control" />
											</div>
										</div>
										<div class="col-md-3">
											<label class="col-sm-4 control-label">Inst Paid :</label>
											<div class="col-sm-8">
												<input name="noOfInstPaid" type="text" readonly="readonly"
													id="noOfInstPaid" class="form-control" />
											</div>
										</div>
										<div class="col-md-3">
											<label class="col-sm-4 control-label">Total Deposit :</label>
											<div class="col-sm-8">
												<input name="totalDeposit" type="text" readonly="readonly"
													id="totalDeposit" class="form-control" />
											</div>
										</div>
									</div>

									<div class="row four-field-row">
										<div class="col-md-3">
											<label class="col-sm-4 control-label">ROI(%) :</label>
											<div class="col-sm-8">
												<input name="roi" type="text" readonly="readonly" id="roi"
													class="form-control" />
											</div>
										</div>
										<div class="col-md-3">
											<label class="col-sm-4 control-label">Penalty :</label>
											<div class="col-sm-8">
												<input name="penalty" type="text" readonly="readonly"
													id="penalty" class="form-control" />
											</div>
										</div>
										<div class="col-md-3">
											<label class="col-sm-4 control-label">Req. User</label>
											<div class="col-sm-8">
												<input name="reqUser" type="text" readonly="readonly"
													id="reqUser" class="form-control" />
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="form-container">
								<div class="box-header">
									<h3 class="box-title">Payment Details</h3>
								</div>

								<div class="box-body form-horizontal">

									<div class="row four-field-row">
										<div class="col-md-3">

											<label class="col-sm-4 control-label">Sys. Payable :</label>
											<div class="col-sm-8">
												<input name="CalculatedMaturity" type="text"
													readonly="readonly"
													onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$txtCalculatedMaturity\&#39;,\&#39;\&#39;)&#39;, 0)"
													onkeypress="if (WebForm_TextBoxKeyHandler(event) == false) return false;"
													id="CalculatedMaturity" class="form-control"
													style="color: Red; font-weight: bold;" />
											</div>
										</div>
										<div class="col-md-3">
											<label class="col-sm-4 control-label">Deduction (-) :</label>
											<div class="col-sm-8">
												<input name="deduction" type="text" id="deduction"
													class="form-control" onpaste="return false"
													autocomplete="off" />
											</div>
										</div>
										<div class="col-md-3">
											<label class="col-sm-4 control-label">Adjustment (+)
												:</label>
											<div class="col-sm-8">
												<input name="adjustment" type="text" id="adjustment"
													class="form-control" autocomplete="off" />
											</div>
										</div>
										<div class="col-md-3">
											<label class="col-sm-4 control-label">Net Payable :</label>
											<div class="col-sm-8">
												<input name="NetPayable" type="text" readonly="readonly"
													id="NetPayable" class="form-control"
													style="color: Green; font-weight: bold;" />
											</div>
										</div>
									</div>

									<div class="row four-field-row">
										<div class="col-md-3">
											<label class="col-sm-4 control-label">Application
												Branch :</label>
											<div class="col-sm-8">
												<input name="ReqBCode" type="text" readonly="readonly"
													id="ReqBCode" class="form-control" />
											</div>
										</div>
										<div class="col-md-3">
											<label class="col-sm-4 control-label">Approval Date :</label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="approvalDate" type="date" value="01/08/2022"
														id="approvalDate" class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
											</div>
										</div>
										<div class="col-md-3">
											<label class="col-sm-4 control-label">Approve Branch
												:</label>
											<div class="col-sm-8">
												<select name="appBranch" id="appBranch" class="form-control"
													style="width: 100%;">
													<option></option>
												</select>
											</div>
										</div>
										<div class="col-md-3">
											<label class="col-sm-4 control-label">Approve Remarks
												:</label>
											<div class="col-sm-8">
												<input name="remarks" type="text" id="remarks"
													class="form-control" />
											</div>
										</div>
									</div>

									<div class="row four-field-row">
										<div class="col-md-3">
											<label class="col-sm-4 control-label">Approve Status
												:</label>
											<div class="col-sm-8">
												<select name="aprovalStatus" type="text" id="aprovalStatus"
													class="form-control">
													<option value="1">Approved</option>
													<option value="0">Rejected</option>
												</select>
											</div>
										</div>
									</div>
									<div class="text-center">
										<input type="submit" name="ctl00$ContentPlaceHolder1$btnSave"
											value="Maturity Approve" id="ContentPlaceHolder1_btnSave"
											class="btn btn-warning" />
									</div>

								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-body"></div>
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
	<script src="dist/js/investmentSection .js"></script>
	<script src="dist/js/ApprovalSectionJs.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	<script type="text/javascript">
	   $(document).ready(function() {
	   $("#myForm").submit(function(e) {
	   e.preventDefault(); // prevent default form submit action
		//alert("Hello")
	   var formData = new FormData($(this)[0]); // create new FormData object from form data
	   //console.log(formData);
	   $.ajax({
	       url: "updateBySelectPolicyNoMAturity",
	       type: "POST",
	       data: formData,
	       processData: false,
	       contentType: false,
	       success: function(data) {
	    	   alert("Data  Save Sucessfully !!!!!!!!!!!!!")
	    	   window.location.href = "maturityApplicationApproval";
	       },
	       error: function(error) {
	           console.log(error);
	       }
	   });
	});
	});
</script>
</body>
<!-- Dk/Admin/MaturityApplicationApproval.aspx EDB D 09:27:14 GMT -->
</html>