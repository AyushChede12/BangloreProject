<jsp:include page="../header.jsp" />

<body class="skin-blue sidebar-mini"
	onload="getthevalueindropdownofshareCertificate(); getthevalueindropdownofShareTransfer(); shareTransferInTable();"
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
				<h1 id="ContentPlaceHolder1_IdHeader">
					<b>MANAGE SHARES</b>
				</h1>
				<h5>SHARE CERTIFICATE</h5>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Share Transfer</li>
				</ol>
			</section>
			<form id="fileUploadForm">
				<section class="content">
					<div class="row ">
						<div class="col-md-12 ">

							<div class="box-body  form-container ">

								<!-- FROM MEMBER -->
								<h4
									style="color: #008385; margin-bottom: 20px; text-decoration: underline;">FROM
									MEMBER</h4>

								<div class="row">
									<div class="col-md-3">
										<label>MEMBER NO (FROM) *</label> <select id="memberNo"
											name="memberNoFrom" class="form-control select2"
											onchange="ShareTransferMemberNoFrom();">
											<option value="">SELECT MEMBER NO.</option>
										</select>
									</div>

									<div class="col-md-3">
										<label>MEMBER NAME (FROM)</label> <input id="memberNameFrom"
											class="form-control" readonly>
									</div>

									<div class="col-md-3">
										<label>CERTIFICATE NO (FROM)</label> <input
											id="certificateNoFrom" class="form-control" readonly>
									</div>

									<div class="col-md-3">
										<label>NO OF SHARE</label> <input id="noOfShare"
											class="form-control" readonly>
									</div>
								</div>

								<div class="row" style="margin-top: 20px;">
									<div class="col-md-3">
										<label>SHARE AMOUNT</label> <input id="shareAmount"
											class="form-control" readonly>
									</div>

									<div class="col-md-3">
										<label>REMAINING NO OF SHARE</label> <input
											id="reamingNoOfShare" class="form-control" readonly>
									</div>

									<div class="col-md-3">
										<label>REMAINING SHARE AMOUNT</label> <input
											id="reamingShareAmount" class="form-control" readonly>
									</div>
								</div>

								<!-- TO MEMBER -->
								<h4
									style="color: #008385; margin: 30px 0 20px; text-decoration: underline;">TO
									MEMBER</h4>

								<div class="row">
									<div class="col-md-3">
										<label>MEMBER NO (TO) *</label> <select id="memberNos"
											name="memberNoTo" class="form-control select2"
											onchange="ShareTransferMemberNoTo();">
											<option value="">SELECT MEMBER NO.</option>
										</select>
									</div>

									<div class="col-md-3">
										<label>MEMBER NAME (TO)</label> <input id="memberNameTo"
											class="form-control" readonly>
									</div>

									<div class="col-md-3">
										<label>CERTIFICATE NO (TO)</label> <input id="certificateNoTo"
											class="form-control" readonly>
									</div>

									<div class="col-md-3">
										<label>PREVIOUS NO OF SHARE</label> <input
											id="previousNoOfShare" class="form-control" readonly>
									</div>
								</div>

								<div class="row" style="margin-top: 20px;">
									<div class="col-md-3">
										<label>SHARE TRANSFER *</label> <input id="shareTransfer"
											class="form-control"
											onkeyup="calculate(); calculate2(); calculate3();">
									</div>

									<div class="col-md-3">
										<label>TOTAL SHARE</label> <input id="totalShare"
											class="form-control">
									</div>

									<div class="col-md-3">
										<label>AMOUNT TRANSFER</label> <input id="transferAmount"
											class="form-control" readonly>
									</div>

									<div class="col-md-3">
										<label>TOTAL AMOUNT</label> <input id="totalAmount"
											class="form-control" readonly>
									</div>
								</div>

								<div class="row" style="margin-top: 20px;">
									<div class="col-md-3">
										<label>TRANSFER DATE *</label> <input type="date"
											id="transferDate" class="form-control">
									</div>
								</div>
								<div class="box-footer">
									<button type="button" id="btnTransfer"
										class="btn btn-success pull-right">TRANSFER</button>
								</div>

							</div>





							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<table cellspacing="0" cellpadding="3" rules="all"
										class="display nowrap table table-hover table-striped table-bordered"
										border="1" id="ContentPlaceHolder1_gdvData"
										style="width: 100%; border-collapse: collapse;"
										id="shareCertificate">
										<caption style="text-decoration: underline;"><h4>SHARE TRANSFER DATA LIST</h4></caption>
										<tr style="color: White; background-color: #008385;">
											<th scope="col">SR NO.</th>
											<th scope="col">MEMBER NO. (FROM)</th>
											<th scope="col">MEMBER NAME (FROM)</th>
											<th scope="col">CERTIFICATE NO. (FROM)</th>
											<th scope="col">NO. OF SHARE (FROM)</th>
											<th scope="col">SHARE AMOUNT (FROM)</th>
											<th scope="col">TOTAL NO. OF SHARE TRANSFER (FROM)</th>
											<th scope="col">REAMINING NO. OF SHARE (FROM)</th>
											<th scope="col">REAMAINING SHARE AMOUNT (FROM)</th>
											<th scope="col">MEMBER NO. (TO)</th>
											<th scope="col">MEMBER NAME (TO)</th>
											<th scope="col">CERTIFICATE NO. (TO)</th>
											<th scope="col">PREVIOUS NO. OF SHARE (TO)</th>
											<th scope="col">TOTAL NO. OF SHARE AFTER SHARE TRANSFER
												(TO)</th>
											<th scope="col">TOTAL SHARE AMOUNT TRANSFER (TO)</th>
											<th scope="col">TOTAL SHARE AMOUNT (TO)</th>
											<th scope="col">TRANSFER DATE</th>
										</tr>
										<tbody id="ShareTransfer">
										</tbody>
									</table>
									<div></div>
								</div>
							</div>
						</div>
					</div>
				</section>
			</form>
		</div>

		<script type="text/javascript">
			function calculate() {
				var ShareTransfer = document.getElementById('shareTransfer').value;
				var TransferAmount = document.getElementById('transferAmount');
				var result = (10 * ShareTransfer);
				transferAmount.value = result;
			}

			function calculate2() {
				let transferAmountInput = document
						.getElementById('shareTransfer').value * 10;
				var previousNoOfShare = document
						.getElementById('previousNoOfShare').value * 10;
				var result1 = transferAmountInput + previousNoOfShare;
				totalAmount.value = result1;
			}

			function calculate3() {
				var reamingNoOfShareInput = document
						.getElementById('reamingNoOfShare').value * 10;
				reamingShareAmount.value = reamingNoOfShareInput;
			}
		</script>

		<script type="text/javascript">
			document
					.getElementById("shareTransfer")
					.addEventListener(
							"input",
							function() {

								var noOfShare = parseFloat(document
										.getElementById("noOfShare").value) || 0;
								var shareTransfer = parseFloat(document
										.getElementById("shareTransfer").value) || 0;

								var remainingNoOfShare = noOfShare
										- shareTransfer;

								document.getElementById("reamingNoOfShare").value = remainingNoOfShare;
							});
		</script>

		<script type="text/javascript">
			var previousNoOfShareInput = document
					.getElementById("previousNoOfShare");
			var shareTransferInput = document.getElementById("shareTransfer");
			var totalShareInput = document.getElementById("totalShare");

			function updateTotalShare() {
				var previousNoOfShareValue = previousNoOfShareInput.value;
				var shareTransferValue = shareTransferInput.value;

				// Ensure that the values are valid numbers; if not, default them to 0
				var previousNoOfShare = parseFloat(previousNoOfShareValue) || 0;
				var shareTransfer = parseFloat(shareTransferValue) || 0;

				var totalShare = previousNoOfShare + shareTransfer;
				totalShareInput.value = totalShare;
			}

			// Add event listeners to the input fields to trigger the update function
			previousNoOfShareInput.addEventListener("input", updateTotalShare);
			shareTransferInput.addEventListener("input", updateTotalShare);
			window.addEventListener("load", updateTotalShare);
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
		<script src="dist/js/memberShare.js"></script>
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
		<script>
			$(document).ready(function() {
				$('#btnTransfer').click(function() {

					if ($("#memberNameTo").val() == "") {
						alert("Select Whom You Want To Transfer Share");
						return;
					}
					if ($("#shareTransfer").val() == "") {
						alert("Write How Many Share You Want To Transfer");
						return;
					}
					if ($("#transferAmount").val() == "") {
						alert("Enter Amount You Want To Transfer");
						return;
					}
					if ($("#transferDate").val() == "") {
						alert("Write Transfer Date.");
						return;
					}
					if ($("#memberNameTo").val() == "") {
						alert("Select Whom You Want To Transfer Share");
						return;
					}

					var form = $('#fileUploadForm')[0];
					var data = new FormData(form);
					$.ajax({
						url : 'shareTransferCode',
						type : 'POST',
						enctype : 'multipart/form-data',
						data : data,
						processData : false,
						contentType : false,
						cache : false,
						success : function(response) {
							alert(response)
							window.location.href = "shareCertificate";
							//console.log(response);
						},
						error : function(xhr, status, error) {
							console.log(xhr.responseText);
						}
					});
				});
			});
		</script>
</body>
<!-- Dk/Admin/ShareCertificate.aspx EDB D 09:26:57 GMT -->
</html>