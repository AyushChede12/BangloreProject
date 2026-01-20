<%@ page import="java.util.List" %>
	<%@ page import="com.society.application.model.Member" %>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<jsp:include page="../header.jsp" />

		<body class="skin-blue sidebar-mini"
			style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);" cz-shortcut-listen="true"
			onload="GetBranchNameInTheDropDown();  ReceiptInTable();">
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
						<h1 id="ContentPlaceHolder1_IdHeader">Receipt</h1>
						<ol class="breadcrumb">
							<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
							<li><a href="#">Dashboard</a></li>
							<li class="active">Accounting</li>
						</ol>
					</section>
					<section class="content">
						<div class="row">
							<div class="col-md-12">
								<div class="box box-success">
									<div class="box-header with-border">
										<h3 class="box-title">Receipt</h3>
									</div>
									<form id="form1" modelAttribute="receiptModule" enctype="multipart/form-data">
										<div class="box-body">
											<div class="col-md-6">
												<div class="form-group row">
													<label for="bankGLHead" class="col-sm-4 control-label">Voucher
														No.<strong style="color: Red">*</strong>
													</label>
													<div class="col-sm-8">
														<input name="voucherNo" type="text" id="voucherNo"
															value="${VoucherNo}" class="form-control"
															Placeholder="Enter Voucher No. " readonly="readonly" />
													</div>

													<label for="txtJointMemberName" class="col-sm-4 control-label">Date
													</label>
													<div class="col-sm-8">
														<input name="entryDate" type="text" id="entryDate"
															value="${EntryDate}" class="form-control"
															readonly="readonly" />
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-4 control-label">Scroll </label>
													<div class="col-sm-8">
														<select name="scroll" id="scroll" class="form-control select2"
															style="width: 100%;">

														</select> <span
															id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
															style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
															Scroll</span>
													</div>
												</div>
												<label> <input type="radio" name="typeCashBank" id="typeCashBank"
														value="Cash" style="margin-left: 15px;">
													Cash
												</label> <label> <input type="radio" name="typeCashBank"
														id="typeCashBank" value="Bank" style="margin-left: 15px; ">
													Bank
												</label>
												<div class="form-group row">
													<label class="col-sm-4 control-label">Select
														Bank/Cash <strong style="color: Red">*</strong>
													</label>
													<div class="col-sm-8">
														<select onchange="getTheValueInFields()" class="selectCashBank"
															name="debitBank" id="debitBank" class="form-control select2"
															style="width: 100%;">
															<option selected="selected" value=""></option>
														</select>

														<span
															id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
															style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
															Bank/Cash </span>
													</div>
												</div>


												<div class="form-group row">
													<label for="bankGLHead" class="col-sm-4 control-label">G.L.Head.No.
														<strong style="color: red;">*</strong>
													</label>
													<div class="col-sm-8">
														<input name="glHeadNodebit" type="text" id="glHeadNodebit"
															readonly="readonly" class="form-control"
															Placeholder="Enter G.L.Head No." />
													</div>
													<div>
														<input name="accountNoBank" type="hidden" id="accountNoBank"
															readonly="readonly" class="form-control"
															Placeholder="Enter G.L.Head No." />
													</div>
												</div>
												<div class="form-group row">
													<label for="bankGLHead" class="col-sm-4 control-label">Balance
														(Debit)</label>
													<div class="col-sm-8">
														<input name="debitBalance" type="text" id="debitBalance"
															class="form-control" Placeholder="Enter Balance" />
													</div>
												</div>
												<div class="form-group row">
													<label for="bankGLHead" class="col-sm-4 control-label">Details
													</label>
													<div class="col-sm-8">
														<input name="details" type="text" id="details"
															class="form-control" Placeholder="Enter Details" />
													</div>

													<div class="col-sm-8">
														<input name="uniqueID" type="text" id="uniqueID" style="display: none;"
															class="form-control" Placeholder="Enter Details" />

														<input name="scrollNO" type="text" id="scrollNO" style="display: none;"
															class="form-control" />
														<input name="glnoTransactionID" type="text" style="display: none;"
															id="glnoTransactionID" class="form-control" />
													</div>
												</div>
												<h5 style="font-weight: bold; margin-left: 15px; color: #0000FF">
													Calculate
													Charges</h5>
												<h5 style="font-weight: bold; margin-left: 15px;">Account
													to be credited</h5>
												<div class="form-group row">
													<label for="txtRelativeName" class="col-sm-4 control-label">Branch
														Code <strong style="color: Red">*</strong>
													</label>
													<div class="col-sm-8">
														<input name="branchCode" type="text" id="branchCode" value="1"
															class="form-control" Placeholder="Enter Branch Code" />
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-4 control-label">Select Branch<strong
															style="color: Red">*</strong>
													</label>
													<div class="col-sm-8">
														<select name="creditBank" id="creditBank"
															class="form-control select2" style="width: 100%;">
															<option value="H.O" selected>H.O</option>

														</select> <span
															id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
															style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
															Branch</span>
													</div>
												</div>
												<div class="form-group row">
													<label for="bankGLHead" class="col-sm-4 control-label">G.L.Head.No.
														<strong style="color: red;">*</strong>
													</label>
													<div class="col-sm-8">
														<input name="glHeadNo" type="text" id="glHeadNo"
															onchange="getTheValueInFields2()" class="form-control"
															Placeholder="Enter G.L.Head No." />

														<input name="denominationCash" type="text" id="denominationCash" style="display: none;"
															class="form-control" Placeholder="Enter G.L.Head No." />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group row">
													<label for="txtJointMemberName"
														class="col-sm-4 control-label">Select G.L.Head</label>
													<div class="col-sm-8">
														<input name="selectGlHead" type="text" id="selectGlHead"
															readonly="readonly" class="form-control"
															Placeholder="Enter Select G.L.Head" />
													</div>
												</div>
												<div class="form-group row">
													<label for="txtJointMemberName"
														class="col-sm-4 control-label">Account No.<strong
															style="color: Red">*</strong>
													</label>
													<div class="col-sm-8">
														<input onchange="setthroughAccountNo();" name="accountNo"
															type="text" id="accountNo" readonly="readonly"
															class="form-control" Placeholder="Enter Account No." />
													</div>
												</div>
												<div class="form-group row">
													<label for="txtJointMemberName"
														class="col-sm-4 control-label">Search Account Holder<strong
															style="color: Red">*</strong>
													</label>
													<div class="col-sm-8">
														<input name="searchAccountHolder" type="text"
															id="searchAccountHolder" readonly="readonly"
															class="form-control" Placeholder="Enter Account Holder" />
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-4 control-label">Select Account
														Holder<strong style="color: Red">*</strong>
													</label>
													<div class="col-sm-8">
														<!-- <select name="selectAccountHolder" id="selectAccountHolder"
													class="form-control select2" style="width: 100%;" readonly="readonly">
													<option selected="selected" value=""></option>
												</select> -->
														<input name="selectAccountHolder" type="text"
															id="selectAccountHolder" readonly="readonly"
															class="form-control" Placeholder="Enter Account Holder" />
														<span
															id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
															style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
															Account Holder</span>
													</div>
												</div>
												<div class="form-group row">
													<label for="balance" class="col-sm-4 control-label">Balance (Credit)
													</label>
													<div class="col-sm-8">
														<input name="balance" type="text" value="" id="balance"
															readonly="readonly" class="form-control"
															Placeholder="Enter Balance" />
													</div>
												</div>
												<div class="form-group row">
													<label for="balance" class="col-sm-4 control-label">Unclear
														Balance </label>
													<div class="col-sm-8">
														<input name="unclearBalance" type="text" value=""
															id="unclearBalance" class="form-control" readonly="readonly"
															Placeholder="Enter Unclear Balance" />
													</div>
												</div>
												<div class="form-group row">
													<label for="balance" class="col-sm-4 control-label">Transaction
														Amount(Rs.) </label>
													<div class="col-sm-8">
														<input onchange="setTheintrumentDetails()" name="amount"
															type="text" value="" id="amount" class="form-control"
															Placeholder="Enter Transaction Amount" />
													</div>
												</div>
												<h5 style="font-weight: bold; margin-left: 15px;">Transaction</h5>
												<label> <input type="radio" name="transactionType" id="transactionType"
														value="debit" style="margin-left: 15px;" disabled>
													Debit
												</label> <label> <input type="radio" name="transactionType"
														id="transactionType" value="credit" style="margin-left: 15px;"
														checked>
													<label for="transactionType">Credit</label>
													<!-- <div class="row col-md-12">
											<input type="submit" name="btnSave" value="Credit"
												id="btnSave" class="btn btn-success pull-right margin-r-5" />
											<input type="submit" name="btnSave" value="Delete"
												id="btnDelete" class="btn btn-success pull-right margin-r-5" />
										</div> -->
											</div>
										</div>
								</div>
							</div>
							<div class="col-md-12">
								<div class="box box-success">
									<div class="box-header with-border">
										<h3 class="box-title">Instrument Details</h3>
									</div>
									<div class="box-body">
										<div class="col-md-6">
											<div class="form-group row">
												<label class="col-sm-4 control-label">Select
													Instrument Type</label>
												<div class="col-sm-8">
													<select name="instrumentType" id="instrumentType"
														class="form-control select2" style="width: 100%;">
														<option value="Cheque">Cheque</option>
													</select>
												</div>
											</div>
											<div class="form-group row">
												<label for="bankGLHead" class="col-sm-4 control-label">Instrument
													Amount (Rs.)</label>
												<div class="col-sm-8">
													<input name="instrumentAmount" type="text" id="instrumentAmount"
														class="form-control" Placeholder="Enter Instrument Amount"
														readonly="readonly" />
												</div>
											</div>
											<div class="form-group row">
												<label for="bankGLHead" class="col-sm-4 control-label">Amount
													In Words </label>
												<div class="col-sm-8">
													<input name="amountInWords" type="text" id="amountInWords"
														class="form-control" Placeholder="Enter Amount In Words"
														readonly="readonly" />
												</div>
											</div>
											<div class="form-group row">
												<label for="txtRelativeName" class="col-sm-4 control-label">Instrument
													Date <strong style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="instrumentDate" type="text" id="instrumentDate"
														class="form-control" Placeholder="Enter Instrument Date"
														readonly="readonly" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Instrument No.<strong
														style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="instrumentNo" id="instrumentNo"
														class="form-control select2" style="width: 100%;"
														placeholder="Enter Instrument No.">
												</div>
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group row">
												<label for="bankGLHead" class="col-sm-4 control-label">In
													Favour Of <strong style="color: red;">*</strong>
												</label>
												<div class="col-sm-8">
													<input name="inFavourOf" type="text" id="inFavourOf"
														class="form-control" Placeholder="Enter In Favour Of"
														readonly="readonly" />
												</div>
											</div>
											<div class="form-group row">
												<label class="col-sm-4 control-label">Select Bank Name<strong
														style="color: Red">*</strong>
												</label>
												<div class="col-sm-8">


													<input name="bankName" type="text" value="" id="bankName"
														class="form-control" Placeholder="Enter Bank Name" />
												</div>
											</div>
											<div class="form-group row">
												<label for="balance" class="col-sm-4 control-label">Bank
													Branch </label>
												<div class="col-sm-8">
													<input name="bankBranch" type="text" value="" id="bankBranch"
														class="form-control" Placeholder="Enter Bank Branch" />
												</div>
											</div>
											<div class="form-group row">
												<label for="balance" class="col-sm-4 control-label">Drawn
													On Bank </label>
												<div class="col-sm-8">
													<input name="drawnOnBank" type="text" id="drawnOnBank"
														class="form-control" Placeholder="Enter Drawn On Bank" />
												</div>
											</div>
											<div class="form-group row">
												<label for="balance" class="col-sm-4 control-label">Drawn
													On Branch </label>
												<div class="col-sm-8">
													<input name="drawnOnBranch" type="text" id="drawnOnBranch"
														class="form-control" Placeholder="Enter Drawn On Bank" />
												</div>
											</div>
											<div class="row col-md-12">
												<input type="button" name="btnSave" id="btnSave" value="Credit"
													class="btn btn-success pull-right margin-r-5" />
												<!-- <input type="submit" name="btnSave" value="Delete"
												id="btnDelete" class="btn btn-success pull-right margin-r-5" /> -->
												<input type="reset" name="btnReset" value="Reset" id="btnReset"
													class="btn btn-success pull-right margin-r-5" />
											</div>
										</div>
									</div>
								</div>
							</div>
					</section>
					</form>
					<div class="col-md-12">
						<div class="box box-success" style="box-shadow: none; overflow: auto !important;">
							<div class="box-header with-border">
								<div class="box-tools pull-right"></div>
							</div>
							<div class="box-body">
								<div class="clearfix margin-bottom-10"></div>
								<table cellspacing="0" cellpadding="3" rules="all"
									class="display nowrap table table-hover table-striped table-bordered" border="1"
									id="ContentPlaceHolder1_gdvData" style="width: 100%; border-collapse: collapse;"
									id="shareCertificate">
									<caption></caption>
									<tr style="color: White; background-color: #008385;">
										<th scope="col">Sr No.</th>
										<th scope="col">ID</th>
										<th scope="col">G L Head</th>
										<th scope="col">Account No</th>
										<th scope="col">Account Holder</th>
										<th scope="col">Balance</th>
										<th scope="col">Transaction Amount(Rs.)</th>
										<th scope="col">Delete</th>
									</tr>
									<tbody id="tboady">

									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="box-body">
						<div class="clearfix margin-bottom-10"></div>
					</div>
				</div>
				<!-- </section>
			</form> -->
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
			<script src="dist/js/GetAllBranch.js"></script>
			<script src="dist/js/accountingJs.js"></script>
			<!-- Select2 -->
			<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
			<script type="text/javascript">
				function getBranchCodeByBranchNameOnReceipt() {
					var selectBranch = $("#branch").val();
					if (!selectBranch) {
						return;
					}
					var input = {
						"name": selectBranch
					};
					$.ajax({
						type: "GET",
						contentType: "application/json",
						url: 'fetchBranchCodeByBranchName',
						data: input,
						success: function (data) {
							console.log(data);
							if (data.length > 0) {
								document.getElementById("branchCode").value = data[0].branchCode;
							}
						},
						error: function () {
							alert("Device control failed");
						}
					});
				}


				function dropDownForScroll() {
					$.ajax({
						type: "POST",
						contentType: "application/json",
						url: 'fetchAllCashier',
						async: false,
						success: function (data) {
							var appenddata1 = "";
							appenddata1 += "<option selected='selected' value='select'>select</option>";
							for (var i = 0; i < data.length; i++) {
								if(data[i].flag ==="0" && data[i].payment ==="credit"){
								appenddata1 += "<option value ='" + data[i].transactionID + "'>" + data[i].scroll + "/" + data[i].glHeadNo +
									"/" + data[i].accountNo + "/" + data[i].amount + "/" + data[i].selectAccountHolder +
									"</option>";
								}
							}
							$("#scroll").append(appenddata1);

							// Add an event listener for the change event on the dropdown
							$("#scroll").on("change", function () {
								// Get the selected value
								var selectedValue = $(this).val();

								//console.log(selectedValue)

								// // Store the selected value in a variable
								// var selectedScroll = $("option:selected", this).text();

								// // You can now use the 'selectedScroll' variable for your desired purpose
								// console.log("Selected Scroll: " + selectedScroll);

								// const inputString = selectedScroll;
								// const [part1, part2, part3, part4, part5] = inputString.split('/');
								// const data = {
								// 	"scroll": part1,
								// 	"glHeadNo": part2,
								// 	"accountNo": part3,
								// 	"amount": part4,
								// 	"selectAccountHolder": part5
								// };
								// const json = JSON.stringify(data);
								// console.log(json)

								$.ajax({
									type: "POST",
									contentType: "application/json",
									url: 'fetchAllCashier',
									success: function (data) {

										const cashObj = data.find(obj => obj.transactionID === selectedValue);

										if (cashObj != null && cashObj != undefined) {
											document.getElementById("glHeadNo").value = cashObj.glHeadNo;
											document.getElementById("selectGlHead").value = cashObj.selectGlHead;
											document.getElementById("accountNo").value = cashObj.accountNo;
											document.getElementById("selectAccountHolder").value = cashObj.selectAccountHolder;
											document.getElementById("amount").value = cashObj.amount;
											document.getElementById("searchAccountHolder").value = cashObj.selectAccountHolder;
											document.getElementById("instrumentAmount").value = cashObj.amount;
											//document.getElementById("amountInWords").value = data[0].amount;

											// Convert instrument amount to words
											var amountInWords = convertToWords(cashObj.amount);
											document.getElementById("amountInWords").value = amountInWords;

											document.getElementById("instrumentDate").value = getCurrentDate();
											document.getElementById("inFavourOf").value = cashObj.selectAccountHolder;
											document.getElementById("denominationCash").value = cashObj.denominationCash;

											document.getElementById("balance").value = cashObj.balance;
											document.getElementById("unclearBalance").value = "0";
											document.getElementById("scrollNO").value = cashObj.scroll;
											document.getElementById("glnoTransactionID").value = cashObj.glnoTransactionID;



											var instrumentType = $("#instrumentType");
											instrumentType.empty(); // Clear existing options

											instrumentType.append('<option value="Slip" selected>Slip</option>'); // Append new option



										} else {
											alert("No Data Found");
										}
									},
									error: function () {
										alert("Failed to fetch data");
									}
								});

							});
						},
						error: function () {
							alert("Device control failed");
						}
					});
				}


				function convertToWords(amount) {
					var ones = ['', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine', 'Ten', 'Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen'];
					var tens = ['', '', 'Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety'];

					function convertLessThanOneThousand(num) {
						if (num === 0) {
							return '';
						} else if (num < 20) {
							return ones[num];
						} else if (num < 100) {
							var ten = tens[Math.floor(num / 10)];
							var one = ones[num % 10];
							return ten + ' ' + one;
						} else {
							var hundred = ones[Math.floor(num / 100)];
							var rest = convertLessThanOneThousand(num % 100);
							if (rest !== '') {
								return hundred + ' Hundred ' + rest;
							} else {
								return hundred + ' Hundred';
							}
						}
					}

					if (amount === 0) {
						return 'Zero Rupees';
					}

					var result = '';
					if (amount < 0) {
						result = 'Negative ';
						amount = -amount;
					}

					var crore = Math.floor(amount / 10000000);
					amount %= 10000000;
					var lakh = Math.floor(amount / 100000);
					amount %= 100000;
					var thousand = Math.floor(amount / 1000);
					amount %= 1000;
					var hundreds = amount;

					if (crore > 0) {
						result += convertLessThanOneThousand(crore) + ' Crore ';
					}
					if (lakh > 0) {
						result += convertLessThanOneThousand(lakh) + ' Lakh ';
					}
					if (thousand > 0) {
						result += convertLessThanOneThousand(thousand) + ' Thousand ';
					}
					if (hundreds > 0) {
						result += convertLessThanOneThousand(hundreds) + ' Rupees';
					}

					return result;
				}


				// Function to get the current date in the format "YYYY-MM-DD"
				function getCurrentDate() {
					var currentDate = new Date();
					var year = currentDate.getFullYear();
					var month = String(currentDate.getMonth() + 1).padStart(2, '0');
					var day = String(currentDate.getDate()).padStart(2, '0');
					return year + '-' + month + '-' + day;
				}


				$(document).ready(function () {
					// Add an event listener to the radio buttons
					$("input[name='typeCashBank']").change(function () {
						var selectedValue = $(this).val();
						var $selectBank = $(".selectCashBank");

						// Clear the existing options in the dropdown
						$selectBank.empty();




						// Check the selected value
						if (selectedValue === "Cash") {



							$.ajax({
								type: "POST",
								url: 'fetchAllNewGlHead',
								success: function (data) {

									const cashObj = data.find(obj => obj.uniqueId === 'UNIQUE_ID_1703095181710');

									// Display "Cash" in the dropdown
									$selectBank.append(`<option value = "` + cashObj.glHeadName + `">` + cashObj.glHeadName + `</option>`);

									document.getElementById("glHeadNodebit").value = cashObj.glHeadNo;
									document.getElementById("debitBalance").value = cashObj.balance;

									document.getElementById("uniqueID").value = cashObj.uniqueId;



								},
								error: function () {
									alert("Error while fetching bank data");
								}
							});

							var selectElement = document.getElementById("scroll");
							selectElement.innerHTML = "";

							selectElement.disabled = false;

							dropDownForScroll();

							// Disable the fields for Cash
							$("input[name='instrumentType'], input[name='instrumentAmount'], input[name='amountInWords'], input[name='instrumentDate'], input[name='instrumentNo'], input[name='inFavourOf'], input[name='bankName'], input[name='bankBranch'], input[name='drawnOnBank'], input[name='drawnOnBranch']").prop('readonly', true);
						} else if (selectedValue === "Bank") {


							$selectBank.append('<option value="">Select</option>');

							// Get a reference to the select element
							var selectElement = document.getElementById("scroll");
							selectElement.innerHTML = "";

							selectElement.disabled = true;

							// Fetch bank data via AJAX and populate the dropdown
							$.ajax({
								type: "GET",
								url: 'getAllBranch',
								success: function (bankData) {

									for (var i = 0; i < bankData.length; i++) {
										if (!bankData[i].name.includes("Interest")) {
											$selectBank.append('<option value="' + bankData[i].bankID + '">' + bankData[i].name + '</option>');
										}
									}
								},
								error: function () {
									alert("Error while fetching bank data");
								}
							});

							// Make form fields editable for Bank
							$("input[name='instrumentType'], input[name='instrumentAmount'], input[name='amountInWords'], input[name='instrumentDate'], input[name='instrumentNo'], input[name='inFavourOf'], input[name='bankName'], input[name='bankBranch'], input[name='drawnOnBank'], input[name='drawnOnBranch']").prop('readonly', false);
						}

						// Show or hide the dropdown based on the selected value
						$selectBank.toggle(!!selectedValue);
					});

					// Add an event listener to initially set the dropdown and enable/disable fields based on the default radio button value
					$("input[name='typeCashBank']:checked").change();
				});    
			</script>
			<script type="text/javascript">
				$(document).ready(function () {


					$('#btnSave').click(function () {

						var selectedValue = document.querySelector('input[name="typeCashBank"]:checked');
					

						if (selectedValue === null) {
							// Return or use the selected value
							return alert("PLz Select the Cash Or Bank.......");
						}

						if (selectedValue.value === "Bank") {




							//alert("Hello World ");
							var voucherNo = $("#voucherNo").val();
							var entryDate = $("#entryDate").val();
							// Get the value of the selected radio button
							var typeCashBank = document.querySelector('input[name="typeCashBank"]:checked').value;

							var debitBank = $("#debitBank").val();
							var debitBalance = $("#debitBalance").val();

							var details = $("#details").val();
							var branchCode = $("#branchCode").val();
							var creditBank = $("#creditBank").val();
							var glHeadNo = $("#glHeadNo").val();
							var selectGlHead = $("#selectGlHead").val();

							var accountNo = $("#accountNo").val();
							var searchAccountHolder = $("#searchAccountHolder").val();
							var selectAccountHolder = $("#selectAccountHolder").val();
							var unclearBalance = $("#unclearBalance").val();
							var amount = $("#amount").val();


							var transactionType = document.querySelector('input[name="transactionType"]:checked').value;


							var instrumentType = $("#instrumentType").val();
							var instrumentAmount = $("#instrumentAmount").val();
							var amountInWords = $("#amountInWords").val();
							var instrumentDate = $("#instrumentDate").val();


							var instrumentNo = $("#instrumentNo").val();
							var inFavourOf = $("#inFavourOf").val();
							var bankName = $("#bankName").val();
							var bankBranch = $("#bankBranch").val();
							var drawnOnBank = $("#drawnOnBank").val();
							var drawnOnBranch = $("#drawnOnBranch").val();


							var glHeadNodebit = $("#glHeadNodebit").val();

							var instrumentType = $("#instrumentType").val();
							var instrumentAmount = $("#instrumentAmount").val();
							var amountInWords = $("#amountInWords").val();
							var accountNoBank = $("#accountNoBank").val();




							//Genrate the Transaction ID 



							function generateTransactionId() {
								const timestamp = new Date().getTime(); // Get current timestamp
								const randomNum = Math.floor(Math.random() * 1000000); // Generate a random number
								const transactionId = timestamp + "" + randomNum; // Combine timestamp and random number

								return transactionId;
							}

							// Example usage
							const uniqueTransactionId = generateTransactionId();






							const data = [];


							const credit = {
								entryDate: entryDate,
								voucherNo: voucherNo,
								type: "Jv" + voucherNo,
								glHeadNo: glHeadNo,
								selectGlHead: selectGlHead,
								accountNo: accountNo,
								selectAccountHolder: selectAccountHolder,
								transactionType: transactionType,
								amount: amount,
								receiptType: typeCashBank,
								bankId: creditBank,
								details: details,


								// instrumentDate:instrumentDate,
								instrumentNo: instrumentNo,
								// inFavourOf:inFavourOf,
								// bankName:bankName,
								// bankBranch:bankBranch,
								drawnOnBank: drawnOnBank,
								drawnOnBranch: drawnOnBranch,
								instrumentType: instrumentType,
								uniqueTransactionId: uniqueTransactionId,
								moduleType: "JV" + voucherNo,
								module: "Receipt",
								chequeRegister: "0"


							};

							data.push(credit);


							const debit = {
								entryDate: entryDate,
								voucherNo: voucherNo,
								type: "Jv" + voucherNo,
								glHeadNo: glHeadNodebit,
								transactionType: "credit",
								amount: amount,
								receiptType: typeCashBank,
								bankId: debitBank,
								chequeRegister: "0",
								selectGlHead: bankName,

								accountNo: accountNoBank,



								amountInWords: amountInWords,
								instrumentAmount: instrumentAmount,
								instrumentType: instrumentType,
								instrumentDate: instrumentDate,
								instrumentNo: instrumentNo,
								inFavourOf: inFavourOf,
								bankName: bankName,
								bankBranch: bankBranch,
								drawnOnBank: drawnOnBank,
								drawnOnBranch: drawnOnBranch,
								details: details,
								uniqueTransactionId: uniqueTransactionId,
								moduleType: "JV" + voucherNo,
								module: "Receipt1",
								chequeRegister: "0"



							};

							data.push(debit);








							if (debitBank === '' || debitBank === null) {

								return alert("Fill the Debit Bank!!!");
							}

							if (debitBalance === '' || debitBalance === null) {

								return alert("Fill the Debit Balance!!!");
							}

							if (details === '' || details === null) {

								return alert("Fill the Details!!!");
							}

							if (branchCode === '' || branchCode === '') {

								return alert("Fill the Branch Code!!!");
							}

							if (creditBank === '' || creditBank === null) {

								return alert("Fill the Credit Bank!!!");
							}

							if (glHeadNo === '' || glHeadNo === null) {

								return alert("Fill the Gl Head no of credit Bank !!!");
							}

							if (selectGlHead === '' || selectGlHead === null) {

								return alert("Fill the Gl Select of credit Bank !!!");
							}

							if (accountNo === '' || accountNo === null) {

								return alert("Fill the Account NO of credit Bank !!!");
							}

							if (searchAccountHolder === '' || searchAccountHolder === null) {

								return alert("Fill the Search Account Holder of credit Bank !!!");
							}

							if (selectAccountHolder === '' || selectAccountHolder === null) {

								return alert("Fill the Select Account Holder  of credit Bank !!!");
							}

							if (amount === '' || amount === null) {

								return alert("Fill the Select Amount of credit Bank !!!");
							}

							if (instrumentType === '' || instrumentType === null) {

								return alert("Instrument Type  !!!");
							}

							if (instrumentAmount === '' || instrumentAmount === null) {

								return alert("Instrument Amount !!!");
							}

							if (amountInWords === '' || amountInWords === null) {

								return alert("Amount in words !!!");
							}

							if (instrumentDate === '' || instrumentDate === null) {

								return alert("Instrument Date  !!!");
							}

							if (instrumentNo === '' || instrumentNo === null) {

								return alert("Instrument Number  !!!");
							}

							if (inFavourOf === '' || inFavourOf === null) {

								return alert("In Favour Of  !!!");
							}

							if (bankName === '' || bankName === null) {

								return alert("In Bank Name  !!!");
							}


							if (bankBranch === '' || bankBranch === null) {

								return alert("In Bank Branch  !!!");
							}


							if (drawnOnBank === '' || drawnOnBank === null) {

								return alert("In Drawn on Bank  !!!");
							}

							if (drawnOnBranch === '' || drawnOnBranch === null) {

								return alert("In Drawn on Branch  !!!");
							}

							if (glHeadNodebit === '' || glHeadNodebit === null) {

								return alert("In Gl Head No in Debit   !!!");
							}

							if (glHeadNodebit === '' || glHeadNodebit === null) {

								return alert("In Gl Head No in Debit   !!!");
							}

							if (instrumentType === '' || instrumentType === null) {

								return alert("In Instrument Type !!!");
							}

							if (instrumentAmount === '' || instrumentAmount === null) {

								return alert("In Instrument Amount  !!!");
							}

							if (amountInWords === '' || amountInWords === '') {

								return alert("Amount IN words   !!!");
							}

							document.getElementById("btnSave").disabled = true;

							$.ajax({
								type: "POST",
								contentType: "application/json",
								url: '/saveReceipt',
								data: JSON.stringify(data),
								success: function (response) {
									alert(response);
									window.location.href = "receipt";
								},
								error: function (error) {
									alert("Error while saving data");
								}
							});


						} else if (selectedValue.value === "Cash") {

							alert("Hello World !!!!!!!")

							var voucherNo = $("#voucherNo").val();
							var entryDate = $("#entryDate").val();
							//var voucherNo = $("#scroll").val();
							var debitBank = $("#debitBank").val();
							var glHeadNodebit = $("#glHeadNodebit").val();
							var debitBalance = $("#debitBalance").val();
							var details = $("#details").val();
							var uniqueIDCash = $("#uniqueID").val();
							var scrollNO = $("#scrollNO").val();
							var glnoTransactionID = $("#glnoTransactionID").val();
							var branchCode = $("#branchCode").val();
							var creditBank = $("#creditBank").val();
							var glHeadNo = $("#glHeadNo").val();
							var denominationCash = $("#denominationCash").val();
							var selectGlHead = $("#selectGlHead").val();
							var accountNo = $("#accountNo").val();
							var searchAccountHolder = $("#searchAccountHolder").val();
							var selectAccountHolder = $("#selectAccountHolder").val();
							var balance = $("#balance").val();
							var unclearBalance = $("#unclearBalance").val();
							var amount = $("#amount").val();
							var transactionType = document.querySelector('input[name="transactionType"]:checked').value;
							var instrumentType = $("#instrumentType").val();
							var cashierID = $("#scroll").val();


							if (voucherNo === "" || voucherNo === undefined) {
								return alert("Voucher No .....");
							} else if (entryDate === "" || entryDate === undefined) {
								return alert("Entry Date.....");
							}else if (debitBank === "" || debitBank === undefined) {
								return alert("Debit Bank.....");
							}else if (glHeadNodebit === "" || glHeadNodebit === undefined) {
								return alert("Gl Head No Debit.....");
							}else if (debitBalance === "" || debitBalance === undefined) {
								return alert("Debit Balance .....");
							}else if (details === "" || details === undefined) {
								return alert("Details.....");
							}else if (branchCode === "" || branchCode === undefined) {
								return alert("Branch Code .....");
							}else if (creditBank === "" || creditBank === undefined) {
								return alert("Credit Bank .....");
							}else if (glHeadNo === "" || glHeadNo === undefined) {
								return alert("GL Head NO .....");
							}else if (selectGlHead === "" || selectGlHead === undefined) {
								return alert("Select Gl Head.....");
							}else if (accountNo === "" || accountNo === undefined) {
								return alert("Account No.....");
							}else if (searchAccountHolder === "" || searchAccountHolder === undefined) {
								return alert("Seach Account HOlder.....");
							}else if (selectAccountHolder === "" || selectAccountHolder === undefined) {
								return alert("Select Account Holder.....");
							}else if (balance === "" || balance === undefined) {
								return alert("Balance .....");
							}else if (unclearBalance === "" || unclearBalance === undefined) {
								return alert("Unclear Balance .....");
							}else if (amount === "" || amount === undefined) {
								return alert("Amount .....");
							}else if (transactionType === "" || transactionType === undefined) {
								return alert("Transaction type .....");
							}else if (instrumentType === "" || instrumentType === undefined) {
								return alert("Intrument Type .....");
							}


							function generateTransactionId() {
								const timestamp = new Date().getTime(); // Get current timestamp
								const randomNum = Math.floor(Math.random() * 1000000); // Generate a random number
								const transactionId = timestamp + "" + randomNum; // Combine timestamp and random number

								return transactionId;
							}

							// Example usage
							const uniqueTransactionId = generateTransactionId();



							const data =[];

							const obj1 = {
								voucherNo:voucherNo,
								entryDate:entryDate,
								//debitBank:debitBank,
								//glHeadNodebit:glHeadNodebit,
								//debitBalance:debitBalance,
								//details:details,
								//uniqueID:uniqueID,
								scroll:scrollNO,
								bankId:glnoTransactionID,
								//branchCode:branchCode,
								//branch:creditBank,
								glHeadNo:glHeadNo,
								denominationCash:denominationCash,
								selectGlHead:selectGlHead,
								accountNo:accountNo,
								searchAccountHolder:searchAccountHolder,
								selectAccountHolder:selectAccountHolder,
								balance:balance,
								unclearBalance:unclearBalance,
								amount:amount,
								transactionType:transactionType,
								instrumentType:instrumentType,
								cashierID:cashierID,
								moduleType: "Cr" + voucherNo,
								module: "Receipt",
								uniqueTransactionId:uniqueTransactionId,


							};

							data.push(obj1);

							const obj2 = {
								voucherNo:voucherNo,
								entryDate:entryDate,
							
								balance:debitBalance,
								details:details,
							
								scroll:scrollNO,
								bankId:uniqueIDCash,
								branchCode:branchCode,
								branch:creditBank,
								glHeadNo:glHeadNodebit,

								searchAccountHolder:`{`+creditBank+` `+branchCode+`}`,
								selectAccountHolder:`{`+creditBank+` `+branchCode+`}`,
								accountNo:"1",
								
								selectGlHead:selectedValue.value,
							
								amount:amount,
								transactionType:transactionType,
								instrumentType:instrumentType,
								
								moduleType: "Cr" + voucherNo,
								module: "Receipt1",
								uniqueTransactionId:uniqueTransactionId,


							};
							data.push(obj2);

							

							$.ajax({
								type: "POST",
								contentType: "application/json",
								url: '/saveReceipt',
								data: JSON.stringify(data),
								success: function (response) {
									alert(response);
									window.location.href = "receipt";
								},
								error: function (error) {
									alert("Error while saving data");
								}
							});






						}

					});
				});
			</script>

		</body>
		<!-- Dk/Admin/ShareIssue.aspx?ismodify=false EDB D 09:26:56 GMT -->

		<script>

			function getTheValueInFields() {
				let debitBank = document.getElementById("debitBank").value;

				$.ajax({
					type: "GET",
					contentType: "application/json",
					url: 'getAllBranch',
					success: function (data) {

						const cbiObject = data.find(obj => obj.bankID === debitBank);

						// Append the value to the input tag
						document.getElementById("debitBalance").value = cbiObject.balance;
						document.getElementById("bankBranch").value = cbiObject.branch;
						document.getElementById("glHeadNodebit").value = cbiObject.glHeadNo;
						document.getElementById("bankName").value = cbiObject.name;
						document.getElementById("accountNoBank").value = cbiObject.bankAccoununtNo;




					},
					error: function () {
						alert("Device control failed");
					}
				});
			}



			function getTheValueInFields2() {

				let glHeadNo = document.getElementById("glHeadNo").value;

				$.ajax({
					type: "POST",
					contentType: "application/json",
					url: 'fetchAllNewGlHead',
					success: function (data) {


						const cbiObject = data.find(obj => obj.glHeadNo === parseInt(glHeadNo));

						if (cbiObject && cbiObject.module === 'Accounting') {
							// Append the value to the input tag
							document.getElementById("branchCode").value = '1';
							//document.getElementById("glHeadNo").value = cbiObject.glHeadNo;
							document.getElementById("selectGlHead").value = cbiObject.glHeadName;
							document.getElementById("accountNo").value = cbiObject.accountValue;

							document.getElementById("searchAccountHolder").value = cbiObject.selectAccountHolder;
							document.getElementById("selectAccountHolder").value = cbiObject.selectAccountHolder;
							document.getElementById("balance").value = cbiObject.balance;
							document.getElementById("inFavourOf").value = cbiObject.selectAccountHolder;
							//document.getElementById("unclearBalance").value = cbiObject.balance;



							const branchCodeDropdown = document.getElementById("creditBank");

							// Clear existing options in the dropdown
							branchCodeDropdown.innerHTML = '';

							// Append a new option
							const newOption = document.createElement("option");
							newOption.value = cbiObject.uniqueId;
							newOption.text = 'H.O';
							branchCodeDropdown.appendChild(newOption);

						} else if (cbiObject && cbiObject.module === 'New Scheme') {
							alert("You selected the new Scheme GL no Plz enter the Account No ")
							document.getElementById("selectGlHead").value = cbiObject.glHeadName;

							var accountNoField = document.getElementById("accountNo");
							accountNoField.readOnly = false;

							document.getElementById("accountNo").value = '';

							document.getElementById("searchAccountHolder").value = '';
							document.getElementById("selectAccountHolder").value = '';
							document.getElementById("balance").value = '';
							document.getElementById("inFavourOf").value = '';



						} else {
							// If bankID is not null, return from the function or perform other actions

							document.getElementById("branchCode").value = '';
							//document.getElementById("glHeadNo").value = cbiObject.glHeadNo;
							document.getElementById("selectGlHead").value = '';
							document.getElementById("accountNo").value = '';

							document.getElementById("searchAccountHolder").value = '';
							document.getElementById("selectAccountHolder").value = '';
							document.getElementById("balance").value = '';
							document.getElementById("inFavourOf").value = '';
							//document.getElementById("unclearBalance").value = cbiObject.balance;



							const branchCodeDropdown = document.getElementById("creditBank");

							// Clear existing options in the dropdown
							branchCodeDropdown.innerHTML = '';

							// Append a new option
							const newOption = document.createElement("option");
							newOption.value = '';
							newOption.text = '';
							branchCodeDropdown.appendChild(newOption);
							return alert("Plz enter the individual Gl no !!!!");
						}



					},
					error: function () {
						alert("Device control failed");
					}
				});
			}
		</script>

		<script>
			function setTheintrumentDetails() {

				document.getElementById("instrumentAmount").value = $("#amount").val();
				document.getElementById("amountInWords").value = convertToWords($("#amount").val());
				document.getElementById("instrumentDate").value = getCurrentDate();
				//document.getElementById("instrumentNo").value = $("#voucherNo").val();

				//document.getElementById("inFavourOf").value = $("#searchAccountHolder").val();

				// var debitBankValue = $("#debitBank").val();
				// var extractedValue = debitBankValue.substring(0, debitBankValue.length - 3);


				// document.getElementById("bankName").value = extractedValue;


			}
		</script>

		<script>

			$(document).ready(function () {
				// Attach a click event handler to the reset button
				$('#btnReset').on('click', function () {
					// Navigate to the "/payment" URL
					window.location.href = '/receipt';
				});
			});
		</script>

		<script>

			function setthroughAccountNo() {

				let accountNo = document.getElementById("accountNo").value;

				$.ajax({
					type: "POST",
					contentType: "application/json",
					url: 'FetchAllNewSavingAccount',
					success: function (data) {

						const cbiObject = data.find(obj => obj.accountNo === parseInt(accountNo));

						if (cbiObject) {
							document.getElementById("searchAccountHolder").value = cbiObject.clientName;
							document.getElementById("selectAccountHolder").value = cbiObject.clientName;
							document.getElementById("balance").value = cbiObject.mainBalance;
							document.getElementById("unclearBalance").value = '0';
							document.getElementById("inFavourOf").value = cbiObject.clientName;
							document.getElementById("branchCode").value = '1';

							const branchCodeDropdown = document.getElementById("creditBank");

							// Clear existing options in the dropdown
							branchCodeDropdown.innerHTML = '';

							// Append a new option
							const newOption = document.createElement("option");
							newOption.value = cbiObject.uniqueId;
							newOption.text = 'H.O';
							branchCodeDropdown.appendChild(newOption);
						}



					},
					error: function () {
						alert("Device control failed");
					}
				});

			}
		</script>

		</html>