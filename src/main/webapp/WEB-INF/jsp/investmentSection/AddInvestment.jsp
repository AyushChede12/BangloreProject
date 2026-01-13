<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	onload="SelectClientCodeAddInvesrtment();SelectBranchAddInvesrtment();"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!--  onload="getAllBranchName() -->
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
					<b>MANAGE POLICY</b>
				</h1>
				<h5 style="margin-left: 18px;">ADD NEW POLICY</h5>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Investment</li>
				</ol>
			</section>
			<div class="wizard-steps">
				<div class="wizard-step active" id="step1">
					<div class="step-circle">1</div>
					<div class="step-title">POLICY DETAILS</div>
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

						<form id="myForm" name="myForm" enctype="multipart/form-data">

							<div class="form-container" id="policySection">
								<div class="box-header">
									<h3 class="box-title">Policy Details</h3>
								</div>

								<div class="box-body form-horizontal">

									<!-- Row 1 -->
									<div class="row four-field-row">

										<div class="col-md-3">
											<label class="col-sm-4 control-label">Policy Date <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="policyDate" type="date" id="policyDate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
												<span id="ContentPlaceHolder1_RequiredFieldValidator5"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Policy Date</span>
											</div>
										</div>

										<div class="col-md-3">

											<label class="col-sm-4 control-label">Select Member <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">

												<select name="searchMemberCode" id="id"
													class="form-control select2" style="width: 100%;"
													onchange="getByDataBySearchMemberCode();">
													<option selected="selected" value=""></option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member Code</span>
											</div>
										</div>

										<div class="col-md-3">

											<label for="txtRelativeName" class="col-sm-4 control-label">Member
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="memberName" type="text" id="memberName"
													class="form-control" Placeholder="Enter Member Name" />
											</div>
										</div>

										<div class="col-md-3">

											<label for="txtDOB" class="col-sm-4 control-label">DOB
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="dob" type="date" id="dob" class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
											</div>
										</div>
									</div>

									<!-- Row 2 -->
									<div class="row four-field-row">

										<div class="col-md-3">
											<label class="col-sm-4 control-label">Age <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="age" type="text" maxlength="2" id="age"
													class="form-control" Placeholder="Enter Age"
													autocomplete="off" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator12"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Age</span>
											</div>
										</div>

										<div class="col-md-3">

											<label class="col-sm-4 control-label">Relative
												Details</label>
											<div class="col-sm-8">
												<input name="relativeName" type="text" id="relativeName"
													class="form-control" Placeholder="Enter Relative Name" />
											</div>
										</div>

										<div class="col-md-3">

											<label for="txtPhoneno" class="col-sm-4 control-label">Mobile
												No <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="phoneno" type="text" maxlength="10"
													id="phoneno" class="form-control"
													Placeholder="Enter Mobile No" autocomplete="off" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator8"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Phone No</span>
											</div>
										</div>

										<div class="col-md-3">

											<label for="nomineeName" class="col-sm-4 control-label">Nominee
												Name</label>
											<div class="col-sm-8">
												<input name="nomineeName" type="text" id="nomineeName"
													class="form-control" />
											</div>
										</div>
									</div>

									<!-- Row 3 -->
									<div class="row four-field-row">

										<div class="col-md-3">
											<label for="txtNomineeName" class="col-sm-4 control-label">Nominee
												Age</label>
											<div class="col-sm-8">
												<input name="nomineeAge" type="text" maxlength="2"
													id="nomineeAge" class="form-control" />
											</div>
										</div>

										<div class="col-md-3">

											<label for="drpNomineeRelation"
												class="col-sm-4 control-label">Relation</label>
											<div class="col-sm-8">
												<select name="nomineeRelation" id="nRelation"
													class="form-control" style="width: 100%;">
													<option value="">Select</option>
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
										</div>

										<div class="col-md-3">

											<label for="txtAddress" class="col-sm-4 control-label">Address
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<textarea name="address" rows="2" cols="20" id="address"
													class="form-control" Placeholder="Enter Addess">
                                    </textarea>
												<span id="ContentPlaceHolder1_RequiredFieldValidator3"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Address</span>
											</div>
										</div>

										<div class="col-md-3">

											<label for="txtDistrict" class="col-sm-4 control-label">District
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="district" type="text" id="district"
													class="form-control" Placeholder="Enter District" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator4"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													District</span>
											</div>
										</div>
									</div>

									<!-- Row 4 -->
									<div class="row four-field-row">

										<div class="col-md-3">
											<label for="drpState" class="col-sm-4 control-label">State
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="state" type="text" id="state"
													class="form-control" /> <span id="state"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													State</span>
											</div>
										</div>

										<div class="col-md-3">

											<label for="txtPin" class="col-sm-4 control-label">Pin
												Code <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="pin" type="text" maxlength="6" id="pinCode"
													class="form-control" Placeholder="Enter Pincode" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator1"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													PIN</span>
											</div>
										</div>

										<div class="col-md-3">

											<label for="ddlBranch" class="col-sm-4 control-label">Branch
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="cSPName" id="branchName"
													class="form-control select2" style="width: 100%;">
													<option value="">Select</option>

												</select>
											</div>
										</div>

										<div class="col-md-3">

											<label for="ddlBranch" class="col-sm-4 control-label">Operation
												Mode<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="modeOfOp" id="modeOfOp" class="form-control"
													style="width: 100%;">
													<option value="">Select</option>
													<option value="Single">Single</option>
													<option value="Joint">Joint</option>
												</select>
											</div>
										</div>
									</div>

									<!-- Row 5 -->
									<div class="row four-field-row">

										<div class="col-md-3">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Joint Mem.Code</label>
											<div class="col-sm-8">
												<input name="jointCode" type="text" id="jointCode"
													class="form-control" />
											</div>
										</div>

										<div class="col-md-3">

											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Joint Name</label>
											<div class="col-sm-8">
												<input name="jointName" type="text" id="jointName"
													class="form-control" />
											</div>
										</div>

										<div class="col-md-3">

											<label class="col-sm-4 control-label">Maturity Date <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="mDate" type="date" id="mDate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
												<span id="ContentPlaceHolder1_RequiredFieldValidator2"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Maturity Date</span>
											</div>
										</div>

										<div class="col-md-3">

											<label class="col-sm-4 control-label">Scheme Type <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="schemeType" id="schemeType"
													class="form-control" style="width: 100%;">
													<option selected="selected" value="">Select</option>
													<option value="RD">RD</option>
													<option value="MIS">MIS</option>
													<option value="FD">FD</option>
													<option value="DRD">DRD</option>
												</select>
											</div>
										</div>
									</div>

									<!-- Row 6 -->
									<div class="row four-field-row">

										<div class="col-md-3">
											<label class="col-sm-4 control-label">Scheme Name <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="schemeName" id="schemeName"
													class="form-control" style="width: 100%;">
													<option selected="selected" value="">Select</option>
													<option value="GROW">GROW</option>
													<option value="GROW +">GROW +</option>
													<option value="ROYAL +">ROYAL +</option>
												</select>
											</div>
										</div>

										<div class="col-md-3">

											<label for="txtSchemeName" class="col-sm-4 control-label">Scheme
												Term</label>
											<div class="col-sm-8">
												<input name="term" type="text" id="term"
													class="form-control" />
											</div>
										</div>

										<div class="col-md-3">

											<label class="col-sm-4 control-label">Scheme Mode <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="mode" id="mode" class="form-control"
													style="width: 100%;">
													<option selected="selected" value="Mly.">Mly.</option>
												</select>
											</div>
										</div>

										<div class="col-md-3">

											<label class="col-sm-4 control-label">MIS Mode <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<select name="misMode" id="misMode" class="form-control"
													style="width: 100%;">
													<option value="" selected="selected">--Select--</option>
													<option value="cash">Cash</option>
													<option value="online">Online</option>
												</select>
											</div>
										</div>
									</div>

									<!-- Row 6 -->
									<div class="row four-field-row">

										<div class="col-md-3">
											<label class="col-sm-4 control-label">Policy Amount <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="policyAmount" type="text" id="policyAmount"
													class="form-control" autocomplete="off"
													onpaste="return false"
													style="color: Red; font-size: Large; font-weight: normal;" />
												<span
													id="ContentPlaceHolder1_RequiredFieldValidatorPolicyAmount"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Policy Amount</span>
											</div>
										</div>

										<div class="col-md-3">

											<label class="col-sm-4 control-label">Deposit Amount
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="totalDeposit" type="text" id="totalDeposit"
													class="form-control" />
											</div>
										</div>

										<div class="col-md-3">

											<label class="col-sm-4 control-label">Maturiy Amount
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="maturityAmount" type="text" id="maturityAmount"
													class="form-control" />
											</div>
										</div>

										<div class="col-md-3">

											<label class="col-sm-4 control-label">MIS Interest <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="mISInterest" type="text" id="mISInterest"
													class="form-control" />
											</div>
										</div>
									</div>

									<div class="row four-field-row">
										<div class=" col-md-3"
											style="display: flex; margin: 15px 0 30px;">
											<div class="box-body">
												<div>
													<h4>
														<b>Photo</b>
													</h4>
													<p class="help-block">Maximum 10MB</p>
												</div>
												<div class="col-md-3">

													<div class="text-center">
														<img id="preview" class="profile-user-img"
															src="upload_Files/${aadharPhoto}" alt="Image"
															style="height: 110px; width: 110px;"> <input
															type="file" name="filetag" id="filetag" />
													</div>

												</div>
											</div>


											<div class="box-body">
												<div>
													<h4>
														<b>Signature</b>
													</h4>
													<p class="help-block">Maximum 10MB</p>
												</div>
												<div class="col-md-3">

													<div class="text-center">
														<img id="secondpreview" class="profile-user-img"
															src="upload_Files/${Signature}" alt="Image"
															style="height: 110px; width: 110px;"> <input
															type="file" name="secondfiletag" id="secondfiletag" />
													</div>

												</div>
											</div>

										</div>
									</div>
									<div class="clearfix">
										<button type="button" class="btn btn-primary pull-right"
											onclick="goPayment()">NEXT</button>
									</div>
								</div>
							</div>
						</form>




						<div class="form-container" id="paymentDetails"
							style="display: none;">
							<div class="box-header">
								<h3 class="box-title">Payment Details</h3>
							</div>

							<div class="box-body form-horizontal">

								<!-- Row 1 -->
								<div class="row four-field-row">

									<div class="col-md-3">
										<label for="drpPaymentBy" class="col-sm-4 control-label">Payment
											By <strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<select name="paymode" id="paymode" class="form-control"
												style="width: 100%;">
												<option selected="selected" value="">Select</option>
												<option value="Cash">Cash</option>
												<option value="Cheque">Cheque</option>
												<option value="Online">Online</option>
												<option value="NEFT">NEFT</option>
												<option value="SBAccount">SBAccount</option>
											</select>
										</div>
									</div>

									<div class="col-md-3">

										<label class="col-sm-4 control-label">Advisor/Collector<strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="advisorCode" type="text" id="advisorCode"
												class="form-control"
												placeholder="Enter Advisor/Collector Code" /> <span
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Advisor/Collector Code</span>
										</div>
									</div>

									<div class="col-md-3">

										<label class="col-sm-4 control-label">Name <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-8">
											<input name="advisorName" type="text" id="advisorName"
												class="form-control"
												placeholder="Enter Advisor/Collector Name" /> <span
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Advisor/Collector Name</span>
										</div>
									</div>

									<div class="col-md-3">

										<label class="col-sm-4 control-label">Remarks</label>
										<div class="col-sm-8">
											<textarea name="remarks" rows="2" cols="20" id="remarks"
												class="form-control" Placeholder="Enter Remarks if any">
                                    </textarea>
										</div>
									</div>
								</div>

								<!-- Row 2 -->
								<div class="row four-field-row">

									<div class="col-md-3">
										<label class="col-sm-5 control-label">SMS Send <strong
											style="color: Red">*</strong></label>
										<div class="col-sm-7">
											<label class="switch"> <input id="chkisSms"
												type="checkbox" name="chkisSms" checked="checked" /> <span
												class="slider round"></span>
											</label>
										</div>
									</div>
								</div>
								<div class="clearfix">
									<button type="button" class="btn btn-default"
										onclick="backPolicy()">PREVIOUS</button>
									<button class="btn btn-primary pull-right" onclick="saveData">SAVE</button>
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
	<script src="dist/js/investmentSection .js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	
	<script type="text/javascript">
	function goPayment() {

		$("#policySection").hide();
		$("#paymentDetails").show();

		$("#step1").removeClass("active").addClass("completed");
		$("#step2").removeClass("inactive").addClass("active");
	}
	
	function backPolicy() {
		$("#paymentDetails").hide();
		$("#policySection").show();

		$("#step2").removeClass("active").addClass("inactive");
		$("#step1").removeClass("completed").addClass("active");
	}
	
	</script>

	<script type="text/javascript">
		function getAllBranchName() {
			$.ajax({
				type : "get",
				contentType : "application/json",
				url : 'getAllBranch',
				asynch : false,
				success : function(data) {

					var appenddata1 = "";
					//var jsonData1 = JSON.parse(data1.d);
					for (var i = 0; i < data.length; i++) {
						appenddata1 += "<option value ='"+data[i].name+"'>"
								+ data[i].name + "</option>";
					}
					$("#CSPName").append(appenddata1);
				},
				error : function() {
					alert("Device control failed");
				}
			});

			$
					.ajax({
						type : "get",
						contentType : "application/json",
						url : 'getAllMember',
						asynch : false,
						success : function(data) {

							var appenddata1 = "";
							//var jsonData1 = JSON.parse(data1.d);
							for (var i = 0; i < data.length; i++) {
								appenddata1 += "<option value ='"+data[i].memberName+"'>"
										+ data[i].memberName + "</option>";
							}
							$("#searchMemberCode").append(appenddata1);
						},
						error : function() {
							alert("Device control failed");
						}
					});
		}
	</script>

	<script>
		$(document).ready(function() {
			$("#myForm").submit(function(e) {
				e.preventDefault(); // prevent default form submit action

				var formData = new FormData($(this)[0]); // create new FormData object from form data
				//console.log(formData);

				if ($("#policyDate").val() == "") {
					alert("Enter the Policy Date.");
					return;
				}
				if ($("#searchMemberCode").val() == "") {
					alert("Enter the Member Code .");
					return;
				}
				if ($("#memberName").val() == "") {
					alert("Enter the Member Name ");
					return;
				}
				if ($("#dob").val() == "") {
					alert("Enter the DOB");
					return;
				}
				if ($("#phoneno").val() == "") {
					alert("Enter the Phone No");
					return;
				}
				if ($("#address").val() == "") {
					alert("Enter the Adress");
					return;
				}
				if ($("#district").val() == "") {
					alert("Enter the District ");
					return;
				}
				if ($("#state").val() == "") {
					alert("Enter the State");
					return;
				}
				if ($("#pin").val() == "") {
					alert("Enter the pin");
					return;
				}
				if ($("#CSPName").val() == "") {
					alert("Enter the Branch Name ");
					return;
				}
				if ($("#modeOfOp").val() == "") {
					alert("Enter the Mode of Operation");
					return;
				}
				if ($("#mDate").val() == "") {
					alert("Enter the Maturity Date ");
					return;
				}
				if ($("#schemeType").val() == "") {
					alert("Enter the Scheme Type");
					return;
				}
				if ($("#schemeName").val() == "") {
					alert("Enter the Scheme Name");
					return;
				}
				if ($("#mode").val() == "") {
					alert("Enter the Mode");
					return;
				}
				if ($("#misMode").val() == "") {
					alert("Enter MIS Mode");
					return;
				}
				if ($("#policyAmount").val() == "") {
					alert("Enter the Policy Amount ");
					return;
				}
				if ($("#totalDeposit").val() == "") {
					alert("Enter Deposist Amount");
					return;
				}
				if ($("#maturityAmount").val() == "") {
					alert("Maturity Amount ");
					return;
				}
				if ($("#mISInterest").val() == "") {
					alert("Enter The MIs Interst");
					return;
				}
				if ($("#filetag").val() == "") {
					alert("Choose The Photo");
					return;
				}
				if ($("#secondfiletag").val() == "") {
					alert("Choose The Signature ");
					return;
				}
				if ($("#paymode").val() == "") {
					alert("Enter the PayMode");
					return;
				}
				if ($("#advisorCode").val() == "") {
					alert("Enter the Advisor Code");
					return;
				}
				if ($("#advisorName").val() == "") {
					alert("Enetr Advisor Name");
					return;
				}

				$.ajax({
					url : "updateAddInvestment",
					type : "POST",
					data : formData,
					processData : false,
					contentType : false,
					success : function(data) {

						alert(data)
						window.location.href = "addInvestment";
					},
					error : function(error) {
						console.log(error);
					}
				});
			});
		});
	</script>

	<script>
		var fileTag = document.getElementById("filetag"), preview = document
				.getElementById("preview"), secondfiletag = document
				.getElementById("secondfiletag"), secondpreview = document
				.getElementById("secondpreview");

		fileTag.addEventListener("change", function() {
			changeImage(this);
		});

		secondfiletag.addEventListener("change", function() {
			changeImage2(this);
		});

		function changeImage(input) {
			var reader;

			if (input.files && input.files[0]) {
				reader = new FileReader();

				reader.onload = function(e) {
					preview.setAttribute('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}

		function changeImage2(input) {
			var reader;

			if (input.files && input.files[0]) {
				reader = new FileReader();

				reader.onload = function(e) {
					secondpreview.setAttribute('src', e.target.result);
				}

				reader.readAsDataURL(input.files[0]);
			}
		}
	</script>

</body>
</html>