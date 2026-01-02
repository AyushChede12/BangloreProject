<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<jsp:include page="../header.jsp" />
<style>
.heading {
	color: #FF0000;
}
</style>
<%
String status = (String) request.getAttribute("status");
if (status != null && status.equals("success")) {
%>
<script>
	alert("Saved Successfully");
</script>
<%
}
%>

<script>
function calculate() {
    var faceValue = parseFloat(document.getElementById('faceValue').value);
    var noOfShare = parseFloat(document.getElementById('noOfShare').value);
    var previousBalance = parseFloat(document.getElementById('previousBalance').value);

    if (!isNaN(faceValue) && !isNaN(noOfShare) && !isNaN(previousBalance)) {
        var result = previousBalance + (faceValue * noOfShare);
        document.getElementById('sharebalance').value = result;
    } else {
        document.getElementById('sharebalance').value = "Invalid Input";
    }
}
</script>

<!-- <script>
function calculateShare() {
    var previousShareNo = parseFloat(document.getElementById('previousShareNo').value);
    var noOfShare = parseFloat(document.getElementById('noOfShare').value);

    var newNoOfShare = previousShareNo + noOfShare;

    document.getElementById('noOfShare').value = newNoOfShare;
}

// Attach the event listener to the "No. of Share" input field
document.getElementById('noOfShare').addEventListener('keyup', calculateShare);
</script> -->

<script>
function calculateTotalBalance() {
    var previousShareNo = parseFloat(document.getElementById('previousShareNo').value);
    var noOfShare = parseFloat(document.getElementById('noOfShare').value);

    var totalBalance = previousShareNo + noOfShare;
	
    document.getElementById('totalNoOfShare').value = totalBalance;
}
</script>

<script>
function calculateShareSerialNo() {
    // Fetching the latest Share Serial No. from the API
    //fetch('/SocietyManagement/getLatestShareSerialNo')
    fetch('/getLatestShareSerialNo')
        .then(response => response.text())
        .then(data => {
            var noOfShareInput = document.getElementById("noOfShare");
            var shareSerialNoInput = document.getElementById("shareSerialNo");

            var noOfShare = parseInt(noOfShareInput.value);
            var latestShareSerialNo = data;

            if (latestShareSerialNo && noOfShare > 0) {
                var shareSerialParts = latestShareSerialNo.split('-');
                if (shareSerialParts.length === 2) {
                    var endShareNo = parseInt(shareSerialParts[1]);
                    var startShareNo = endShareNo + 1;
                    var newEndShareNo = startShareNo + noOfShare - 1;
                    shareSerialNoInput.value = startShareNo + " - " + newEndShareNo;
                }
            } else {
                shareSerialNoInput.value = "";
            }
        })
        .catch(error => console.error('Error fetching Share Serial No.', error));
}
</script>

