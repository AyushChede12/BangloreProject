<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<jsp:include page="../header.jsp" />
<!-- <style>
.heading {
	color: #FF0000;
}

</style> -->


<%-- <%
String status = (String) request.getAttribute("status");
if (status != null && status.equals("success")) {
%>
<script>
	alert("Saved Successfully");
</script>
<%
}
%> --%>
<!-- <script>
function calculate(){
   	var FaceValue = document.getElementById('faceValue').value;
   	var NoOfShare = document.getElementById('noOfShare').value;
   	var ShareBalance = document.getElementById('sharebalance');
   	var result = (10 * NoOfShare);
   	sharebalance.value = result;
   }
</script> -->
<!-- <script>
function calculateShareSerialNo() {
    var noOfShareInput = document.getElementById("noOfShare");
    var shareSerialNoInput = document.getElementById("shareSerialNo");

    var noOfShare = parseInt(noOfShareInput.value);
    var previousShareNo = parseInt(shareSerialNoInput.value) || 0;

    if (noOfShare > 0) {
        var startShareNo = previousShareNo + 1;
        var endShareNo = startShareNo + noOfShare - 1;
        shareSerialNoInput.value = startShareNo + " - " + endShareNo;
    } else {
        shareSerialNoInput.value = "";
    }
}
</script> -->
<!-- <script>
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
</script> -->
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true"
	onload="getShareTableData(); getTheValueInsahreTransferInTheDropDown();">
	<!-- onload="shareSerialNo();" -->
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
				 <h5>TRANSFER SHARE</h5>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Share Transfer</li>
				</ol>
			</section>
			<!-- action="/SocietyManagement/addMembership" -->
			<!-- <form method="post" action="/addMembership" id="form1" modelAttribute="addMembership" enctype="multipart/form-data"> -->
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

						
							<div class="box-header ">
								<h3 class="box-title"><b>SHARE DETAILS</b></h3>
							</div>
							
							

							<div class="box-body">

								<!-- ROW 1 -->
								<div class="row" style="margin-top: 20px">
									<div class="col-md-4 ">
										
											<label>BRANCH <span style="color: red">*</span></label> <select
												name="branchName" id="branchName" class="form-control">
												<option>SELECT BRANCH NAME</option>
											</select>
										
									</div>

									<div class="col-md-4">
										
											<label> SEARCH BY CLIENT NO <span style="color: red">*</span></label>
											<select name="clientNo" id="clientNo"
												class="form-control select2"
												onchange="callback(); toggleDisabledFields();">
												<option value="">SELECT MEMBER</option>
											</select>
										
									</div>
									<div class="col-md-4">
										
											<label>MEMBER NAME <span style="color: red">*</span></label>
											<input style="text-transform: uppercase;" type="text" id="memberName" name="memberName"
												class="form-control">
										
									</div>
								</div>
								<br>
								<!-- ROW 2 -->
								<div class="row ">


									<div class="col-md-4">
										
											<label>MEMBER NO <span style="color: red">*</span></label> <input
												type="text" id="memberNoInput" name="memberNo"
												class="form-control" readonly>
										
									</div>
									<div class="col-md-4">
										
											<label>MEMBERSHIP DATE</label> <input type="date" id="doj"
												name="doj" class="form-control">
										
									</div>
									<div class="col-md-4">
										
											<label>PREVIOUS BALANCE</label> <input type="text"
												id="previousBalance" class="form-control" readonly>
										
									</div>
								</div>
								<br>
								<!-- ROW 3 -->
								<div class="row">


									<div class="col-md-4">
										
											<label>PREVIOUS NO OF SHARE</label> <input type="text"
												id="previousShareNo" class="form-control" readonly>
										
									</div>
								</div>

								<br>

								<!-- ROW-4 -->
								<div class="row">
									<div class="col-md-4">
										
											<label>FACE VALUE</label> <input type="text" id="faceValue"
												value="10" class="form-control" readonly>
										
									</div>

									<div class="col-md-4">
										
											<label>NO.OF SHARE <span style="color: red">*</span></label>
											<input type="text" id="noOfShare" name="noOfShare"
												class="form-control"
												onkeyup="calculate(); calculateShareSerialNo();">
										
									</div>

									<div class="col-md-4">
										
											<label>SHARE SERIAL NO.<span style="color: red">*</span></label>
											<input type="text" id="shareSerialNo" class="form-control"
												readonly>
									
									</div>


								</div>

								<br>
								<!-- ROW-5 -->
								<div class="row">
									<div class="col-md-4 ">
										
											<label>SHARE BALANCE</label> <input type="text"
												id="sharebalance" class="form-control" readonly>
										
									</div>
								</div>



								<br>
								<!-- PHOTO -->
								<div class="row">
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

							<div class="box-body">

								<!-- ROW 1 -->
								<div class="row" style="margin-top: 20px">
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
										
											<label >REMARKS</label>
											<textarea id="remarks" name="remarks" rows="2"
												style="text-transform: uppercase;" class="form-control" placeholder="Enter  remarks if any"></textarea>
										
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

						
						<div class="box box-success"
							style="box-shadow: none; overflow: auto !important;">
							<div class="box-body">
								<div class="clearfix margin-bottom-10"></div>
								<div>
									<table cellspacing="0" cellpadding="3" rules="all"
										class="display nowrap table table-hover table-striped table-bordered"
										border="1" style="width: 100%; border-collapse: collapse;">
										<caption style="text-decoration: underline;">MATURITY APPLICATION</caption>
										
										<tr style="color: White; background-color: #008385;">
											<th scope="col">SERIAL NO.</th>
											<th scope="col">BRANCH NAME</th>
											<th scope="col">MEMBER NAME</th>
											<th scope="col">MEMNERSHIP DATE</th>
											<th scope="col">CLIENT NO.</th>
											<th scope="col">MEMBER NO.</th>
											<th scope="col">N0.OF SHARE</th>
											<th scope="col">SHARE SERIAL NO.</th>
											<th scope="col">CERTIFICATE NO.</th>
											<!-- <th scope="col">Action</th> -->
										</tr>
										<tbody id="shareTableBody">
										</tbody>
									</table>
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
	<script src="dist/js/memberShare.js"></script>
	<!-- AdminLTE App -->
	<script src="dist/js/adminlte.min.js"></script>
	
	<!-- <script src="bower_components/jquery/dist/jquery.min.js"></script>
	Bootstrap 3.3.7
	<script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	InputMask
	<script src="plugins/input-mask/jquery.inputmask.js"></script>
	<script src="plugins/input-mask/jquery.inputmask.date.extensions.js"></script>
	<script src="plugins/input-mask/jquery.inputmask.extensions.js"></script>
	date-range-picker
	<script src="bower_components/moment/min/moment.min.js"></script>
	<script
		src="bower_components/bootstrap-daterangepicker/daterangepicker.js"></script>
	bootstrap datepicker
	<script
		src="bower_components/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
	bootstrap color picker
	<script
		src="bower_components/bootstrap-colorpicker/dist/js/bootstrap-colorpicker.min.js"></script>
	bootstrap time picker
	<script src="plugins/timepicker/bootstrap-timepicker.min.js"></script>
	SlimScroll
	<script
		src="bower_components/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	iCheck 1.0.1
	<script src="plugins/iCheck/icheck.min.js"></script>
	FastClick
	<script src="bower_components/fastclick/lib/fastclick.js"></script>
	
	AdminLTE for demo purposes
	<script src="dist/js/demo.js"></script> -->
	
	<!-- Select2 -->
	<!-- <script src="bower_components/select2/dist/js/select2.full.min.js"></script> -->
	<!-- <script>
        // Call the function to fetch the maximum member number when the page loads
        $(document).ready(function() {
            fetchMaxMemberNo();
        });

        // $.get('/SocietyManagement/fetchMaxMemberNo', function(data)
        function fetchMaxMemberNo() {
            $.get('/fetchMaxMemberNo', function(data) {
                var memberNoInput = document.getElementById("memberNoInput");
                memberNoInput.value = data + 1; // Increment the fetched value
            });
        }
    </script> -->

	<!-- <script>
	// Function to validate the form
	function validateForm() {
		
		var branchName = document.getElementById("branchName").value;
		var clientNo = document.getElementById("clientNo").value;
		var memberName = document.getElementById("memberName").value;
		var memberNoInput = document.getElementById("memberNoInput").value;
		
		if (branchName === "") {
			alert("Please select a Branch.");
			return false;
		}

		if (clientNo === "") {
			alert("Please select the Client No.");
			return false;
		}

		if (memberName === "") {
			alert("Please write Member Name.");
			return false;
		}
		
		return true;
	}

	document.getElementById("form1").addEventListener("submit", function(event) {
		event.preventDefault(); // Prevent the form from submitting

		if (validateForm()) {
			
			alert("Data saved successfully.");

			this.submit();
		}
	});
	</script> -->

	<script>
		$(document).ready(function() {
			$('#btnSave').click(function() {
				
				if ($("#branchName").val() == "") {
		             alert("Write Branch Name.");
		             return;
		         }
				if ($("#clientNo").val() == "") {
		             alert("Write Client No.");
		             return;
		         }
				if ($("#memberName").val() == "") {
		             alert("Write Member Name.");
		             return;
		         }
				if ($("#memberNo").val() == "") {
		             alert("Write Member No.");
		             return;
		         }
				if ($("#noOfShare").val() == "") {
		             alert("Write No Of Share.");
		             return;
		         }
				if ($("#shareSerialNo").val() == "") {
		             alert("Write Share Serial No.");
		             return;
		         } 
				if ($("#transferDate").val() == "") {
		             alert("Write Transfer Dtae.");
		             return;
		         }
				if ($("#paymode").val() == "") {
		             alert("Write Paymode.");
		             return;
		         }
				if ($("#filetag").val() == "") {
		             alert("Select THe Photo !!!");
		             return;
		         }
				
				var form = $('#fileUploadForm')[0];
				var data = new FormData(form);
				$.ajax({
					url: 'addMembership',
					type: 'POST',
					enctype: 'multipart/form-data',
					data: data,
					processData: false,
					contentType: false,
					cache: false,
					success: function(response) {
						alert(response)
						window.location.href = "shareIssue";
						//console.log(response);
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