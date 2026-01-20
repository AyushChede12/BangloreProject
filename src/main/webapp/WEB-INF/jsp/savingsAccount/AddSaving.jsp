<jsp:include page="../header.jsp" />
<%@page import="java.util.List"%>
<%@page import="com.society.application.model.Member"%>
<%@page import="com.society.application.model.ClientMaster"%>
<%@page import="com.society.application.model.BranchMaster"%>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="saveSavingsAccountApplciation"
		model="saveSavingsAccountApplciation" id="form1">
		<%
		//List<Member> memberList = (List<Member>) request.getAttribute("memberList");
		List<ClientMaster> memberList = (List<ClientMaster>) request.getAttribute("memberList");
		%>
		<%
		List<BranchMaster> branchList = (List<BranchMaster>) request.getAttribute("branchList");
		%>
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
						<b>SAVING OPENING</b>
					</h1>
					<h5 style="margin-left: 18px;">CREATE SAVING ACCOUNT</h5>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Add Saving</li>
					</ol>
				</section>
				<div class="wizard-steps">
					<div class="wizard-step active" id="step1">
						<div class="step-circle">1</div>
						<div class="step-title">SAVING DETAILS</div>
						<div class="wizard-line"></div>
					</div>
					<div class="wizard-step inactive" id="step2">
						<div class="step-circle">2</div>
						<div class="step-title">PAYMENT DETAILS</div>
					</div>


				</div>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="form-container" id="savingDetailsSection">
								<div class="box-header">
									<h3 class="box-title">Saving Details</h3>
								</div>
								<div class="box-body">

									<div class="col-md-12" style="margin-top: 15px;">
										<div class="col-md-3">
											<label>Opening Date <strong style="color: Red">*</strong></label>

											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="opDate" type="date" id="opDate"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>
										</div>

										<div class="col-md-3">
											<label>Select by Member <strong style="color: Red">*</strong>
											</label> <select name="searchMemberCode" id="searchMemberCode"
												onchange="displayMemberDetailsSaving()"
												class="form-control select2" style="width: 100%;">
												<%
												if (memberList != null && !memberList.isEmpty()) {
													for (ClientMaster member : memberList) {
												%>
												<option value="<%=member.getId()%>"><%=member.getMemberName()%></option>
												<%
												}
												}
												%>
											</select><span
												id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												Member Code</span>

										</div>
										<div class="col-md-3">
											<label for="txtRelativeName">Member Name <strong
												style="color: Red">*</strong>
											</label> <input name="memberName" type="text" id="memberName"
												class="form-control" Placeholder="Enter Member Name" />
										</div>

										<div class="col-md-3">
											<label for="txtDOB">DOB <strong style="color: Red">*</strong>
											</label>

											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="dOB" type="date" id="dob" class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />
											</div>


										</div>
									</div>
									<div class="col-md-12" style="margin-top: 15px;">
										<div class="col-md-3">
											<label>Enter age : <strong style="color: Red">*</strong>
											</label> <input name="age" type="text" value="0" maxlength="2"
												id="age" class="form-control" Placeholder="Enter Age"
												onkeypress="return isNumberOnlyKey(this, event);"
												autocomplete="off" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidator12"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Age</span>

										</div>


										<div class="col-md-3">
											<label>Relative Details</label> <input name="relativeName"
												type="text" id="relativeName" class="form-control"
												Placeholder="Enter Relative Name &amp; Relation" />
										</div>

										<div class="col-md-3">
											<label for="txtPhoneno">Mobile No <strong
												style="color: Red">*</strong>
											</label> <input name="phoneno" type="text" maxlength="10"
												id="phoneno" class="form-control"
												Placeholder="Enter Mobile No" autocomplete="off"
												onkeypress="return isNumberOnlyKey(this, event);" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidator8"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Phone No</span>

										</div>
										<div class="col-md-3">
											<label for="txtNomineeName">Nominee Name</label> <input
												name="nomineeName" type="text" id="nomineeName"
												class="form-control" />
										</div>
									</div>
									<div class="col-md-12" style="margin-top: 15px;">
										<div class="col-md-3">
											<label for="txtNomineeName">Nominee Age</label> <input
												name="nomName" type="text" maxlength="2" id="nomineeAge"
												class="form-control" />

										</div>
										<div class="col-md-3">
											<label for="drpNomineeRelation">Nominee Relation</label> <select
												name="nRelation" id="nRelation" class="form-control"
												style="width: 100%;">
												<option value="Brother">Brother</option>
												<option value="Daughter">Daughter</option>
												<option value="Father">Father</option>
												<option value="Friend">Friend</option>
												<option value="Husband">Husband</option>
												<option value="Mother">Mother</option>
												<option value="Sister">Sister</option>
												<option value="Son">Son</option>
												<option value="Wife">Wife</option>
												<option value="Daughter in Law">Daughter in Law</option>
												<option value="Brother in Law">Brother in Law</option>
												<option value="Grand Daughter">Grand Daughter</option>
												<option value="Grand Son">Grand Son</option>
												<option value="Other">Other</option>
											</select>
										</div>

										<div class="col-md-3">
											<label for="txtAddress">Address <strong
												style="color: Red">*</strong>
											</label>

											<textarea name="address" rows="2" cols="20" id="address"
												class="form-control" Placeholder="Enter Addess">
