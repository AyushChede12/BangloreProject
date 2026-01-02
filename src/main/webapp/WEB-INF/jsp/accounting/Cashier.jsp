<%@ page import="java.util.List" %>
	<%@ page import="com.society.application.model.Member" %>
		<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			<jsp:include page="../header.jsp" />



			</head>

			<style>
				.hidden {
					display: none;
				}
			</style>

			<style>
				@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800;900&display=swap');

				* {
					padding: 0;
					margin: 0;
					box-sizing: border-box;
					font-family: 'Poppins', sans-serif;
				}

				.Cont {
					width: 100%;
					height: 100vh;
					border: 1px solid red;
					background-image: url("./img.jpg");
					background-size: cover;
					background-repeat: no-repeat;
				}

				.mainTable {
					width: 100%;
					height: 100vh;
					transition: 0.5s;
					overflow-y: scroll;
					-ms-overflow-style: none;
					scrollbar-width: none;
					/* border-radius: 10px;
    background-color: #ffffff;
    box-shadow: -15px -15px 15px rgba(255, 255, 255, 0.2),
        15px 15px 15px rgba(0, 0, 0, 0.1); */
					background: rgba(255, 255, 255, 0.5);
					-webkit-backdrop-filter: blur(10px);
					backdrop-filter: blur(10px);
					border: 1px solid rgba(255, 255, 255, 0.25);
				}

				.mainTable::-webkit-scrollbar {
					display: none;
				}

				.tableCont {
					width: 100%;
					min-width: 1000px;
					table-layout: fixed;
					cursor: pointer;
				}

				.tableCont thead th {
					width: 100%;
					position: sticky;
					top: 0;
					font-size: 0.95rem;
					background-color: #e1e1e1;
				}

				.labelinputs {
					width: 200px;
					height: 30px;
					/* background-color: aqua; */
					display: flex;
					justify-content: space-between;
				}

				.tableinput {
					width: 110px;
					padding: 2px;
				}

				.subbox {
					width: 255px;
					height: 50px;
					font-weight: 600;
				}
			</style>
			<style>
				.radio-buttons {
					display: inline-block;
					margin-right: 180px;
				}

				.radio-buttons label {
					margin-right: 20px;
				}
			</style>

			<body class="skin-blue sidebar-mini"
				style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
				cz-shortcut-listen="true">
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
							<h1 id="ContentPlaceHolder1_IdHeader">Cashier</h1>
							<ol class="breadcrumb">
								<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
								<li><a href="#">Dashboard</a></li>
								<li class="active">Accounting</li>
							</ol>
						</section>

						<!-- <form method="post" action="" id="cashierForm" modelAttribute="" enctype="multipart/form-data"> -->


						<section class="content" id="section1">
							<div class="row">
								<div class="col-md-12">
									<div class="box box-success">
										<div class="box-header with-border">
											<h3 class="box-title">Transaction</h3>
										</div>
										<div class="box-body">
											<div class="col-md-6">
												<label>
													<input type="radio" name="payment123" id="credit" value="credit"
														style="margin-left: 15px;"
														onchange="onchangeTheRadioButton();">Credit
												</label>
												<label>
													<input type="radio" name="payment123" id="debit" value="debit"
														style="margin-left: 15px;"
														onchange="onchangeTheRadioButton();">Debit
												</label>

												<div class="form-group row">
													<label class="col-sm-4 control-label">Select Pending
														Transaction </label>
													<div class="col-sm-8">
														<select name="pendingTransaction" id="pendingTransaction"
															class="form-control select2" style="width: 100%;">

														</select>
													</div>
												</div>
												<div class="form-group row">
													<label for="bankGLHead" class="col-sm-4 control-label">Branch
														No. <strong style="color: Red">*</strong>
													</label>
													<div class="col-sm-8">
														<input name="branchCode" type="text" id="branchCode" value="1"
															class="form-control" Placeholder="Enter Branch No"
															readonly="readonly" />
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-4 control-label">Select Branch<strong
															style="color: Red">*</strong>
													</label>
													<div class="col-sm-8">
														<select name="selectBranch" id="selectBranch"
															class="form-control select2" style="width: 100%;">

															<option selected="selected" value="H.O">H.O</option>
														</select>
													</div>
												</div>
												<div class="form-group row">
													<label for="bankGLHead" class="col-sm-4 control-label">G.L.Head
														No. <strong style="color: Red">*</strong>
													</label>
													<div class="col-sm-8">
														<input name="glHeadNo" type="text" id="glHeadNo"
															onchange="getTheValueInFields2();	" class="form-control"
															Placeholder="Enter G.L.Head No" />
													</div>
												</div>
												<div class="form-group row">
													<label for="bankGLHead" class="col-sm-4 control-label">Select
														G.L.Head </label>
													<div class="col-sm-8">
														<input name="selectGlHead" type="text" id="selectGlHead"
															class="form-control" Placeholder="Select G.L.Head"
															readonly="readonly" />
													</div>
													<div class="col-sm-8">
														<input name="glnoTransactionID" type="text"
															id="glnoTransactionID" class="form-control"
															readonly="readonly" style="display: none;" />

													</div>
												</div>
												<div class="form-group row">
													<label for="bankGLHead" class="col-sm-4 control-label">Account
														No <strong style="color: Red">*</strong>
													</label>
													<div class="col-sm-8">
														<input name="accountNo" type="text" id="accountNo"
															onchange="setthroughAccountNo();" class="form-control"
															Placeholder="Enter Account No" />
													</div>
												</div>
												<div class="form-group row">
													<label for="accountHolder" class="col-sm-4 control-label">Select
														Account Holder <strong style="color: Red">*</strong>
													</label>
													<div class="col-sm-8">
														<input name="selectAccountHolder" type="text"
															id="selectAccountHolder" class="form-control"
															Placeholder="Select Account Holder" readonly="readonly" />
													</div>
												</div>
											</div>
											<div class="col-md-6">
												<div class="form-group row">
													<label for="accountHolder" class="col-sm-4 control-label">Balance
													</label>
													<div class="col-sm-8">
														<input name="balance" type="text" id="balance"
															class="form-control" Placeholder="Enter Balance"
															readonly="readonly" />
													</div>
												</div>
												<div class="form-group row">
													<label for="accountHolder" class="col-sm-4 control-label">PAN-Aadhar
													</label>
													<div class="col-sm-8">
														<input name="panAadhar" type="text" id="panAadhar"
															class="form-control" Placeholder="Enter PAN-Aadhar" />
													</div>
												</div>
												<div class="form-group row">
													<label for="txtJointMemberName"
														class="col-sm-4 control-label">Amount(Rs.)<strong
															style="color: Red">*</strong>
													</label>
													<div class="col-sm-8">
														<input name="amount" type="text" id="amount"
															onchange="setTheValueOfINDemonination();"
															class="form-control" Placeholder="Enter Amount(Rs.)" />
													</div>
												</div>
												<div class="form-group row">
													<label for="txtJointMemberName"
														class="col-sm-4 control-label">Penalty Amount(Rs.) </label>
													<div class="col-sm-8">
														<input name="penaultyAmount" type="text" id="penaultyAmount"
															class="form-control"
															Placeholder="Enter Penaulty Amount(Rs.)" value"0" />
													</div>
												</div>
												<div class="form-group row">
													<label for="txtJointMemberName"
														class="col-sm-4 control-label">Scroll </label>
													<div class="col-sm-8">
														<input name="scroll" type="text" id="scroll"
															value="${ScrollNumber}" class="form-control"
															Placeholder="Enter Scroll" readonly="readonly" />
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
													<label class="col-sm-4 control-label">Special
														Instruction</label>
													<div class="col-sm-8">
														<textarea name="specialInstruction" id="specialInstruction"
															class="form-control"
															Placeholder="Enter Special Instruction">
                                        </textarea>
													</div>
												</div>
												<div class="form-group row">
													<label class="col-sm-4 control-label">Cashier's
														Narration</label>
													<div class="col-sm-8">
														<textarea name="cashierNarration" id="cashierNarration"
															class="form-control"
															Placeholder="Enter Cashier's Narration">
                                        </textarea>
													</div>
												</div>
												<div class="form-group row">
													<label for="txtJointMemberName"
														class="col-sm-4 control-label">Voucher No. </label>
													<div class="col-sm-8">
														<input name="voucherNo" type="text" id="voucherNo"
															class="form-control" Placeholder="Enter Voucher No" />
													</div>
												</div>
												<div class="row col-md-12">
													<input type="submit" name="nextButton" value="Next" id="nextButton"
														class="btn btn-success pull-right margin-r-5" />
													<input type="button" name="btnReset" value="Reset" id="resetBtn"
														class="btn btn-success pull-right margin-r-5"
														onclick="window.location.href='/cashier'" />

													<input onclick="saveDataCashier();" type="button" name="btnSave"
														value="Save" id="btnSave"
														class="btn btn-success pull-right margin-r-5" />
												</div>
											</div>
										</div>
									</div>
								</div>

						</section>

						<section>



						</section>

						<section class="content" id="section2" class="hidden">

							<h3 id="inOROutCash">Plz Select the Credit or Debit</h3>

							<div class="p-2 Cont">
								<div class="mainTable p-0">
									<table class="table tableCont table-bordered">
										<thead>
											<tr>
												<th scope="col" style="width: 100px;" class="text-center">Available
												</th>
												<th scope="col" style="width: 200px;" class="text-center">No.
													of Denomination</th>
												<th scope="col" style="width: 70px;" class="text-center">Amount
													(Rs.)</th>
												<th scope="col" style="width: 200px;" class="text-center">No.
													of Denomination</th>
												<th scope="col" style="width: 70px;" class="text-center">Amount
													(Rs.)</th>
												<th scope="col" style="width: 70px;" class="text-center">Balance
												</th>
											</tr>
										</thead>

										<body>
											<tr>
												<th scope="row" class="text-center">0</th>
												<td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<label>2000.00 *</label> <input type="number"
															class="tableinput ml-1" id="denomination_2000"
															oninput="calculateTotal()">
													</div>
												</td>

												<td style="font-weight: 600;" class="text-center">0</td>
												<!--<td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<label>2000.00 *</label> <input type="text"
															class="tableinput ml-1">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>
												<td style="font-weight: 600;" class="text-center">0</td> -->
											</tr>
											<tr>
												<th scope="row" class="text-center">0</th>
												<td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<label>1000.00 *</label> <input type="number"
															class="tableinput ml-1" id="denomination_1000"
															oninput="calculateTotal()">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>

												<!-- <td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<label>1000.00 *</label> <input type="text"
															class="tableinput ml-1">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>
												<td style="font-weight: 600;" class="text-center">0</td> -->
											</tr>
											<tr>
												<th scope="row" class="text-center">1568</th>
												<td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<label>500.00 *</label> <input type="number"
															class="tableinput ml-1" id="denomination_500"
															oninput="calculateTotal()">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>

												<!-- <td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<label>500.00 *</label> <input type="text"
															class="tableinput ml-1">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>
												<td style="font-weight: 600;" class="text-center">1568</td> -->
											</tr>
											<tr>

												<th scope="row" class="text-center">95</th>
												<td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>200.00 *</span> <input type="number"
															class="tableinput ml-1" id="denomination_200"
															oninput="calculateTotal()">
													</div>

												</td>
												<td style="font-weight: 600;" class="text-center">0</td>

												<!-- <td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>200.00 *</span> <input type="text"
															class="tableinput ml-1">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>
												<td style="font-weight: 600;" class="text-center">95</td> -->
											</tr>
											<tr>
												<th scope="row" class="text-center">188</th>
												<td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>100.00 *</span> <input type="number"
															class="tableinput ml-1" id="denomination_100"
															oninput="calculateTotal()">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>

												<!-- <td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>100.00 *</span> <input type="text"
															class="tableinput ml-1">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>
												<td style="font-weight: 600;" class="text-center">188</td> -->
											</tr>
											<tr>
												<th scope="row" class="text-center">54</th>
												<td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>50.00 *</span> <input type="number"
															class="tableinput ml-1" id="denomination_50"
															oninput="calculateTotal()">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>

												<!-- <td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>50.00 *</span> <input type="text" class="tableinput ml-1">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>
												<td style="font-weight: 600;" class="text-center">54</td> -->
											</tr>
											<tr>
												<th scope="row" class="text-center">124</th>
												<td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>20.00 *</span> <input type="number"
															class="tableinput ml-1" id="denomination_20"
															oninput="calculateTotal()">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>

												<!-- <td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>20.00 *</span> <input type="text" class="tableinput ml-1">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>
												<td style="font-weight: 600;" class="text-center">124</td> -->
											</tr>
											<tr>
												<th scope="row" class="text-center">38</th>
												<td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>10.00 *</span> <input type="number"
															class="tableinput ml-1" id="denomination_10"
															oninput="calculateTotal()">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>

												<!-- <td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>10.00 *</span> <input type="text" class="tableinput ml-1">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>
												<td style="font-weight: 600;" class="text-center">38</td> -->
											</tr>
											<tr>
												<th scope="row" class="text-center">1</th>
												<td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>5.00 *</span> <input type="number" class="tableinput ml-1"
															id="denomination_5" oninput="calculateTotal()">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>

												<!-- <td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>5.00 *</span> <input type="text" class="tableinput ml-1">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>
												<td style="font-weight: 600;" class="text-center">1</td> -->
											</tr>
											<tr>
												<th scope="row" class="text-center">1</th>
												<td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>2.00 *</span> <input type="number" class="tableinput ml-1"
															id="denomination_2" oninput="calculateTotal()">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>

												<!-- <td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>2.00 *</span> <input type="text" class="tableinput ml-1">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>
												<td style="font-weight: 600;" class="text-center">1</td> -->
											</tr>
											<tr>
												<th scope="row" class="text-center">1</th>
												<td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>1.00 *</span>
														<input type="number" class="tableinput ml-1" id="denomination_1"
															oninput="calculateTotal()">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>

												<!-- <td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>1.00 *</span> <input type="text" class="tableinput ml-1">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>
												<td style="font-weight: 600;" class="text-center">1</td> -->
											</tr>
											<tr>
												<th scope="row" class="text-center">0</th>
												<td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>Coins *</span> <input type="text" class="tableinput ml-1">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>

												<!-- <td class="d-flex justify-content-center" style="font-weight: 600;">
													<div class="labelinputs">
														<span>Coins *</span> <input type="text" class="tableinput ml-1">
													</div>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>
												<td style="font-weight: 600;" class="text-center">0</td> -->
											</tr>
											<tr>
												<th scope="row" class="text-center">Total</th>
												<td class="d-flex justify-content-center" style="font-weight: 600;">
													<span id="totalAmount">0</span>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td>
												<!-- <td class="d-flex justify-content-center" style="font-weight: 600;">
													<span>0</span>
												</td>
												<td style="font-weight: 600;" class="text-center">0</td> -->
											</tr>

									</table>
									<div class="container">
										<div class="row mb-3">
											<div
												class="col-12 col-lg-6 col-xl-3 col-md-6 d-flex justify-content-center flex-column">
												<div class="subbox pl-2 mt-2 mt-sm-0"
													style="background-color: rgb(239, 239, 239);">
													<span class="text-primary">Transaction Amount</span><br>
													<span id="transactionAmount">0</span>
												</div>
											</div>
											<div
												class="col-12 col-lg-6 col-xl-3 col-md-6 d-flex justify-content-center flex-column">
												<div class="subbox pl-2  mt-2 mt-sm-0"
													style="background-color: rgb(239, 239, 239);">
													<span class="text-primary">Difference</span><br>
													<span id="differenceAmount">0</span>
												</div>
											</div>
											<div
												class="col-12 col-lg-6 col-xl-3 col-md-6 d-flex justify-content-center flex-column">
											</div>
											<div
												class="col-12 col-lg-6 col-xl-3 col-md-6 d-flex justify-content-center flex-column">
												<div class="subbox" style="text-align: right;">
													<!-- <button class="btn mt-2 btn-primary">Trip</button> -->
													<button id="previousButton"
														class="btn mt-2 btn-primary">Back</button>
													<!-- <button >Previous</button> -->
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>


						</section>






						<section>

							<div class="col-md-12">
								<div class="box box-success" style="box-shadow: none; overflow: auto !important;">
									<div class="box-header with-border">
										<div class="box-tools pull-right"></div>
									</div>
									<div class="radio-buttons">
										<!--
									<label><input type="radio" name="cashier"
										value="lastTransction">Last Transaction</label> <label><input
										type="radio" name="cashier" value="allTransaction">All
										Transaction</label> <label><input type="radio" name="cashier"
										value="debitTransaction">Debit Transaction</label> <label><input
										type="radio" name="cashier" value="creditTransaction">Credit
										Transaction</label>
