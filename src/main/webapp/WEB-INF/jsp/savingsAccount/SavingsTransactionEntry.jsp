<jsp:include page="../header.jsp" />
<%@page import="java.util.List"%>
<%@page import="com.society.application.model.BankMaster"%>
<%@page import="com.society.application.model.BranchMaster"%>
<%@page import="com.society.application.model.SavingsAccountApplication"%>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="getfetchsavingid();">
	<form id="myForm" name="myForm">

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
						<B>SAVING OPENING</B>
					</h1>
					<h5 style="margin-left: 18px;">SAVING ACCOUNT ACTIVITY</h5>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Deposit/Withdrawal</li>
					</ol>
				</section>
				<div class="wizard-steps">
					<div class="wizard-step active" id="step1">
						<div class="step-circle">1</div>
						<div class="step-title">ACCOUNT DETAILS</div>
						<div class="wizard-line"></div>
					</div>
					<div class="wizard-step inactive" id="step2">
						<div class="step-circle">2</div>
						<div class="step-title">PAYMENT DETAILS</div>
					</div>


				</div>

				<%
				List<BankMaster> bankList = (List<BankMaster>) request.getAttribute("bankMaster");
				%>
				<%
				List<BranchMaster> branchList = (List<BranchMaster>) request.getAttribute("branchList");
				%>

				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="form-container" id="accountDetailsSection">
								<div class="box-header ">
									<h3 class="box-title">Account Details</h3>
								</div>
								<div class="box-body">

									<div class="col-md-3" style="margin-top: 15px;">
										<label>Select Saving Id<strong style="color: Red">*</strong>
										</label> <select name="id" id="id"
											onchange="FetchDetailforsavingacc();"
											class="form-control select2" style="width: 100%;">
											<option value="">Select Saving Id</option>

										</select>
									</div>
									<div class="col-md-3" style="margin-top: 15px;">
										<label>Txn Date<strong style="color: Red">*</strong></label>

										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input name="txtTDate" type="date" value="01/08/2022"
												id="txtTDate" class="form-control"
												data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
												data-mask="" />
										</div>
									</div>

									<div class="col-md-3" style="margin-top: 15px;">
										<label>Branch Name<strong style="color: Red">*</strong></label>

										<select name="cspName" id="cspName"
											class="form-control select2" style="width: 100%;">
											<option value="">Select Branch</option>
											<%
											if (branchList != null && !branchList.isEmpty()) {
												for (BranchMaster branch : branchList) {
											%>
											<option value="<%=branch.getId()%>"><%=branch.getName()%></option>
											<%
											}
											}
											%>
										</select> <span
											id="ContentPlaceHolder1_RequiredFieldValidatorddlBranchName"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
											Branch Name</span>
									</div>

									<div class="col-md-3" style="margin-top: 15px;">
										<label>Select Acc.No. <strong style="color: Red">*</strong>
										</label> <select name="accountNo" id="accountNo"
											class="form-control select2" style="width: 100%;">
											<option value="">Select Acc.No</option>
											<%
											if (bankList != null && !bankList.isEmpty()) {
												for (BankMaster bank : bankList) {
											%>
											<option value="<%=bank.getId()%>"><%=bank.getAccountNo()%></option>
											<%
											}
											}
											%>

										</select> <span
											id="ContentPlaceHolder1_RequiredFieldValidatorAccountNo"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
											Account No.</span>
									</div>

									<div class="col-md-3" style="margin-top: 15px;">
										<label>Member Code<strong style="color: Red">*</strong></label>

										<input name="memberCode" type="text" readonly="readonly"
											id="memberCode" class="form-control"
											Placeholder="Enter Member Code" /> <span
											id="ContentPlaceHolder1_RequiredFieldValidatorMembercode"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Member Code</span>
									</div>



									<div class="col-md-3" style="margin-top: 15px;">
										<label>Name<strong style="color: Red">*</strong></label> <input
											name="memberName" type="text" readonly="readonly"
											id="memberName" class="form-control"
											Placeholder="Enter A/C Holder Name" /> <span
											id="ContentPlaceHolder1_RequiredFieldValidator1"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											A/C Holder Name</span>
									</div>

									<div class="col-md-3" style="margin-top: 15px;">
										<label>Mobile Number<strong style="color: Red">*</strong></label>

										<input name="phoneno" type="text" readonly="readonly"
											id="phoneno" class="form-control"
											Placeholder="Enter Mobile Number" /> <span
											id="ContentPlaceHolder1_RequiredFieldValidatorMobilenumber"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Mobile Number</span>
									</div>

									<div class="col-md-3" style="margin-top: 15px;">
										<label>Joint Holder</label> <input name="jointName"
											type="text" readonly="readonly" id="jointName"
											class="form-control" Placeholder="Joint Holder Name" />

									</div>

									<div class="col-md-3" style="margin-top: 15px;">
										<label>SB Plan Name</label> <input name="sBPlan" type="text"
											readonly="readonly" id="sBPlan" class="form-control"
											Placeholder="SB Plan Name" />
									</div>


								</div>
								<div class="box-footer">


									<button type="button" class="btn btn-success pull-right"
										onclick="goToPaymentDetails()">NEXT</button>
								</div>
							</div>
							<div class="form-container" id="paymentDetailsSection"
								style="display: none;">
								<div class="box-header ">
									<h3 class="box-title">Payment Details</h3>
								</div>
								<div class="box-body">

									<div class="col-md-3" style="margin-top: 15px;">
										<label>Avg.Balance <strong style="color: Red">*</strong></label>
										<input name="openingAmount" type="text" readonly="readonly"
											id="openingAmount" class="form-control" />
									</div>

									<div class="col-md-3" style="margin-top: 15px;">
										<label for="txtTransactionFor">Transaction For</label> <input
											name="transactionFor" type="text" id="transactionFor"
											class="form-control" Placeholder="Enter Transaction For" />
									</div>

									<div class="col-md-3" style="margin-top: 15px;">
										<label for="txtRemarks">Remarks </label> <input name="remarks"
											type="text" id="remarks" class="form-control"
											Placeholder="Enter Remarks" />
									</div>



									<div class="col-md-3" style="margin-top: 15px;">
										<label for="ddlTransactionType">Txn. Type<strong
											style="color: Red">*</strong>
										</label> <select name="transactionType" id="transactionType"
											class="form-control" style="width: 100%;">
											<option value="Deposit">Deposit</option>
											<option value="Withdrawal">Withdrawal</option>
										</select>
									</div>

									<div class="col-md-3" style="margin-top: 15px;">
										<label for="txtAmount">Amount <strong
											style="color: Red">*</strong>
										</label> <input name="txtAmount" type="text" id="txtAmount"
											class="form-control" Placeholder="Enter Amount"
											onpaste="return false" autocomplete="off" /> <span
											id="ContentPlaceHolder1_RequiredFieldValidatorAmount"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Amount</span>
									</div>

									<div class="col-md-3" style="margin-top: 15px;">
										<label for="drpPaymentBy">Payment By <strong
											style="color: Red">*</strong>
										</label> <select name="paymode" id="paymode" class="form-control"
											style="width: 100%;">
											<option selected="selected" value="Cash">Cash</option>
											<option value="Cheque">Cheque</option>
											<option value="Online">Online</option>
											<option value="NEFT">NEFT</option>
										</select>
									</div>


								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<!-- 										<input type="submit" name="ctl00$ContentPlaceHolder1$btnSave" -->
										<!-- 											value="Save" -->
										<!-- 											onclick="javascript:WebForm_DoPostBackWithOptions(new WebForm_PostBackOptions(&quot;ctl00$ContentPlaceHolder1$btnSave&quot;, &quot;&quot;, true, &quot;A&quot;, &quot;&quot;, false, false))" -->
										<!-- 											id="ContentPlaceHolder1_btnSave" -->
										<!-- 		
																			class="btn btn-success pull-right margin-r-5" /> -->
										<button type="button" class="btn btn-success"
											onclick="backToAccountDetails()">PREVIOUS</button>
										<input type="submit" name="ctl00$ContentPlaceHolder1$btnSave"
											value="Save" id="ContentPlaceHolder1_btnSave"
											class="btn btn-success pull-right margin-r-5" />
									</div>
								</div>

							</div>
							<!-- <div class="box form-container"
								style="box-shadow: none; height: 500px; overflow: auto !important;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<div></div>
								</div>
							</div> -->
						</div>


					</div>
			</div>
			</section>
		</div>
		<!-- /.content-wrapper -->
		<div class="control-sidebar-bg"></div>
		</div>
	</form>
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
	<script src="dist/js/SavingsAccount.js"></script>
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
					url : "updateBySelectidForSavingtransc",
					type : "POST",
					data : formData,
					processData : false,
					contentType : false,
					success : function(data) {

						alert("Data  Save Sucessfully !!!!!!!!!!!!!")
						window.location.href = "savingsTransactionEntry";
					},
					error : function(error) {
						console.log(error);
					}
				});
			});
		});
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

			$("#accountDetailsSection").hide();
			$("#paymentDetailsSection").show();

			$("#step1").removeClass("active").addClass("completed");
			$("#step2").removeClass("inactive").addClass("active");
		}
		function backToAccountDetails() {
			$("#paymentDetailsSection").hide();
			$("#accountDetailsSection").show();

			$("#step2").removeClass("active").addClass("inactive");
			$("#step1").removeClass("completed").addClass("active");
		}
	</script>


</body>
<!-- Dk/Admin/SavingsTransactionEntry.aspx EDB D 09:27:05 GMT -->
</html>