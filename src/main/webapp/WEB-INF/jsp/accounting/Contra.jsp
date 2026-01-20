<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="">
	<div
		style="height: auto; min-height: 100%;  background: url(dist/img/back.jpg);">
		<!-- Header Start-->
		<jsp:include page="../menu.jsp" />
		<jsp:include page="../asideMenu.jsp" />
		<!-- Aside Menu end -->
		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper" style="min-height: 1105.75px;">
			<section class="content-header">
				<h1 id="ContentPlaceHolder1_IdHeader">Contra</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Accounting</li>
				</ol>
			</section>
			<form method="" action="" id="form1" modelAttribute="NewAccount"
				enctype="multipart/form-data">
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Instrument Details</h3>
								</div>
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
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Date </label>
											<div class="col-sm-8">
												<input name="entryDate" type="text" id="entryDate"
													value="${EntryDate}" class="form-control"
													readonly="readonly" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Scroll </label>
											<div class="col-sm-8">
												<select name="scroll" id="scroll"
													class="form-control select2" style="width: 100%;">
													<option selected="selected" value="">Select</option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Scroll</span>
											</div>
										</div>
										<h5 style="font-weight: bold; margin-left: 15px;">Account
											Info</h5>
										<label> <input type="radio" name="typeCashBank"
											id="typeCash" value="Cash" style="margin-left: 15px;">
											Cash
										</label> <label> <input type="radio" name="typeCashBank"
											id="typeBank" value="Bank" style="margin-left: 15px;">
											Bank
										</label>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select
												Bank/Cash <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select class="selectCashBank" name="selectBank"
													onchange="getBalanceByBranchName();" id="selectBank"
													class="form-control select2" style="width: 100%;">
													<option selected="selected" value=""></option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Bank/Cash </span>
											</div>
										</div>
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">Unique Id 
												<strong style="color: Red"></strong>
											</label>
											<div class="col-sm-8">
												<input name="uniqueId" type="text" id="uniqueIdD" readonly="readonly"
													class="form-control" Placeholder="Enter Unique Id" />
											</div>
										</div>
										<div class="form-group row">
											<label for="balance" class="col-sm-4 control-label">Balance
											</label>
											<div class="col-sm-8">
												<input name="balanceDebit" type="text" id="balanceDebit" readonly="readonly"
													class="form-control" Placeholder="Enter Balance" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Narration</label>
											<div class="col-sm-8">
												<textarea name="narration" rows="2" cols="20" id="narration"
													class="form-control" Placeholder="Enter Narration">
                                        </textarea>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtRelativeName" class="col-sm-4 control-label">Branch
												Code <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="branchCode" type="text" id="branchCode"
													value="1" readonly="readonly" class="form-control"
													Placeholder="Enter Branch Code" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Branch<strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="branch" type="text" id="branch" value="H.O."
													readonly="readonly" class="form-control"
													Placeholder="Enter Branch" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Branch</span>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">G.L.Head.No.
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="glHeadNo" type="text" id="glHeadNo"
													class="form-control" Placeholder="Enter G.L.Head No." />
											</div>
										</div>
										<div class="form-group row">
											<label for="bankGLHead" class="col-sm-4 control-label">Unique Id 
												<strong style="color: Red"></strong>
											</label>
											<div class="col-sm-8">
												<input name="uniqueId" type="text" id="uniqueId" readonly="readonly"
													class="form-control" Placeholder="Enter Unique Id" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Select G.L.Head</label>
											<div class="col-sm-8">
												<input name="glHeadName" type="text" id="glHeadName"
													class="form-control" Placeholder="Enter Select G.L.Head" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtJointMemberName"
												class="col-sm-4 control-label">Account No. </label>
											<div class="col-sm-8">
												<input name="accountNo" type="text" id="accountNo"
													class="form-control" Placeholder="Enter Account No." />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Account Holder<strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="selectAccountHolder" type="text"
													id="selectAccountHolder" class="form-control"
													Placeholder="Enter Account Holder" /> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Account Holder</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="balance" class="col-sm-4 control-label">Balance
											</label>
											<div class="col-sm-8">
												<input name="balance" type="text" value="" id="balance"
													class="form-control" Placeholder="Enter Balance" />
											</div>
										</div>
										<div class="form-group row">
											<label for="balance" class="col-sm-4 control-label">Transaction
												Amount(Rs.) <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="transactionAmount" type="text" value=""
													id="transactionAmount" class="form-control"
													Placeholder="Enter Transaction Amount" />
											</div>
										</div>
										<h5 style="font-weight: bold; margin-left: 15px;">Transaction</h5>
										<label> <input type="radio" name="transactionType"
											id="transactionType" value="credit"
											style="margin-left: 15px;">Credit
										</label> <label> <input type="radio" name="transactionType"
											id="transactionType" value="debit" style="margin-left: 15px;">
											Debit
										</label>
										<div class="row col-md-12">
											<!-- <input type="submit" name="btnSave" value="Credit"
												id="btnSave" class="btn btn-success pull-right margin-r-5" /> -->
											<input type="button" name="btnSave" value="Save" id="btnSave"
												class="btn btn-success pull-right margin-r-5" /> 
											<input type="button" name="resetBtn" value="Reset" id="resetBtn"
												class="btn btn-success pull-right margin-r-5" />
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
										<th scope="col">Sr No.</th>
										<th scope="col">G L Head</th>
										<th scope="col">Account No</th>
										<th scope="col">Account Holder</th>
										<th scope="col">Balance</th>
										<th scope="col">Transaction Amount(Rs.)</th>
										<th scope="col">Delete</th>
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
	<script>
		$(document).ready(function() {
				// Initial setup
				updateDropdownOptions();

				// Radio button change event
				$('input[name="typeCashBank"]').change(function() {
						updateDropdownOptions();
				});

				function updateDropdownOptions() {
						var selectedValue = $('input[name="typeCashBank"]:checked').val();
						var dropdown = $('#selectBank');

						// Clear existing options
						dropdown.empty();

						// Add new options based on the selected radio button
						if (selectedValue === 'Cash') {
							dropdown.append('<option value="Cash">Cash</option>');
							getBalanceByCash();
						} else if (selectedValue === 'Bank') {
							// If Bank is selected, trigger the AJAX call to get bank names
							GetBranchNameInTheDropDown(dropdown); // Pass the dropdown as a parameter
						}
				}

				function GetBranchNameInTheDropDown(dropdown) {
				$.ajax({
						type : "get",
						contentType : "application/json",
						url : 'getAllBranch', // Adjust the URL as needed
						async : false,
						success : function(data) {
								//console.log("Original data:", data); // Log the original data
								// Clear existing options
								dropdown.empty();

								var appenddata1 = "";
								for (var i = 0; i < data.length; i++) {
										// Check if the branch name includes 'Interest'
										if (!data[i].name.includes('Interest')) {
												appenddata1 += "<option value='" + data[i].name + "'>"+ data[i].name + "</option>";
										}
								}
								
								//console.log("Filtered data:", appenddata1); // Log the filtered data
								// Append new options to the dropdown
								dropdown.append(appenddata1);
						},

						error : function(xhr, status, error) {
								console.error("Error:", status, error); // Log the error details
								alert("Device control failed");
						}
					});
				}
		});
	</script>
	
	<script>
              $(document).ready(function () {
                  $("#btnSave").click(function () {
                      // Get input values
                      var entryDate = $("#entryDate").val();
                      var voucherNo = $("#voucherNo").val();
                      //var selectBranch = $("#selectBranch").val();
                      var scroll = $("#scroll").val();
                      var typeCashBank = $("input[name='typeCashBank']:checked").val();
                      var selectBank = $("#selectBank").val();
                      var balanceDebit = $("#balanceDebit").val();
                      var narration = $("#narration").val();
                      var branchCode = $("#branchCode").val();
                      var branch = $("#branch").val();
                      var glHeadNo = $("#glHeadNo").val();
                      var glHeadName = $("#glHeadName").val();
                      var accountNo = $("#accountNo").val();
                      var selectAccountHolder = $("#selectAccountHolder").val();
                      var balance = $("#balance").val();
                      //var transactionAmount = $("#transactionAmount").val();
                      //var transactionAmount = parseFloat($("#transactionAmount").val());
                      var transactionAmount = Number($("#transactionAmount").val());
                      var transactionType = $("input[name='transactionType']:checked").val();
                      var uniqueId = $("#uniqueId").val();
                      var uniqueIdD = $("#uniqueIdD").val();

                      // Check if any field is empty
                      if (selectBank === "" || branchCode === "" || branch === "" || glHeadNo === "" || transactionAmount === "" || selectAccountHolder === "") {
                            // $("#validationMessage").text(" Fields are required.");
                            alert("Some  Fields are required.");
                            return;
                      } else {
                          $("#validationMessage").text(""); // Clear any previous validation messages
                      } 
					  
                      const data = [];
                      
                      // Prepare data for AJAX
                      const debit = {
                		"entryDate": entryDate,
                		"voucherNo": voucherNo,
                		"typeCashBank": typeCashBank,
                		"selectBank": selectBank,
                		"balanceDebit": balanceDebit,
                		"narration": narration,
                		"branchCode": branchCode,
                		"branch": branch,
                		"glHeadNo": glHeadNo,
                		"glHeadName": glHeadName,
                		"accountNo": accountNo,
                		"selectAccountHolder": selectAccountHolder,
                		"balance": balance,
                		"transactionAmount": transactionAmount,
                		"transactionType": "debit",
                		"uniqueId": uniqueId
           			  };
                      
                      data.push(debit);

                      const credit = {
                          "entryDate": entryDate,
                          "voucherNo": voucherNo,
                          "typeCashBank": typeCashBank,
                          "selectBank": selectBank,
                          "balanceDebit": balanceDebit,
                          "narration": narration,
                          "branchCode": branchCode,
                          "branch": branch,
                          "glHeadNo": glHeadNo,
                          "glHeadName": glHeadName,
                          "accountNo": accountNo,
                          "selectAccountHolder": selectAccountHolder,
                          "balance": balance,
                          "transactionAmount": transactionAmount,
                          "transactionType": "credit",
                          "uniqueId": uniqueIdD
                      };

                      data.push(credit);

                      // Send AJAX request
                      $.ajax({
                          type: "POST",
                          url: "saveContraModule",
                          contentType: "application/json",
                          data: JSON.stringify(data),
                          success: function (data) {
                              // $("#validationMessage").text("Message Saved Successfully");
                        	  alert(data);
                              // Redirect to another API or URL
                              window.location.href = 'contra';
                          },
                          error: function (data) {
                        	  console.error(data.responseText); // Log the response for debugging
                              alert("Error while saving data");
                          }
                      }); 
                  });

                  $("#resetBtn").click(function () {
                          // Store the initial value of GL Head No
                          var initialGLHeadNoValue = $("#glHeadNo").val();

                          // Reset the form (excluding GL Head No)
                          $("#glHeadForm")[0].reset();

                          // Set the GL Head No field back to its initial value
                          $("#glHeadNo").val(initialGLHeadNoValue);

                          $("#validationMessage").text(""); // Clear any validation messages
                  });
              });
    </script>
    
    <script>
    $(document).ready(function () {
        $("#glHeadNo").on("blur", function () {
            var glHeadNo = $(this).val();

            $.ajax({
                type: "POST",
                url: "/findByGLHeadNoInContra",
                contentType: "application/json",
                data: JSON.stringify({ "glHeadNo": glHeadNo }),
                success: function (response) {
                    // Assuming the response is a single object with glHeadName property
                    $("#glHeadName").val(response[0].glHeadName);
                    $("#accountNo").val(response[0].accountValue);
                    $("#selectAccountHolder").val(response[0].selectAccountHolder);
                    $("#balance").val(response[0].balance);
                    $("#uniqueId").val(response[0].uniqueId);
                },
                error: function (error) {
                    console.error("Error fetching data: ", error);
                }
            });
        });
    });
	</script>
	
	<script type="text/javascript">
	//Fetch Balance by Selecting Cash
    function getBalanceByCash() {
        var selectedValue = $('input[name="typeCashBank"]:checked').val();
        var selectBranch;

        if (selectedValue === 'Cash') {
            // For Cash selection
            selectBranch = 'Cash'; 
        } else {
            // For Bank selection
            selectBranch = $("#selectBranch").val();
        }

        if (!selectBranch) {
            return;
        }

        var input = {
            "glHeadName":selectBranch 
        };

        $.ajax({
            type: "GET",
            contentType: "application/json",
            url: 'fetchBalanceByselectingCash',
            data: input,
            success: function(data) {
            	console.log("Success:", data);
                if (data.length > 0) {
                    document.getElementById("balanceDebit").value = data[0].balance;
                    document.getElementById("uniqueIdD").value = data[0].uniqueId;
                }
            },
            error: function(jqXHR, textStatus, errorThrown) {
                console.error("Error:", textStatus, errorThrown);
                alert("Device control failed");
            }
        });
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
	<script src="dist/js/accountingJs.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
</body>
<!-- Dk/Admin/ShareIssue.aspx?ismodify=false EDB D 09:26:56 GMT -->
</html>