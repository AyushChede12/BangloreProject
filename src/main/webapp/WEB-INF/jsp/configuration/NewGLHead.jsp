<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	onload="fetchMaxGLGroupNo(); GetBranchNameInTheDropDown();"
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
				<h1 id="ContentPlaceHolder1_IdHeader">New GL Head</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Accounting</li>
				</ol>
			</section>
			<form method="" action="" id="glHeadForm" modelAttribute=""
				enctype="multipart/form-data">
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">New GL Head</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Account Group<strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="accountGroup" id="accountGroup"
													class="form-control select2" style="width: 100%;">
													<option selected="selected" value="">Select</option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Account Group</span>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Account Type<strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="accountType" id="accountType"
													class="form-control select2" style="width: 100%;"
													disabled="disabled">
													<option selected="selected" value="Others">Others</option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Account Type</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="glHeadNo" class="col-sm-4 control-label">GL
												Head No.<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="glHeadNo" type="text" id="glHeadNo"
													readonly="true" class="form-control"
													Placeholder="Enter GL Head No. " />
											</div>
										</div>
										<div class="form-group row">
											<label for="glHeadName" class="col-sm-4 control-label">GL
												Head Name<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="glHeadName" type="text" id="glHeadName"
													class="form-control" Placeholder="Enter GL Head Name " />
											</div>
										</div>
										<div class="form-group row">
											<label for="glHeadName" class="col-sm-4 control-label">Short
												Name</label>
											<div class="col-sm-8">
												<input name="shortName" type="text" id="shortName"
													class="form-control" Placeholder="Enter Short Name " />
											</div>
										</div>
										<div>
											<h4 class="box-title">Balance Type</h4>
											<label> <input type="radio"  name="balanceType" 
												value="credit" style="margin-left: 15px;">Credit
											</label> <label> <input type="radio" name="balanceType"
												 value="debit" style="margin-left: 15px; " >Debit
											</label> <label> <input type="radio" name="balanceType"
											    value="any" style="margin-left: 15px;" >Any
											</label>
										</div>
										<div>
											<h4 class="box-title">Account Type</h4>
											<label> <input type="radio"
												name="accountTypecheckBOx" id="accountTypecheckBOx"
												value="commonAccount" style="margin-left: 15px;">Common
												Account
											</label> <label> <input type="radio"
												name="accountTypecheckBOx" id="accountTypecheckBOx"
												value="branchAccount" style="margin-left: 15px;">Branch
												Account
											</label> <label> <input type="radio"
												name="accountTypecheckBOx" id="accountTypecheckBOx"
												value="clientWiseAccount" style="margin-left: 15px;">Client
												Wise Account
											</label>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Account Value </label>
											<div class="col-sm-8">
												<input name="accountValue" type="text" id="accountValue" 
													class="form-control" Placeholder="Enter Account Value " readonly="readonly" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Organization </label>
											<div class="col-sm-8">
												<input name="organization" type="text" id="organization" value="H.O."
													class="form-control" Placeholder="Enter Branch Code " readonly="readonly" />
											</div>
										</div>
										<div class="form-group row">
											<label for="branchCode" class="col-sm-4 control-label">Branch
												Code</label>
											<div class="col-sm-8">
												<input name="branchCode" type="text" id="branchCode" value="1"
													class="form-control" Placeholder="Enter Branch Code " readonly="readonly" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Branch </label>
											<div class="col-sm-8">
												<select name="selectBranch" id="selectBranch"
													class="form-control select2" style="width: 100%;">
													<option selected="selected" value="">Select</option>
												</select>
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="unicodeName" class="col-sm-4 control-label">Unicode
												Name</label>
											<div class="col-sm-8">
												<input name="unicodeName" type="text" id="unicodeName"
													class="form-control" Placeholder="Enter Unicode Name" />
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Status <strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="status" id="status"
													class="form-control select2" style="width: 100%;">
													<option selected="selected" value="">Select</option>
													<option value="Open">Open</option>
													<option value="Close">Close</option>
												</select> <span
													id="ContentPlaceHolder1_RequiredFieldValidatorddlMemberCode"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Status</span>
											</div>
										</div>
										<div class="form-group">
											<label class="col-sm-4 control-label">Start Date <strong
												style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="startDate" type="date" id="startDate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
												<span id="ContentPlaceHolder1_RequiredFieldValidator5"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Start Date</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="primaryGroup" class="col-sm-4 control-label">Primary
												Group </label>
											<div class="col-sm-8">
												<input name="primaryGroup" type="text" id="primaryGroup"
													class="form-control" Placeholder="Enter Primary Group" />
											</div>
										</div>
										<div class="form-group row">
											<label for="unicodeName" class="col-sm-4 control-label">Select Account Holder
												Name</label>
											<div class="col-sm-8">
												<input name="selectAccountHolder" type="text" id="selectAccountHolder"
													class="form-control" Placeholder="Enter Account Holder" />
											</div>
										</div>
										<div class="form-group row">
											<label for="primaryGroup" class="col-sm-4 control-label">Balance
												 </label>
											<div class="col-sm-8">
												<input name="balance" type="text" id="balance" value="0.0"
													class="form-control" Placeholder="Enter Balance" readonly="readonly"/>
											</div>
										</div>
										<div class="row col-md-12"></div>
									</div>
								</div>
								<input name="accountGroupId" type="hidden" id="accountGroupId"
									class="form-control" Placeholder="Enter Primary Group" />
							</div>
							<input type="button" name="btnSave" value="Save" id="btnSave"
								class="btn btn-success pull-right margin-r-5" /> <input
								type="button" name="resetBtn" value="Reset" id="resetBtn"
								class="btn btn-success pull-right margin-r-5" />
						</div>
					</div>
				</section>
			</form>
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
	
	<script>
        $(document).ready(function() {
            // Fetch JSON data from /FetchAllNewGLGroupNo API
            $.ajax({
            url: 'FetchAllNewGLGroupNo',
            method: 'POST',
            dataType: 'json',
            success: function(data) {
            	
              // Populate the accountGroup dropdown
              const accountGroupDropdown = $('#accountGroup');
              data.forEach(item => {
                accountGroupDropdown.append($('<option>', {
                  value: item.accountGroup,
                  text: item.accountGroup
                }));
              });

              // Handle selection change in accountGroup dropdown
              accountGroupDropdown.on('change', function() {
                const selectedAccountGroup = $(this).val();
                const selectedItem = data.find(item => item.accountGroup === selectedAccountGroup);

                  // Update the primaryGroup and primarySubGroup input fields
                  $('#primaryGroup').val(selectedItem.primaryGroup + ' - ' + selectedItem.primarySubGroup);
                  $('#accountGroupId').val(selectedItem.gLGroupNo);
              });
            },
            error: function() {
              console.log('Error fetching data from /FetchAllNewGLGroupNo');
            }
          });
        });
    </script>

	<script>
   	function fetchMaxGLGroupNo() {
   	    $.get('fetchMaxGLHeadNo', function(data) {
   	        var gLGroupNo = document.getElementById("glHeadNo");
   	        gLGroupNo.value = data + 1;
   	    });
   	}
    </script>

	<script>
              $(document).ready(function () {
                  $("#btnSave").click(function () {
                      // Get input values
                      var accountGroup = $("#accountGroup").val();
                      var accountType = $("#accountType").val();
                      var glHeadNo = $("#glHeadNo").val();
                      var glHeadName = $("#glHeadName").val();
                      var shortName = $("#shortName").val();
                      // var balanceType = $("#balanceType").val();
                      var balanceType = $("input[name='balanceType']:checked").val();
                      var accountTypecheckBOx = $("#accountTypecheckBOx").val();
                      var organization = $("#organization").val();
                      var branchCode = $("#branchCode").val();
                      var selectBranch = $("#selectBranch").val();
                      var unicodeName = $("#unicodeName").val();
                      var status = $("#status").val();
                      var startDate = $("#startDate").val();
                      var primaryGroup = $("#primaryGroup").val();
                      var accountGroupId = $("#accountGroupId").val();
                      var selectAccountHolder = $("#selectAccountHolder").val();

                      // Check if any field is empty
                      if (accountGroup === "" || accountType === "" || glHeadNo === "" || glHeadName === "" || shortName === "" || balanceType === ""
                      || accountTypecheckBOx === "" || organization === "" || branchCode === "" || unicodeName === ""
                      || status === "" || startDate === "" || primaryGroup === "" ) {
                            // $("#validationMessage").text(" Fields are required.");
                            alert("Some  Fields are required.");
                            return;
                      }
                      else {
                          $("#validationMessage").text(""); // Clear any previous validation messages
                      } 

                      // Prepare data for AJAX
                      var data = {
                          "acountGroup": accountGroup,
                          "glHeadNo": glHeadNo,
                          "glHeadName": glHeadName,
                          "shortName": shortName,
                          "unicodeName": unicodeName,
                          "status": status,
                          "startDate": startDate,
                          "primaryGroup": primaryGroup,
                          "balanceType": balanceType,
                          "accountType": accountType,
                          "organization": organization,
                          "branchCode": branchCode,
                          "branch": selectBranch,
                          "accountTypecheckBox": accountTypecheckBOx,
                          "accountGroupId": accountGroupId,
                          "selectAccountHolder": selectAccountHolder
                      };
                      
                      //console.log(JSON.stringify(data))

                      // Send AJAX request
                      $.ajax({
                          type: "POST",
                          url: "savetheNewGLHead",
                          contentType: "application/json",
                          data: JSON.stringify(data),
                          success: function (data) {
                              // $("#validationMessage").text("Message Saved Successfully");
                        	  alert(data);
                              // Redirect to another API or URL
                              window.location.href = 'newGLHead';
                          },
                          error: function (data) {
                              // Handle any errors here
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
    $(document).ready(function() {
        // Radio button change event
        $('input[name="accountTypecheckBOx"]').change(function() {
            // Get the selected radio button value
            var selectedValue = $('input[name="accountTypecheckBOx"]:checked').val();
            
            // Set the value of the accountValue field based on the selected radio button
            if (selectedValue === 'commonAccount') {
                $('#accountValue').val('1');
            } else if (selectedValue === 'branchAccount') {
                $('#accountValue').val('2');
            } else if (selectedValue === 'clientWiseAccount') {
                $('#accountValue').val('3');
            }
        });
    });
	</script>

</body>
<!-- Dk/Admin/ShareIssue.aspx?ismodify=false EDB D 09:26:56 GMT -->
</html>