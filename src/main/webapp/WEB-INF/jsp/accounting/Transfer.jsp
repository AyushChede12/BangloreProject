<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true"
	onload="GetBranchNameInTheDropDown(); TransferDto();">
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
				<h1 id="ContentPlaceHolder1_IdHeader">Transfer</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Accounting</li>
				</ol>
			</section>
			<form method="" action="" id="form1" enctype="multipart/form-data">
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Account Transaction</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">

										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">Voucher
												No.</label>

											<div class="col-sm-8">
												<input name="voucherNo" type="text" id="voucherNo"
													class="form-control" Placeholder="Enter Voucher No. " />
											</div>
										</div>

										<h5 style="font-weight: bold; margin-left: 15px;">Debit
											Account</h5>
										<div class="form-group row">
											<label for="txtRelativeName" class="col-sm-4 control-label">Branch
												Code <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="branchCode" type="text" id="branchCode"
													class="form-control" Placeholder="Enter Branch Code"
													readonly="readonly" />
											</div>
										</div>

										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Branch<strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="selectBranch" id="selectBranch"
													class="form-control select2" style="width: 100%;"
													onchange="getBranchCodeByBranchName();">
													<option selected="selected" value="">Select</option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Branch</span>
											</div>
										</div>

										<div class="form-group row">
											<label class="col-sm-4 control-label" for="numberDropdown">Select
												G.L.Head Number:<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select id="numberDropdown" name=""
													class="form-control select2" style="width: 100%">
													<option value="Select">Select</option>

												</select>
											</div>
										</div>

										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Select G.L.Head</label>
											<div class="col-sm-8">
												<input name="selectGlHead" type="text" id="selectGlHead"
													class="form-control" Placeholder="Enter Select G.L.Head"
													readonly="readonly" />
											</div>
										</div>

										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Account No.<strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="accountNo" type="text" id="accountNo"
													class="form-control" Placeholder="Enter Account No." />
											</div>

										</div>


									</div>
									<div class="col-md-6">

										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Search Account Holder<strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="searchAccountHolder" type="text"
													id="searchAccountHolder" class="form-control"
													Placeholder="Enter Account Holder" />
											</div>
										</div>

										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Account
												Holder<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="selectAccountHolder" id="selectAccountHolder"
													class="form-control select2" style="width: 100%;">
													<option selected="selected" value=""></option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Account Holder </span>
											</div>
										</div>
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">Balance
												(Credit)</label>

											<div class="col-sm-8">
												<input name="balanceDebit" type="text" id="balanceDebit"
													class="form-control" Placeholder="Enter Balance" />
											</div>
										</div>
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">Unclear
												Balance </label>

											<div class="col-sm-8">
												<input name="unclearBalance" type="text" id="unclearBalance"
													class="form-control" Placeholder="Enter Unclear Balance" />
											</div>
										</div>

										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">Trans.
												Amount(Rs.) <strong style="color: Red">*</strong>
											</label>

											<div class="col-sm-8">
												<input name="transAmount" type="text" id="transAmount"
													class="form-control" Placeholder="Enter Trans. Amount(Rs.)" />
											</div>
										</div>


										<div class="row col-md-12">
											<input type="submit" name="btnSave" value="Debit"
												id="btnSave" class="btn btn-success pull-right margin-r-5" />
											<input type="submit" name="btnSave" value="Delete"
												id="btnDelete" class="btn btn-success pull-right margin-r-5" />
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-2"></div>
						<div class="box box-success"
							style="box-shadow: none; overflow: auto !important;">
							<div class="box-header with-border">
								<div class="box-tools pull-right"></div>
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
										<th scope="col">G L</th>
										<th scope="col">Account No</th>
										<th scope="col">Account Holder Name</th>
										<th scope="col">Trans. Amount</th>
									</tr>
									<tbody id="">

									</tbody>
								</table>
							</div>
						</div>
						<div class="box-body">
							<div class="clearfix margin-bottom-10"></div>
						</div>
					</div>
				</section>
			</form>
		</div>
		<!-- /.content-wrapper -->
		<div class="control-sidebar-bg"></div>
	</div>


	<script type="text/javascript">

	function TransferDto() {
	    $.ajax({
	        url: 'entities', // Replace with the URL of your API endpoint
	        method: 'GET', // Use the appropriate HTTP method
	        dataType: 'json', // Specify the expected data type
	        success: function(data) {
	            const numberDropdown = $('#numberDropdown'); // Assuming you have an HTML element with this ID
	            const descriptionInput = $('#selectGlHead'); // Input field for description

	            data.forEach(item => {
	                numberDropdown.append($('<option>', {
	                    value: item.number,
	                    text: item.number
	                }));
	            });

	            // Add event listener for dropdown selection
	            numberDropdown.on('change', function() {
	                const selectedNumber = $(this).val();
	                const selectedData = data.find(item => item.number === selectedNumber);

	                if (selectedData) {
	                    // Set the description value to the input field
	                    descriptionInput.val(selectedData.description);
	                } else {
	                    // Clear the input field if no data is selected
	                    descriptionInput.val('');
	                }
	            });
	        },
	        error: function(jqXHR, textStatus, errorThrown) {
	            // Handle any errors here
	            console.error('AJAX Error:', textStatus, errorThrown);
	        }
	    });
	}

	</script>

	<script src="path-to-icheck.min.js"></script>
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
	<script src="dist/js/GetAllBranch.js"></script>
	<script src="dist/js/accountingJs.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
</body>
<!-- Dk/Admin/ShareIssue.aspx?ismodify=false EDB D 09:26:56 GMT -->
</html>