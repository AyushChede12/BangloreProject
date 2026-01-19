<jsp:include page="../header.jsp" />
<style>
.custom-table thead th {
	background-color: #C48223; /* header color */
	color: #ffffff;
	text-align: center;
	font-size: 18px; /* heading text bigger */
	font-weight: 700;
	padding: 18px 12px; /* 🔥 HEIGHT CONTROL */
	line-height: 1.8; /* 🔥 OPEN LOOK */
	vertical-align: middle;
	white-space: nowrap;
}

/* Body rows more open */
.custom-table tbody td {
	padding: 14px 12px;
	font-size: 15px;
}

.iconbutton {
	background: none;
	border: none;
	padding: 0;
	cursor: pointer;
}

.iconbutton:focus {
	outline: none;
}

.iconbutton i {
	font-size: 18px;
}
</style>
<script src="jquery-3.6.3.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(function() {
		$("#hideshowtable").hide();

		$("#hide").click(function() {
			$("#hideshowtable").hide();
		});

		$("#show").click(function() {
			$("#hideshowtable").show();
		});
	});
</script>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">

	<!-- getAllBranchMaster() , fetchMaxGLGroupNo() -->
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
				<h5 style="margin-left: 18px;">ADD BRANCH</h5>
				
			</section>

			<form id="form">
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="form-container">
								<div class="box-header ">
									<h3 class="box-title">Branch Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-12" style="margin-top: 15px;">

										<div class="col-md-4">
											<label>G.L.HEAD NO. <strong style="color: Red">*</strong></label>

											<input name="glHeadNo" type="text" id="glHeadNo" style="text-transform: uppercase;"
												class="form-control" placeholder="ENTER GL HEAD NO"
												autocomplete="off" /> <span id="branchCodeMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">ENTER
												GL HEAD NO.</span>
										</div>

										<div class="col-md-4">
											<label>BANK NAME <strong style="color: Red">*</strong></label>

											<input name="name" type="text" id="name" class="form-control" style="text-transform: uppercase;"
												placeholder="ENTER BANK NAME" autocomplete="off" /> <span
												id="branchNameMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">ENTER
												BANK NAME</span>
										</div>

										<div class="col-md-4">
											<label>BANK ACCOUNT NO<strong style="color: Red">*</strong></label>

											<input name="bankAccoununtNo" type="text" style="text-transform: uppercase;"
												id="bankAccoununtNo" class="form-control"
												placeholder="ENTER BANK ACCOUNT NO" autocomplete="off" />
											<span id="bankAccoununtNoMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">ENTER
												BANK ACCOUNT NO.</span>
										</div>

										<div class="col-md-4" style="margin-top: 15px;">
											<label>BRANCH<strong style="color: Red">*</strong></label> <input
												name="branch" type="text" id="branch" class="form-control" style="text-transform: uppercase;"
												placeholder="ENTER BRANCH" autocomplete="off" /> <span
												id="branchMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">ENTER
												BRANCH</span>
										</div>

										<div class="col-md-4" style="margin-top: 15px;">
											<label>BRANCH CODE <strong style="color: Red">*</strong></label>
											<input name="code" type="text" maxlength="10" id="code" style="text-transform: uppercase;"
												class="form-control" placeholder="ENTER BRANCH CODE"
												autocomplete="off" /> <span id="branchCodeMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">ENTER
												CODE</span>
										</div>

										<div class="col-md-4" style="margin-top: 15px;">
											<label for="txtAddress">ADDRESS <strong
												style="color: Red">*</strong>
											</label>

											<textarea name="address" rows="2" cols="20" id="address" style="text-transform: uppercase;"
												class="form-control" placeholder="Enter Branch Address"
												autocomplete="off">
                                    </textarea>
											<span id="addressMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">ENTER
												ADDRESS</span>
										</div>
										<!-- row 2  -->
										<div class="col-md-12" style="margin-top: 15px;">
											<div class="checkbox-container col-md-4 ">
												<label for="checkbox1">ALLOW INTER BRANCH
													TRANSACTION</label> <input value="Allow Inter Branch Transaction"
													type="checkbox" id="selectTransactionCheckbox"
													name="selectTransactionCheckbox" style="margin-left: 5px;">
											</div>
											<div class="checkbox-container col-md-4">
												<label for="checkbox2">IS FOR FUND TRANSFER</label> <input
													value="Is For Fund Transfer" type="checkbox"
													id="selectTransactionCheckbox"
													name="selectTransactionCheckbox" style="margin-left: 5px;">
											</div>
										</div>


									</div>
									<div class="col-md-12" style="margin-top: 15px">
										<div class="col-md-4">
											<label for="accountType">ACCOUNT TYPE <strong
												style="color: Red">*</strong>
											</label> <select name="accountType" id="accountType"
												class="form-control select2" style="width: 100%;">
												<option selected="selected" value="Select">--SELECT--</option>
												<option value="Savings">SAVING</option>
												<option value="Current">CURRENT</option>
												<option value="Cash Credit/O.D.">CASH CREDIT/O.D.</option>
												<option value="Society">SOCIETY</option>

											</select> <span id="accountTypeMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">SELECT
												ACCOUNT TYPE</span>
										</div>

										<div class="col-md-4">
											<label>ACCOUNT OPEN DATE <strong style="color: Red">*</strong>
											</label> <input name="openingDate" type="date" id="openingDate"
												class="form-control"
												data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
												data-mask="" /> <span id="openingDateMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">ENTER
												OPENING DATE</span>
										</div>

										<div class="col-md-4">
											<label for="status">STATUS <strong style="color: Red">*</strong>
											</label> <select name="status" id="status"
												class="form-control select2" style="width: 100%;">
												<option selected="selected" value="Select">--SELECT--</option>
												<option value="Active">ACTIVE</option>
												<option value="Inactive">INACTIVE</option>

											</select> <span id="statusMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">SELECT
												STATUS</span>
										</div>


										<div class="col-md-4" style="margin-top: 15px;">
											<label for="txtPin">PIN <strong style="color: Red">*</strong>
											</label> <input name="pin" type="text" maxlength="7" id="pin"
												class="form-control" placeholder="ENTER PIN" style="text-transform: uppercase;"
												onkeypress="return isNumberOnlyKey(this, event);" /> <span
												id="pinMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">ENTER
												PIN</span>
										</div>

										<div class="col-md-4" style="margin-top: 15px;">
											<label for="ddlState">STATE <strong
												style="color: Red">*</strong>
											</label> <select name="state" id="state" class="form-control select2"
												style="width: 100%;">
												<option selected="selected" value="">--SELECT--</option>
												<option value="ANDRA PRADESH">ANDRA PRADESH</option>
												<option value="ARUNACHAL PRADESH">ARUNACHAL PRADESH</option>
												<option value="ASSAM">ASSAM</option>
												<option value="BIHAR">BIHAR</option>
												<option value="CHHATTISGARH">CHHATTISGARH</option>
												<option value="DELHI">DELHI</option>
												<option value="GUJARAT">GUJARAT</option>
												<option value="HARYANA">HARYANA</option>
												<option value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
												<option value="JAMMU AND KASHMIR">JAMMU AND KASHMIR</option>
												<option value="JHARKHAND">JHARKHAND</option>
												<option value="KARNATAKA">KARNATAKA</option>
												<option value="KERALA">KERALA</option>
												<option value="MADYA PRADESH">MADYA PRADESH</option>
												<option value="MAHARASHTRA">MAHARASHTRA</option>
												<option value="MANIPUR">MANIPUR</option>
												<option value="MEGHALAYA">MEGHALAYA</option>
												<option value="MIZORAM">MIZORAM</option>
												<option value="NAGALAND">NAGALAND</option>
												<option value="ODISSA">ODISSA</option>
												<option value="PUNJAB">PUNJAB</option>
												<option value="RAJASTHAN">RAJASTHAN</option>
												<option value="SIKKIM">SIKKIM</option>
												<option value="TAMIL NADU">TAMIL NADU</option>
												<option value="TRIPURA">TRIPURA</option>
												<option value="UTTAR PRADESH">UTTAR PRADESH</option>
												<option value="UTTARAKHAND">UTTARAKHAND</option>
												<option value="WEST BENGAL">WEST BENGAL</option>
											</select> <span id="stateMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">SELECT
												STATE</span>
										</div>

										<div class="col-md-4" style="margin-top: 15px;">
											<label>CONTACT PERSON</label> <input name="contactPerson"
												type="text" id="contactPerson" class="form-control"
												placeholder="ENTER CONTACT PERSON NAME" autocomplete="off" />
											<span id="contactPersonMsg" style="text-transform: uppercase;"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">ENTER
												PERSON NAME</span>
										</div>

										<div class="col-md-4" style="margin-top: 15px;">
											<label>CONTACT NO.</label> <input name="contactNo"
												type="text" maxlength="10" id="contactNo"
												class="form-control" placeholder="ENTER CONTACT NO"
												onkeypress="return isNumberOnlyKey(this, event);"
												autocomplete="off" /> <span id="contactNoMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">ENTER
												CONTACT NO</span>
										</div>

										<div class="col-md-4" style="margin-top: 15px;">
											<label>IFSC CODE </label> <input name="ifscCode" type="text"
												id="ifscCode" class="form-control"
												placeholder="ENTER IFSC CODE" autocomplete="off" /> <span
												id="ifscCodeMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">ENTER
												IFSC CODE</span>
										</div>

										<div class="col-md-4" style="margin-top: 15px;">
											<label>BALANCE </label> <input name="balance" type="text"
												id="balance" class="form-control"
												placeholder="0.00" autocomplete="off" /> <span
												id="ifscCodeMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">ENTER
												BALANCE</span>
										</div>


									</div>

									<div class=" col-md-7 " style="margin-top: 20px;">

										<button type="button" id="saveBtn"
											class="btn btn-success pull-right margin-r-5">SAVE</button>
											
											<button type="button" id="updateBtn" style="margin-right: 50px;"
											class="btn btn-warning pull-right margin-r-4">UPDATE</button>

										<button type="button" id="hideBtn" onclick="hideBtnFunc()"
											class="btn btn-success pull-right margin-r-5">HIDE</button>

										<button type="button" id="showBtn" onclick="showBtnFunc()"
											class="btn btn-success pull-right margin-r-5">SHOW</button>

									</div>

								</div>



							</div>


							<%-- <div class="form-container">

								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<div>
										<section id="hideshowtable">
											<table cellspacing="0" cellpadding="3" rules="all"
												class="display nowrap table table-hover table-striped table-bordered"
												border="1" style="width: 100%; border-collapse: collapse;">
												<caption></caption>
												<tr style="color: White; background-color: #008385;">
													<th scope="col">SlNo</th>
													<th scope="col">BRANCH CODE</th>
													<th scope="col">BRANCH NAME</th>
													<th scope="col">OPENING DATE</th>
													<th scope="col">PIN</th>
													<th scope="col">STATE</th>
													<th scope="col">CONTACT PERSON</th>
													<th scope="col">CONTACT NO.</th>
													<th scope="col">Action</th>
												</tr>
												<tbody id="ContentPlaceHolder1_gdvData-branchMaster">

												</tbody>
											</table>
										</section>
									</div>
								</div>
							</div> --%>
							<div class="form-container table-responsive" id="branchTable">
								<div class="box-body">

									<table
										class="table table-bordered table-hover table-striped custom-table datatable">
										<thead>
											<tr>
												<th>SL No</th>
												<th>BRANCH CODE</th>
												<th>BRANCH NAME</th>
												<th>OPENING DATE</th>
												<th>PIN</th>
												<th>STATE</th>
												<th>CONTACT PERSON</th>
												<th>CONTACT NO.</th>
												<th>EDIT</th>
												<th>DELETE</th>
											</tr>
										</thead>
										<tbody id="branchTableBody">
											<!-- dynamic rows -->
										</tbody>
									</table>

								</div>
							</div>
						</div>
					</div>
				</section>
			</form>
		</div>
		<!-- /.content-wrapper -->
		<div class="control-sidebar-bg"></div>
	</div>

	<script src="dist/js/adminlte.min.js"></script>
	<script src="dist/js/customization/branch.js"></script>

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
	
	AdminLTE for demo purposes
	<script src="dist/js/demo.js"></script>
	Branch Master Ajax
	<script src="dist/js/config.js"></script>
	Select2
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script> -->


	<!-- <script>
		function fetchMaxGLGroupNo() {
			$.get('/fetchMaxGLHeadNo', function(data) {
				var gLGroupNo = document.getElementById("glHeadNo");
				gLGroupNo.value = data + 1;
			});
		}
	</script> -->

	<!-- <script>
		$(document)
				.ready(
						function() {
							$("#savebtn")
									.click(
											function() {

												document
														.getElementById('savebtn').disabled = true;

												var branchCode = $("#code")
														.val();
												var name = $("#name").val();
												var openingDate = $(
														"#openingDate").val();
												var address = $("#address")
														.val();
												var pin = $("#pin").val();
												var state = $("#state").val();
												var contactPerson = $(
														"#contactPerson").val();
												var contactNo = $("#contactNo")
														.val();
												var glHeadNo = $("#glHeadNo")
														.val();
												var bankAccoununtNo = $(
														"#bankAccoununtNo")
														.val();
												var branch = $("#branch").val();
												var accountType = $(
														"#accountType").val();
												var status = $("#status").val();
												var ifscCode = $("#ifscCode")
														.val();
												var selectTransactionCheckbox = $(
														"#selectTransactionCheckbox")
														.val();

												// Check if any field is empty
												if (branchCode === ""
														|| name === ""
														|| openingDate === ""
														|| address === ""
														|| pin === ""
														|| state === ""
														|| contactPerson === ""
														|| contactNo === ""
														|| bankAccoununtNo === ""
														|| branch === ""
														|| accountType === ""
														|| status === ""
														|| selectTransactionCheckbox === "") {

													alert("Some  Fields are required.");
													return;
												}

												// Prepare data for AJAX
												var data = {
													"branchCode" : branchCode,
													"name" : name,
													"openingDate" : openingDate,
													"address" : address,
													"pin" : pin,
													"state" : state,
													"contactPerson" : contactPerson,
													"contactNo" : contactNo,
													"glHeadNo" : glHeadNo,
													"bankAccoununtNo" : bankAccoununtNo,
													"branch" : branch,
													"accountType" : accountType,
													"status" : status,
													"ifscCode" : ifscCode,
													"selectTransactionCheckbox" : selectTransactionCheckbox

												};

												// Send AJAX request
												$
														.ajax({
															type : "POST",
															url : "saveAllBranchMaster",
															contentType : "application/json",
															data : JSON
																	.stringify(data),
															success : function(
																	data) {

																alert("Data Saved Successfully..!!");
																window.location.href = 'branchMaster';

															},
															error : function(
																	data) {

															}
														});
											});

						});
	</script> -->

</body>
</html>