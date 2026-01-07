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
	cz-shortcut-listen="true" onload="dropDownOfMemberNo();">
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
				<h1 id="ContentPlaceHolder1_IdHeader"><b>MANAGE SHARES</b></h1>
				<h5>UNALLOTED SHARES</h5>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Share Transfer</li>
				</ol>
			</section>
			<!-- action="/addMembership" -->
			<form id="fileUploadForm">
				<div class="wizard-steps">
					<div class="wizard-step active" id="step1">
						<div class="step-circle">1</div>
						<div class="step-title">SHARE DETAILS</div>
						<div class="wizard-line"></div>
					</div>

					<div class="wizard-step inactive" id="step2">
						<div class="step-circle">2</div>
						<div class="step-title">PAYMENT DETAILS</div>
					</div>
				</div>
				<section class="content">
					<div id="shareDetailsSection" class="form-container">
						<!-- <div class="row"> -->
						<!-- <input type="hidden" name="id" id="id"> -->
						<!-- <div class="col-md-12"> -->
						
							
							<div class="box-header " >
								<h2 class="box-title"  ><b>SHARE DETAILS</b></h2>
								
							</div>
							


							<div class="box-body">

								<!-- MEMBER DETAILS -->
								<h4 style="color: #008385; margin: 30px 0 15px; text-decoration: underline;">MEMBER
									DETAILS</h4>

								<div class="row">
									<div class="col-md-3">
										<label>BRANCH *</label> <select id="branchName"
											class="form-control"></select>
									</div>

									<div class="col-md-3">
										<label>CLIENT NO *</label> <input id="clientNo"
											class="form-control" readonly>
									</div>

									<div class="col-md-3">
										<label>MEMBER NAME *</label> <input id="memberName"
											class="form-control" Style="text-transform: uppercase;">
									</div>

									<div class="col-md-3">
										<label>MEMBER NO *</label> <select id="memberNo"
											class="form-control select2"
											onchange="callbackAllotedExtraShare();"></select>
									</div>
								</div>

								<div class="row" style="margin-top: 20px;">
									<div class="col-md-3">
										<label>ADD ALLOTED DATE</label> <input type="date" id="doj"
											class="form-control">
									</div>
								</div>



								<!-- PREVIOUS DETAILS -->
								<h4 style="color: #008385; margin: 50px 0 15px; text-decoration: underline;">PREVIOUS
									SHARE DETAILS</h4>
								<div class="row">
									<div class="col-md-3">
										
											<label>PREVIOUS BALANCE</label> <input id="previousBalance"
												class="form-control" readonly>
										
									</div>

									<div class="col-md-3">
										
											<label>PREVIOUS NO OF SHARES</label> <input
												id="previousShareNo" class="form-control" readonly>
										
									</div>

									<div class="col-md-3">
										
											<label>PREVIOUS SHARE SERIAL NO.</label> <input
												id="previousShareSerialNo" class="form-control" readonly>
									
									</div>
								</div>

								<!-- NEW SHARE DETAILS -->
								<h4 style="color: #008385; margin: 50px 0 15px; text-decoration: underline;">NEW SHARE
									DETAILS</h4>
								<div class="row">
									<div class="col-md-3">
										
											<label>FACE VALUE</label> <input id="faceValue" value="10"
												class="form-control" readonly>
										
									</div>

									<div class="col-md-3">
										
											<label>NO OF SHARE *</label> <input id="noOfShare"
												class="form-control"
												onkeyup="calculate(); calculateShareSerialNo(); calculateTotalBalance();">
										
									</div>

									<div class="col-md-3">
										
											<label>SHARE SERIAL NO *</label> <input id="shareSerialNo"
												class="form-control" readonly>
										
									</div>

									<div class="col-md-3">
										
											<label>SHARE BALANCE</label> <input id="sharebalance"
												class="form-control" readonly>
										
									</div>

									<div class="col-md-3 "style="margin-top: 20px;">
										
											<label>TOTAL NO OF SHARE</label> <input id="totalNoOfShare"
												class="form-control" readonly>
										
									</div>
								</div>

								<!-- PHOTO -->
								<div class="row" style="margin-top: 20px;">
									<div class="col-md-6">
										<label>PHOTO</label><br> <img id="preview"
											class="img-thumbnail"
											style="width: 120px; margin-bottom: 10px;"> <input
											type="file" id="filetag" name="filetag"> <small
											class="text-danger">Photo should be less than 2MB</small>
									</div>
								</div>

							</div>

							<!-- FOOTER -->
							<div class="box-footer">
								<button type="button" class="btn btn-success pull-right"
									onclick="goToPaymentDetails()">NEXT</button>
							</div>
						



					</div>

					<div id="paymentDetailsSection" class="form-container" style="display: none;">

						
							<div class="box-header ">
								<h3 class="box-title"><b>PAYMENT DETAILS</b></h3>
							</div>

							<div class="box-body" style="margin-top: 20px;">

								<!-- ROW 1 -->
								<div class="row">
									<div class="col-md-4">
										
											<label>TRANSFER DATE <span style="color: red">*</span></label>
											<input type="date" id="transferDate" name="transferDate"
												class="form-control">
										
									</div>

									<div class="col-md-4">
										
											<label>PAYMENT MODE <span style="color: red">*</span></label>
											<select id="paymode" name="paymode" class="form-control">
												<option value="Cash">CASH</option>
												<option value="Cheque">CHEQUE</option>
												<option value="Online">ONLINE</option>
												<option value="NEFT">NEFT</option>
												<option value="Transfer">TRANSFER</option>
											</select>
										
									</div>
								</div>
								<br>
								<!-- ROW 2 -->
								<div class="row">
									<div class="col-md-8">
										
											<label>REMARKS</label>
											<textarea id="remarks" name="remarks" rows="2"
												class="form-control" placeholder="ENTER REMARKS IF ANY"></textarea>
										
									</div>
								</div>

							</div>

							<!-- FOOTER -->
							<div class="box-footer">
								<button type="button" class="btn btn-success"
									onclick="backToShareDetails()">PREVIOUS</button>

								<input type="button" id="btnSave" value="SAVE"
									class="btn btn-success pull-right">
							</div>

						
					</div>
				</section>
			</form>
		</div>
		<!-- /.content-wrapper -->
		<div class="control-sidebar-bg"></div>
	</div>
	<script src="dist/js/memberShare.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
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
	
	<!-- AdminLTE for demo purposes -->
	<script src="dist/js/demo.js"></script>
	
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	<script>
		$(document).ready(function() {
			$('#btnSave').click(function() {
				
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
	<script>
function goToPaymentDetails() {

    /* // BASIC VALIDATION (optional)
    if ($("#branchName").val() == "") {
        alert("Please select Branch");
        return;
    }
    if ($("#clientNo").val() == "") {
        alert("Please select Client No");
        return;
    }
    if ($("#noOfShare").val() == "") {
        alert("Please enter No Of Share");
        return;
    } */

    $("#shareDetailsSection").hide();
    $("#paymentDetailsSection").show();
    
    $("#step1").removeClass("active").addClass("completed");
    $("#step2").removeClass("inactive").addClass("active");
}

function backToShareDetails() {
    $("#paymentDetailsSection").hide();
    $("#shareDetailsSection").show();
    
    $("#step2").removeClass("active").addClass("inactive");
    $("#step1").removeClass("completed").addClass("active");
}
</script>
</body>
<!-- Dk/Admin/ShareIssue.aspx?ismodify=false EDB D 09:26:56 GMT -->
</html>