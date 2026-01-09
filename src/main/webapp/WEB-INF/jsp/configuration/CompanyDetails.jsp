<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<body onload="getConmapnyDetails()" class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!-- <form method="post" action="updateCompanyDetails" modelAttribute="updateCompanyDetails" id="form1"> -->
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
					<b>CUSTOMIZATION</b>
				</h1>
				<h5 style="margin-left: 18px;">COMPANY MANAGE</h5>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>
							Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Setting</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="form-container">
							<div class="box-header ">
								<h3 class="box-title">Company Details</h3>
								<div class="box-tools pull-right">
									<button type="button" name="BtnEdit" id="BtnEdit"
										onclick="enableDisabledField()">
										<img src="dist/img/pen_paper_2-32.png"
											style="height: 20px; width: 20px;" />
									</button>
								</div>
							</div>
							<form id="formid">
								<div id="ContentPlaceHolder1_pnlCdetails" class="aspNetDisabled">
									<div class="box-body">
										<!-- row-1  -->
										<div class="col-md-12" style="margin-top: 15px;">
											<div class="col-md-3">

												<label>Company Name :</label> <input name="companyName"
													type="text" placeholder="ENTER COMPANY NAME"
													readonly="readonly" id="companyName" class="form-control"
													autocomplete="off" />

											</div>
											<div class="col-md-3">

												<label>Short Name :</label> <input name="shortName"
													type="text" placeholder="ENTER SHORT NAME" maxlength="4"
													readonly="readonly" id="shortName" class="form-control"
													autocomplete="off" />

											</div>
											<div class="col-md-3">

												<label>Registration Date :</label> <input name="doj"
													type="date" readonly="readonly" id="doj"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" />

											</div>
											<div class="col-md-3">

												<label>CIN No. :</label> <input name="cin" type="text"
													placeholder="ENTER CIN NO" readonly="readonly" id="cin"
													class="form-control" autocomplete="off" />

											</div>

										</div>

										<!-- row 2 -->
										<div class="col-md-12" style="margin-top: 15px;">

											<div class="col-md-3">

												<label>PAN :</label> <input name="pan" type="text"
													placeholder="ENTER PAN" readonly="readonly" id="pan"
													class="form-control" autocomplete="off" />

											</div>
											<div class="col-md-3">

												<label>TAN :</label> <input name="tan" type="text"
													placeholder="ENTER TAN" readonly="readonly" id="tan"
													class="form-control" autocomplete="off" />

											</div>
											<div class="col-md-3">

												<label>GSTIN :</label> <input name="gst" type="text"
													readonly="readonly" id="gst" class="form-control"
													autocomplete="off" placeholder="ENTER GSTIN" />

											</div>
											<div class="col-md-3">

												<label>Nominal Share Value :</label> <input
													name="shareValue" type="text" value="10"
													readonly="readonly" id="shareValue" class="form-control"
													autocomplete="off" placeholder="ENTER NOMINAL SHARE VALUE"
													onkeypress="return isNumberKey(this, event);" />

											</div>
										</div>


										<!-- row 3 -->
										<div class="col-md-12" style="margin-top: 15px;">
											<div class="col-md-3">

												<label>Address :</label> <input name="address" type="text"
													placeholder="ENTER ADDRESS" readonly="readonly"
													id="address" class="form-control" autocomplete="off" />

											</div>
											<div class="col-md-3">

												<label>State :</label> <input name="state" type="text"
													placeholder="ENTER STATE" readonly="readonly" id="state"
													class="form-control" autocomplete="off" />

											</div>
											<div class="col-md-3">

												<label>Pin Code :</label> <input name="pinCode" type="text"
													placeholder="ENTER PIN CODE" readonly="readonly"
													id="pinCode" class="form-control" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" />

											</div>
											<div class="col-md-3">

												<label>Email ID :</label> <input name="email" type="text"
													placeholder="ENTER EMAIL ID" readonly="readonly" id="email"
													class="form-control" autocomplete="off" />

											</div>
										</div>


										<!-- row 4 -->
										<div class="col-md-12" style="margin-top: 15px;">
											<div class="col-md-3">

												<label>Authorized Capital :</label> <input
													name="authorizedcapital" type="text"
													placeholder="ENTER AUTHORIZED CAPITAL" readonly="readonly"
													id="authorizedcapital" class="form-control"
													autocomplete="off"
													onkeypress="return isNumberKey(this, event);" />

											</div>
											<div class="col-md-3">

												<label>PaidUp Capital :</label> <input name="paidup"
													type="text" placeholder="ENTER PAIDUP CAPITAL"
													readonly="readonly" id="paidup" class="form-control"
													autocomplete="off"
													onkeypress="return isNumberKey(this, event);" />

											</div>
											<div class="col-md-3">

												<label>NOF :</label> <input name="landLine" type="text"
													placeholder="ENTER NOF" readonly="readonly" id="landLine"
													class="form-control" autocomplete="off" />

											</div>
											<div class="col-md-3">

												<label>Mobile No :</label> <input name="mobile" type="text"
													placeholder="ENTER MOBILE NO" readonly="readonly"
													id="mobile" class="form-control" autocomplete="off" />

											</div>
										</div>


										<!-- row 5 -->
										<div class="col-md-12" style="margin-top: 15px;">
											<div class="col-md-3">

												<label>TDS (With PAN) :</label> <input name="tDSWithPAN"
													type="text" placeholder="ENTER TDS(WITH PAN)"
													readonly="readonly" id="TDSWithPAN" class="form-control"
													autocomplete="off"
													onkeypress="return isNumberKey(this, event);" />

											</div>
											<div class="col-md-3">

												<label>TDS (Without PAN) :</label> <input
													name="tDSWithoutPAN" type="text"
													placeholder="ENTER TDS(WITHOUT PAN)" readonly="readonly"
													id="TDSWithoutPAN" class="form-control" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" />

											</div>
											<div class="col-md-3">

												<label>TAX Deduction:</label> <input name="tax" type="text"
													placeholder="ENTER TAX DEDUCTION" readonly="readonly"
													id="tax" class="form-control" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" />

											</div>
											<div class="col-md-3">

												<label>TAX Deduction(Senior) :</label> <input name="taxSr"
													type="text" placeholder="ENTER TAX DEDUCTION(SENIOR)"
													readonly="readonly" id="taxSr" class="form-control"
													autocomplete="off"
													onkeypress="return isNumberKey(this, event);" />

											</div>
										</div>
										<!-- row 6  -->
										<div class="col-md-12" style="margin-top: 15px;">

											<div class=" col-md-3"
												style="display: flex; margin: 15px 0 30px;">
												<div class="box-body">
													<div>
														<h4>
															<b>Logo</b>
														</h4>
														<p class="help-block">Maximum 10MB</p>
													</div>
													<div class="col-md-3">

														<div class="text-center">
															<img id="preview" class="profile-user-img"
																src="upload_Files/${Logo}" alt="Image"
																style="height: 110px; width: 110px;"> <input
																type="file" name="filetag" id="filetag" />
														</div>

													</div>
													<!-- <div class="clearfix"></div> -->
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
													<!-- <div class="clearfix"></div> -->
												</div>

											</div>
										</div>



										<!-- row 7 -->
										<div class="col-md-12" style="margin-top: 15px;">
											<div class=" col-md-12" style="text-align: center;">
												<button type="submit"
													class="btn btn-info pull-right margin-r-5" id="updateBtn"
													disabled>Update</button>
											</div>
										</div>


									</div>

								</div>
							</form>
						</div>

					</div>

				</div>
			</section>
		</div>


		<!-- /.content-wrapper -->
		<div class="control-sidebar-bg"></div>
	</div>

	<script src="dist/js/adminlte.min.js"></script>

	<!-- <script src="bower_components/jquery/dist/jquery.min.js"></script>
	Bootstrap 3.3.7
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	InputMask
	<script src="plugins/input-mask/jquery.inputmask.js"></script>
	<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
	date-range-picker
	<script src="bower_components/moment/min/moment.min.js"></script>
	<script
		src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	bootstrap datepicker
	<script
		src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	bootstrap color picker
	<script
		src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
	bootstrap time picker
	<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
	SlimScroll
	<script
		src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	iCheck 1.0.1
	<script src="plugins/iCheck/icheck.min.js"></script>
	FastClick
	<script src="bower_components/fastclick/lib/fastclick.js"></script>
	AdminLTE App
	<script src="dist/js/adminlte.min.js"></script>
	AdminLTE for demo purposes
	<script src="dist/js/demo.js"></script>
	Select2
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script> -->

	<script>
		$(document).ready(function() {
			/* $("#myForm").submit(function(e) {
				e.preventDefault(); // prevent default form submit action

				var formData = new FormData($(this)[0]); // create new FormData object from form data
				//console.log(formData);

				$.ajax({
					url : "updateCompanyDetails",
					type : "POST",
					data : formData,
					processData : false,
					contentType : false,
					success : function(data) {
						alert("success");
						window.location.href = "CompanyDetails";
						alert("Data Updated Successfully")
					},
					error : function(error) {
						console.log(error);
					}
				});
			}); */
			
			$("#updateBtn").click(function(event) {
				event.preventDefault();

				// Convert text to uppercase
				$("#formid").find("input[type=text], textarea").each(function() {
					if ($(this).val()) {
						$(this).val($(this).val().toUpperCase());
					}
				});

				// Clear all error messages
				$('#chkcompanyname, #chkshortname, #chksignupdate, #chkcinno, #chkpan, #chktan, #chkgstin, #chkdeclaredvalue, #chkaddress, #chkstate, #chkcity, #chkpincode, #chkemailid, #chkauthorizedsharecapital, #chkpaidupcapital, #chknof, #chkhelplineNo, #chktdswithpan, #chktdswithoutpan, #chktaxdeduction, #chkbranchManagerContactNo').text('');

				// Get field values
				var companyName = $('#companyName').val().trim();
				var shortName = $('#shortName').val().trim();
				var signUpDate = $('#signUpDate').val().trim();
				var cinNo = $('#cinNo').val().trim();
				var pan = $('#pan').val().trim();
				var tan = $('#tan').val().trim();
				var gstin = $('#gstin').val().trim();
				var declaredValue = $('#declaredValue').val().trim();
				var address = $('#address').val().trim();
				var state = $('#state').val().trim();
				var city = $('#city').val().trim();
				var pinCode = $('#pinCode').val().trim();
				var emailId = $('#emailId').val().trim();
				var authorizedShareCapital = $('#authorizedShareCapital').val().trim();
				var paidUpCapital = $('#paidUpCapital').val().trim();
				var nof = $('#nof').val().trim();
				var helplineNo = $('#helplineNo').val().trim();
				var tdsWithPan = $('#tdsWithPan').val().trim();
				var tdsWithoutPan = $('#tdsWithoutPan').val().trim();
				var taxDeduction = $('#taxDeduction').val().trim();
				var branchManagerContactNo = $('#branchManagerContactNo').val().trim();

				// Regex patterns
				var contactPattern = /^[6-9][0-9]{9}$/;
				var panPattern = /^[A-Z]{5}[0-9]{4}[A-Z]{1}$/;
				var pinPattern = /^[1-9][0-9]{5}$/;
				var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
				const cinPattern = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[^A-Za-z0-9]).+$/; // Alpha + numeric + special char
				const tanPattern = /^[A-Z]{4}[0-9]{5}[A-Z]{1}$/;

				let isValid = true;

				if (companyName === '') {
					$('#chkcompanyname').text('* This field is required');
					$('#companyName').focus();
					isValid = false;
				}
				if (shortName === '') {
					$('#chkshortname').text('* This field is required');
					$('#shortName').focus();
					isValid = false;
				}
				if (signUpDate === '') {
					$('#chksignupdate').text('* This field is required');
					$('#signUpDate').focus();
					isValid = false;
				}
				if (cinNo === '') {
					$('#chkcinno').text('* This field is required');
					$('#cinNo').focus();
					isValid = false;
				} else if (!cinPattern.test(cinNo)) {
					$('#chkcinno').text('CIN No must contain alphabets, numbers, and at least one special character.');
					$('#cinNo').focus();
					isValid = false;
				}
				if (pan === '') {
					$('#chkpan').text('* This field is required');
					$('#pan').focus();
					isValid = false;
				} else if (!panPattern.test(pan)) {
					alert("Please enter a valid PAN card number (e.g., ABCDE1234F).");
					$('#pan').focus();
					return false;
				}
				if (tan === '') {
					$('#chktan').text('* This field is required');
					if (isValid) $('#tan').focus();
					isValid = false;
				} else if (!tanPattern.test(tan)) {
					$('#chktan').text('TAN No must contain only alphabets and numbers (no special characters).');
					$('#tan').focus();
					isValid = false;
				}
				if (gstin === '') {
					$('#chkgstin').text('* This field is required');
					$('#gstin').focus();
					isValid = false;
				}
				if (declaredValue === '') {
					$('#chkdeclaredvalue').text('* This field is required');
					$('#declaredValue').focus();
					isValid = false;
				}
				if (address === '') {
					$('#chkaddress').text('* This field is required');
					$('#address').focus();
					isValid = false;
				}
				if (state === '') {
					$('#chkstate').text('* This field is required');
					$('#state').focus();
					isValid = false;
				}
				if (city === '') {
					$('#chkcity').text('* This field is required');
					$('#city').focus();
					isValid = false;
				}
				if (pinCode === '') {
					$('#chkpincode').text('* This field is required');
					$('#pinCode').focus();
					isValid = false;
				} else if (!pinPattern.test(pinCode)) {
					alert("Please enter a valid 6-digit PIN code (first digit cannot be 0).");
					$('#pinCode').focus();
					return false;
				}
				if (emailId === '') {
					$('#chkemailid').text('* This field is required');
					$('#emailId').focus();
					isValid = false;
				} else if (!emailPattern.test(emailId)) {
					alert('Please enter a valid email address (e.g., example@domain.com)');
					$('#emailId').focus();
					isValid = false;
				}
				if (authorizedShareCapital === '') {
					$('#chkauthorizedsharecapital').text('* This field is required');
					$('#authorizedShareCapital').focus();
					isValid = false;
				}
				if (paidUpCapital === '') {
					$('#chkpaidupcapital').text('* This field is required');
					$('#paidUpCapital').focus();
					isValid = false;
				}
				if (nof === '') {
					$('#chknof').text('* This field is required');
					$('#nof').focus();
					isValid = false;
				}
				if (helplineNo === '') {
					$('#chkhelplineno').text('* This field is required');
					$('#helplineNo').focus();
					isValid = false;
				} else if (!contactPattern.test(helplineNo)) {
					alert("Please enter a valid 10-digit HelpLine number.");
					$('#helplineNo').focus();
					return false;
				}
				if (tdsWithPan === '') {
					$('#chktdswithpan').text('* This field is required');
					$('#tdsWithPan').focus();
					isValid = false;
				}
				if (tdsWithoutPan === '') {
					$('#chktdswithoutpan').text('* This field is required');
					$('#tdsWithoutPan').focus();
					isValid = false;
				}
				if (taxDeduction === '') {
					$('#chktaxdeduction').text('* This field is required');
					$('#taxDeduction').focus();
					isValid = false;
				}
				if (branchManagerContactNo === '') {
					$('#chkbranchManagerContactNo').text('* This field is required');
					$('#branchManagerContactNo').focus();
					isValid = false;
				} else if (!contactPattern.test(branchManagerContactNo)) {
					alert("Please enter a valid 10-digit Branch Manager Contact Number.");
					$('#branchManagerContactNo').focus();
					return false;
				}

				if (!isValid) {
					return false;
				}

				var declaredValue = $("#declaredValue").val();
				var paidUpCapital = $("#paidUpCapital").val();
				var noOfShares = paidUpCapital / declaredValue;

				let formData = {
					id: $("#id").val(),
					companyName: $("#companyName").val(),
					shortName: $("#shortName").val(),
					signUpDate: $("#signUpDate").val(),
					cinNo: $("#cinNo").val(),
					pan: $("#pan").val(),
					tan: $("#tan").val(),
					gstin: $("#gstin").val(),
					declaredValue: $("#declaredValue").val(),
					address: $("#address").val(),
					state: $("#state").val(),
					city: $("#city").val(),
					pinCode: $("#pinCode").val(),
					emailId: $("#emailId").val(),
					authorizedShareCapital: $("#authorizedShareCapital").val(),
					paidUpCapital: $("#paidUpCapital").val(),
					nof: $("#nof").val(),
					helplineNo: $("#helplineNo").val(),
					tdsWithPan: $("#tdsWithPan").val(),
					tdsWithoutPan: $("#tdsWithoutPan").val(),
					taxDeduction: $("#taxDeduction").val(),
					branchManagerContactNo: $("#branchManagerContactNo").val()
				};

				$.ajax({
					url: "api/preference/update",
					type: "POST",
					contentType: "application/json",
					data: JSON.stringify(formData),
					success: function() {
						alert("Company details updated successfully!");
					},
					error: function() {
						alert("Error updating company details");
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

		function getConmapnyDetails() {
			$
					.ajax({
						type : "GET",
						contentType : "application/json",
						url : 'getConmapnyDetails',
						asynch : false,
						success : function(response) {

							if (response.status == 'FOUND') {
								let company = response.data[0];
								document.getElementById("companyName").value = company.companyName;
								document.getElementById("shortName").value = company.shortName;
								document.getElementById("doj").value = company.doj;
								document.getElementById("cin").value = company.cin;
								document.getElementById("pan").value = company.pan;
								document.getElementById("tan").value = company.tan;
								document.getElementById("gst").value = company.gst;
								document.getElementById("shareValue").value = company.shareValue;
								document.getElementById("address").value = company.address;
								document.getElementById("state").value = company.state;
								document.getElementById("pinCode").value = company.pinCode;
								document.getElementById("email").value = company.email;
								document.getElementById("authorizedcapital").value = company.authorizedcapital;
								document.getElementById("paidup").value = company.paidup;
								document.getElementById("landLine").value = company.landLine;
								document.getElementById("mobile").value = company.mobile;
								document.getElementById("TDSWithPAN").value = company.tDSWithPAN;
								document.getElementById("TDSWithoutPAN").value = company.tDSWithoutPAN;
								document.getElementById("tax").value = company.tax;
								document.getElementById("taxSr").value = company.taxSr;

								var imgElement = document
										.getElementById("preview");
								imgElement.src = "data:image/png;base64,"
										+ company.frontEndPhoto;
								//imgElement.src ="data:image/png;base64,"+data[i].image;

								var imgElement = document
										.getElementById("secondpreview");
								imgElement.src = "data:image/png;base64,"
										+ company.frontEndSignature;
								//imgElement.src ="data:image/png;base64,"+data[i].image;
							}

						},
						error : function() {
							alert("Device control failed");
						}
					});
		}

		function enableDisabledField() {
			document.getElementById("companyName").readOnly = false;
			document.getElementById("shortName").readOnly = false;
			document.getElementById("doj").readOnly = false;
			document.getElementById("cin").readOnly = false;
			document.getElementById("pan").readOnly = false;
			document.getElementById("tan").readOnly = false;
			document.getElementById("gst").readOnly = false;
			document.getElementById("shareValue").readOnly = false;
			document.getElementById("address").readOnly = false;
			document.getElementById("state").readOnly = false;
			document.getElementById("pinCode").readOnly = false;
			document.getElementById("email").readOnly = false;
			document.getElementById("authorizedcapital").readOnly = false;
			document.getElementById("paidup").readOnly = false;
			document.getElementById("landLine").readOnly = false;
			document.getElementById("mobile").readOnly = false;
			document.getElementById("TDSWithPAN").readOnly = false;
			document.getElementById("TDSWithoutPAN").readOnly = false;
			document.getElementById("tax").readOnly = false;
			document.getElementById("taxSr").readOnly = false;
			document.getElementById("updateBtn").disabled = false;
		}
	</script>


</body>
</html>