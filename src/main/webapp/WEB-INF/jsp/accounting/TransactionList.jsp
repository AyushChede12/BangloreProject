<%@ page import="java.util.List" %>
	<%@ page import="com.society.application.model.Member" %>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<jsp:include page="../header.jsp" />

		<body class="skin-blue sidebar-mini"
			style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true"
			onload="">
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
						<h1 id="ContentPlaceHolder1_IdHeader">Transaction List</h1>
						<ol class="breadcrumb">
							<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
							<li><a href="#">Dashboard</a></li>
							<li class="active">Accounting</li>
						</ol>
					</section>
					<!-- <form method="post" action="/newAccount" id="form1" modelAttribute="NewAccount"
						enctype="multipart/form-data"> -->
					<section class="content">
						<div class="row">
							<div class="col-md-12">
								<div class="box box-success">
									<div class="box-header with-border">
										<h3 class="box-title">All Transaction Details</h3>
									</div>
									<div class="box-body">
										<div class="col-md-6">

											<label>
												<input type="radio" name="transaction" id="allTransaction" value="all"
													style="margin-left: 30px;">All Transaction
											</label>
											<label>
												<input type="radio" name="transaction" id="voucherTransaction"
													value="voucher" style="margin-left: 30px;">Voucher No.
											</label>

										</div>
										<div class="col-md-6">
											<h5 style="font-weight: bold; margin-left: 10px;">Todays Transaction
											</h5>
											<div class="form-group row">
												<label for="voucherNo" class="col-sm-4 control-label">Voucher
													No.</label>

												<div class="col-sm-8">
													<input name="voucherNo" type="text" id="voucherNo"
														class="form-control" placeholder="Enter Voucher No."
														disabled="disabled" />
												</div>
											</div>

											<div class="row col-md-12">
												<input type="button" name="btnShow" value="Show" id="btnShow"
													class="btn btn-success pull-right margin-r-5" />
												<input type="button" onclick="exportThePdf()" name="btnExport"
													value="Export" id="btnExport"
													class="btn btn-success pull-right margin-r-5" />
												<input type="button" name="btnDelete" value="Delete" id="btnDelete"
													class="btn btn-success pull-right margin-r-5" />
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-2"></div>
							<div class="box box-success" style="box-shadow: none; overflow: auto !important;">
								<div class="box-header with-border">
									<div class="box-tools pull-right"></div>
								</div>
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>


									<!-- Modal -->
									<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog"
										aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
										<div class="modal-dialog modal-dialog-centered" role="document">
											<div class="modal-content">
												<div class="modal-header">
													<h5 class="modal-title" id="exampleModalCenterTitle">
														Denomination.. ..</h5>
													<h5 class="modal-title" id="cashierType"></h5>
													<!-- Dynamically display "OUT" -->
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
												<div class="modal-body">
													<table class="table table-hover">
														<thead>
															<tr>
																<th scope="col">#</th>
																<th scope="col">NO of Denomination</th>
																<th scope="col">Value</th>
																<th scope="col">Amount</th>
															</tr>
														</thead>
														<tbody id="denominationTableBody">
															<!-- Table body will be populated dynamically using JavaScript -->
														</tbody>
													</table>
												</div>
												<div class="modal-footer">
													<button type="button" class="btn btn-secondary"
														data-dismiss="modal">Close</button>
												</div>
											</div>
										</div>
									</div>



									<table cellspacing="0" cellpadding="3" rules="all"
										class="display nowrap table table-hover table-striped table-bordered" border="1"
										style="width: 100%; border-collapse: collapse;" id="dataTable">
										<thead>
											<tr style="color: White; background-color: #008385;">


												<th scope="col">Sr No</th>
												<th scope="col">Voucher No</th>
												<th scope="col">Type</th>
												<th scope="col">GL No</th>
												<th scope="col">GL Name</th>
												<th scope="col">Account No.</th>
												<th scope="col">Account Holder</th>
												<th scope="col">Details</th>
												<th scope="col">Debit</th>
												<th scope="col">Credit</th>
												<!-- <th scope="col">Amount</th> -->

												<th scope="col">User</th>
												<th scope="col">Session</th>
												<th scope="col">Time</th>
												<th scope="col">Scroll No</th>
												<th scope="col">Instrument Type</th>
												<th scope="col">Instrument No</th>
												<th scope="col">Issue Date</th>
												<th scope="col">Drawn on Bank </th>
												<th scope="col">Branch</th>
												<th scope="col">Denomination</th>



											</tr>
										</thead>
										<tbody>
										</tbody>
									</table>



								</div>
							</div>
							<div class="box-body">
								<div class="clearfix margin-bottom-10"></div>
							</div>
						</div>
					</section>
					<!-- </form> -->
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
			<script src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
			<!-- bootstrap datepicker -->
			<script src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
			<!-- bootstrap color picker -->
			<script src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
			<!-- bootstrap time picker -->
			<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
			<!-- SlimScroll -->
			<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
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

			<script>
				function selectAllWithSameId(id) {
					var checkboxes = document.querySelectorAll('input[type="checkbox"][id="' + id + '"]');
					var firstCheckbox = checkboxes[0];
					var isChecked = firstCheckbox.checked;

					checkboxes.forEach(function (checkbox) {
						checkbox.checked = isChecked;
					});
				}
			</script>


			<script>
				$(document).ready(function () {

					getInTheTable();
				});

				function getInTheTable() {
					$.ajax({
						type: "POST",
						url: "/FetchAllReceipt",
						contentType: "application/json",
						success: function (jsonData) {

							const dataTable = document.getElementById("dataTable"); // Use the correct ID
							const radioButtons = document.getElementsByName("transaction");
							const inputVoucherNo = document.getElementById("voucherNo"); // Get the element by its ID

							// Initial data load
							populateTable(jsonData);

							// Add event listeners to radio buttons
							radioButtons.forEach(radio => {
								radio.addEventListener("change", () => {
									const selectedPaymentType = getSelectedPaymentType();
									const filteredData = filterDataByPaymentType(jsonData, selectedPaymentType);
									populateTable(filteredData);
								});
							});

							// Add event listener for the "Voucher No" input field
							inputVoucherNo.addEventListener("input", () => {
								const selectedPaymentType = getSelectedPaymentType();
								console.log("Voucher NO " + inputVoucherNo.value)
								const filteredData = filterDataByPaymentType(jsonData, inputVoucherNo.value);
								populateTable(filteredData);
							});

							function getSelectedPaymentType() {

								return "all"; // Default to "All" if nothing is selected
							}

							function filterDataByPaymentType(data, paymentType) {


								if (paymentType === "all") {
									return data;
								}

								const today = new Date(); // Get the current date
								const formattedToday = today.toISOString().split('T')[0]; // Format it as "YYYY-MM-DD"
								console.log("Formated DAte " + formattedToday)

								return data.filter(item => item.entryDate === formattedToday && item.voucherNo === parseInt(paymentType));
							}


							function populateTable(data) {
								const tableBody = dataTable.querySelector("tbody");
								tableBody.innerHTML = "";
								var fullName = '<%= session.getAttribute("loggedInUserName") %>';


								const uniqueIdArray = [];
								data.forEach((item, outerIndex) => {
									const row = tableBody.insertRow();
									row.insertCell(0).textContent = ''; // SR No





									const checkboxCell = row.insertCell(0);
									const checkbox = document.createElement('input');
									checkbox.type = 'checkbox';
									checkbox.value = item.uniqueTransactionId;
									checkbox.id = item.uniqueTransactionId;
									checkbox.onchange = function () {
										selectAllWithSameId(item.uniqueTransactionId);
									};
									checkboxCell.appendChild(checkbox);










									row.insertCell(1).textContent = item.voucherNo; // SR No
									row.insertCell(2).textContent = item.moduleType;
									row.insertCell(3).textContent = item.glHeadNo;
									row.insertCell(4).textContent = item.selectGlHead;
									row.insertCell(5).textContent = item.accountNo;
									row.insertCell(6).textContent = item.selectAccountHolder;
									row.insertCell(7).textContent = item.details;

									if (item.module === 'Receipt') {
										row.insertCell(8).textContent = '';
										// row.insertCell(9).textContent = item.details;
										row.insertCell(9).textContent = item.amount;

									}
									if (item.module === 'Receipt1') {
										row.insertCell(8).textContent = item.amount;
										// row.insertCell(9).textContent = item.details;
										row.insertCell(9).textContent = '';

									}

									if (item.module === 'Payment') {
										row.insertCell(8).textContent = item.amount;
										// row.insertCell(9).textContent = item.details;
										row.insertCell(9).textContent = '';

									}
									if (item.module === 'Payment1') {
										row.insertCell(8).textContent = '';
										// row.insertCell(9).textContent = item.details;
										row.insertCell(9).textContent = item.amount;

									}


									row.insertCell(10).textContent = fullName;
									row.insertCell(11).textContent = "Morning";
									row.insertCell(12).textContent = item.entryDate;
									row.insertCell(13).textContent = item.scroll;
									row.insertCell(14).textContent = item.instrumentType;
									row.insertCell(15).textContent = item.instrumentNo;
									row.insertCell(16).textContent = item.entryDate;
									row.insertCell(17).textContent = item.drawnOnBank;
									row.insertCell(18).textContent = item.drawnOnBranch;

									// Hide the module cell
									const moduleCell = row.insertCell(19);
									moduleCell.textContent = item.module;
									moduleCell.style.display = 'none';

									//row.insertCell(20).textContent = item.denominationCash;

									var modelButton = row.insertCell(20);
									if (!(item.denominationCash === null)) {
										modelButton.innerHTML = `<button type="button" onclick="populateTableModal(` + JSON.stringify(item.denominationCash).replace(/"/g, "&quot;") + `)"
                         id="launchModalBtn" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">Denomination</button>`;
									}

									const denominationTag = row.insertCell(21);
									denominationTag.textContent = item.denominationCash;
									denominationTag.style.display = 'none';

									//Delete

									// const specialInstructionCell = row.insertCell(16);
									// const link = document.createElement("a");
									// link.href = "javascript:void(0)"; // A dummy href
									// link.textContent = "Delete";
									// link.onclick = function () {
									// 	deleteItem(item.id); // Call your delete function with the item's ID
									// };
									// specialInstructionCell.appendChild(link);

								});


							}
						},
						error: function (data) {
							// Handle any errors here
						}
					});
				}



				// Function to populate table with JSON data
				function populateTableModal(jsonData) {

					var data = JSON.parse(jsonData);


					var tableBody = document.getElementById("denominationTableBody");
					var html = '';
					data[0].denomination.forEach(function (item, index) {
						html += '<tr>';
						html += '<th scope="row">' + (index + 1) + '</th>';
						html += '<td>' + item.amount + '</td>';
						html += '<td>' + item.denominationNum + '</td>';
						html += '<td>' + item.value + '</td>';
						html += '</tr>';
					});
					tableBody.innerHTML = html;

					// Update cashierType in modal header
					document.getElementById("cashierType").textContent = data[0].cashierType;
				}


				// Your delete function, replace with your actual implementation
				function deleteItem(itemId) {
					var data = {
						"id": itemId
					};
					$.ajax({
						type: "POST",
						url: "/deleteByIDReceipt",
						contentType: "application/json",
						data: JSON.stringify(data),
						success: function (data) {

							alert(data);

							// Redirect to another API or URL
							window.location.href = 'transactionList';

						},
						error: function (data) {
							// Handle any errors here
						}
					});



				}


			</script>

			<script>
				document.addEventListener("DOMContentLoaded", function () {
					const enableInputCheckbox = document.getElementById("voucherTransaction");
					const allTransaction = document.getElementById("allTransaction");
					const inputVoucherNo = document.getElementById("voucherNo");

					enableInputCheckbox.addEventListener("change", function () {
						if (enableInputCheckbox.checked) {
							inputVoucherNo.disabled = false;
						} else {
							inputVoucherNo.disabled = true;
						}
					});

					allTransaction.addEventListener("change", function () {
						if (allTransaction.checked) {
							inputVoucherNo.disabled = true;
						} else {
							inputVoucherNo.disabled = false;
						}
					});
				});
			</script>
		</body>
		<!-- Dk/Admin/ShareIssue.aspx?ismodify=false EDB D 09:26:56 GMT -->
		<script>

			function exportThePdf() {
				// Your HTML table data
				const tableId = "dataTable";
				const tableElement = document.getElementById(tableId);

				// Extract data from the table rows
				const rows = tableElement.querySelectorAll('tbody tr');
				const extractedData = [];

				rows.forEach(row => {

					const checkbox = row.querySelector('td input[type="checkbox"]');
					if (checkbox.checked) {

						const columns = row.querySelectorAll('td');

						const rowData = {
							voucherNo: columns[1].textContent,
							type: columns[2].textContent,
							gLNo: columns[3].textContent,
							glName: columns[4].textContent,
							accountNo: columns[5].textContent,
							accountHolder: columns[6].textContent,
							deatils: columns[7].textContent,
							//paymentType: columns[8].textContent,
							//amount: columns[9].textContent,

							user: columns[10].textContent,
							session: columns[11].textContent,
							time: columns[12].textContent,
							scrollNo: columns[13].textContent,

							instrumentType: columns[14].textContent,
							intrumentNo: columns[15].textContent,
							issueDate: columns[16].textContent,
							drawnOnBank: columns[17].textContent,

							branch: columns[18].textContent,
							denominationCash: columns[21].textContent

						};

						if (columns[9].textContent || columns[8].textContent) {
							rowData.amount = columns[9].textContent || columns[8].textContent;
						}


						if (columns[19].textContent === 'Receipt') {
							rowData.paymentType = 'credit';
						}

						if (columns[19].textContent === 'Receipt1') {
							rowData.paymentType = 'debit';
						}

						if (columns[19].textContent === 'Payment') {
							rowData.paymentType = 'debit';
						}
						if (columns[19].textContent === 'Payment1') {
							rowData.paymentType = 'credit';
						}



						extractedData.push(rowData);
					}
				});

				// Print the extracted data to the console
				// console.log(extractedData);

				const bankReceipt = extractedData[0].type;

				if (checkFirstTwoCharacters(bankReceipt, "JV")) {
					fetch('/generate-pdf', {
						method: 'POST',
						headers: {
							'Content-Type': 'application/json',
						},
						body: JSON.stringify(extractedData),
					})
						.then((response) => {
							if (!response.ok) {
								throw new Error(`HTTP error! Status: ${response.status}`);
							}
							return response.blob();
						})
						.then((blob) => {
							// Create a URL for the blob object
							const url = URL.createObjectURL(blob);

							// Open the PDF in a new browser tab
							window.open(url, '_blank');
						})
						.catch((error) => {
							console.error('Error:', error);
						});

				} else if (checkFirstTwoCharacters(bankReceipt, "Cr") || checkFirstTwoCharacters(bankReceipt, "Dr")) {
					fetch('/generate-pdf-Cashier', {
						method: 'POST',
						headers: {
							'Content-Type': 'application/json',
						},
						body: JSON.stringify(extractedData),
					})
						.then((response) => {
							if (!response.ok) {
								throw new Error(`HTTP error! Status: ${response.status}`);
							}
							return response.blob();
						})
						.then((blob) => {
							// Create a URL for the blob object
							const url = URL.createObjectURL(blob);

							// Open the PDF in a new browser tab
							window.open(url, '_blank');
						})
						.catch((error) => {
							console.error('Error:', error);
						});

				}


			}

			function checkFirstTwoCharacters(string, substring) {
				return string.slice(0, 2) === substring;
			}
		</script>

		</html>