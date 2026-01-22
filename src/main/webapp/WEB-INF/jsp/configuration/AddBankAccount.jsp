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
<body onload="getAllBranchMasterForAddBank();getAllAddedBank()"
	class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="saveBankAccount"
		modelAttribute="saveBankAccount" id="form1" name="addBank">
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
						<b>CUSTOMIZATION</b>
					</h1>
					<h5 style="margin-left: 18px;">MANAGE BANK</h5>

				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="form-container">
								<div class="box-header ">
									<h3 class="box-title">BANK DETAILS</h3>
								</div>
								<div class="box-body">
									<div class="col-md-12" style="margin-top: 15px;">
										<div class="col-md-4">
											<label>BANK NAME :</label> <select name="bankName"
												id="bankName" class="form-control select2"
												style="width: 100%;">
												<option value="" selected>SELECT BANK NAME</option>
												<option value="Au Small Finance Bank">Au Small
													Finance Bank</option>
												<option value="Axis Bank">Axis Bank</option>
												<option value="Bandhan Bank">Bandhan Bank</option>
												<option value="Bank of Bahrain and Kuwait">Bank of
													Bahrain and Kuwait</option>
												<option value="Bank of Baroda">Bank of Baroda</option>
												<option value="Bank of India">Bank of India</option>
												<option value="Bank of Maharashtra">Bank of
													Maharashtra</option>
												<option value="Bhartiya Mahila Bank">Bhartiya
													Mahila Bank</option>
												<option value="buxar gramin Bank">buxar gramin Bank</option>
												<option value="Canara Bank">Canara Bank</option>
												<option value="Catholic Syrian Bank">Catholic
													Syrian Bank</option>
												<option value="Central Bank of India">Central Bank
													of India</option>
												<option value="Citibank">Citibank</option>
												<option value="City Union Bank">City Union Bank</option>
												<option value="Corporation Bank">Corporation Bank</option>
												<option value="Cosmos Bank">Cosmos Bank</option>
												<option value="DCB BANK Business">DCB BANK Business</option>
												<option value="DCB BANK Personal">DCB BANK Personal</option>
												<option value="Deutsche Bank">Deutsche Bank</option>
												<option value="Dhanlaxmi Bank">Dhanlaxmi Bank</option>
												<option value="Federal Bank">Federal Bank</option>
												<option value="HDFC Bank Limited">HDFC Bank Limited</option>
												<option value="ICICI Bank">ICICI Bank</option>
												<option value="IDBI Bank">IDBI Bank</option>
												<option value="Indian Bank">Indian Bank</option>
												<option value="Indian Overseas Bank">Indian
													Overseas Bank</option>
												<option value="IndusInd Bank">IndusInd Bank</option>
												<option value="ING Vysya Bank (Now Kotak Bank)">ING
													Vysya Bank (Now Kotak Bank)</option>
												<option value="Jammu and Kashmir Bank">Jammu and
													Kashmir Bank</option>
												<option value="Jana Small Finance Bank">Jana Small
													Finance Bank</option>
												<option value="Janata Sahakari Bank">Janata
													Sahakari Bank</option>
												<option value="Karnataka Bank">Karnataka Bank</option>
												<option value="Karur Vysya Bank">Karur Vysya Bank</option>
												<option value="Kotak Bank">Kotak Bank</option>
												<option value="Lakshmi Vilas Bank">Lakshmi Vilas
													Bank</option>
												<option value="Maharashtra Co-operative">Maharashtra
													Co-operative</option>
												<option value="NKGSB Bank">NKGSB Bank</option>
												<option value="Oriental Bank of Commerce">Oriental
													Bank of Commerce</option>
												<option value="Punjab and Sind Bank">Punjab and
													Sind Bank</option>
												<option value="Punjab National Bank">Punjab
													National Bank</option>
												<option value="Ratnakar Bank">Ratnakar Bank</option>
												<option value="RBL Bank">RBL Bank</option>
												<option value="RBS (The Royal Bank of Scotland)">RBS
													(The Royal Bank of Scotland)</option>
												<option value="Saraswat Bank">Saraswat Bank</option>
												<option value="South Indian Bank Ltd">South Indian
													Bank Ltd</option>
												<option value="Standard Chartered Bank">Standard
													Chartered Bank</option>
												<option value="State Bank of Bikaner and Jaipur">State
													Bank of Bikaner and Jaipur</option>
												<option value="State Bank of Hyderabad">State Bank
													of Hyderabad</option>
												<option value="State Bank of India">State Bank of
													India</option>
												<option value="State Bank of Mysore">State Bank of
													Mysore</option>
												<option value="State Bank of Patiala">State Bank of
													Patiala</option>
												<option value="State Bank of Travancore">State Bank
													of Travancore</option>
												<option value="Syndicate Bank">Syndicate Bank</option>
												<option value="Tamilnad Mercantile Bank">Tamilnad
													Mercantile Bank</option>
												<option value="TNSC Bank">TNSC Bank</option>
												<option value="UCO Bank">UCO Bank</option>
												<option value="Union Bank of India">Union Bank of
													India</option>
												<option value="United Bank of India">United Bank of
													India</option>
												<option value="Utkarsh small finance bank">Utkarsh
													small finance bank</option>
												<option value="Vijaya Bank">Vijaya Bank</option>
												<option value="YES Bank">YES Bank</option>
											</select> <span id="bankNameMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
										</div>

										<div class="col-md-4">
											<label>ACCOUNT NO :</label> <input name="accountNo"
												type="text" id="accountNo" class="form-control"
												Placeholder="ENTER ACCOUNT NO" autocomplete="off" /> <span
												id="accountNoMsg"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">ENTER
												ACCOUNT NO.</span>
										</div>

										<div class="col-md-4">
											<label>MOBILE NO. :</label> <input name="mobileNo"
												type="text" id="mobileNo" class="form-control"
												Placeholder="ENTER MOBILE NO." autocomplete="off" />
										</div>

										<div class="col-md-4" style="margin-top: 15px;">
											<label>ADDRESS :</label> <input name="address" type="text"
												id="address" class="form-control"
												Placeholder="ENTER ADDRESS" autocomplete="off" />
										</div>

										<div class="col-md-4" style="margin-top: 15px;">
											<label>OPENING DATE :</label>

											<div class="input-group date">
												<div class="input-group-addon">
													<i class="fa fa-calendar"></i>
												</div>
												<input name="openingDate" type="date" value="01/08/2022"
													id="openingDate" class="form-control" data-inputmask=""
													data-mask="" />
											</div>
											<span id="ContentPlaceHolder1_RequiredFieldValidator1"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">ENTER
												OP. DATE</span>
										</div>

										<div class="col-md-4" style="margin-top: 15px;">
											<label>OP. BALANCE :</label> <input name="openingBalance"
												type="text" id="openingBalance" class="form-control"
												placeholder="ENTER OP. BALANCE" autocomplete="off" /> <span
												id="ContentPlaceHolder1_RequiredFieldValidator2"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">ENTER
												OP. BALANCE</span>
										</div>

									</div>

								</div>
								<div class="box-footer" style="margin-top: 20px;">
									<div class="row col-md-7">

										<button type="button" id="saveBtn"
											class="btn btn-success pull-right margin-r-5">Save</button>

										<button type="button" id="hideBtn"
											class="btn btn-success pull-right margin-r-5" onclick="hideBtnFunc()">Hide</button>

										<button type="button" id="showBtn"
											class="btn btn-success pull-right margin-r-5" onclick="showBtnFunc()">Show</button>

									</div>
								</div>
							</div>
							<div class="col-md-12" id="tableHideShow">
								<div style="margin-top: 20px;">

									<!-- <table cellspacing="0" cellpadding="3" rules="all"
												class="display nowrap table table-hover table-striped table-bordered"
												border="1" style="width: 100%; border-collapse: collapse;">
												<caption>BRANCH ACCESS LIST</caption>
												<tr style="color: White; background-color: #008385;">
													<th scope="col">B.CODE</th>
													<th scope="col">B.NAME</th>
													<th scope="col">Check</th>
												</tr>
												<tbody id="ContentPlaceHolder1_gdvBranchAddBank">
												</tbody>
											</table> -->

									<table
										class="table table-bordered table-hover table-striped custom-table datatable">
										<thead>
											<tr>
												<th>SL No</th>
												<th>BANK NAME</th>
												<th>ACCOUNT NO</th>
												<th>OPENING DATE</th>
												<th>ADDRESS</th>
												<th>MOBILE NO</th>
												<th>OPENING BALANCE</th>
												<th>EDIT</th>
												<th>DELETE</th>

											</tr>
										</thead>
										<tbody id="bankTableBody">
											<!-- dynamic rows -->
										</tbody>
									</table>

									<span id="mappedBranchMsg"
										style="color: Red; font-size: X-Small; font-weight: bold; display: none;"></span>
								</div>
							</div>
						</div>
					</div>
				</section>
			</div>
			<!-- /.content-wrapper -->
			<div class="control-sidebar-bg"></div>
		</div>

		<script src="dist/js/adminlte.min.js"></script>
		<script src="dist/js/customization/bank.js"></script>

	</form>
</body>
</html>