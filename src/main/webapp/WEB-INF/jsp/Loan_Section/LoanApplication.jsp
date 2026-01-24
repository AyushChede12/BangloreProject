
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<title>EQFI NIDHI LIMITED</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport" />
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="bower_components/bootstrap/dist/css/bootstrap.min.css" />
<!-- Font Awesome -->
<link rel="stylesheet"
	href="bower_components/font-awesome/css/font-awesome.min.css" />
<!-- Ionicons -->
<link rel="stylesheet"
	href="bower_components/Ionicons/css/ionicons.min.css" />
<!-- jvectormap -->
<link rel="stylesheet"
	href="bower_components/jvectormap/jquery-jvectormap.css" />
<!-- Theme style -->
<link rel="stylesheet" href="dist/css/AdminLTE.min.css" />
<!-- daterange picker -->
<link rel="stylesheet"
	href="bower_components/bootstrap-daterangepicker/daterangepicker.css" />
<!-- bootstrap datepicker -->
<link rel="stylesheet"
	href="bower_components/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" />
<!-- iCheck for checkboxes and radio inputs -->
<link rel="stylesheet" href="plugins/iCheck/all.css" />
<script src="dist/js/customJs.js"></script>
<!-- Select2 -->
<link rel="stylesheet"
	href="bower_components/select2/dist/css/select2.min.css" />
<!-- Theme style -->
<!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet" href="dist/css/skins/_all-skins.min.css" />
<link rel="stylesheet" href="dist/css/dashboard.css" />
<link rel="shortcut icon" type="image/x-icon"
	href="../images/favicon.html" />
<link rel="stylesheet" href="dist/css/lightbox.min.css" />
<link rel="stylesheet" href="dist/css/qr.css" />
<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic" />
<style type="text/css">
.switch {
	position: relative;
	display: inline-block;
	width: 78px;
	height: 36px;
}

.switch input {
	opacity: 0;
}

.slider {
	position: absolute;
	cursor: pointer;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ccc;
	-webkit-transition: .4s;
	transition: .4s;
}

.slider:before {
	position: absolute;
	content: "";
	height: 30px;
	width: 33px;
	left: 16px;
	bottom: 3px;
	background-color: white;
	-webkit-transition: .4s;
	transition: .4s;
}

input:checked+.slider {
	background-color: #08c;
}

input:focus+.slider {
	box-shadow: 0 0 1px #2196F3;
}

input:checked+.slider:before {
	-webkit-transform: translateX(26px);
	-ms-transform: translateX(26px);
	transform: translateX(26px);
}
/* Rounded sliders */
.slider.round {
	border-radius: 34px;
}

.slider.round:before {
	border-radius: 50%;
}

/* profile pic */
canvas {
	height: 175px;
	width: 135px;
	border-style: solid;
	border-width: 1px;
	border-color: black;
}
</style>
<script type="text/javascript">
         function isNumberOnlyKey(txt, evt) {
             var charCode = (evt.which) ? evt.which : evt.keyCode;
             if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                 alert("Allow Only Numbers");
                 return false;
             }
         }
      </script>
<script type="text/javascript">
         function isNumberKey(txt, evt) {
             var charCode = (evt.which) ? evt.which : evt.keyCode;
             if (charCode == 46) {
                 //Check if the text already contains the . character
                 if (txt.value.indexOf('.') === -1) {
                     return true;
                 } else {
                     return false;
                 }
             } else {
                 if (charCode > 31
         && (charCode < 48 || charCode > 57)) {
                     alert("Allow Only Numbers & Decimal");
                     return false;
                 }
             }
             return true;
         }
      </script>
