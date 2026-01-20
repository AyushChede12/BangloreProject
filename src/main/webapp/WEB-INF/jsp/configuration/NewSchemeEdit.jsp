<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Include jQuery library -->
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
			<form method="POST" action="updateGLHeadNo" id="updateForm" modelAttribute="NewSchemeModel"
				enctype="multipart/form-data">
				<input type="hidden" name="id" id="id">
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
													id="glHeadNoSchemeNmae" class="form-control"
													readonly="readonly" />
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
										name="interestCalculatioType" id="dailyRadio" value="Daily"
										style="margin-left: 50px;"> Daily
									</label> <label> <input type="radio"
										name="interestCalculatioType" id="monthlyRadio"
										value="Monthly" style="margin-left: 50px;"> Monthly
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
												<tbody id="interestTableBody"></tbody>
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
							<!-- Add this button inside your form -->
							<button type="submit" id="updateButton" class="btn btn-success pull-right margin-r-5">Update</button>
						</div>
					</div>
				</section>
			</form>
		</div>
		<!-- /.content-wrapper -->
		<div class="control-sidebar-bg"></div>
	</div>

	<script>
		$(document).ready(
				function() {
					// Get the glHeadNoSchemeNmae parameter from the URL
					var glHeadNoSchemeNmae = getUrlParameter('glHeadNoSchemeNmae');

					// Make an AJAX request to fetch data by glHeadNoSchemeNmae
					$.ajax({
							type : "GET",
							url : '/getDataByGlHeadNoSchemeNmae?glHeadNoSchemeNmae='+ encodeURIComponent(glHeadNoSchemeNmae),
							success : function(data) {
								// Update the input fields with the fetched data
								$('#glHeadNoSchemeNmae').val(data.glHeadNoSchemeNmae);
								$('#id').val(data.id);
								$('#schemeName').val(data.schemeName);
								$('#schemeType').val(data.schemeType);
								$('#interestRate').val(data.interestRate);
								$('#minimumAge').val(data.minimumAge);
								$('#minimumBalance').val(data.minimumBalance);
								$('#status').val(data.status);
								$('#minimumWithdrawlAmt').val(data.minimumWithdrawlAmt);
								$('#maximumWithdrawlAmt').val(data.maximumWithdrawlAmt);
								$('#minimumDepositAmt').val(data.minimumDepositAmt);
								$('#maximumDepositAmt').val(data.maximumDepositAmt);
								$('#weeklyDebitTransactionsNo').val(data.weeklyDebitTransactionsNo);
								$('#weeklyDebitTransactionsAmt').val(data.weeklyDebitTransactionsAmt);
								$('#monthsStartDate').val(data.monthsStartDate);
								$('#withoutInterestMonth').val(data.withoutInterestMonth);
								
								// Check the radio button based on the fetched value
					            var interestCalculatioType = data.interestCalculatioType;
					            $('input[name=interestCalculatioType][value=' + interestCalculatioType + ']').prop('checked', true);

					            // Split the date string into individual date strings
					            var dateStrings = data.postingDate.split(',');

					            // Get the table body element
					            var tableBody = document.getElementById("interestTableBody");

					            // Loop through the date strings and create table rows
					            for (var i = 0; i < dateStrings.length; i++) {
					                    var dateString = dateStrings[i].trim();
					                    var parts = dateString.split(' - ');

					                    if (parts.length === 3) {
					                        var date = parts[0];
					                        var month = parts[1];
					                        var year = parts[2];

					                        var row = document.createElement("tr");
					                        var selectCell = document.createElement("td");
					                        var srNoCell = document.createElement("td");
					                        var postingDateCell = document.createElement("td");
					                        var deleteCell = document.createElement("td");
					                        
					                    	 // Create a checkbox for the "Select" column
					                        var checkbox = document.createElement("input");
					                        checkbox.type = "checkbox";
					                        checkbox.name = "selectedDate";
					                        checkbox.value = dateString;
					                        selectCell.appendChild(checkbox);

					                        srNoCell.textContent = i + 1;

					                     	// Create an input field for the date
					                        var inputField = document.createElement("input");
					                        inputField.type = "text";
					                        inputField.name = "postingDate";
					                        inputField.id = "postingDate";
					                        inputField.readOnly = true;
					                        inputField.value = dateString;
					                        
					                        // Append the input field to the postingDateCell
					                        postingDateCell.appendChild(inputField);
					                        
					                     	// Create a delete button
					                        var deleteButton = document.createElement("button");
					                        deleteButton.textContent = "Delete";
					                        deleteButton.className = "delete-btn";
					                        
					                     	// Add a click event listener to the delete button
					                        deleteButton.addEventListener("click", function () {
					                            // Find the row containing the clicked delete button
					                            var currentRow = this.closest("tr");
					                            // Remove the row when the delete button is clicked
					                            currentRow.remove();
					                        });
					                     	
					                        deleteCell.appendChild(deleteButton);

					                        row.appendChild(selectCell);
					                        row.appendChild(srNoCell);
					                        row.appendChild(postingDateCell);
					                        row.appendChild(deleteCell);

					                        tableBody.appendChild(row);
					                    }
					                }
								console.log(data);
							},
							error : function() {
								alert("An error occurred while fetching data.");
							}
						});
		});

		// Function to extract URL parameters
		function getUrlParameter(name) {
			var urlParams = new URLSearchParams(window.location.search);
			return urlParams.get(name);
		}
	</script>

	<script>
		$(document).ready(
			function() {
				// Get the glHeadNoSchemeNmae parameter from the URL
				var glHeadNoSchemeNmae = getUrlParameter('glHeadNoSchemeNmae');

				// Make an AJAX request to fetch data by glHeadNoSchemeNmae
				$.ajax({
					type : "GET",
					url : '/getDataByGlHeadNoSchemeNmae?glHeadNoSchemeNmae=' + encodeURIComponent(glHeadNoSchemeNmae),
					success : function(data) {
							console.log(data);
					},
					error : function() {
						alert("An error occurred while fetching data.");
					}
				});
		});

		// Function to extract URL parameters
		function getUrlParameter(name) {
			var urlParams = new URLSearchParams(window.location.search);
			return urlParams.get(name);
		}
	</script>
	
	<script>
    // Function to format the date as "dd - Month - yyyy"
    function formatPostingDate(date, month, year) {
        return date + ' - ' + month + ' - ' + year;
    }

    // Function to add rows to the table based on data from the database
    function addRowsFromDatabase() {
        var glHeadNoSchemeNmae = getParameterByName("glHeadNoSchemeNmae"); // Get the parameter from the URL

        // Fetch data from the database based on the glHeadNoSchemeNmae parameter
        var postingDates = fetchDataFromDatabase(glHeadNoSchemeNmae);

        var tableBody = document.getElementById("interestTableBody");

        for (var i = 0; i < postingDates.length; i++) {
            var postingDate = postingDates[i];
            addRowToTable(tableBody, postingDate);
        }
    }

    // Function to get a query parameter from the URL
    function getParameterByName(name) {
        var urlParams = new URLSearchParams(window.location.search);
        return urlParams.get(name);
    }

    // Call addRowsFromDatabase() to populate the table when the page loads
    window.onload = addRowsFromDatabase;

    // Function to add a new row to the table
    function addRow() {
        var dateDropdown = document.getElementById("interestPostingDate");
        var monthDropdown = document.getElementById("interestPostingMonth");
        var yearDropdown = document.getElementById("interestPostingYear");
        var tableBody = document.getElementById("interestTableBody");

        var selectedDate = dateDropdown.value;
        var selectedMonth = monthDropdown.value;
        var selectedYear = yearDropdown.value;

        if (selectedDate && selectedMonth && selectedYear) {
            var postingDate = formatPostingDate(selectedDate, selectedMonth, selectedYear);
            addRowToTable(tableBody, postingDate);
        } else {
            alert("Please select both date and month.");
        }
    }

    // Function to add a row to the table
    function addRowToTable(tableBody, postingDate) {
        var newRow = tableBody.insertRow();
        var cell1 = newRow.insertCell(0);
        var cell2 = newRow.insertCell(1);
        var cell3 = newRow.insertCell(2);
        var cell4 = newRow.insertCell(3);

        var checkbox = document.createElement("input");
        checkbox.type = "checkbox";
        cell1.appendChild(checkbox);
        checkbox.onclick = function () {
            handleCheckboxClick(this);
        };

        cell2.innerHTML = tableBody.rows.length; // Serial number starts from 1

        var inputElement = document.createElement("input");
        inputElement.type = "text";
        inputElement.name = "postingDate";
        inputElement.id = "postingDate";
        inputElement.value = postingDate;
        inputElement.readOnly = true;
        cell3.appendChild(inputElement);

        var deleteButton = document.createElement("button");
        deleteButton.textContent = "Delete";
        deleteButton.onclick = function () {
            deleteRow(this);
        };
        cell4.appendChild(deleteButton);
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
            rowToDelete = null;
        }
    }
	</script> 
	
	<!-- <script>
    $(document).ready(function () {
        $("#updateButton").click(function () {
            var formData = {
                id: $("#id").val(),
                glHeadNoSchemeNmae: $("#glHeadNoSchemeNmae").val(),
                glHeadNoInterest: $("#glHeadNoInterest").val(),
                glHeadNoInterestPayable: $("#glHeadNoInterestPayable").val(),
                schemeName: $("#schemeName").val(),
                schemeType: $("#schemeType").val(),
                interestRate: $("#interestRate").val(),
                minimumAge: $("#minimumAge").val(),
                minimumBalance: $("#minimumBalance").val(),
                status: $("#status").val(),
                minimumWithdrawlAmt: $("#minimumWithdrawlAmt").val(),
                maximumWithdrawlAmt: $("#maximumWithdrawlAmt").val(),
                minimumDepositAmt: $("#minimumDepositAmt").val(),
                maximumDepositAmt: $("#maximumDepositAmt").val(),
                weeklyDebitTransactionsNo: $("#weeklyDebitTransactionsNo").val(),
                weeklyDebitTransactionsAmt: $("#weeklyDebitTransactionsAmt").val(),
                monthsStartDate: $("#monthsStartDate").val(),
                withoutInterestMonth: $("#withoutInterestMonth").val(),
                interestCalculatioType: $("input[name='interestCalculatioType']:checked").val(), // Get the selected value
                interest: $("#interest").val(),
                interestPayable: $("#interestPayable").val(),
                postingDate: $("#postingDate").val(),
            };

            $.ajax({
                type: "POST",
                contentType: "application/json",
                url: "/updateGLHeadNo", 
                data: JSON.stringify(formData),
                dataType: "json",
                success: function (response) {
                    alert("Update successful");
                    window.location.href = "schemeList";
                },
                error: function (error) {
                    $("#message").text("Update failed: " + error.responseText);
                }
            });
        });
    });
</script> -->

<script type="text/javascript">
    // Add event listener to the form submit event
    document.getElementById("updateForm").addEventListener("submit", function (event) {
        event.preventDefault(); // Prevent the form from submitting

        $.ajax({
            type: "POST",
            url: '/updateGLHeadNo',
            data: $(this).serialize(), // Serialize the form data
            success: function (response) {
               
                alert("Data Updated successfully.");
                
                window.location.href = "schemeList";
            },
            error: function () {
                alert("An error occurred while updating data.");
            }
        });
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