<body class="skin-blue sidebar-mini" 
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true"
	onload="dropDownOfMemberNo();">
	<!-- 	<form method="post" action="updateShareTransfer" id="form1"> -->
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
				<h1 id="ContentPlaceHolder1_IdHeader">Alloted Extra Share</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Share Transfer</li>
				</ol>
			</section>
			<!-- action="/addMembership" -->
			<form id="fileUploadForm">
				<section class="content">
					<div class="row">
						<!-- <input type="hidden" name="id" id="id"> -->
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">Share Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtBranch" class="col-sm-4 control-label">Branch
												<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="branchName" id="branchName"
												class="form-control" style="width: 100%;" required>
												<option>Select Branch Name</option>
											</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="memberData" class="col-sm-4 control-label">
												Client No.<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<!-- <select name="clientNo" id="clientNo"
													class="form-control select2" style="width: 100%;"
													onchange="callback(); toggleDisabledFields();" required>
													<option value="">Select Member</option>
												</select> --> 
												<input name="clientNo" type="text" readonly="readonly"
													id="clientNo" class="form-control"
													Placeholder="Enter Client No." required />
												<span id="memberData"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Member Code</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPreviousShareAmount"
												class="col-sm-4 control-label">Member Name <strong
												style="color: Red">*</strong></label>
											<div class="col-sm-8">
												<input name="memberName" type="text" readonly="readonly"
													id="memberName" class="form-control"
													Placeholder="Enter Member Name" required /> <span
													id="ContentPlaceHolder1_RequiredFieldValidator2"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													Member Name</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtBranch" class="col-sm-4 control-label">Member
												No. <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="memberNo" id="memberNo" onchange="callbackAllotedExtraShare();" 
													class="form-control select2" style="width: 100%;"
													onchange="" required>
													<option value="">Select Member No.</option>
												</select>
												<!-- <input name="memberNo" type="text" readonly="readonly"
													id="memberNoInput" class="form-control" required /> -->
											</div>
										</div>
										<div class="form-group row">
											<label for="txtDateofJoin" class="col-sm-4 control-label">Add
												Allotted Date </label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="doj" type="date" id="doj" class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPreviousShareAmount"
												class="col-sm-4 control-label">Previous Balance</label>
											<div class="col-sm-8">
												<input name="previousBalance" type="text"
													id="previousBalance" class="form-control"
													Placeholder="Enter Previous Share Balance"
													readonly="readonly" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtPreviousShareNo"
												class="col-sm-4 control-label">Previous No Of Share</label>
											<div class="col-sm-8">
												<input id="previousShareNo" name="previousShareNo"
													type="text" id="previousShareNo" class="form-control"
													Placeholder="Enter Previous No Of Share"
													readonly="readonly" />
											</div>
										</div>
										<div class="form-group row">
											<label for="ddlAllotedFrom" class="col-sm-4 control-label">Previous Share
												Serial No. 
											</label>
											<div class="col-sm-8"> 
												<input name="previousShareSerialNo" type="text" id="previousShareSerialNo" 
												placeholder="Enter Share Serial No." class="form-control" readonly="readonly" />
												<span id="shareAllotedfrm2"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Share Allotted</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtFaceValue" class="col-sm-4 control-label">Face
												Value</label>
											<div class="col-sm-8">
												<input name="faceValue" type="text" value="10"
												id="faceValue" class="form-control" oninput="calculate()" 
												Placeholder="Enter Face Value" readonly="readonly" />
											</div>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtNoOfShare" class="col-sm-4 control-label">No.
												of Share <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="noOfShare" type="text" onkeyup="calculate(); calculateShareSerialNo(); calculateTotalBalance();"
												placeholder="Enter No. Of Share" id="noOfShare"
												class="form-control" required /> <span
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
													No. of Share</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="ddlAllotedFrom" class="col-sm-4 control-label">Share
												Serial No. <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<!-- <select name="shareSerialNo" id="shareSerialNo"
													class="form-control select2" style="width: 100%;" required>
													<option value="">Select Share Allotted From</option>
												</select> --> 
												<input name="shareSerialNo" type="text" id="shareSerialNo" 
												placeholder="Enter Share Serial No." class="form-control" readonly="readonly" />
												<span id="shareAllotedfrm2"
													style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Select
													Share Allotted</span>
											</div>
										</div>
										<div class="form-group row">
											<label for="txtSharebalance" class="col-sm-4 control-label">Share
												Balance</label>
											<div class="col-sm-8">
												<input name="sharebalance" type="text" 
												id="sharebalance" class="form-control"
												Placeholder="Enter Total No. Of Share" readonly="readonly" />
											</div>
										</div>
										<div class="form-group row">
											<label for="txtSharebalance" class="col-sm-4 control-label">Total
												No. Of Share</label>
											<div class="col-sm-8">
												<input name="totalNoOfShare" type="text" 
												id="totalNoOfShare" class="form-control"
												Placeholder="Enter Share balance" readonly="readonly" />
											</div>
										</div>
										<!-- <div class="form-group row">
										<label for="txtTransferAmount" class="col-sm-4 control-label">Transfer
											Amount <strong style="color: Red">*</strong>
										</label>
										<div class="col-sm-8">
											<input name="transferAmount" type="text" id="transferAmount"
												class="form-control" Placeholder="Enter Transfer Amount"
												required /> <span
												id="ContentPlaceHolder1_RequiredFieldValidator1"
												style="color: Red; font-size: X-Small; font-weight: bold; display: none;">Enter
												Transfer Amount</span>
										</div>
									</div> -->
										<div class="form-group row">
											<label for="txtIntroMName" class="col-sm-4 control-label">Photo</label>
											<div class="col-sm-8">
												<img id="preview" name="preview" class="profile-user-img"
													src="data:image/png;base64,${aadharPhoto}"
													style="width: 110px;" /> <input type="file" name="filetag"
													id="filetag" /> <a class="heading"
													href="(Photo should be less than 2MB)">(Photo should be
													less than 2MB)</a>
												<!--                                     onchange="uploadFile('aadharPhoto','addMember')"  -->
											</div>
										</div>
									</div>
								</div>
								<!-- FOOTER -->
							<div class="box-footer">
								<button type="button" class="btn btn-primary pull-right"
									onclick="goToPaymentDetails()">Next</button>
							</div>
							</div>
							
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="box box-info">
								<div class="box-header with-border">
									<h3 class="box-title">Payment Details</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label for="txtTransferDate" class="col-sm-4 control-label">Transfer
												Date <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<div class="input-group date">
													<input name="transferDate" type="date" id="transferDate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" required />
												</div>
											</div>
										</div>
										<div class="form-group row">
											<label for="drpPaymentBy" class="col-sm-4 control-label">Payment
												By <strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<select name="paymode" id="paymode" class="form-control"
													style="width: 100%;">
													<option value="Cash">Cash</option>
													<option value="Cheque">Cheque</option>
													<option value="Online">Online</option>
													<option value="NEFT">NEFT</option>
													<option value="Transfer ">Transfer</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Remarks</label>
											<div class="col-sm-8">
												<textarea name="remarks" rows="2" cols="20" id="remarks"
													class="form-control" Placeholder="Enter Remarks if any">
                                    </textarea>
											</div>
										</div>
									</div>
									<div class="col-md-6"></div>
								</div>
								<div class="box-footer">
									<div class="row col-md-12">
										<!--  <button type="button" name="enableDisabledFields"
											value="New" id="enableDisabledFields"
											onclick="toggleDisabledFields()"
											class="btn btn-info pull-right margin-r-5" >New</button>
											-->
										<!-- onclick="saveOPerationinShareTransfer();" -->
										<input type="submit" name="btnUpdate" value="Update"
											onclick="javascript: " id="btnUpdate"
											class="btn btn-success pull-right margin-r-5" />
									</div>
								</div>
							</div>
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
	<script src="dist/js/memberShare.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#btnUpdate').click(function() {
				
				if ($("#memberNo").val() == "") {
		             alert("Select the Particular Member No. to Update !!!!!!!!");
		             return;
		         }
				
				if ($("#filetag").val() == "") {
		             alert("Select THe Photo !!!");
		             return;
		         }
				
				var form = $('#fileUploadForm')[0];
				var data = new FormData(form);
				$.ajax({
					url: 'updateMembership',
					type: 'POST',
					enctype: 'multipart/form-data',
					data: data,
					processData: false,
					contentType: false,
					cache: false,
					success: function(response) {
						alert(response)
						window.location.href = "unallotedShareReport";
						console.log(response);
					},
					error: function(xhr, status, error) {
						console.log(xhr.responseText);
					}
				});
			});
		});
	</script>
</body>
<!-- Dk/Admin/ShareIssue.aspx?ismodify=false EDB D 09:26:56 GMT -->
</html>