<script src="dist/js/customJs.js"></script>
<script src="dist/js/investmentSection.js"></script>
<script src="dist/js/loanModule.js"></script>
<script src="dist/js/goldLoanMaster.js"></script>
<script src="dist/js/groupMasterUtilsJs.js"></script>
<script src="dist/js/LoanModuleJs.js"></script>
</head>
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true"
	onload="callGetAllMasterData();getAllLoanPlanName();getAllItemMasterName();getAllILockerName();getAllPurityMasterName();fetchAllMember()">
	<%
	String status = (String) request.getAttribute("status");
	if (status != null && "success".equals(status)) {
	%>
	<script>
         alert("Saved Successfully");
      </script>
	<%
	} else {

	}
	%>
	<form method="post" action="updateLoan" id="form1"
		name="updateLoanDetails" modelAttribute="updateLoan">

		<script type="text/javascript">
         
         function callback(ids){
          	var input = {
                      "id": ids
              }
          	$.ajax({
                  type:"post",
                  contentType: "application/json",
                  data: JSON.stringify(input),
                  url: 'getLoanDetails',
                  asynch: false,
                  success: function(data) {
                      document.getElementById("ContentPlaceHolder1_txtLoanType").value = data.loanType;
                      document.getElementById("ContentPlaceHolder1_txtLoanROI").value = data.roi;
                      document.getElementById("ContentPlaceHolder1_txtROIType").value = data.roiType;
                  } ,
          	    error: function(){
          	    	alert("Invalid Input");
          	    }
              });
          }
          
          function inputLoanAmount(){
         	var totalLoanAmount= document.getElementById("ContentPlaceHolder1_txtLoanAmount").value;
         	 //alert("totalLoanAmount>>>"+totalLoanAmount);
          }
      </script>
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
					<h1 id="ContentPlaceHolder1_IdHeader">
						<b>LOAN ADMINISTRATION</b>
					</h1>
					<h5 style="margin-left: 18px;">New Loan Appication</h5>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Loan Details</li>
					</ol>
				</section>
				<div class="wizard-steps">
					<div class="wizard-step active" id="step1">
						<div class="step-circle">1</div>
						<div class="step-title">LOAN DETAILS</div>
						<div class="wizard-line"></div>
					</div>
					<div class="wizard-step inactive" id="step2">
						<div class="step-circle">2</div>
						<div class="step-title">GUARANTOR DETAILS</div>
					</div>
					<div class="wizard-step inactive" id="step3">
						<div class="step-circle">3</div>
						<div class="step-title">CO-APPLICANT DETAILS</div>
					</div>
					<div class="wizard-step inactive" id="step3">
						<div class="step-circle">4</div>
						<div class="step-title">DEDUCTION DETAILS</div>
					</div>

				</div>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-info form-container" id="loanSection">
								<div class="box-header ">
									<h3 class="box-title">Loan Details</h3>
								</div>
								<div class="box-body">

									<div class="col-md-3" style="margin-top: 15px;">
										<label>Loan Date <strong style="color: Red">*</strong></label>

										<div class="input-group date">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input name="loanDate" type="date" id="loanDate"
												class="form-control"
												data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
												data-mask="" />
										</div>
										<span id="ContentPlaceHolder1_RequiredFieldValidator5"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Loan Date</span>
									</div>

									<div class="col-md-3" style="margin-top: 15px;">
										<label>Search Member <strong style="color: Red">*</strong></label>

										

										<select name="searchMemberCode" id="searchMemberCode"
											onchange="displayMemberDetails()"
											class="form-control select2" style="width: 100%;">
											<option value="">Select Member</option>

											
										</select> <span
											id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
											Member Code</span>

									</div>
									<div class="col-md-3" style="margin-top: 15px;">
										<label>Relative Details <strong style="color: Red">*</strong>
										</label> <input name="relativeDetails" type="text" readonly="readonly"
											id="relativeDetails" class="form-control"
											PlaceHolder="Enter Relative Name &amp; Relation" /> <span
											id="ContentPlaceHolder1_RequiredFieldValidatorBranchCode"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Relative Name & Relation</span>

									</div>
									<div class="col-md-3" style="margin-top: 15px;">
										<label for="txtDOB">DOB <strong style="color: Red">*</strong>
										</label>

										<div class="input-group date" style="width: 100%;">
											<div class="input-group-addon">
												<i class="fa fa-calendar"></i>
											</div>
											<input name="dob" type="text" value="01/08/2022"
												readonly="readonly" id="dob" class="form-control"
												data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
												data-mask="" />
										</div>
									</div>
									<div class="col-md-3" style="margin-top: 15px;">
										<label>AGE <strong style="color: Red">*</strong>
										</label> <input name="age" type="text" value="0" maxlength="2"
											readonly="readonly" id="age" class="form-control"
											Placeholder="Enter Age"
											onkeypress="return isNumberOnlyKey(this, event);"
											autocomplete="off" /> <span
											id="ContentPlaceHolder1_RequiredFieldValidator12"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Age</span>

									</div>
									<div class="col-md-3" style="margin-top: 15px;">
										<label for="txtPhoneno">Mobile No <strong
											style="color: Red">*</strong>
										</label> <input name="phoneno" type="text" maxlength="10"
											readonly="readonly" id="phoneno" class="form-control"
											Placeholder="Enter Mobile No" autocomplete="off"
											onkeypress="return isNumberOnlyKey(this, event);" /> <span
											id="ContentPlaceHolder1_RequiredFieldValidator8"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Phone No</span>

									</div>
									<div class="col-md-3" style="margin-top: 15px;">
										<label for="txtSMSStatus">SMS Status </label> <input
											name="smsStatus" type="text" readonly="readonly"
											id="smsStatus" class="form-control"
											PlaceHolder="Enter SMS Status" />

									</div>
									<div class="col-md-3" style="margin-top: 15px;">
										<label for="txtAddress">Address <strong
											style="color: Red">*</strong>
										</label>

										<textarea name="address" rows="2" cols="20"
											readonly="readonly" id="address" class="form-control"
											Placeholder="Enter Addess">
                                 </textarea>
										<span id="ContentPlaceHolder1_RequiredFieldValidator3"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Address</span>

									</div>
									<div class="col-md-3" style="margin-top: 15px;">
										<label for="txtPin">Pin Code <strong
											style="color: Red">*</strong>
										</label> <input name="pin" type="text" maxlength="6"
											readonly="readonly" id="pin" class="form-control"
											Placeholder="Enter Pincode" /> <span
											id="ContentPlaceHolder1_RequiredFieldValidator4"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											PIN</span>

									</div>


									<div class="col-md-3" style="margin-top: 15px;">
										<label>Branch Name <strong style="color: Red">*</strong></label>

										<select name="cspName" id="cspName" class="form-control"
											style="width: 100%;">
											<option value="">Select Branch</option>

											
										</select>

									</div>
									<div id="ContentPlaceHolder1_updtpnl" style="margin-top: 15px;">
										<div class="col-md-3" style="margin-top: 15px;">
											<label>Loan Plan Name <strong style="color: Red">*</strong>
											</label> <select name="loanPlanName" id="loanPlanName"
												class="form-control" style="width: 100%;"
												onchange="displayLoanMasterDetails()">
												<option value="">Select loan Plan Master</option>

												
											</select>
										</div>
									</div>
									<div class="col-md-3" style="margin-top: 15px;"
										style="margin-top: 15px;">
										<label for="txtLoanROI">Loan Type <strong
											style="color: Red">*</strong>
										</label> <input name="loanType" type="text" readonly="readonly"
											id="loanType" class="form-control" PlaceHolder="Loan Type" />

									</div>
									<div class="col-md-3" style="margin-top: 15px;">
										<label for="ddlPlanTerm">Plan Term <strong
											style="color: Red">*</strong>
										</label> <input name="planTerm" type="text" readonly="readonly"
											id="planTerm" class="form-control" PlaceHolder="Plan Term" />


									</div>
									<div class="col-md-3" style="margin-top: 15px;">
										<label for="ddlLoanMode">Loan Mode <strong
											style="color: Red">*</strong>
										</label> <input name="mode" type="text" readonly="readonly" id="mode"
											class="form-control" PlaceHolder="Enter Mode" /> <span
											id="ContentPlaceHolder1_RequiredFieldValidator1"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Mode</span>
									</div>
									<div class="col-md-3" style="margin-top: 15px;">
										<label>ROI(%)</label> <input name="loanROI" type="text"
											readonly="readonly" id="loanROI" class="form-control"
											PlaceHolder="Enter Loan ROI" /> <span
											id="ContentPlaceHolder1_RequiredFieldValidatorLoanROI"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Loan ROI</span>
									</div>

									<div class="col-md-3" style="margin-top: 15px;">
										<label>Loan Amount <strong style="color: Red">*</strong></label>

										<input name="loanAmount" type="text"
											onkeypress="inputLoanAmount()" id="loanAmount"
											class="form-control" PlaceHolder="Enter Loan Amount"
											onpaste="return false" autocomplete="off" /> <span
											id="loanAmountMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Loan Amount</span>

									</div>
									<div class="col-md-3" style="margin-top: 15px;">
										<label for="txtROIType">ROI Type <strong
											style="color: Red">*</strong>
										</label> <input name="ROIType" type="text" readonly="readonly"
											id="ROIType" class="form-control"
											PlaceHolder="Enter ROI Type" /> <span
											id="ContentPlaceHolder1_RequiredFieldValidatortxtROIType"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											ROI Type</span>

									</div>
									<div class="col-md-3" style="margin-top: 15px;">
										<label for="txtEMIAmount">EMI Amount <strong
											style="color: Red">*</strong>
										</label> <input name="emiAmount" type="text" readonly="readonly"
											id="emiAmount" class="form-control"
											PlaceHolder="Enter EMI Amount" /> <span
											id="ContentPlaceHolder1_RequiredFieldValidatortxtEMIAmount"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											EMI Amount</span>

									</div>

									<div class="col-md-3" style="margin-top: 15px;">
										<label for="txtLoanPurpose">Loan Purpose <strong
											style="color: Red">*</strong>
										</label> <input name="loanPurpose" type="text" id="loanPurpose"
											class="form-control" PlaceHolder="Enter Loan Purpose" /> <span
											id="loanPurposeMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Loan Purpose</span>

									</div>

								</div>
								<div class="box-footer">
									<button type="button" class="btn btn-success pull-right"
										onclick="goToGurantorDetails()">Next</button>
								</div>
							</div>
							<div class="row">

								<div class="box box-success form-container" id="gurantorSection"
									style="display: none;">
									<div class="box-body">
										<div id="ContentPlaceHolder1_upguardian">


											<div class="box-header ">
												<h3 class="box-title">Guarantor Details</h3>
											</div>

											<div class="col-md-3" style="margin-top: 15px;">
												<label for="txtGuarantorMember2">Member Code </label> <input
													name="guarantorCode" type="text" id="guarantorCode"
													class="form-control" Placeholder="Enter Guarantor Member 2" />
												<span id="guarantorCodeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
											</div>
										</div>
										<div class="col-md-3" style="margin-top: 15px;">
											<label for="txtMembersRelativesNameRelationGu">Guarantor
												Name </label> <input name="guarantorName" type="text"
												id="guarantorName" class="form-control" />

										</div>
										<div class="col-md-3" style="margin-top: 15px;">
											<label for="txtAddressGuarantor">Address </label> <input
												name="addressGuarantor" type="text" id="addressGuarantor"
												class="form-control" Placeholder="Enter Address" />

										</div>
										<div class="col-md-3" style="margin-top: 15px;">
											<label for="txtPincodeGuarantor">Pin Code </label> <input
												name="pincodeGuarantor" type="text" id="pincodeGuarantor"
												class="form-control" PlaceHolder="Enter Pin Code" />

										</div>
										<div class="col-md-3" style="margin-top: 15px;">
											<label for="txtphone">Phone </label> <input
												name="guarantorphone" type="text" id="guarantorphone"
												class="form-control" Placeholder="Enter Phone" />

										</div>
										<div class="col-md-3" style="margin-top: 15px;">
											<label>Security Type </label> <select name="securityType"
												id="securityType" class="form-control" style="width: 100%;">
												<option value="Select">Select</option>
												<option value="Loan Against Cheque">Loan Against
													Cheque</option>
												<option value="Loan Against Gold">Loan Against Gold</option>
												<option value="Loan Against Silver">Loan Against
													Silver</option>
												<option value="Loan Against Deposit">Loan Against
													Deposit</option>
												<option value="Any Others">Any Others</option>
											</select>

										</div>
									</div>
									<div class="box-footer">
										<button type="button" class="btn btn-success"
											onclick="backToLoanDetails()">PREVIOUS</button>
										<button type="button" class="btn btn-success pull-right"
											onclick="goToAppDetails()">Next</button>
									</div>
								</div>

							</div>

							<div class="row">
								<div class="box box-success form-container" id="appSection"
									style="display: none;">

									<div class="box-body">
										<div id="ContentPlaceHolder1_upcoap">
											<div class="box-header ">
												<h3 class="box-title">Co-Applicant Details</h3>
											</div>

											<div class="col-md-3" style="margin-top: 15px;">
												<label for="txtCoApplicantName">Member Code </label> <input
													name="coApplicantCode" type="text" id="coApplicantCode"
													class="form-control"
													Placeholder="Enter Co-Applicant Member Code" /> <span
													id="coApplicantCodeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>

											</div>
											<div class="col-md-3" style="margin-top: 15px;">
												<label for="txtMemberRelativesName">Name</label> <input
													name="memberRelativesName" type="text"
													id="memberRelativesName" class="form-control"
													Placeholder="Enter Co-Applicant Name" />

											</div>
											<div class="col-md-3" style="margin-top: 15px;">
												<label for="txtAddressco">Address </label> <input
													name="addressco" type="text" readonly="readonly"
													id="addressco" class="form-control"
													Placeholder="Enter Address" />

											</div>
											<div class="col-md-3" style="margin-top: 15px;">
												<label for="txtPincodeco">Pincode </label> <input
													name="pincodeco" type="text" id="pincodeco"
													class="form-control" Placeholder="Enter Pincode" />

											</div>
											<div class="col-md-3" style="margin-top: 15px;">
												<label for="txtPhoneco">Phone</label> <input name="phoneco"
													type="text" id="phoneco" class="form-control"
													Placeholder="Enter Phone" />

											</div>
											<div class="col-md-3" style="margin-top: 15px;">
												<label for="txtSecurityDetails">Security Details</label> <input
													name="securityDetails" type="text" id="securityDetails"
													class="form-control" Placeholder="Enter Security Details" />

											</div>

										</div>

									</div>
									<div class="box-footer">
										<button type="button" class="btn btn-success"
											onclick="backToGurantorDetails()">PREVIOUS</button>
										<button type="button" class="btn btn-success pull-right"
											onclick="goToDeductionDetails()">Next</button>
									</div>
								</div>
							</div>
							<div class="row">

								<div class="box box-danger form-container" id="deductionSection"
									style="display: none;">
									<div class="box-header ">
										<h3 class="box-title">Deduction Details</h3>
									</div>
									<div class="box-body">

										<div id="ContentPlaceHolder1_uppnlde">
											<div class="col-md-3" style="margin-top: 15px;">
												<label for="txtProcessingFee">Processing Fee<strong
													style="color: Red">*</strong>
												</label> <input name="processingFee" type="text" id="processingFee"
													class="form-control" />

											</div>
											<div class="col-md-3" style="margin-top: 15px;">
												<label for="txtLegalAmt">Legal Amt<strong
													style="color: Red">*</strong>
												</label> <input name="legalAmt" type="text" id="legalAmt"
													class="form-control" />

											</div>
										</div>
										<div id="ContentPlaceHolder1_uppnkad">
											<div class="col-md-3" style="margin-top: 15px;">
												<label>Advisor/Collector Code <strong
													style="color: Red">*</strong>
												</label> <input name="advisorCode" type="text" id="advisorCode"
													class="form-control"
													placeholder="Enter Advisor/Collector Code" /> <span
													id="advisorCodeMsg"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>

											</div>
										</div>


										<div id="ContentPlaceHolder1_upduc">
											<div class="col-md-3" style="margin-top: 15px;">
												<label for="txtGST">GST<strong style="color: Red">*</strong></label>

												<input name="GST" type="text" id="GST" class="form-control" />

											</div>
											<div class="col-md-3" style="margin-top: 15px;">
												<label for="txtInsuranceAmt">Insurance Amt<strong
													style="color: Red">*</strong>
												</label> <input name="insuranceAmt" type="text" id="insuranceAmt"
													class="form-control" />

											</div>
										</div>
										<div id="ContentPlaceHolder1_uppnladname">
											<div class="col-md-3" style="margin-top: 15px;">
												<label>Advisor/Collector Name <strong
													style="color: Red">*</strong>
												</label> <input name="advisorName" type="text" id="advisorName"
													class="form-control"
													placeholder="Enter Advisor/Collector Name" /> <span
													id="advisorName"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Advisor/Collector Name</span>

											</div>
										</div>

									</div>
									<div class="box-footer">
										<div class="row col-md-12">
											<button type="button" class="btn btn-success"
												onclick="backToAppDetails()">PREVIOUS</button>
											<button type="button" name="btnSave" value="Save"
												id="btnSave" onclick="return validateLoanApplciation()"
												class="btn btn-success pull-right margin-r-5">Save</button>
										</div>
									</div>
								</div>

							</div>
						</div>
					</div>
			</div>
		</div>
		</div>
		</div>
		</div>
		<div id="ContentPlaceHolder1_upnlLAD"></div>


		</section>
		</div>
		<!-- /.content-wrapper -->
		<%-- <jsp:include page="../footer.jsp" /> --%>
		</div>
	</form>
	<script>
      function goToGurantorDetails(){
    	  $("#loanSection").hide();
    	  $("#gurantorSection").show();
    	  
    	  $("#step1").removeClass("active").addClass("completed");
    	  $("#step2").removeClass("inactive").addClass("inactive");
      }
      function backToLoanDetails() {
			$("#gurantorSection").hide();
			$("#loanSection").show();

			$("#step2").removeClass("active").addClass("inactive");
			$("#step1").removeClass("completed").addClass("active");
		}
      function goToAppDetails(){
    	  $("#gurantorSection").hide();
    	  $("#appSection").show();
    	  
    	  $("#step2").removeClass("active").addClass("completed");
    	  $("#step3").removeClass("inactive").addClass("inactive");
      }
      function backToGurantorDetails() {
			$("#appSection").hide();
			$("#gurantorSection").show();

			$("#step3").removeClass("active").addClass("inactive");
			$("#step2").removeClass("completed").addClass("active");
		}
      function goToDeductionDetails(){
    	  $("#appSection").hide();
    	  $("#deductionSection").show();
    	  
    	  $("#step3").removeClass("active").addClass("completed");
    	  $("#step4").removeClass("inactive").addClass("inactive");
      }
      function backToAppDetails() {
			$("#deductionSection").hide();
			$("#appSection").show();

			$("#step4").removeClass("active").addClass("inactive");
			$("#step3").removeClass("completed").addClass("active");
		}
      </script>
</body>
</html>