-->

										<label>

											<input type="radio" id="all" name="paymentType" value="all" checked> All
											<input type="radio" id="credit" name="paymentType" value="credit">
											Credit
											<input type="radio" id="debit" name="paymentType" value="debit"> Debit
										</label>
									</div>
									<div class="box-body">
										<div class="clearfix margin-bottom-10"></div>


										<!-- MODAL TABLE  -->


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
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" style="width: 100%; border-collapse: collapse;" id="dataTable">
											<thead>
												<tr style="color: White; background-color: #008385;">
													<th>Sr No</th>
													<th>Scroll No</th>
													<th>Entry Date</th>
													<th>Amount</th>
													<th>Payment Type</th>
													<th>Account Info</th>
													<th>Details</th>
													<th>User</th>
													<th>Denonimation</th>
													<th>Delete</th>

												</tr>
											</thead>
											<tbody>
											</tbody>
										</table>

									</div>
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


				</section>



				<!-- <script type="text/javascript">
    // Call the function to fetch the maximum member number when the page loads
    $(document).ready(function() {
        fetchMaxbranchNo();
    });

    // $.get('/SocietyManagement/fetchMaxMemberNo', function(data)
    function fetchMaxbranchNo() {
        $.get('/fetchBranchNo', function(data) {
            var branchNoInput = document.getElementById("branchNo");
            branchNoInput.value = data + 1;
        });
    }
	</script> -->
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
				<!-- <script src="plugins/timepicker/bootstrap-timepicker.min.js"></script> -->
				<!-- SlimScroll -->
				<script src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
				<!-- iCheck 1.0.1 -->
				<!-- <script src="plugins/iCheck/icheck.min.js"></script> -->
				<!-- FastClick -->
				<script src="bower_components/fastclick/lib/fastclick.js"></script>
				<!-- AdminLTE App -->
				<script src="dist/js/adminlte.min.js"></script>
				<!-- AdminLTE for demo purposes -->
				<script src="dist/js/demo.js"></script>
				<!-- <script src="dist/js/GetAllBranch.js"></script> -->
				<!-- <script src="dist/js/cashier.js"></script> -->
				<!-- <script src="dist/js/accountingJs.js"></script>  -->

				<!-- Optional JavaScript -->
				<!-- jQuery first, then Popper.js, then Bootstrap JS -->
				<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
					integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
					crossorigin="anonymous"></script>
				<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js"
					integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
					crossorigin="anonymous"></script>
				<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
					integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
					crossorigin="anonymous"></script>
				<script> -->


				<script src="dist/js/NewAccountInvestment.js"></script>


				<!-- Select2 -->
				<script src="bower_components/select2/dist/js/select2.full.min.js"></script>

				<script>


					const section1 = document.getElementById('section1');
					const section2 = document.getElementById('section2');
					const previousButton = document.getElementById('previousButton');
					const nextButton = document.getElementById('nextButton');

					// Function to hide a section
					function hideSection(section) {
						section.classList.add('hidden');
					}

					// Function to show a section
					function showSection(section) {
						section.classList.remove('hidden');
					}

					// Initial state
					hideSection(section2);
					showSection(section1);

					// Event listener for the "Next" button
					nextButton.addEventListener('click', function () {
						hideSection(section1);
						showSection(section2);


					});

					// Event listener for the "Previous" button
					previousButton.addEventListener('click', function () {
						hideSection(section2);
						showSection(section1);

					});


					// Prevent the default form submission behavior
					nextButton.addEventListener('click', function (event) {
						event.preventDefault();
					});

					previousButton.addEventListener('click', function (event) {
						event.preventDefault();
					});


				</script>

				<script>


					$(document).ready(function () {
						// Fetch JSON data from /FetchAllNewGLGroupNo API
						$.ajax({
							url: '/fetchAllNewGlHead',
							method: 'POST',
							dataType: 'json',
							success: function (data) {
								// Populate the accountGroup dropdown
								const glHeadNo = $('#glHeadNo');


								// Handle selection change in accountGroup dropdown
								glHeadNo.on('change', function () {
									const selectedAccountGroup = $(this).val();
									const selectedItem = data.find(item => item.glHeadNo === selectedAccountGroup);

									if (selectedItem) {
										// Update the primaryGroup and primarySubGroup input fields


										$('#selectGlHead').val(selectedItem.glHeadName);
										$('#accountNo').val(selectedItem.gLGroupNo);

										if (selectedItem.accountTypecheckBox === "commonAccount") {
											$('#accountNo').val(1);
										}
										if (selectedItem.accountTypecheckBox === "branchAccount") {
											$('#accountNo').val(1);
										}

										$('#selectAccountHolder').val(selectedItem.organization);
									} else {
										// Update the primaryGroup and primarySubGroup input fields


										$('#selectGlHead').val("");
										$('#accountNo').val("");



										$('#selectAccountHolder').val("");

									}
								});
							},
							error: function () {
								console.log('Error fetching data from /FetchAllNewGLGroupNo');
							}
						});
					});

				</script>


				<script>


					$(document).ready(function () {
						// Fetch JSON data from /innerJoinNewHeadCashier API
						$.ajax({
							url: '/innerJoinNewHeadCashier',
							method: 'GET',
							dataType: 'json',
							success: function (data) {
								// Populate the accountGroup dropdown
								const glHeadNo = $('#glHeadNo');

								// Handle selection change in accountGroup dropdown
								glHeadNo.on('change', function () {
									const selectedAccountGroup = $(this).val();
									const selectedItem = data.find(item => item.glHeadNo === selectedAccountGroup);

									if (selectedItem) {
										// If a matching glHeadNo is found in the data
										$('#balance').val(selectedItem.balance);
									} else {
										// If no matching glHeadNo is found, reset the field
										$('#balance').val("");
									}
								});
							},
							error: function () {
								console.log('Error fetching data from /innerJoinNewHeadCashier');
							}
						});
					});

				</script>





				<script>

					function saveDataCashier() {


						var proceed = confirm("Do you want to save?");

						if (proceed) {

							var selectedValue = document.querySelector('input[name="payment123"]:checked');


							if (selectedValue === null) {
								// Return or use the selected value
								return alert("PLz Select the Cash Or Bank.......");
							}

							if (selectedValue.value === "credit") {


								// Get input values
								var branchCode = $("#branchCode").val();
								var selectBranch = $("#selectBranch").val();
								var glHeadNo = $("#glHeadNo").val();
								var entryDate = $("#entryDate").val();
								var scroll = $("#scroll").val();
								var balance = $("#balance").val();
								var payment = $("input[name='payment123']:checked").val();

								var pendingTransaction = $("#pendingTransaction").val();
								var selectGlHead = $("#selectGlHead").val();
								var accountNo = $("#accountNo").val();
								var selectAccountHolder = $("#selectAccountHolder").val();
								var panAadhar = $("#panAadhar").val();
								var amount = $("#amount").val();
								var penaultyAmount = $("#penaultyAmount").val();
								var specialInstruction = $("#specialInstruction").val();

								var glnoTransactionID = $("#glnoTransactionID").val();



								var cashierNarration = $("#cashierNarration").val();
								var voucherNo = $("#voucherNo").val();
								var inOROutCash = document.getElementById("inOROutCash").textContent.trim();

								var totalAmountValue = document.getElementById("totalAmount").textContent;
								var amountValue = document.getElementById("amount").value;

								// console.log(totalAmountValue)
								// console.log(amountValue)
								// console.log(parseInt(totalAmountValue) !== parseInt(amountValue))

								var denomination2000 = parseInt(document.getElementById("denomination_2000").value) || 0;
								var denomination1000 = parseInt(document.getElementById("denomination_1000").value) || 0;
								var denomination500 = parseInt(document.getElementById("denomination_500").value) || 0;
								var denomination200 = parseInt(document.getElementById("denomination_200").value) || 0;
								var denomination100 = parseInt(document.getElementById("denomination_100").value) || 0;
								var denomination50 = parseInt(document.getElementById("denomination_50").value) || 0;
								var denomination20 = parseInt(document.getElementById("denomination_20").value) || 0;
								var denomination10 = parseInt(document.getElementById("denomination_10").value) || 0;
								var denomination5 = parseInt(document.getElementById("denomination_5").value) || 0;
								var denomination2 = parseInt(document.getElementById("denomination_2").value) || 0;
								var denomination1 = parseInt(document.getElementById("denomination_1").value) || 0;

								// Check if any field is empty
								if (branchCode === "" || branchCode === undefined) {
									return alert("Branch Code is required.....");
								} else if (selectBranch === "" || selectBranch === undefined) {
									return alert("Select Branch is required.....");
								} else if (glHeadNo === "" || glHeadNo === undefined) {
									return alert("Gl Head No is required.....");
								} else if (entryDate === "" || entryDate === undefined) {
									return alert("Entry Date is required.....");
								} else if (scroll === "" || scroll === undefined) {
									return alert("Scroll is required.....");
								} else if (payment === "" || payment === undefined) {
									return alert("Payment is required.....");
								} else if (pendingTransaction === "" || pendingTransaction === undefined) {
									return alert("Pending Transaction is required.....");
								} else if (selectGlHead === "" || selectGlHead === undefined) {
									return alert("Select Gl Head is required.....");
								} else if (accountNo === "" || accountNo === undefined) {
									return alert("Account No is required.....");
								} else if (selectAccountHolder === "" || selectAccountHolder === undefined) {
									return alert("Select Account Holder is required.....");
								} else if (panAadhar === "" || panAadhar === undefined) {
									return alert("Pan Adhar is required.....");
								} else if (amount === "" || amount === undefined) {
									return alert("Amount is required.....");
								} else if (penaultyAmount === "" || penaultyAmount === undefined) {
									return alert("Penalty Amount is required.....");
								} else if (specialInstruction === "" || specialInstruction === undefined) {
									return alert("Special Instruction is required.....");
								} else if (cashierNarration === "" || cashierNarration === undefined) {
									return alert("Cashier Narration is required.....");
								} else if (!totalAmountValue && amountValue) {
									return alert("Total Amount is missing. Please check the Denomination......");
								} else if (parseInt(totalAmountValue) !== parseInt(amountValue)) {
									return alert("Total Amount and Amount do not match. Please check the Denomination......");
								}




								// Prepare data for AJAX
								var data = {
									"branchCode": branchCode,
									"selectBranch": selectBranch,
									"glHeadNo": glHeadNo,
									"entryDate": entryDate,
									"scroll": scroll,
									"balance": balance,
									"payment": payment,
									"pendingTransaction": pendingTransaction,
									"selectGlHead": selectGlHead,
									"accountNo": accountNo,
									"selectAccountHolder": selectAccountHolder,
									"panAadhar": panAadhar,
									"amount": amount,
									"penaultyAmount": penaultyAmount,
									"specialInstruction": specialInstruction,
									"cashierNarration": cashierNarration,
									"voucherNo": voucherNo,
									"glnoTransactionID": glnoTransactionID,
									"denominationCash": JSON.stringify([{
										"cashierType": inOROutCash,
										"denomination": [
											{ "amount": 2000, "denominationNum": denomination2000, "value": 2000 * denomination2000 },
											{ "amount": 1000, "denominationNum": denomination1000, "value": 1000 * denomination1000 },
											{ "amount": 500, "denominationNum": denomination500, "value": 500 * denomination500 },
											{ "amount": 200, "denominationNum": denomination200, "value": 200 * denomination200 },
											{ "amount": 100, "denominationNum": denomination100, "value": 100 * denomination100 },
											{ "amount": 50, "denominationNum": denomination50, "value": 50 * denomination50 },
											{ "amount": 20, "denominationNum": denomination20, "value": 20 * denomination20 },
											{ "amount": 10, "denominationNum": denomination10, "value": 10 * denomination10 },
											{ "amount": 5, "denominationNum": denomination5, "value": 5 * denomination5 },
											{ "amount": 2, "denominationNum": denomination2, "value": 2 * denomination2 },
											{ "amount": 1, "denominationNum": denomination1, "value": 1 * denomination1 },

										]
									}
									])



								};



								console.log(data)
								console.log(JSON.stringify(data))




								// Send AJAX request
								$.ajax({
									type: "POST",
									url: "savetheCashier",
									contentType: "application/json",
									data: JSON.stringify(data),
									success: function (data) {
										// Display success message

										alert(data);

										// Redirect to another API or URL
										window.location.href = 'cashier';

									},
									error: function (xhr, status, error) {
										console.error("An error occurred:", error);
										// Handle any errors here
									}
								});


							} else if (selectedValue.value === "debit") {

								alert("Im From Debit................")

								// Get input values
								var branchCode = $("#branchCode").val();
								var selectBranch = $("#selectBranch").val();
								var glHeadNo = $("#glHeadNo").val();
								var entryDate = $("#entryDate").val();
								var scroll = $("#scroll").val();
								var balance = $("#balance").val();
								var payment = $("input[name='payment123']:checked").val();

								var pendingTransaction = $("#pendingTransaction").val();
								var selectGlHead = $("#selectGlHead").val();
								var accountNo = $("#accountNo").val();
								var selectAccountHolder = $("#selectAccountHolder").val();
								var panAadhar = $("#panAadhar").val();
								var amount = $("#amount").val();
								var penaultyAmount = $("#penaultyAmount").val();
								var specialInstruction = $("#specialInstruction").val();

								var glnoTransactionID = $("#glnoTransactionID").val();



								var cashierNarration = $("#cashierNarration").val();
								var voucherNo = $("#voucherNo").val();
								var inOROutCash = document.getElementById("inOROutCash").textContent.trim();

								var totalAmountValue = document.getElementById("totalAmount").textContent;
								var amountValue = document.getElementById("amount").value;


								var denomination2000 = parseInt(document.getElementById("denomination_2000").value) || 0;
								var denomination1000 = parseInt(document.getElementById("denomination_1000").value) || 0;
								var denomination500 = parseInt(document.getElementById("denomination_500").value) || 0;
								var denomination200 = parseInt(document.getElementById("denomination_200").value) || 0;
								var denomination100 = parseInt(document.getElementById("denomination_100").value) || 0;
								var denomination50 = parseInt(document.getElementById("denomination_50").value) || 0;
								var denomination20 = parseInt(document.getElementById("denomination_20").value) || 0;
								var denomination10 = parseInt(document.getElementById("denomination_10").value) || 0;
								var denomination5 = parseInt(document.getElementById("denomination_5").value) || 0;
								var denomination2 = parseInt(document.getElementById("denomination_2").value) || 0;
								var denomination1 = parseInt(document.getElementById("denomination_1").value) || 0;

								// Check if any field is empty
								if (branchCode === "" || branchCode === undefined) {
									return alert("Branch Code is required.....");
								} else if (selectBranch === "" || selectBranch === undefined) {
									return alert("Select Branch is required.....");
								} else if (glHeadNo === "" || glHeadNo === undefined) {
									return alert("Gl Head No is required.....");
								} else if (entryDate === "" || entryDate === undefined) {
									return alert("Entry Date is required.....");
								} else if (scroll === "" || scroll === undefined) {
									return alert("Scroll is required.....");
								} else if (payment === "" || payment === undefined) {
									return alert("Payment is required.....");
								} else if (pendingTransaction === "" || pendingTransaction === undefined) {
									return alert("Pending Transaction is required.....");
								} else if (selectGlHead === "" || selectGlHead === undefined) {
									return alert("Select Gl Head is required.....");
								} else if (accountNo === "" || accountNo === undefined) {
									return alert("Account No is required.....");
								} else if (selectAccountHolder === "" || selectAccountHolder === undefined) {
									return alert("Select Account Holder is required.....");
								} else if (panAadhar === "" || panAadhar === undefined) {
									return alert("Pan Adhar is required.....");
								} else if (amount === "" || amount === undefined) {
									return alert("Amount is required.....");
								} else if (penaultyAmount === "" || penaultyAmount === undefined) {
									return alert("Penalty Amount is required.....");
								} else if (specialInstruction === "" || specialInstruction === undefined) {
									return alert("Special Instruction is required.....");
								} else if (cashierNarration === "" || cashierNarration === undefined) {
									return alert("Cashier Narration is required.....");
								} else if (!totalAmountValue && amountValue) {
									return alert("Total Amount is missing. Please check the Denomination......");
								} else if (parseInt(totalAmountValue) !== parseInt(amountValue)) {
									return alert("Total Amount and Amount do not match. Please check the Denomination......");
								}




								// Prepare data for AJAX
								var data = {
									"branchCode": branchCode,
									"selectBranch": selectBranch,
									"glHeadNo": glHeadNo,
									"entryDate": entryDate,
									"scroll": scroll,
									"balance": balance,
									"payment": payment,
									"pendingTransaction": pendingTransaction,
									"selectGlHead": selectGlHead,
									"accountNo": accountNo,
									"selectAccountHolder": selectAccountHolder,
									"panAadhar": panAadhar,
									"amount": amount,
									"penaultyAmount": penaultyAmount,
									"specialInstruction": specialInstruction,
									"cashierNarration": cashierNarration,
									"voucherNo": voucherNo,
									"glnoTransactionID": glnoTransactionID,
									"denominationCash": JSON.stringify([{
										"cashierType": inOROutCash,
										"denomination": [
											{ "amount": 2000, "denominationNum": denomination2000, "value": 2000 * denomination2000 },
											{ "amount": 1000, "denominationNum": denomination1000, "value": 1000 * denomination1000 },
											{ "amount": 500, "denominationNum": denomination500, "value": 500 * denomination500 },
											{ "amount": 200, "denominationNum": denomination200, "value": 200 * denomination200 },
											{ "amount": 100, "denominationNum": denomination100, "value": 100 * denomination100 },
											{ "amount": 50, "denominationNum": denomination50, "value": 50 * denomination50 },
											{ "amount": 20, "denominationNum": denomination20, "value": 20 * denomination20 },
											{ "amount": 10, "denominationNum": denomination10, "value": 10 * denomination10 },
											{ "amount": 5, "denominationNum": denomination5, "value": 5 * denomination5 },
											{ "amount": 2, "denominationNum": denomination2, "value": 2 * denomination2 },
											{ "amount": 1, "denominationNum": denomination1, "value": 1 * denomination1 },

										]
									}
									])



								};


								console.log(data)

								const data2 = [];

								function generateTransactionId() {
									const timestamp = new Date().getTime(); // Get current timestamp
									const randomNum = Math.floor(Math.random() * 1000000); // Generate a random number
									const transactionId = timestamp + "" + randomNum; // Combine timestamp and random number

									return transactionId;
								}

								// Example usage
								const uniqueTransactionId = generateTransactionId();



								const credit = {
									entryDate: entryDate,
									voucherNo: scroll,
									accountNo: accountNo,
									amount: amount,
									glHeadNo: glHeadNo,
									selectAccountHolder: selectAccountHolder,
									selectGlHead: selectGlHead,
									details: specialInstruction,
									transactionType: payment,
									instrumentType: "Slip",
									bankId: glnoTransactionID,
									uniqueTransactionId: uniqueTransactionId,
									module: "Payment",
									moduleType: "Dr" + scroll,
									denominationCash: JSON.stringify([{
										"cashierType": inOROutCash,
										"denomination": [
											{ "amount": 2000, "denominationNum": denomination2000, "value": 2000 * denomination2000 },
											{ "amount": 1000, "denominationNum": denomination1000, "value": 1000 * denomination1000 },
											{ "amount": 500, "denominationNum": denomination500, "value": 500 * denomination500 },
											{ "amount": 200, "denominationNum": denomination200, "value": 200 * denomination200 },
											{ "amount": 100, "denominationNum": denomination100, "value": 100 * denomination100 },
											{ "amount": 50, "denominationNum": denomination50, "value": 50 * denomination50 },
											{ "amount": 20, "denominationNum": denomination20, "value": 20 * denomination20 },
											{ "amount": 10, "denominationNum": denomination10, "value": 10 * denomination10 },
											{ "amount": 5, "denominationNum": denomination5, "value": 5 * denomination5 },
											{ "amount": 2, "denominationNum": denomination2, "value": 2 * denomination2 },
											{ "amount": 1, "denominationNum": denomination1, "value": 1 * denomination1 },

										]
									}
									]),


								};


								data2.push(credit);


								const debit = {

									entryDate: entryDate,
									voucherNo: scroll,
									accountNo: "1",
									amount: amount,
									glHeadNo: "11",
									selectAccountHolder: "{H.O}",
									selectGlHead: "Cash",
									details: specialInstruction,
									transactionType: payment,
									instrumentType: "Slip",
									bankId: "UNIQUE_ID_1703095181710",
									uniqueTransactionId: uniqueTransactionId,
									module: "Payment1",
									moduleType: "Dr" + scroll,
								};

								data2.push(debit);

								//console.log(data2)

								document.getElementById("btnSave").disabled = true;
								// Send AJAX request
								$.ajax({
									type: "POST",
									url: "/savetheCashier",
									contentType: "application/json",
									data: JSON.stringify(data),
									success: function (data) {
										// Display success message

										//alert(data);

										// Redirect to another API or URL
										//window.location.href = 'cashier';

									},
									error: function (data) {
										// Handle any errors here
									}
								});




								$.ajax({
									type: "POST",
									contentType: "application/json",
									url: '/saveReceipt',
									data: JSON.stringify(data2),
									success: function (response) {
										alert(response);
										window.location.href = "cashier";
									},
									error: function (error) {
										alert("Error while saving data");
									}
								});


							} else {

								return;
							}



						}
					}

				</script>

				<script>
					$(document).ready(function () {

						getInTheTable();
					});

					function getInTheTable() {
						$.ajax({
							type: "POST",
							url: "/fetchAllCashier",
							contentType: "application/json",
							success: function (jsonData) {
								//alert(jsonData);
								// Display success message

								const dataTable = document.getElementById("dataTable"); // Use the correct ID
								const radioButtons = document.getElementsByName("paymentType");

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

								function getSelectedPaymentType() {
									for (const radio of radioButtons) {
										if (radio.checked) {
											return radio.value;
										}
									}
									return "all"; // Default to "All" if nothing is selected
								}

								function filterDataByPaymentType(data, paymentType) {
									if (paymentType === "all") {
										return data;
									}
									return data.filter(item => item.payment === paymentType);
								}

								function populateTable(data) {
									const tableBody = dataTable.querySelector("tbody");
									tableBody.innerHTML = "";
									var fullName = '<%= session.getAttribute("fullName") %>';

									data.forEach((item, index) => {
										const row = tableBody.insertRow();
										row.insertCell(0).textContent = index + 1; // SR No

										row.insertCell(1).textContent = item.scroll;
										row.insertCell(2).textContent = item.entryDate;
										row.insertCell(3).textContent = item.amount;
										row.insertCell(4).textContent = item.payment;
										row.insertCell(5).textContent = item.glHeadNo + "/" + item.accountNo + "-Cash/" + item.selectBranch;
										row.insertCell(6).textContent = item.cashierNarration;
										row.insertCell(7).textContent = "admin";

										//${JSON.stringify(item.denominationCash)}
										var modelButton = row.insertCell(8);
										modelButton.innerHTML = `<button type="button" onclick="populateTableModal(` + JSON.stringify(item.denominationCash).replace(/"/g, "&quot;") + `)"
                         id="launchModalBtn" class="btn btn-primary" data-toggle="modal" data-target="#exampleModalCenter">Denomination</button>`;

										// Call the function to populate the table when the button is clicked
										// document.getElementById("launchModalBtn").addEventListener("click", function () {
										// 	populateTableModal(item.denominationCash);
										// });



										//Delete

										const specialInstructionCell = row.insertCell(9);
										const link = document.createElement("a");
										link.href = "javascript:void(0)"; // A dummy href
										link.textContent = "Delete";
										link.onclick = function () {
											deleteItem(item.id); // Call your delete function with the item's ID
										};
										specialInstructionCell.appendChild(link);

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







					function deleteItem(itemId) {


						var data = {
							"id": itemId
						};
						$.ajax({
							type: "POST",
							url: "/deleteByID",
							contentType: "application/json",
							data: JSON.stringify(data),
							success: function (data) {

								alert(data);

								// Redirect to another API or URL
								window.location.href = 'cashier';

							},
							error: function (data) {
								// Handle any errors here
							}
						});


					}


				</script>

				<script>
					function getTheValueInFields2() {

						const glHeadNo = document.getElementById("glHeadNo").value;



						$.ajax({
							type: "POST",
							contentType: "application/json",
							url: 'fetchAllNewGlHead',
							success: function (data) {


								const cbiObject = data.find(obj => obj.glHeadNo === parseInt(glHeadNo));

								if (cbiObject && cbiObject.module === 'Accounting') {
									alert("you selected the Accounting");
									// // Append the value to the input tag
									// document.getElementById("branchCode").value = '1';
									// //document.getElementById("glHeadNo").value = cbiObject.glHeadNo;
									// document.getElementById("selectGlHead").value = cbiObject.glHeadName;
									// document.getElementById("accountNo").value = cbiObject.accountValue;

									// document.getElementById("searchAccountHolder").value = cbiObject.selectAccountHolder;
									// document.getElementById("selectAccountHolder").value = cbiObject.selectAccountHolder;
									// document.getElementById("balance").value = cbiObject.balance;
									// document.getElementById("inFavourOf").value = cbiObject.selectAccountHolder;
									// //document.getElementById("unclearBalance").value = cbiObject.balance;



									// const branchCodeDropdown = document.getElementById("creditBank");

									// // Clear existing options in the dropdown
									// branchCodeDropdown.innerHTML = '';

									// // Append a new option
									// const newOption = document.createElement("option");
									// newOption.value = cbiObject.uniqueId;
									// newOption.text = 'H.O';
									// branchCodeDropdown.appendChild(newOption);

								} else if (cbiObject && cbiObject.module === 'New Scheme') {
									alert("You selected the new Scheme GL no Plz enter the Account No ")
									document.getElementById("selectGlHead").value = cbiObject.glHeadName;


									// var accountNoField = document.getElementById("accountNo");
									// accountNoField.readOnly = false;

									// document.getElementById("accountNo").value = '';

									// document.getElementById("searchAccountHolder").value = '';
									// document.getElementById("selectAccountHolder").value = '';
									// document.getElementById("balance").value = '';
									// document.getElementById("inFavourOf").value = '';



								} else {
									// // If bankID is not null, return from the function or perform other actions

									// document.getElementById("branchCode").value = '';
									// //document.getElementById("glHeadNo").value = cbiObject.glHeadNo;
									// document.getElementById("selectGlHead").value = '';
									// document.getElementById("accountNo").value = '';

									// document.getElementById("searchAccountHolder").value = '';
									// document.getElementById("selectAccountHolder").value = '';
									// document.getElementById("balance").value = '';
									// document.getElementById("inFavourOf").value = '';
									// //document.getElementById("unclearBalance").value = cbiObject.balance;



									// const branchCodeDropdown = document.getElementById("creditBank");

									// // Clear existing options in the dropdown
									// branchCodeDropdown.innerHTML = '';

									// // Append a new option
									// const newOption = document.createElement("option");
									// newOption.value = '';
									// newOption.text = '';
									// branchCodeDropdown.appendChild(newOption);
									return alert("Plz enter the Correct Gl no !!!!");
								}



							},
							error: function () {
								alert("Device control failed");
							}
						});
					}

				</script>

				<script>
					function setthroughAccountNo() {

						const accountNo = document.getElementById("accountNo").value;

						$.ajax({
							type: "POST",
							contentType: "application/json",
							url: 'FetchAllNewSavingAccount',
							success: function (data) {

								const cbiObject = data.find(obj => obj.accountNo === parseInt(accountNo));



								if (cbiObject != null) {
									document.getElementById("selectAccountHolder").value = cbiObject.clientName;
									document.getElementById("balance").value = cbiObject.mainBalance;
									document.getElementById("glnoTransactionID").value = cbiObject.uniqueId;

									document.getElementById("panAadhar").value = '625478965411166';
									document.getElementById("penaultyAmount").value = '0';


								} else {
									return alert("Wrong Account Number");
								}



							},
							error: function () {
								alert("Device control failed");
							}
						});

					}
				</script>

				<script>
					function setTheValueOfINDemonination() {
						const amount = document.getElementById("amount");

						if (amount !== null) {
							const amountValue = amount.value;
							document.getElementById("transactionAmount").innerText = amountValue;
							document.getElementById("differenceAmount").innerText = amountValue;
						}
					}

				</script>


				<script>
					function calculateTotal() {
						var total = 0;
						var denomination2000 = parseInt(document.getElementById("denomination_2000").value) || 0;
						var denomination1000 = parseInt(document.getElementById("denomination_1000").value) || 0;
						var denomination500 = parseInt(document.getElementById("denomination_500").value) || 0;
						var denomination200 = parseInt(document.getElementById("denomination_200").value) || 0;
						var denomination100 = parseInt(document.getElementById("denomination_100").value) || 0;
						var denomination50 = parseInt(document.getElementById("denomination_50").value) || 0;
						var denomination20 = parseInt(document.getElementById("denomination_20").value) || 0;
						var denomination10 = parseInt(document.getElementById("denomination_10").value) || 0;
						var denomination5 = parseInt(document.getElementById("denomination_5").value) || 0;
						var denomination2 = parseInt(document.getElementById("denomination_2").value) || 0;
						var denomination1 = parseInt(document.getElementById("denomination_1").value) || 0;

						total += (2000 * denomination2000) +
							(1000 * denomination1000) +
							(500 * denomination500) +
							(200 * denomination200) +
							(100 * denomination100) +
							(50 * denomination50) +
							(20 * denomination20) +
							(10 * denomination10) +
							(5 * denomination5) +
							(2 * denomination2) +
							(1 * denomination1);

						// Update the total amount in the table
						document.getElementById("totalAmount").textContent = total;
					}


				</script>

				<script>
					function onchangeTheRadioButton() {
						const credit = document.getElementById("credit");
						const debit = document.getElementById("debit");
						const inOROutCash = document.getElementById("inOROutCash");

						if (credit.checked) {
							inOROutCash.innerHTML = "IN";
						} else if (debit.checked) {
							inOROutCash.innerHTML = "OUT";
						}
					}
				</script>

				<script>

					$(document).ready(function () {
						// Add an event listener to the radio buttons
						$("input[name='payment123']").change(function () {
							var selectedValue = $(this).val();
							var $selectBank = $("#pendingTransaction");

							// Clear the existing options in the dropdown
							$selectBank.empty();




							// Check the selected value
							if (selectedValue === "debit") {

								$selectBank.empty();

								// Get a reference to the select element
								var selectElement = document.getElementById("pendingTransaction");
								selectElement.innerHTML = "";

								selectElement.disabled = false;

								dropDownForPendingTransaction();




							} else if (selectedValue === "credit") {

								$selectBank.empty();

								$selectBank.append('<option value="OTHERS">OTHERS</option>');

								// Get a reference to the select element
								var selectElement = document.getElementById("pendingTransaction");
								//selectElement.innerHTML = "";

								selectElement.disabled = true;
							}

						});
					}); 
				</script>

				<script>
					function dropDownForPendingTransaction() {
						$.ajax({
							type: "GET",
							contentType: "application/json",
							url: 'fetchAllPayment',
							async: false,
							success: function (data) {
								var appenddata1 = "";
								appenddata1 += "<option selected='selected' value='select'>select</option>";
								for (var i = 0; i < data.length; i++) {
									if (data[i].flag == "0" && data[i].transactionType == "debit") {
										appenddata1 += "<option value ='" + data[i].transactionId + "'>" + data[i].voucherNo + "/" + data[i].glNo +
											"/" + data[i].accountNo + "/" + data[i].transactionAmount + "/" + data[i].selectAccountHolder +
											"</option>";
									}
								}
								$("#pendingTransaction").append(appenddata1);

								// Add an event listener for the change event on the dropdown
								$("#pendingTransaction").on("change", function () {
									// Get the selected value
									var selectedValue = $(this).val();




									$.ajax({
										type: "GET",
										contentType: "application/json",
										url: 'fetchAllPayment',
										success: function (data) {

											const cashObj = data.find(obj => obj.transactionId === selectedValue);

											if (cashObj != null && cashObj != undefined) {
												document.getElementById("glHeadNo").value = cashObj.glNo;
												document.getElementById("accountNo").value = cashObj.accountNo;
												document.getElementById("selectAccountHolder").value = cashObj.selectAccountHolder;
												document.getElementById("balance").value = cashObj.balance;
												document.getElementById("panAadhar").value = "454587556954444";
												document.getElementById("amount").value = cashObj.transactionAmount;
												document.getElementById("specialInstruction").value = cashObj.narration;
												document.getElementById("penaultyAmount").value = cashObj.unclearBalance;

												document.getElementById("selectGlHead").value = cashObj.selectHeadGl;
												document.getElementById("glnoTransactionID").value = cashObj.glNoUniqueId;





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
				</script>
			</body>
			<!-- Dk/Admin/ShareIssue.aspx?ismodify=false EDB D 09:26:56 GMT -->

			</html>