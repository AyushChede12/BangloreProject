<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<jsp:include page="../header.jsp" />
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


		<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

		<body class="skin-blue sidebar-mini"
			style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true"
			onload="GetBranchNameInTheDropDown();">


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
						<h1 id="ContentPlaceHolder1_IdHeader">Bank Register</h1>
						<ol class="breadcrumb">
							<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
							<li><a href="#">Dashboard</a></li>
							<li class="active">Bank Register</li>
						</ol>
					</section>

					<!-- <form id="form">  -->
					<section class="content">
						<div class="row">
							<div class="col-md-12">
								<div class="box box-success">
									<div class="box-header with-border">
										<h3 class="box-title">Bank Account Information</h3>
									</div>
									<h5 style="margin-left: 35px; font-weight: bold;">Primary Search</h5>
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label for="accountType" class="col-sm-4 control-label">Organization
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="organization" id="organization" readonly="readonly"
														class="form-control select2" style="width: 100%;">
														<option value="Nirbhaya Nidhi Ltd.">Nirbhaya Nidhi Ltd.</option>

													</select> <span id="organizationMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
														Organization</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="branchName" class="col-sm-4 control-label">Branch Name
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="selectBranch" id="selectBranch"
														onchange="getBranchCodeByBranchName();"
														class="form-control select2" style="width: 100%;">
														<option value="--Select--" selected="selected">--Select--
														</option>

													</select> <span id="selectBranchMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
														Branch Name</span>
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Branch Code<strong
														style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<input name="branchCode" type="text" maxlength="10" id="branchCode"
														class="form-control" placeholder="Enter Branch Code"
														autocomplete="off" /> <span id="branchCodeMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
														Branch Code</span>
												</div>
											</div>

											<div class="form-group row">
												<label for="accountType" class="col-sm-4 control-label">Account Type
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="accountType" id="accountType"
														class="form-control select2" style="width: 100%;">
														<option value="All" selected="selected">All</option>

													</select> <span id="accountTypeMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
														Account Type</span>
												</div>
											</div>
											<div class="form-group row">
												<label for="status" class="col-sm-4 control-label">Status
													<strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="status" id="status" class="form-control select2"
														style="width: 100%;">
														<option value="--Select--" selected="selected">--Select--
														</option>
														<option value="Open">Open</option>
														<option value="Close">Close</option>

													</select> <span id="statusMsg"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
														Status</span>
												</div>
											</div>
											<div class="row col-md-12">
												<input type="button" name="btnShow" value="Show" id="btnShow"
													onclick="getAllBranchData();"
													class="btn btn-success pull-right margin-r-5" />

												<button type="button" name="btnExport" value="Export" id="btnExport"
													class="btn btn-success pull-right margin-r-5">Export</button>

												<button type="button" name="details" value="Details" id="details"
													class="btn btn-success pull-right margin-r-5">Details</button>
											</div>

										</div>

									</div>

								</div>


								<div class="box box-success" style="box-shadow: none; overflow: auto !important;">
									<div class="box-body">
										<div class="clearfix margin-bottom-10"></div>
										<div class="">
											<table cellspacing="0" cellpadding="3" rules="all"
												class="display nowrap table table-hover table-striped table-bordered"
												border="1" style="width: 100%; border-collapse: collapse;">
												<caption></caption>
												<tr style="color: White; background-color: #008385;">
													<th scope="col">Select</th>
													<th scope="col">SlNo</th>
													<th scope="col">GL Head No</th>
													<th scope="col">Bank Name</th>
													<th scope="col">Branch</th>
													<th scope="col">Bank Acc No</th>
													<th scope="col">Account Type</th>
													<th scope="col">Balance</th>
													<th scope="col">Delete</th>
												</tr>
												<tbody id="bankRegisterTableBody">

												</tbody>
											</table>

											<button class="btn btn-danger btn-delete" onclick="deleteSelectedRows()"
												id="deleteButton">Delete</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</section>
					<!-- </form> -->
				</div>

			</div>

			<script>


				function deleteSelectedRows() {
					// Get all checkboxes with class "select-checkbox" that are checked
					var selectedCheckboxes = document.querySelectorAll('.select-checkbox:checked');

					console.log(selectedCheckboxes)

					var selectedValues = Array.from(selectedCheckboxes).map(function (checkbox) {
						return { bankID: checkbox.value };
					});

					console.log("Data: ", selectedValues);





					// Disable the button after it's clicked
					document.getElementById('deleteButton').disabled = true;


					$.ajax({
						type: "POST",
						url: '/deleteBankRegisterDataById',
						contentType: "application/json",
						data: JSON.stringify(selectedValues),
						success: function (data) {
							console.log("Delete success:", data);
							getAllBranchData();
							alert(data.message); // Display the success message from the server
							document.getElementById('deleteButton').disabled = false;
						},
						error: function (jqXHR, textStatus, errorThrown) {
							console.log("Delete error:", textStatus, errorThrown);
							alert("Failed to delete data");
						}
					});


				}




				function deleteRow() {

					//alert("Do you want to delete Data..?? ");

					console.log("Deleting row with id: " + id);




					// $.ajax({
					//     type: "POST",
					//     url: '/deleteBankRegisterDataById',
					//     data: { id: id },
					//     success: function (data) {
					//         console.log("Delete success:", data);
					//         getAllBranchData();
					//         alert(data.message); // Display the success message from the server
					//     },
					//     error: function (jqXHR, textStatus, errorThrown) {
					//         console.log("Delete error:", textStatus, errorThrown);
					//         alert("Failed to delete data");
					//     }
					// });
				}

				function getAllBranchData() {
					$.ajax({
						type: "GET",
						contentType: "application/json",
						dataType: "json",
						url: 'getAllDataOfBranchMaster',
						success: function (data) {
							const tableBody = $("#bankRegisterTableBody");
							tableBody.empty();

							let serialNumber = 0;

							data.forEach(function (value, index) {
								// Add a condition to exclude rows representing bank accounts with interest
								if (!value.name.includes("Interest")) {
									serialNumber++; // Increment the serial number
									const row = $("<tr>");

									row.append($("<td>").html(`<input type="checkbox" class="select-checkbox" name="select" value="` + value.bankID + `" />`));
									row.append($("<td>").text(serialNumber));
									row.append($("<td>").text(value.glHeadNo));
									row.append($("<td>").text(value.name));
									row.append($("<td>").text(value.branch));
									row.append($("<td>").text(value.bankAccoununtNo));
									row.append($("<td>").text(value.accountType));
									row.append($("<td>").text(value.balance));
									// row.append($("<td>").html('<button class="btn btn-danger btn-delete" data-id="' + value.id + '">Delete</button>'));
									// row.find(".btn-delete").on("click", function () {
									//     const id = $(this).data("id");
									//     deleteRow(id);
									// });
									tableBody.append(row);
								}
							});
						},
						error: function () {
							alert("Failed to retrieve data");
						}
					});
				}

			</script>


			<script src="bower_components/jquery/dist/jquery.min.js"></script>
			<!-- Bootstrap 3.3.7 -->
			<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
			<!-- InputMask -->
			<!-- <script src="plugins/input-mask/jquery.inputmask.js"></script>
	<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script> -->
			<!-- date-range-picker -->
			<script src="bower_components/moment/min/moment.min.js"></script>
			<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
			<!-- bootstrap datepicker -->
			<script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
			<!-- bootstrap color picker -->
			<script src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
			<!-- bootstrap time picker -->
			<!-- 	<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script> -->
			<!-- SlimScroll -->
			<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
			<!-- iCheck 1.0.1 -->
			<!-- 	<script src="plugins/iCheck/icheck.min.js"></script> -->
			<!-- FastClick -->
			<script src="bower_components/fastclick/lib/fastclick.js"></script>
			<!-- AdminLTE App -->
			<script src="dist/js/adminlte.min.js"></script>
			<!-- AdminLTE for demo purposes -->
			<script src="dist/js/demo.js"></script>
			<!-- Branch Master Ajax -->
			<script src="dist/js/GetAllBranch.js"></script>
			<script src="dist/js/accountingJs.js"></script>
			<!-- Select2 -->
			<script src="bower_components/select2/dist/js/select2.full.min.js"></script>



		</body>

		</html>