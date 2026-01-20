<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="">
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
				<h1 id="ContentPlaceHolder1_IdHeader">Savings Scheme</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Accounting</li>
				</ol>
			</section>
			<form method="POST" action="/saveGLHead" id="form1"
				modelAttribute="newSchemeModelAttribute"
				enctype="multipart/form-data">
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title"></h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">G.L.Head
												No. <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="glHeadNoSchemeNmae" type="text"
													id="glHeadNoSchemeNmae" value="${count}"
													class="form-control" readonly="readonly" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtRelativeName" class="col-sm-4 control-label">Scheme
												Name <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="schemeName" type="text" id="schemeName"
													class="form-control" Placeholder="Enter Scheme Name" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Scheme Type<strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="schemeType" id="schemeType"
													class="form-control select2" style="width: 100%;">
													<option selected="selected" value="">Select</option>
													<option value="Nonrefundable Deposit">Nonrefundable
														Deposit</option>
													<option value="Saving">Saving</option>
													<option value="Current">Current</option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Scheme Type</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">Interest
												Rate(%p.a.) <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="interestRate" type="text" id="interestRate"
													class="form-control" Placeholder="Enter Interest Rate" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Minimum Age(Yrs)</label>
											<div class="col-sm-8">
												<input name="minimumAge" type="text" id="minimumAge"
													class="form-control" Placeholder="Enter Minimum Age(Yrs)" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Minimum Balance(Rs.)
											</label>
											<div class="col-sm-8">
												<input name="minimumBalance" type="text" id="minimumBalance"
													class="form-control"
													Placeholder="Enter Minimum Balance(Rs.)" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Status <strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="status" id="status"
													class="form-control select2" style="width: 100%;">
													<option selected="selected" value="">Select Status</option>
													<option value="Open">Open</option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Status</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Minimum Withdrawal
												Amount(Rs.) </label>
											<div class="col-sm-8">
												<input name="minimumWithdrawlAmt" type="text"
													id="minimumWithdrawlAmt" class="form-control"
													Placeholder="Enter Minimum Withdrawal Amount(Rs.)" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Maximum Withdrawal
												Amount(Rs.) </label>
											<div class="col-sm-8">
												<input name="maximumWithdrawlAmt" type="text"
													id="maximumWithdrawlAmt" class="form-control"
													Placeholder="Enter Maximum Withdrawal Amount(Rs.)" />
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Minimum Deposit
												Amount(Rs.) </label>
											<div class="col-sm-8">
												<input name="minimumDepositAmt" type="text"
													id="minimumDepositAmt" class="form-control"
													Placeholder="Enter Minimum Deposit Amount(Rs.)" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Maximum Deposit
												Amount(Rs.) </label>
											<div class="col-sm-8">
												<input name="maximumDepositAmt" type="text"
													id="maximumDepositAmt" class="form-control"
													Placeholder="Enter Maximum Withdrawal Amount(Rs.)" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Weekly Debit
												Transactions(Max No.) </label>
											<div class="col-sm-8">
												<input name="weeklyDebitTransactionsNo" type="text"
													id="weeklyDebitTransactionsNo" class="form-control"
													Placeholder="Enter Weekly Debit Transactions(Max No.)" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Weekly Debit
												Transactions(Max Amount) </label>
											<div class="col-sm-8">
												<input name="weeklyDebitTransactionsAmt" type="text"
													id="weeklyDebitTransactionsAmt" class="form-control"
													Placeholder="Enter Weekly Debit Transactions(Max Amount)" />
											</div>
										</div>
										<h5 style="font-weight: bold; margin-left: 15px;">Note:-Week
											consideration is from Sunday to Saturday</h5>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="box box-success">
									<div class="box-header with-border">
										<h3 class="box-title">Interest Calculation</h3>
									</div>
									<label> <input type="radio"
										name="interestCalculatioType" id="interestCalculatioType"
										value="Daily" style="margin-left: 50px;">Daily
									</label> <label> <input type="radio"
										name="interestCalculatioType" id="interestCalculatioType"
										value="Monthly" style="margin-left: 50px;">Monthly
									</label>
									<div class="form-horizontal">
										<div class="box-body">
											<div class="col-md-6">
												<div class="form-group row">
													<label class="col-sm-4 control-label">Month Start
														Date<strong style="color: Red">*</strong>
													</label>
													<div class="col-sm-8">
														<select name="monthsStartDate" id="monthsStartDate"
															class="form-control select2" style="width: 100%;">
															<option selected="selected" value="">Select</option>
															<option value="01">01</option>
															<option value="02">02</option>
															<option value="03">03</option>
															<option value="04">04</option>
															<option value="05">05</option>
															<option value="06">06</option>
															<option value="07">07</option>
															<option value="08">08</option>
															<option value="09">09</option>
															<option value="10">10</option>
															<option value="11">11</option>
															<option value="12">12</option>
															<option value="13">13</option>
															<option value="14">14</option>
															<option value="15">15</option>
															<option value="16">16</option>
															<option value="17">17</option>
															<option value="18">18</option>
															<option value="19">19</option>
															<option value="20">20</option>
															<option value="21">21</option>
															<option value="22">22</option>
															<option value="23">23</option>
															<option value="24">24</option>
															<option value="25">25</option>
															<option value="26">26</option>
															<option value="27">27</option>
															<option value="28">28</option>
															<option value="29">29</option>
															<option value="30">30</option>
															<option value="31">31</option>
														</select> <span
															id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
															style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
															Months Start Date </span>
													</div>
												</div>
												<div class="form-group row">
													<label for="bankGLHead" class="col-sm-4 control-label">Without
														Interest Month </label>
													<div class="col-sm-8">
														<input name="withoutInterestMonth" type="text"
															id="withoutInterestMonth" class="form-control"
															Placeholder="Enter Without Interest Date" />
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12">
								<div class="box box-success">
									<div class="box-header with-border">
										<h3 class="box-title">Interest Posting</h3>
									</div>
									<div class="box-body">
										<div class="col-md-4">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Interest
													Posting Date <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="interestPostingDate" id="interestPostingDate"
														class="form-control select2" style="width: 100%;">
														<option selected="selected" value="">Select</option>
														<option value="01">01</option>
														<option value="02">02</option>
														<option value="03">03</option>
														<option value="04">04</option>
														<option value="05">05</option>
														<option value="06">06</option>
														<option value="07">07</option>
														<option value="08">08</option>
														<option value="09">09</option>
														<option value="10">10</option>
														<option value="11">11</option>
														<option value="12">12</option>
														<option value="13">13</option>
														<option value="14">14</option>
														<option value="15">15</option>
														<option value="16">16</option>
														<option value="17">17</option>
														<option value="18">18</option>
														<option value="19">19</option>
														<option value="20">20</option>
														<option value="21">21</option>
														<option value="22">22</option>
														<option value="23">23</option>
														<option value="24">24</option>
														<option value="25">25</option>
														<option value="26">26</option>
														<option value="27">27</option>
														<option value="28">28</option>
														<option value="29">29</option>
														<option value="30">30</option>
														<option value="31">31</option>
													</select> <span
														id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
														Interest Posting Date</span>
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Interest
													Posting Year <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="interestPostingYear" id="interestPostingYear"
														class="form-control select2" style="width: 100%;">
														<option selected="selected" value="">Select</option>
														<script>
															var currentYear = new Date().getFullYear();
															for (var year = currentYear; year <= currentYear + 100; year++) {
																document.write('<option value="' + year + '">'+ year+ '</option>');
															}
														</script>
													</select> <span
														id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
														Interest Posting Date</span>
												</div>
											</div>
										</div>
										<div class="col-md-4">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Interest
													Posting Month <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<select name="interestPostingMonth"
														id="interestPostingMonth" class="form-control select2"
														style="width: 100%;">
														<option selected="selected" value="">Select</option>
														<option value="January">January</option>
														<option value="February">February</option>
														<option value="March">March</option>
														<option value="April">April</option>
														<option value="May">May</option>
														<option value="June">June</option>
														<option value="July">July</option>
														<option value="August">August</option>
														<option value="September">September</option>
														<option value="October">October</option>
														<option value="November">November</option>
														<option value="December">December</option>
													</select> <span
														id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
														Status</span>
												</div>
											</div>
											<div class="row col-md-12">
												<button type="button" name="btnAdd1" id="btnAdd1"
													class="btn btn-success pull-right margin-r-5"
													onclick="addRow();">+ Add</button>
											</div>
										</div>
									</div>
									<div class=""
										style="box-shadow: none; overflow: auto !important;">
										<div class="box-header with-border">
											<div class="box-tools pull-right"></div>
										</div>
										<div class="box-body">
											<div class="clearfix margin-bottom-10"></div>
											<table cellspacing="0" cellpadding="3" rules="all"
												class="display nowrap table table-hover table-striped table-bordered"
												border="1" style="width: 100%; border-collapse: collapse;"
												id="shareCertificateee">
												<caption></caption>
												<tr style="color: White; background-color: #008385;">
													<th scope="col">Select</th>
													<th scope="col">Sr No.</th>
													<th scope="col">Posting Date</th>
													<th scope="col">Delete</th>
												</tr>
												<tbody id="interestTableBody">

												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
						<%-- <div class="row">
							<div class="col-md-12">
								<div class="box box-success">
									<div class="box-header with-border">
										<h2 class="box-title">Charges</h2>
									</div>
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Charges </label>
												<div class="col-sm-8">
													<select name="charger" id="charger"
														class="form-control select2" style="width: 100%;">
														<option selected="selected" value="">Select</option>
														<option value="SMS Charges">SMS Charges</option>
														<option value="Statement Charges">Statement
															Charges</option>
													</select> <span
														id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
														style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
														Charges</span>
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="row col-md-12">
												<input type="submit" name="btnAdd" value="+Add" id="btnAdd"
													class="btn btn-success pull-right margin-r-5" />
											</div>
										</div>
										<div class="box-body">
											<div class="clearfix margin-bottom-10"></div>
											<table cellspacing="0" cellpadding="3" rules="all"
												class="display nowrap table table-hover table-striped table-bordered"
												border="1" id="ContentPlaceHolder1_gdvData"
												style="width: 100%; border-collapse: collapse;"
												id="shareCertificate">
												<caption></caption>
												<tr style="color: White; background-color: #008385;">
													<th scope="col">Select</th>
													<th scope="col">Sr No.</th>
													<th scope="col">Charges</th>
													<th scope="col">Delete</th>
												</tr>
												<tbody id="">

												</tbody>
											</table>
										</div> 
									</div>
								</div>
							</div>
						</div> --%>
						<div class="row col-md-12">
							<input type="submit" name="btnSave" value="Save" id="btnSave"
								class="btn btn-success pull-right margin-r-5" /> <input
								type="reset" name="btnReset" value="Reset" id="btnReset"
								class="btn btn-success pull-right margin-r-5" />
						</div>
					</div>
				</section>
			</form>
		</div>
		<!-- /.content-wrapper -->
		<div class="control-sidebar-bg"></div>
	</div>

	<script>
		// Function to validate the form
		function validateForm() {
			var schemeName = document.getElementById("schemeName").value;
			var schemeType = document.getElementById("schemeType").value;
			var interestRate = document.getElementById("interestRate").value;
			var status = document.getElementById("status").value;
			//var monthsStartDate = document.getElementById("monthsStartDate").value;
			var interestPostingDate = document
					.getElementById("interestPostingDate").value;
			var interestPostingMonth = document
					.getElementById("interestPostingMonth").value;

			if (schemeName === "") {
				alert("Please Write Scheme Name.");
				return false;
			}

			if (schemeType === "") {
				alert("Please Select Scheme Type.");
				return false;
			}

			if (interestRate === "") {
				alert("Please Write Interest Rate.");
				return false;
			}

			if (status === "") {
				alert("Please Select Status.");
				return false;
			}

			if (interestPostingDate === "") {
				alert("Please Select Interest Posting Date.");
				return false;
			}

			if (interestPostingMonth === "") {
				alert("Please Select Interest Posting Month.");
				return false;
			}

			return true;
		}

		// Add event listener to the form submit event
		document.getElementById("form1").addEventListener("submit",
				function(event) {
					event.preventDefault(); // Prevent the form from submitting

					// Call the validation function
					if (validateForm()) {
						// Display success message
						alert("Data saved successfully.");
						window.location.href = "newScheme";
						// Submit the form
						this.submit();
						
						
					}
				});
	</script>

	<script>
		// Function to format the date as "dd - Month"
		function formatPostingDate(date, month, year) {
			return date + ' - ' + month + ' - ' + year;
		}

		// Function to add a new row to the table
		function addRow() {
			var dateDropdown = document.getElementById("interestPostingDate");
			var monthDropdown = document.getElementById("interestPostingMonth");
			var yearDropdown = document.getElementById("interestPostingYear");
			var tableBody = document.getElementById("interestTableBody");
			//var postingDatesInput = document.getElementById("postingDatesInput");

			var selectedDate = dateDropdown.value;
			var selectedMonth = monthDropdown.value;
			var selectedYear = yearDropdown.value;

			if (selectedDate && selectedMonth && selectedYear) {
				// Create a new row
				var newRow = tableBody.insertRow();
				var cell1 = newRow.insertCell(0);
				var cell2 = newRow.insertCell(1);
				var cell3 = newRow.insertCell(2);
				var cell4 = newRow.insertCell(3);

				// Calculate and set the Posting Date
				var postingDate = formatPostingDate(selectedDate,
						selectedMonth, selectedYear);
				var checkbox = document.createElement("input");
				checkbox.type = "checkbox";
				cell1.appendChild(checkbox);
				checkbox.onclick = function() {
					handleCheckboxClick(this);
				};
				cell2.innerHTML = tableBody.rows.length; // Start Sr No. from 1 onward
				// Create an input element for cell3 with name and value attributes
				var inputElement = document.createElement("input");
				inputElement.type = "text"; // You can change the type to match your needs
				inputElement.name = "postingDate"; // Set your desired name attribute
				inputElement.id = "postingDate";
				inputElement.value = postingDate; // Set the value attribute
				inputElement.readOnly = true; // Make the input readonly
				cell3.appendChild(inputElement);

				cell4.innerHTML = '<button onclick="deleteRow(this)">Delete</button>';
			} else {
				alert("Please select both date and month.");
			}
		}

		// Function to handle checkbox click
		function handleCheckboxClick(checkbox) {
			// Get the row containing the checkbox
			var row = checkbox.parentNode.parentNode;
			rowToDelete = row;
		}

		// Function to delete a row
		function deleteRow(button) {
			if (rowToDelete) {
				var tableBody = document.getElementById("interestTableBody");
				tableBody.removeChild(rowToDelete);
				rowToDelete = null; // Reset the reference
			}
		}
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