</textarea>
											<span id="ContentPlaceHolder1_RequiredFieldValidator3"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Address</span>

										</div>
										<div class="col-md-3">
											<label for="txtDistrict">District <strong
												style="color: Red">*</strong>
											</label> <input name="district" type="text" id="district"
												class="form-control" Placeholder="Enter District" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidator4"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												District</span>
										</div>


									</div>
									<div class="col-md-12" style="margin-top: 15px;">
										<div class="col-md-3">
											<label for="ddlBranch">Branch Name <strong
												style="color: Red">*</strong>
											</label> <select name="cspName" id="cspName" class="form-control"
												style="width: 100%;">
												<%
												if (branchList != null && !branchList.isEmpty()) {
													for (BranchMaster branch : branchList) {
												%>
												<option value="<%=branch.getId()%>"><%=branch.getName()%></option>
												<%
												}
												}
												%>
											</select>

										</div>
										<div class="col-md-3">
											<label for="drpState">State <strong
												style="color: Red">*</strong>
											</label> <input name="state" type="text" id="state"
												class="form-control" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidator11"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
												State</span>

										</div>
										<div class="col-md-3">
											<label for="txtPin">Pin Code <strong
												style="color: Red">*</strong>
											</label> <input name="pin" type="text" maxlength="6" id="pin"
												class="form-control" Placeholder="Enter Pincode" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidator5"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												PIN</span>

										</div>
										<div class="col-md-3">
											<label for="ddlBranch">Mode Of Operation <strong
												style="color: Red">*</strong>
											</label> <select name="modeOfOp" id="modeOfOp" class="form-control"
												style="width: 100%;">
												<option value="Single">Single</option>
												<option value="Joint">Joint</option>
												<option value="Survivor">Survivor</option>
											</select>

										</div>
									</div>
									<div class="col-md-12" style="margin-top: 15px;">
										<div class="col-md-3">
											<label for="txtJointMemberName">Joint/Survivor Code</label> <input
												name="jointCode" type="text" id="jointCode"
												class="form-control" />

										</div>
										<div class="col-md-3">
											<label for="txtJointMemberName">Joint/Survivor Name</label> <input
												name="jointName" type="text" id="jointName"
												class="form-control" />

										</div>
										<div class="col-md-3">
											<label for="drpJointMembersRelativeRelation">Relation</label>

											<select name="jointRelation" id="jointRelation"
												class="form-control" style="width: 100%;">
												<option value="--Select--">--Select--</option>
												<option value="Brother">Brother</option>
												<option value="Daughter">Daughter</option>
												<option value="Father">Father</option>
												<option value="Friend">Friend</option>
												<option value="Husband">Husband</option>
												<option value="Mother">Mother</option>
												<option value="Sister">Sister</option>
												<option value="Son">Son</option>
												<option value="Wife">Wife</option>
												<option value="Daughter in Law">Daughter in Law</option>
												<option value="Brother in Law">Brother in Law</option>
												<option value="Grand Daughter">Grand Daughter</option>
												<option value="Grand Son">Grand Son</option>
												<option value="Other">Other</option>
											</select>

										</div>
										<div class="col-md-3">
											<label for="txtSchemeName">Select Plan <strong
												style="color: Red">*</strong>
											</label> <select name="sBPlan" id="sBPlan" class="form-control"
												style="width: 100%;">
												<option selected="selected" value="100">Basic SB
													Account</option>
												<option value="101">Standard SB Account</option>
												<option value="102">Advantage SB Account</option>
												<option value="103">Elite SB Account</option>
												<option value="104">Royal SB Account</option>
											</select>
										</div>
									</div>
									<div class="col-md-12" style="margin-top: 15px;">
										<div class="col-md-3">
											<label>Opening Amount <strong style="color: Red">*</strong>
											</label> <input name="openingAmount" type="text" value="500"
												id="openingAmount" class="form-control"
												onkeypress="return isNumberOnlyKey(this, event);" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Opening Amount</span>

										</div>
										<div class="col-md-3">
											<label>Advisor/Collector<strong style="color: Red">*</strong></label>

											<input name="advisorCode" type="text" id="advisorCode"
												class="form-control"
												placeholder="Enter Advisor/Collector Code" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidator1"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Advisor/Collector Code</span>

										</div>
										<div class="col-md-3">
											<label>Name <strong style="color: Red">*</strong></label> <input
												name="advisorName" type="text" id="advisorName"
												class="form-control"
												placeholder="Enter Advisor/Collector Name" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidator2"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Advisor/Collector Name</span>

										</div>
										<div class="col-md-3">
											<label for="txtOpeningFees">Opening Fees (if any)</label> <input
												name="opFees" type="text" value="0" id="opFees"
												class="form-control"
												onkeypress="return isNumberOnlyKey(this, event);" />

										</div>

									</div>
								</div>
								<div class="box-footer">


									<button type="button" class="btn btn-success pull-right"
										onclick="goToPaymentDetails()">NEXT</button>
								</div>
							</div>
							<div class="box form-container" id="paymentDetailsSection"
								style="display: none;">
								<div class="box-header ">
									<h3 class="box-title">Payment Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6" style="margin-top: 15px;">

										<label for="drpPaymentBy" class="col-sm-4 control-label">Payment
											By <strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<select name="paymode" id="paymode" class="form-control"
												style="width: 100%;">
												<option selected="selected" value="Cash">Cash</option>
												<option value="Cheque">Cheque</option>
												<option value="Online">Online</option>
												<option value="NEFT">NEFT</option>
											</select>
										</div>


										<label class="col-sm-4 control-label"
											style="margin-top: 15px;">Remarks</label>
										<div class="col-sm-8" style="margin-top: 15px;">
											<textarea name="remarks" rows="2" cols="20" id="remarks"
												class="form-control" Placeholder="Enter Remarks if any">
