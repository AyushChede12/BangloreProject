<jsp:include page="../header.jsp" />
<%@page import="java.util.List"%>
<%@page import="com.society.application.model.LoanMaster"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<style type="text/css">
.switch {
	position: relative;
	display: inline-block;
	width: 65px;
	height: 25px;
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
	height: 15px;
	width: 15px;
	left: 16px;
	bottom: 5px;
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
</style>
<body class="skin-blue sidebar-mini" onload="getAllLoanMasterData()"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="Loan_Plan" id="form1" name="loanPlan"
		modelAttribute="loanPlan">
		<div
			style="height: auto; min-height: 100%; border-radius: 30px; margin: 15px; background: url(dist/img/back.jpg);">
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
					<h5 style="margin-left: 18px;">LOAN SCHEME CATALOG</h5>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active"><a
							href="<%=request.getHeader("Referer")%>">Loan Plan</a></li>
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
						<div class="step-title">DEDUCTION DETAILS</div>
					</div>
					<div class="wizard-step inactive" id="step3">
						<div class="step-circle">3</div>
						<div class="step-title">LATE FINE DETAILS</div>
					</div>

				</div>
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
				<input type="hidden" value="Loan" name="type">
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success form-container" id="loanSection">
								<div class="box-header">
									<h3 class="box-title">Loan Plan Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-12">
										<div class="col-md-3" style="margin-top: 15px;">

											<label>Loan Name <strong style="color: Red">*</strong></label>
											<input name="loanName" type="text" id="loanName"
												class="form-control" PlaceHolder="Enter Loan Name" /> <span
												id="loanNameMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
										</div>

										<div class="col-md-3" style="margin-top: 15px;">
											<label for="ddlLoanType">Loan Type <strong
												style="color: Red">*</strong>
											</label> <select name="loanType" id="loanType" class="form-control"
												style="width: 100%;">
												<option value="Poperty Loan">Poperty Loan</option>
												<option value="Personal Loan">Personal Loan</option>
												<option value="Vehicle Loan">Vehicle Loan</option>
												<option value="Business Loan">Business Loan</option>
												<option value="Home Loan">Home Loan</option>
												<option value="Micro Loan">Micro Loan</option>
												<option value="Loan Against Policy">Loan Against
													Policy</option>
												<option value="Others Loan">Others Loan</option>
											</select> <span id="loanTypeMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
										</div>

										<div class="col-md-3" style="margin-top: 15px;">
											<label for="ddlEmiCollection">EMI Mode<strong
												style="color: Red">*</strong>
											</label> <select name="emiCollection" id="emiCollection"
												class="form-control" style="width: 100%;">
												<option value="Dly.">Daily</option>
												<option value="Wly.">Weekly</option>
												<option value="Fly.">Fortnightly</option>
												<option value="Mly.">Monthly</option>
												<option value="Qly.">Quarterly</option>
											</select> <span id="emiCollectionMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
										</div>

										<div class="col-md-3" style="margin-top: 15px;">
											<label for="ddlRoiType">ROI Type <strong
												style="color: Red">*</strong>
											</label> <select name="roiType" onchange="" id="roiType"
												class="form-control" style="width: 100%;">
												<option selected="selected" value="Flat Interest">Flat
													Interest</option>
												<option value="Reducing interest">Reducing interest</option>
												<option value="Rule 78">Rule 78</option>
											</select> <span id="roiTypeMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
										</div>
									</div>
									<div class="col-md-12">
										<div class="col-md-3" style="margin-top: 15px;">
											<label for="ddlEmiType">EMI Type <strong
												style="color: Red">*</strong>
											</label> <select name="emiType" id="emiType" class="aspNetDisabled"
												class="form-control" style="width: 100%;">
												<option selected="selected" value="Regular">Regular</option>
												<option value="Irregular">Irregular</option>
											</select> <span id="emiTypeMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
										</div>


										<div class="col-md-3" style="margin-top: 15px;">

											<label>Min Age <strong style="color: Red">*</strong></label>
											<input name="minAge" type="text" id="minAge"
												class="form-control" onpaste="return false"
												onkeypress="return isNumberOnlyKey(this, event);" /> <span
												id="minAgeMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Min Age</span>
										</div>

										<div class="col-md-3" style="margin-top: 15px;">
											<label for="txtLoanName">Max Age <strong
												style="color: Red">*</strong>
											</label> <input name="maxAge" type="text" id="maxAge"
												class="form-control" onpaste="return false"
												onkeypress="return isNumberOnlyKey(this, event);" /> <span
												id="maxAgeMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Max Age</span>
										</div>

										<div class="col-md-3" style="margin-top: 15px;">
											<label>Min Amt.<strong style="color: Red">*</strong></label>
											<input name="minAmount" type="text" id="minAmount"
												class="form-control" onpaste="return false"
												onkeypress="return isNumberOnlyKey(this, event);" /> <span
												id="minAmountMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Min Amount</span>
										</div>
									</div>
									<div class="col-md-12">
										<div class="col-md-3" style="margin-top: 15px;">
											<label>Max Amt.<strong style="color: Red">*</strong></label>
											<input name="maxAmount" type="text" id="maxAmount"
												class="form-control" onpaste="return false"
												onkeypress="return isNumberOnlyKey(this, event);" /> <span
												id="maxAmountMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Max Amount</span>
										</div>

										<div class="col-md-3" style="margin-top: 15px;">
											<label>Plan Status <strong style="color: Red">*</strong></label><br>
											<label class="switch"> <input name="planStatus"
												id="planStatus" type="checkbox" checked="checked" /> <span
												class="slider round"></span>
											</label>
										</div>

									</div>

								</div>
								<div class="col-md-12">
									<div class="col-md-3" style="margin-top: 15px;">

										<label>Min Term <strong style="color: Red">*</strong></label>
										<input name="minTerm" type="text" id="minTerm"
											class="form-control" onpaste="return false"
											onkeypress="return isNumberOnlyKey(this, event);" /> <span
											id="minTermMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Min Term</span>
									</div>

									<div class="col-md-3" style="margin-top: 15px;">
										<label>Max Term <strong style="color: Red">*</strong></label>
										<input name="maxTerm" type="text" id="maxTerm"
											class="form-control" onpaste="return false"
											onkeypress="return isNumberOnlyKey(this, event);" /> <span
											id="maxTermMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Max Term</span>
									</div>

									<div class="col-md-3" style="margin-top: 15px;">
										<label>ROI (% p.a.)<strong style="color: Red">*</strong></label>
										<input name="roi" type="text" id="roi" class="form-control"
											onpaste="return false"
											onkeypress="return isNumberKey(this, event);"
											autocomplete="off" /> <span id="roiMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											ROI (% p.a.)</span>
									</div>

									<div class="col-md-3" style="margin-top: 15px;">
										<label for="ddlRoiType">Security<strong
											style="color: Red">*</strong></label> <select name="securityType"
											id="securityType" class="form-control" style="width: 95%;">
											<option value="PLEDGE">PLEDGE</option>
											<option value="MORTGAGE">MORTGAGE</option>
											<option value="HYPOTHECATION">HYPOTHECATION</option>
											<option value="GUARANTEE">GUARANTEE</option>
										</select>
									</div>
								</div>
								<div class="col-md-12" style="margin-top: 15px;">
									<div class="col-md-3 pull-right">
										<div class="box-footer">

											<button type="button" class="btn btn-success pull-right"
												onclick="goToDeductionDetails()">Next</button>
										</div>

									</div>
								</div>
							</div>
							<div class="box box-warning form-container" id="deductionSection"
								style="display: none;">
								<div class="box-header ">
									<h3 class="box-title">Deduction Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-4" style="margin-top: 15px;">

										<label for="txtProcessingFee">Proc. Fee(%)<strong
											style="color: Red">*</strong>
										</label> <input name="processingFee" type="text" id="processingFee"
											class="form-control" onpaste="return false"
											onkeypress="return isNumberKey(this, event);"
											autocomplete="off" /> <span id="processingFeeMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Processing Fee (%)</span>


									</div>
									<div class="col-md-4" style="margin-top: 15px;">

										<label for="txtLegalAmt">Legal Fee(%)<strong
											style="color: Red">*</strong>
										</label> <input name="legalAmt" type="text" id="legalAmt"
											class="form-control" onpaste="return false"
											onkeypress="return isNumberKey(this, event);"
											autocomplete="off" /> <span id="legalAmtMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Legal Fee (%)</span>


									</div>
									<div class="col-md-4" style="margin-top: 15px;">

										<label for="txtGST">GST (%) <strong style="color: Red">*</strong>
										</label> <input name="gst" type="text" id="gst" class="form-control"
											onpaste="return false"
											onkeypress="return isNumberKey(this, event);"
											autocomplete="off" /> <span id="gstMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											GST (%)</span>


									</div>
									<div class="col-md-4" style="margin-top: 15px;">

										<label for="txtInsuranceAmt">Insur. Fee(%)<strong
											style="color: Red">*</strong>
										</label> <input name="insuranceAmt" type="text" id="insuranceAmt"
											class="form-control" onpaste="return false"
											onkeypress="return isNumberKey(this, event);"
											autocomplete="off" /> <span id="insuranceAmtMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Insurance Fee (%)</span>


									</div>
									<div class="col-md-4" style="margin-top: 15px;">

										<label>ValuerFee(%)<strong style="color: Red">*</strong></label>

										<input name="valuerfees" type="text" id="valuerFees"
											class="form-control" onpaste="return false"
											onkeypress="return isNumberKey(this, event);"
											autocomplete="off" /> <span id="valuerFeesMsg"
											style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
											Valuer Fee (%)</span>
									</div>
									<div class="col-md-12" style="margin-top: 15px;">
										<div class="box-footer">
											<button type="button" class="btn btn-success"
												onclick="backToLoanDetails()">PREVIOUS</button>
											<button type="button" class="btn btn-success pull-right"
												onclick="goToFineDetails()">Next</button>
										</div>
									</div>


								</div>
							</div>
						</div>
						<div class="box box-danger form-container" id="fineSection"
							style="display: none;">
							<div class="box-header ">
								<h3 class="box-title">Late Fine Details</h3>
							</div>
							<div class="box-body">
								<div class="col-md-4" style="margin-top: 15px;">

									<label>Grace Period Days<strong style="color: Red">*</strong>
									</label> <input name="gracePeriodDays" type="text" id="gracePeriodDays"
										class="form-control" onpaste="return false"
										onkeypress="return isNumberOnlyKey(this, event);" /> <span
										id="gracePeriodDaysMsg"
										style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
										Grace Period Days</span>


								</div>
								<div class="col-md-4" style="margin-top: 15px;">

									<label>Penulty Type <strong style="color: Red">*</strong></label>

									<select name="penaltyType" id="penaltyType"
										class="form-control" style="width: 100%;">
										<option value="Percentage">Percentage</option>
										<option value="Amount">Amount</option>
									</select>


								</div>
								<div class="col-md-4" style="margin-top: 15px;">

									<label>Penalty(p.m.) <strong style="color: Red">*</strong></label>

									<input name="penalty" type="text" id="penalty"
										class="form-control" onpaste="return false"
										onkeypress="return isNumberKey(this, event);"
										autocomplete="off" /> <span id="penaltyMsg"
										style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
										Penalty</span>


								</div>
							</div>
							<div class="box-footer" style="margin-top: 15px;">
								<div class="row col-md-12">
									<button type="button" class="btn btn-success"
										onclick="backToDeductionDetails()">PREVIOUS</button>
									<button type="button" name="ctl00$ContentPlaceHolder1$btnSave"
										value="Save" onclick="return validateInputField()"
										id="ContentPlaceHolder1_btnSave"
										class="btn btn-success pull-right margin-r-5">Save</button>
								</div>
							</div>
							<div class="box box-info form-conatiner"
								style="overflow-x: scroll !important; overflow-y: scroll;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<div>
										<%
										List<LoanMaster> loanMasterList = (List<LoanMaster>) request.getAttribute("loanPlanMaster");
										%>

										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" id=""
											style="width: 100%; border-collapse: collapse;">
											<caption></caption>
											<tr style="color: White; background-color: #008385;">
												<th scope="col">Id</th>
												<th scope="col">Loan Name</th>
												<th scope="col">Loan type</th>
												<th scope="col">EMI Collection</th>
											</tr>
											<tbody>
												<%
												if (loanMasterList != null && !loanMasterList.isEmpty()) {
													for (LoanMaster loanMaster : loanMasterList) {
												%>
												<tr>
													<th scope="col"><%=loanMaster.getId()%></th>
													<th scope="col"><%=loanMaster.getLoanName()%></th>
													<th scope="col"><%=loanMaster.getLoanType()%></th>
													<th scope="col"><%=loanMaster.getEmiCollection()%></th>
												</tr>

												<%
												}
												} else {
												%>
												No Records
												<%
												}
												%>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>

					</div>
			</div>
			</section>



		</div>
		</div>
		</section>
		</div>
		<!-- /.content-wrapper -->
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
		<script>
      function goToDeductionDetails(){
    	  $("#loanSection").hide();
    	  $("#deductionSection").show();
    	  
    	  $("#step1").removeClass("active").addClass("completed");
    	  $("#step2").removeClass("inactive").addClass("inactive");
      }
      function backToLoanDetails() {
			$("#deductionSection").hide();
			$("#loanSection").show();

			$("#step2").removeClass("active").addClass("inactive");
			$("#step1").removeClass("completed").addClass("active");
		}
      function goToFineDetails(){
    	  $("#deductionSection").hide();
    	  $("#fineSection").show();
    	  
    	  $("#step2").removeClass("active").addClass("completed");
    	  $("#step3").removeClass("inactive").addClass("inactive");
      }
      function backToDeductionDetails() {
			$("#fineSection").hide();
			$("#deductionSection").show();

			$("#step3").removeClass("active").addClass("inactive");
			$("#step2").removeClass("completed").addClass("active");
		}
      </script>
</body>
</html>