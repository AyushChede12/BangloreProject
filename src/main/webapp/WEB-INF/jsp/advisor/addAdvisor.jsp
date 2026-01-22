<jsp:include page="../header.jsp" />
<%
String status = (String) request.getAttribute("status");
if (status != null && status.equals("success")) {
%>
<script>
	alert("Saved Successfully");
</script>
<%
}
%>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true"
	onload=" appendSelectMember(); RelativeRelationDropdown(); selectPosition(); branchNameList();">
	<!-- <form method="post" action="saveAdvisor" id="form1"
		modelAttribute="user"> -->

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
					<b>FINANCIAL/CONSULTANT</b>
				</h1>
				<h5 style="margin-left: 18px;">ADD CONSULTANT</h5>

				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Consultant</li>
				</ol>
			</section>
			<div class="wizard-steps">
				<div class="wizard-step active" id="step1">
					<div class="step-circle">1</div>
					<div class="step-title"> CONSULTANT DETAILS</div>
					<div class="wizard-line"></div>
				</div>
				<div class="wizard-step inactive" id="step2">
					<div class="step-circle">2</div>
					<div class="step-title">INTRODUCER DETAILS</div>
				</div>

				<div class="wizard-step inactive" id="step3">
					<div class="step-circle">3</div>
					<div class="step-title">PAYMENT DETAILS</div>
				</div>
			</div>
			<style>
.box-body {
	padding: 30px 35px;
}

.four-col-row {
	margin-bottom: 30px;
}

.four-col-row label {
	font-weight: 500;
	margin-bottom: 6px;
}