</textarea>
										</div>

									</div>
									<div class="col-md-6" style="margin-top: 15px;">

										<label class="col-sm-4 control-label">Account Status <strong
											style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<label class="switch"> <input id="chkisactive"
												type="checkbox" name="chkisactive" checked="checked" /> <span
												class="slider round"></span>
											</label>
										</div>


										<label class="col-sm-4 control-label">SMS Send <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<label class="switch"> <input id="chkisSms"
												type="checkbox" name="chkisSms" checked="checked" /> <span
												class="slider round"></span>
											</label>
										</div>


										<label class="col-sm-4 control-label">Debit Card Issue
											<strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<label class="switch"> <input id="chkdebitcard"
												type="checkbox" name="chkdebitcard" /> <span
												class="slider round"></span>
											</label>
										</div>

									</div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<button type="button" class="btn btn-success"
											onclick="backToSavingDetails()">PREVIOUS</button>
										<input type="submit" name="ctl00$ContentPlaceHolder1$btnSave"
											value="Save" id="ContentPlaceHolder1_btnSave"
											class="btn btn-success pull-right margin-r-5" />
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
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
		<script>
			$(function() {
				//Initialize Select2 Elements
				$('.select2').select2();
				//Datemask dd/mm/yyyy
				$('#datemask').inputmask('dd/mm/yyyy', {
					'placeholder' : 'dd/mm/yyyy'
				})
				//Datemask2 mm/dd/yyyy
				$('#datemask2').inputmask('mm/dd/yyyy', {
					'placeholder' : 'mm/dd/yyyy'
				})
				//Date range picker
				$('#reservation').daterangepicker()
				//Date range picker with time picker
				$('#reservationtime').daterangepicker({
					timePicker : true,
					timePickerIncrement : 30,
					locale : {
						format : 'MM/DD/YYYY hh:mm A'
					}
				})
				$('#daterange-btn')
						.daterangepicker(
								{
									ranges : {
										'Today' : [ moment(), moment() ],
										'Yesterday' : [
												moment().subtract(1, 'days'),
												moment().subtract(1, 'days') ],
										'Last 7 Days' : [
												moment().subtract(6, 'days'),
												moment() ],
										'Last 30 Days' : [
												moment().subtract(29, 'days'),
												moment() ],
										'This Month' : [
												moment().startOf('month'),
												moment().endOf('month') ],
										'Last Month' : [
												moment().subtract(1, 'month')
														.startOf('month'),
												moment().subtract(1, 'month')
														.endOf('month') ]
									},
									startDate : moment().subtract(29, 'days'),
									endDate : moment()
								},
								function(start, end) {
									$('#daterange-btn span').html(
											start.format('DD/MM/YYYY') + ' - '
													+ end.format('DD/MM/YYYY'))
								})
				//Date picker
				$('#datepicker').datepicker({
					autoclose : true
				})
				//Money Euro
				$('[data-mask]').inputmask()

				//iCheck for checkbox and radio inputs
				$('span[type="checkbox"].minimal').iCheck({
					checkboxClass : 'icheckbox_minimal-blue',
					radioClass : 'iradio_minimal-blue'
				})
			})
		</script>

		<script type="text/javascript">
			//<![CDATA[
			var Page_Validators = new Array(
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator12"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator8"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator3"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator4"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator11"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator5"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator1"),
					document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator2"));
			//]]>
		</script>

		<script type="text/javascript">
			//<![CDATA[
			var ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode");
			ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.controltovalidate = "ContentPlaceHolder1_ddlSearchMemberCode";
			ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.errormessage = "Select Member Code";
			ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator12 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator12"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator12");
			ContentPlaceHolder1_RequiredFieldValidator12.controltovalidate = "ContentPlaceHolder1_txtAge";
			ContentPlaceHolder1_RequiredFieldValidator12.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator12.errormessage = "Enter Age";
			ContentPlaceHolder1_RequiredFieldValidator12.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator12.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator12.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator12.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator8 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator8"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator8");
			ContentPlaceHolder1_RequiredFieldValidator8.controltovalidate = "ContentPlaceHolder1_txtPhoneno";
			ContentPlaceHolder1_RequiredFieldValidator8.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator8.errormessage = "Enter Phone No";
			ContentPlaceHolder1_RequiredFieldValidator8.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator8.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator8.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator8.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator3 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator3"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator3");
			ContentPlaceHolder1_RequiredFieldValidator3.controltovalidate = "ContentPlaceHolder1_txtAddress";
			ContentPlaceHolder1_RequiredFieldValidator3.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator3.errormessage = "Enter Address";
			ContentPlaceHolder1_RequiredFieldValidator3.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator3.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator3.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator3.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator4 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator4"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator4");
			ContentPlaceHolder1_RequiredFieldValidator4.controltovalidate = "ContentPlaceHolder1_txtDistrict";
			ContentPlaceHolder1_RequiredFieldValidator4.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator4.errormessage = "Enter District";
			ContentPlaceHolder1_RequiredFieldValidator4.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator4.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator4.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator4.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator11 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator11"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator11");
			ContentPlaceHolder1_RequiredFieldValidator11.controltovalidate = "ContentPlaceHolder1_txtState";
			ContentPlaceHolder1_RequiredFieldValidator11.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator11.errormessage = "Select State";
			ContentPlaceHolder1_RequiredFieldValidator11.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator11.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator11.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator11.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator5 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator5"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator5");
			ContentPlaceHolder1_RequiredFieldValidator5.controltovalidate = "ContentPlaceHolder1_txtPin";
			ContentPlaceHolder1_RequiredFieldValidator5.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator5.errormessage = "Enter PIN";
			ContentPlaceHolder1_RequiredFieldValidator5.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator5.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator5.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator5.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount");
			ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount.controltovalidate = "ContentPlaceHolder1_txtOpeningAmount";
			ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount.errormessage = "Enter Opening Amount";
			ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator1 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator1"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator1");
			ContentPlaceHolder1_RequiredFieldValidator1.controltovalidate = "ContentPlaceHolder1_txtAdvisorCode";
			ContentPlaceHolder1_RequiredFieldValidator1.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator1.errormessage = "Enter Advisor/Collector Code";
			ContentPlaceHolder1_RequiredFieldValidator1.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator1.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator1.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator1.initialvalue = "";
			var ContentPlaceHolder1_RequiredFieldValidator2 = document.all ? document.all["ContentPlaceHolder1_RequiredFieldValidator2"]
					: document
							.getElementById("ContentPlaceHolder1_RequiredFieldValidator2");
			ContentPlaceHolder1_RequiredFieldValidator2.controltovalidate = "ContentPlaceHolder1_txtAdvisorName";
			ContentPlaceHolder1_RequiredFieldValidator2.focusOnError = "t";
			ContentPlaceHolder1_RequiredFieldValidator2.errormessage = "Enter Advisor/Collector Name";
			ContentPlaceHolder1_RequiredFieldValidator2.display = "Dynamic";
			ContentPlaceHolder1_RequiredFieldValidator2.validationGroup = "A";
			ContentPlaceHolder1_RequiredFieldValidator2.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
			ContentPlaceHolder1_RequiredFieldValidator2.initialvalue = "";
			//]]>
		</script>

		<script type="text/javascript">
			//<![CDATA[

			var Page_ValidationActive = false;
			if (typeof (ValidatorOnLoad) == "function") {
				ValidatorOnLoad();
			}

			function ValidatorOnSubmit() {
				if (Page_ValidationActive) {
					return ValidatorCommonOnSubmit();
				} else {
					return true;
				}
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator12').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator12'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator8').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator8'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator3').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator3'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator4').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator4'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator11').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator11'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator5').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator5'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidatorOpeningAmount'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator1').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator1'));
			}

			document
					.getElementById('ContentPlaceHolder1_RequiredFieldValidator2').dispose = function() {
				Array
						.remove(
								Page_Validators,
								document
										.getElementById('ContentPlaceHolder1_RequiredFieldValidator2'));
			}
			//]]>
		</script>
		<script>
			function goToPaymentDetails() {

				/* // BASIC VALIDATION (optional)
				if ($("#branchName").val() == "") {
				    alert("Please select Branch");
				    return;
				}
				if ($("#clientNo").val() == "") {
				    alert("Please select Client No");
				    return;
				}
				if ($("#noOfShare").val() == "") {
				    alert("Please enter No Of Share");
				    return;
				} */

				$("#savingDetailsSection").hide();
				$("#paymentDetailsSection").show();

				$("#step1").removeClass("active").addClass("completed");
				$("#step2").removeClass("inactive").addClass("active");
			}
			function backToSavingDetails() {
				$("#paymentDetailsSection").hide();
				$("#savingDetailsSection").show();

				$("#step2").removeClass("active").addClass("inactive");
				$("#step1").removeClass("completed").addClass("active");
			}
		</script>

	</form>
</body>
</html>
