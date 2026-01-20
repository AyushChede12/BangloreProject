<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="fetchBranchInDropdown();">
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
				<h1 id="ContentPlaceHolder1_IdHeader">New Account</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Investment</li>
				</ol>
			</section>
			<form method="post" action="/newAccount" id="form1" 
 				modelAttribute="NewAccount" enctype="multipart/form-data">
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">New Account Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">Bank
												(G.L.Head) <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="branchCode" type="text" id="branchCode" onchange="getDataInFormByBranchCode();"
													class="form-control" Placeholder="Enter Bank (G.L.Head) " />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select
												Bank(G.L.Head) <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="bankName" id="bankName" class="form-control select2"
													style="width: 100%;">
													<option selected="selected" value=""></option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Bank </span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtRelativeName" class="col-sm-4 control-label">Account
												No. <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="accountNo" type="text" id="accountNo"
													class="form-control" Placeholder="Enter Account No" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtRelativeName" class="col-sm-4 control-label">Account
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="account" type="text" id="account"
													class="form-control" Placeholder="Enter Account" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtRelativeName" class="col-sm-4 control-label">Bank
												Account No<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="bankAccountNo" type="text" id="bankAccountNo"
													class="form-control" Placeholder="Enter Bank Account No" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Fund<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="fund" id="fund" class="form-control select2"
													style="width: 100%;" onchange="">
													<option value="">Select Fund</option>
													<option value="Building Fund">Building Fund</option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Fund</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Deposit Type<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="depositType" id="depositType"
													class="form-control select2" style="width: 100%;"
													onchange="">
													<option value="">Select Deposite</option>
													<option value="Fixed Deposit">Fixed Deposit</option>
													<option value="Call Deposit">Call Deposit</option>
													<option value="MIS Deposit">MIS Deposit</option>
													<option value="RD Deposit Monthly">RD Deposit Monthly</option>
													<option value="RD Deposit Quarterly">RD Deposit Quarterly</option>
													<option value="RD Deposit Half Yearly">RD Deposit Half Yearly</option>
													<option value="RD Deposit Yearly">RD Deposit Yearly</option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Deposit Type</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Interest Type <strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="interestType" id="interestType"
													class="form-control select2" style="width: 100%;"
													onchange="showPopups()">
													<option value="Select">Select</option>
													<option value="Simple">Simple</option>
													<option value="Compounding">Compounding</option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Interest Type</span>
											</div>
										</div>
										<div id="compoundingPopups"
											style="display: none; margin-left: 15px;">
											<label>Posting Type :</label> 
											<input type="radio"
												name="compoundingPeriod" value="3months"
												style="margin-left: 50px;"> 3 Months 
											<input
												type="radio" name="compoundingPeriod" value="6months"
												style="margin-left: 50px;"> 6 Months 
											<input
												type="radio" name="compoundingPeriod" value="12months"
												style="margin-left: 50px;"> 12 Months
										</div>
										
										<script>
											function showPopups() {
												var interestType = document
														.getElementById("interestType").value;
												var compoundingPopups = document
														.getElementById("compoundingPopups");
												if (interestType === "Compounding") {
													compoundingPopups.style.display = "block";
												} else {
													compoundingPopups.style.display = "none";
												}
											}
										</script>

										<div class="form-group row">
											<label for="ddlBranch" class="col-sm-4 control-label">Interest
												Calculation Type<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="interestCalculation" id="interestCalculation"
													class="form-control select2" style="width: 100%;">
													<option value="">Select</option>
													<option value="Day">Day</option>
													<option value="Months">Months</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Start Date <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="startDate" type="date" id="startDate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
												<span id="ContentPlaceHolder1_RequiredFieldValidator5"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Start Date</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Tenure(Months)</label>
											<div class="col-sm-8">
												<input name="tenureMonths" type="text" id="tenureMonths"
													class="form-control" Placeholder="Enter Tenure (Months)" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Tenure(Days)</label>
											<div class="col-sm-8">
												<input name="tenureDays" type="text" id="tenureDays"
													class="form-control" Placeholder="Enter Tenure (Days)" />
											</div>

										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Interest Start
												Date <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="interestStartDate" type="date"
														id="interestStartDate" class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
												<span id="ContentPlaceHolder1_RequiredFieldValidator2"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Interest Start Date</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="amount" class="col-sm-4 control-label">Amount(Rs.)
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="amount" type="text" value="" id="amount"
													class="form-control" Placeholder="Enter Amount" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtSchemeName" class="col-sm-4 control-label">Interest
												Rate(%p.a) <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="interestRate" type="text" value=""
													id="interestRate" class="form-control"
													Placeholder="Enter Interest Rate" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtSchemeName" class="col-sm-4 control-label">Receipt
												No. <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="receiptNo" type="text" value="" id="receiptNo"
													class="form-control" Placeholder="Enter Receipt No." />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Maturity Date <strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="maturityDate" type="date" id="maturityDate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
												<span id="ContentPlaceHolder1_RequiredFieldValidator2"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Maturity Date</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtSchemeName" class="col-sm-4 control-label">Maturity
												Amount(Rs.) <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="maturityAmt" type="text" id="maturityAmt"
													class="form-control" Placeholder="Enter Maturity Amount" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Status<strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="status" id="status" class="form-control"
													style="width: 100%;">
													<option value="">--Select--</option>
													<option value="Open">Open</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Description</label>
											<div class="col-sm-8">
												<textarea name="description" rows="2" cols="20"
													id="description" class="form-control"
													Placeholder="Enter Remarks if any">
                                    </textarea>
											</div>
										</div>
										<div class="row col-md-12">
											<input type="submit" name="btnSave" value="Save" id="btnSave"
												class="btn btn-success pull-right margin-r-5" />
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-2"></div>
					</div>
				</section>
			</form>
		</div>
		<!-- /.content-wrapper -->
		<div class="control-sidebar-bg"></div>
	</div>
	
	<script type="text/javascript">
	function calculateMaturityAmount() {
	    const interestType = document.getElementById("interestType").value;
	    const interestCalculation = document.getElementById("interestCalculation").value;
	    const tenureMonths = parseFloat(document.getElementById("tenureMonths").value) || 0;
	    const tenureDays = parseFloat(document.getElementById("tenureDays").value) || 0;
	    const amount = parseFloat(document.getElementById("amount").value) || 0;
	    const interestRate = parseFloat(document.getElementById("interestRate").value) || 0;
	    const compoundingPeriod = getSelectedCompoundingPeriod();

	    let maturityAmt = 0;

	    if (interestType === "Simple") {
	        if (interestCalculation === "Day") {
	            maturityAmt = amount + (amount * interestRate * tenureDays) / (100 * 365);
	        } else if (interestCalculation === "Months") {
	            maturityAmt = amount + (amount * interestRate * tenureMonths) / (100 * 12);
	        }
	    } else if (interestType === "Compounding") {
	        if (compoundingPeriod > 0) {
	            const n = compoundingPeriod; // Compounding frequency
	            const t = (tenureMonths / 12) + (tenureDays / 365); // Tenure in years
	            maturityAmt = amount * Math.pow(1 + interestRate / (100 * n), n * t);
	        }
	    }

	    document.getElementById("maturityAmt").value = maturityAmt.toFixed(2);
	}

	function getSelectedCompoundingPeriod() {
	    const compoundingRadios = document.querySelectorAll('input[name="compoundingPeriod"]');
	    for (const radio of compoundingRadios) {
	        if (radio.checked) {
	            return parseInt(radio.value);
	        }
	    }
	    return 0; // Default to 0 if none selected
	}

	// Attach the calculateMaturityAmount function to relevant input field changes
	document.getElementById("interestType").addEventListener("change", calculateMaturityAmount);
	document.getElementById("interestCalculation").addEventListener("change", calculateMaturityAmount);
	document.getElementById("tenureMonths").addEventListener("input", calculateMaturityAmount);
	document.getElementById("tenureDays").addEventListener("input", calculateMaturityAmount);
	document.getElementById("amount").addEventListener("input", calculateMaturityAmount);
	document.getElementById("interestRate").addEventListener("input", calculateMaturityAmount);

	// Add an event listener to the compoundingPeriod radio buttons
	const compoundingRadios = document.querySelectorAll('input[name="compoundingPeriod"]');
	compoundingRadios.forEach(function (radio) {
	    radio.addEventListener("change", calculateMaturityAmount);
	});

	// Initial calculation
	calculateMaturityAmount();
	</script>
	
	<script>
	// Function to validate the form
	function validateForm() {
		// Retrieve form inputs
		var branchCode = document.getElementById("branchCode").value;
		//var bankName = document.getElementById("bankName").value;
		//var accountNo = document.getElementById("accountNo").value;
		var account = document.getElementById("account").value;
		var bankAccountNo = document.getElementById("bankAccountNo").value;
		var fund = document.getElementById("fund").value;
		var depositType = document.getElementById("depositType").value;
		var interestType = document.getElementById("interestType").value;
		var interestCalculation = document.getElementById("interestCalculation").value;
		var startDate = document.getElementById("startDate").value;
		var interestStartDate = document.getElementById("interestStartDate").value;
		var amount = document.getElementById("amount").value;
		var interestRate = document.getElementById("interestRate").value;
		var receiptNo = document.getElementById("receiptNo").value;
		var maturityDate = document.getElementById("maturityDate").value;
		var maturityAmt = document.getElementById("maturityAmt").value;
		var status = document.getElementById("status").value;
		
		if (branchCode === "") {
			alert("Please select Bank (G.L.Head).");
			return false;
		}

		if (account === "") {
			alert("Please select Account.");
			return false;
		}

		if (bankAccountNo === "") {
			alert("Please select Bank Account No.");
			return false;
		}
		
		if (fund === "") {
			alert("Please select Fund.");
			return false;
		}

		if (depositType === "") {
			alert("Please select Deposit Type.");
			return false;
		}
		
		if (interestType === "") {
			alert("Please select Interest Type.");
			return false;
		}
		
		if (interestCalculation === "") {
			alert("Please select Interest Calculation Type.");
			return false;
		}
		
		if (startDate === "") {
			alert("Please select Start Date.");
			return false;
		}
		
		if (interestStartDate === "") {
			alert("Please select Interest Start Date.");
			return false;
		}
		
		if (amount === "") {
			alert("Please select Amount.");
			return false;
		}
		
		if (interestRate === "") {
			alert("Please select Interest Rate.");
			return false;
		}
		
		if (receiptNo === "") {
			alert("Please select Receipt No.");
			return false;
		}
		
		if (maturityDate === "") {
			alert("Please select Maturity Date.");
			return false;
		}
		
		if (maturityAmt === "") {
			alert("Please select Maturity Amounte.");
			return false;
		}
		

		if (status === "") {
			alert("Please select Status.");
			return false;
		}
		
		return true;
	}

	// Add event listener to the form submit event
	document.getElementById("form1").addEventListener("submit", function(event) {
		event.preventDefault(); // Prevent the form from submitting

		// Call the validation function
		if (validateForm()) {
			// Display success message
			alert("Data saved successfully.");

			// Submit the form
			this.submit();
		}
	});
</script>
	
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
	<script src="dist/js/NewAccountInvestment.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
</body>
<!-- Dk/Admin/ShareIssue.aspx?ismodify=false EDB D 09:26:56 GMT -->
</html>