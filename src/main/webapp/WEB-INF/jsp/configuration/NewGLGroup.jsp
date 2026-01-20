<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
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
				<h1 id="ContentPlaceHolder1_IdHeader">New GL Group</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Accounting</li>
				</ol>
			</section>
			<form method="POST" action="saveNewGLGroupNo" id="form1" modelAttribute="NewGLGroupNoModel"
				enctype="multipart/form-data">
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">New GL Group</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label for="accountGroup" class="col-sm-4 control-label">GL
												Group No. </label>
											<div class="col-sm-8">
												<input name="gLGroupNo" type="text" id="gLGroupNo"
													class="form-control" Placeholder="Enter Account Group"
													disabled="disabled" />
											</div>
										</div>
										<h5 style="font-weight: bold; margin-left: 15px;">Primary
											Group</h5>
										<label> <input type="radio" name="primaryGroup"
											id="primaryGroup" value="Profit Loss"
											style="margin-left: 15px;"
											onclick="toggleRadioButtons('incomeExpenseRadios', 'assetLiabilityRadios');">Profit
											Loss
										</label> <label> <input type="radio" name="primaryGroup"
											id="primaryGroup" value="Balance Sheet"
											style="margin-left: 15px;"
											onclick="toggleRadioButtons('assetLiabilityRadios', 'incomeExpenseRadios');">Balance
											Sheet
										</label>
										<div id="incomeExpenseRadios"
											style="display: none; margin-left: 15px;">
											<label> <input type="radio" name="primarySubGroup"
												id="primarySubGroup" value="Income">Income
											</label> <label> <input type="radio" name="primarySubGroup"
												id="primarySubGroup" value="Expenses">Expenses
											</label>
										</div>
										<div id="assetLiabilityRadios"
											style="display: none; margin-left: 15px;">
											<label> <input type="radio" name="primarySubGroup"
												id="primarySubGroup" value="Asset">Asset
											</label> <label> <input type="radio" name="primarySubGroup"
												id="primarySubGroup" value="Liability">Liability
											</label>
										</div>
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Group
												Type</label>
											<div class="col-sm-8">
												<select name="groupType" id="groupType"
													class="form-control select2" style="width: 100%;">
													<option selected="selected" value="Other">Other</option>
												</select>
											</div>
										</div>
										<div class="form-group row">
											<label for="accountGroup" class="col-sm-4 control-label">Account
												Group<strong style="color: Red">*</strong>
											</label>
											<div class="col-sm-8">
												<input name="accountGroup" type="text" id="accountGroup"
													class="form-control" Placeholder="Enter Account Group" />
											</div>
										</div>
										<div class="form-group row">
											<label for="branchCode" class="col-sm-4 control-label">Account
												Group(Unicode)
											</label>
											<div class="col-sm-8">
												<input name="accountGroupUnicode" type="text"
													id="accountGroupUnicode" class="form-control"
													Placeholder="Enter Account Group (Unicode)" />
											</div>
										</div>
										<div class="row col-md-12">
											<input type="submit" name="btnSave" value="Save" id="btnSave"
												class="btn btn-success pull-right margin-r-5" /> <input
												type="button" name="btnSave" value="Reset" id="resetBtn"
												class="btn btn-success pull-right margin-r-5" />
										</div>
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
	
	<script>
	// Call the function to fetch the maximum G.L Group No. when the page loads
	$(document).ready(function() {
	    fetchMaxGLGroupNo();
	});

	function fetchMaxGLGroupNo() {
	    $.get('/fetchMaxGLGroupNo', function(data) {
	        var gLGroupNo = document.getElementById("gLGroupNo");
	        gLGroupNo.value = data + 1;
	    });
	}
    </script>
    
    <script>
		function validateForm() {
			var accountGroup = document.getElementById("accountGroup").value;
			if (accountGroup === "") {
				alert("Please Write Account Group.");
				return false;
			}
			return true;
		}

		// Add event listener to the form submit event
		document.getElementById("form1").addEventListener("submit",
				function(event) {
					event.preventDefault(); // Prevent the form from submitting
					if (validateForm()) {
						alert("Data saved successfully.");
						window.location.href = "newGLGroup";
						// Submit the form
						this.submit();	
					}
				});
	</script>
    
	<script>
		function toggleRadioButtons(showId, hideId) {
			var showRadios = document.getElementById(showId);
			var hideRadios = document.getElementById(hideId);

			if (showRadios && hideRadios) {
				showRadios.style.display = 'block';
				hideRadios.style.display = 'none';
			}
		}
	</script>
	
	<script type="text/javascript">
	 $("#resetBtn").click(function () {
        // Store the initial value of GL Head No
           var initialGLHeadNoValue = $("#gLGroupNo").val();

           // Reset the form (excluding GL Head No)
           $("#form1")[0].reset();

           // Set the GL Group No field back to its initial value
           $("#gLGroupNo").val(initialGLHeadNoValue);
     });
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
	<script src="dist/js/NewAccountInvestment.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
</body>
<!-- Dk/Admin/ShareIssue.aspx?ismodify=false EDB D 09:26:56 GMT -->
</html>