@media ( max-width : 991px) {
	.col-md-3 {
		margin-bottom: 20px;
	}
}
</style>

			<section class="content ">

				<input type="hidden" id="memberId" name="memberId" />

				<!-- ================= Advisor / Collector Details ================= -->
				<div class="row " id="advisorDetailsSection">
					<div class="col-md-12">

						<div class="form-container">
							<div class="box-header ">
								<h3 class="box-title">Advisor / Collector Details</h3>
							</div>

							<form id="fileUploadForm">
								<div class="box-body ">

									<!-- ROW 1 -->
									<div>
										<div class="col-md-3">
											<label>Joining Date *</label> <input type="date"
												id="joiningDate" name="joiningDate" class="form-control">
										</div>

										<div class="col-md-3">
											<label>Select Member *</label> <select id="selectMember"
												name="selectMember" class="form-control select2"
												onchange="fetchBySelectedMember()"></select>
										</div>

										<div class="col-md-3">
											<label>Member Name *</label> <input id="memberName"
												name="memberName" readonly class="form-control">
										</div>

										<div class="col-md-3">
											<label>Mobile No *</label> <input id="mobileNo"
												name="mobileNo" readonly class="form-control">
										</div>
									</div>

									<!-- ROW 2 -->
									<div>
										<div class="col-md-3" style="margin-top: 15px;">
											<label>DOB *</label> <input id="dob" name="dob" readonly
												class="form-control">
										</div>

										<div class="col-md-3" style="margin-top: 15px;">
											<label>Age</label> <input id="age" name="age" readonly
												class="form-control">
										</div>

										<div class="col-md-3" style="margin-top: 15px;">
											<label>Relative Name</label> <input id="relativeName"
												name="relativeName" readonly class="form-control">
										</div>

										<div class="col-md-3" style="margin-top: 15px;">
											<label>Relation</label> <input id="relativeRelation"
												name="relativeRelation" readonly class="form-control">
										</div>
									</div>

									<!-- ROW 3 -->
									<div>
										<div class="col-md-3" style="margin-top: 15px;">
											<label>Branch *</label> <select id="branchName"
												name="branchName" class="form-control"></select>
										</div>

										<div class="col-md-3" style="margin-top: 15px;">
											<label>District *</label> <input id="district"
												name="district" readonly class="form-control">
										</div>

										<div class="col-md-3" style="margin-top: 15px;">
											<label>State *</label> <input id="state" name="state"
												readonly class="form-control">
										</div>

										<div class="col-md-3" style="margin-top: 15px;">
											<label>Pincode *</label> <input id="pinCode" name="pinCode"
												readonly class="form-control">
										</div>
									</div>

									<!-- ROW 4 -->
									<div>
										<div class="col-md-3" style="margin-top: 15px;">
											<label>Occupation</label> <input id="occupation"
												name="occupation" readonly class="form-control">
										</div>

										<div class="col-md-3" style="margin-top: 15px;">
											<label>Education</label> <input id="education"
												name="education" readonly class="form-control">
										</div>

										<div class="col-md-3" style="margin-top: 15px;">
											<label>Nominee Name</label> <input id="nomineeName"
												name="nomineeName" class="form-control">
										</div>

										<div class="col-md-3" style="margin-top: 15px;">
											<label>Nominee Age</label> <input id="nomineeAge"
												name="nomineeAge" class="form-control">
										</div>
									</div>

									<!-- ROW 5 -->
									<div>
										<div class="col-md-6" style="margin-top: 15px;">
											<label>Address *</label>
											<textarea id="address" name="address" readonly
												class="form-control"></textarea>
										</div>

										<div class="col-md-3" style="margin-top: 15px;">
											<label>Nominee Relation</label> <select id="relation"
												name="relation" class="form-control"></select>
										</div>
									</div>

								</div>

							</form>
							<!-- ================= PHOTO & SIGNATURE ================= -->
							<div class="documents" style="margin-top: 15px;">


								<div class="col-md-6 text-center">
									<div class="box-header with-border text-center">
										<h3 class="box-title">Photo</h3>
									</div>
									<input type="file" name="aadharCard" id="aadharCard"
										accept="image/*" onchange="previewImage(this,'previewFront')"
										style="display: none;"> <label for="aadharFront">
										<img id="previewFront" src="../images/upload/upload.png"
										style="width: 150px; height: 150px; border: 1px solid #ccc; cursor: pointer;">
									</label>
								</div>


								<div class="col-sm-3 text-center">
									<div class="box-header with-border text-center">
										<h3 class="box-title">Signature</h3>
									</div>
									<input type="file" name="signature" id="signature"
										accept="image/*" onchange="previewImage(this,'previewBack')"
										style="display: none;"> <label for="aadharBack">
										<img id="previewBack" src="../images/upload/upload.png"
										style="width: 150px; height: 150px; border: 1px solid #ccc; cursor: pointer;">
									</label>
								</div>

							</div>
							<div class="box-footer">
								<button type="button" class="btn btn-success pull-right"
									onclick="goToInducerDetails()">NEXT</button>
							</div>


						</div>




					</div>
				</div>


				<!-- ================= Introducer Details ================= -->
				<div class="row" id="inducerDetailsSection" style="display: none;">
					<div class="col-md-12">
						<div class="box form-container">
							<div class="box-header ">
								<h3 class="box-title">Introducer Details</h3>
							</div>
							<div class="box-body">

								<div class="row ">
									<div class="col-md-3">
										<label>Select Position *</label> <select id="selectPosition"
											name="selectPosition" class="form-control select2"></select>
									</div>

									<div class="col-md-3">
										<label>Introducer Code *</label> <input id="introducerCode"
											name="introducerCode" class="form-control">
									</div>

									<div class="col-md-3">
										<label>Introducer Name</label> <input id="introducerName"
											readonly class="form-control">
									</div>

									<div class="col-md-3">
										<label>Position *</label> <input id="position" readonly
											class="form-control">
									</div>
								</div>

							</div>
							<!-- FOOTER -->
							<div class="box-footer">
								<button type="button" class="btn btn-success"
									onclick="backToAdvisorDetails()">PREVIOUS</button>

								<button type="button" class="btn btn-success pull-right"
									onclick="goToPaymentDetails()">NEXT</button>
							</div>
						</div>

					</div>
				</div>

				<!-- ================= Payment Details ================= -->
				<div class="row" id="paymentDetailsSection" style="display: none;">
					<div class="col-md-12">
						<div class="form-container">
							<div class="box-header ">
								<h3 class="box-title">Payment Details</h3>
							</div>

							<div class="box-body">
								<div class="row ">

									<div class="col-md-3">
										<label>Fees *</label> <input id="feesIfAny" name="feesIfAny"
											class="form-control">
									</div>

									<div class="col-md-3">
										<label>Payment By *</label> <select id="paymode"
											name="paymode" class="form-control">
											<option value="">Select</option>
											<option>Cash</option>
											<option>Online</option>
											<option>Cheque</option>
											<option>NEFT</option>
										</select>
									</div>

									<div class="col-md-3">
										<label>Advisor Status *</label><br> <label class="switch">
											<input type="checkbox" id="advisorStatus" checked> <span
											class="slider round"></span>
										</label>
									</div>

									<div class="col-md-3">
										<label>SMS Send *</label><br> <label class="switch">
											<input type="checkbox" id="smsSend" checked> <span
											class="slider round"></span>
										</label>
									</div>

								</div>

								<div class="row four-col-row">
									<div class="col-md-6">
										<label>Remarks</label>
										<textarea id="remarks" name="remarks" class="form-control"></textarea>
									</div>
								</div>

							</div>





							<div class="box-footer text-right ">
								<button type="button" class="btn btn-success pull-left"
									onclick="backToInducerDetails()">PREVIOUS</button>
								<button class="btn btn-info margin-r-5" onclick="loadNewPage()">New
								</button>
								<button class="btn btn-success">Save</button>
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
	<script src="dist/js/AdvisorTeamCollection.js"></script>
	<script src="dist/js/RelativeRelation.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
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

	<script>
		$(document).ready(function() {
			$('#ContentPlaceHolder1_btnSave').click(function() {

				var form = $('#fileUploadForm')[0];
				var data = new FormData(form);
				$.ajax({
					url : 'saveOperationForAddAdvisor',
					type : 'POST',
					enctype : 'multipart/form-data',
					data : data,
					processData : false,
					contentType : false,
					cache : false,
					success : function(response) {
						alert(response)
						window.location.href = "addAdvisor";
						//console.log(response);
					},
					error : function(xhr, status, error) {
						console.log(xhr.responseText);
					}
				});
			});
		});
	</script>

	<script>
		function loadNewPage() {
			// Perform page redirect
			window.location.href = "addAdvisor";
		}
	</script>

	<script type="text/javascript">
		function branchNameList() {
			$.ajax({
				type : "get",
				contentType : "application/json",
				url : 'getAllBranch',
				asynch : false,
				success : function(data) {

					var appenddata1 = "";
					//var jsonData1 = JSON.parse(data1.d);
					for (var i = 0; i < data.length; i++) {
						appenddata1 += "<option value ='" + data[i].name + "'>"
								+ data[i].name + "</option>";
					}
					$("#branchName").append(appenddata1);
				},
				error : function() {
					alert("Device control failed");
				}
			});
		}
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

			$("#inducerDetailsSection").hide();
			$("#paymentDetailsSection").show();

			$("#step2").removeClass("active").addClass("completed");
			$("#step3").removeClass("inactive").addClass("active");
		}
		function backToInducerDetails() {
			$("#paymentDetailsSection").hide();
			$("#inducerDetailsSection").show();

			$("#step3").removeClass("active").addClass("inactive");
			$("#step2").removeClass("completed").addClass("active");
		}

		function goToInducerDetails() {

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

			$("#advisorDetailsSection").hide();
			$("#inducerDetailsSection").show();

			$("#step1").removeClass("active").addClass("completed");
			$("#step2").removeClass("inactive").addClass("active");
		}
		function backToAdvisorDetails() {
			$("#inducerDetailsSection").hide();
			$("#advisorDetailsSection").show();

			$("#step2").removeClass("active").addClass("inactive");
			$("#step1").removeClass("completed").addClass("active");
		}
	</script>

	<!-- </form> -->
</body>
</html>