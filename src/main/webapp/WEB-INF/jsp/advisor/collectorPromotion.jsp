<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	onload="selectCodeOfAdvisor(); selectCodeOfAdvisoridPosition(); getBranchName()"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!--     <form method="post" action="updateColectorPromotion"  modelAttribute="user" id="form1"> -->
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
				<h1 id="ContentPlaceHolder1_IdHeader"><b>Advisor Promotion</b></h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Advisor Promotion</li>
				</ol>
			</section>
			<section class="content">
				<div class="box box-success">
					<div class="box-header with-border">
						<h3 class="box-title">Advisor Promotion</h3>
					</div>

					<form id="myForm" class="form-horizontal">
						<div class="box-body">

							<!-- ROW 1 -->
							<div class="row three-col-row">
								<div class="col-md-4">
									<label>Select Code *</label> <select id="id" name="id"
										onchange="fetchBySelectedCode()" class="form-control select2"></select>
								</div>

								<div class="col-md-4">
									<label>Position *</label> <input id="position" name="position"
										readonly class="form-control">
								</div>

								<div class="col-md-4">
									<label>Branch *</label> <input id="branch" name="branch"
										readonly class="form-control">
								</div>
							</div>

							<!-- ROW 2 -->
							<div class="row three-col-row">
								<div class="col-md-4">
									<label>Senior Code *</label> <input id="seniorCode"
										name="seniorCode" readonly class="form-control">
								</div>

								<div class="col-md-4">
									<label>Senior Position *</label> <input id="position1"
										name="position1" readonly class="form-control">
								</div>

								<div class="col-md-4">
									<label>Immidiate Sr *</label> <input id="immidiateSr"
										name="immidiateSr" readonly class="form-control">
								</div>
							</div>

							<!-- ROW 3 -->
							<div class="row three-col-row">
								<div class="col-md-4">
									<label>Sr. Position *</label> <input id="srPosition"
										name="srPosition" readonly class="form-control">
								</div>

								<div class="col-md-4">
									<label>Immidiate Jr</label> <input id="immidiateJr"
										name="immidiateJr" readonly class="form-control">
								</div>

								<div class="col-md-4">
									<label>Jr. Position</label> <input id="jrPosition"
										name="jrPosition" readonly class="form-control">
								</div>
							</div>

							<!-- ROW 4 -->
							<div class="row three-col-row">
								<div class="col-md-4">
									<label>Select Branch *</label> <select id="branchName"
										name="branchName" class="form-control"></select>
								</div>

								<div class="col-md-4">
									<label>New Position *</label> <select id="selectPosition"
										name="selectPosition" class="form-control"></select>
								</div>

								<div class="col-md-4">
									<label>New Senior *</label> <input id="newSenior"
										name="newSenior" class="form-control">
								</div>
							</div>

							<!-- ROW 5 -->
							<div class="row three-col-row">
								<div class="col-md-4">
									<label>Senior Name *</label> <input id="seniorName"
										name="seniorName" readonly class="form-control">
								</div>

								<div class="col-md-4">
									<label>Senior Position *</label> <input id="seniorPosition"
										name="seniorPosition" readonly class="form-control">
								</div>
							</div>

						</div>

						<div class="box-footer text-right">
							<button type="submit" class="btn btn-success">Update</button>
						</div>
					</form>
				</div>
			</section>
		</div>
		<div class="control-sidebar-bg"></div>
	</div>

	<script>
		$(document).ready(function() {
			$("#myForm").submit(function(e) {
				e.preventDefault(); // prevent default form submit action

				var formData = new FormData($(this)[0]); // create new FormData object from form data
				console.log(formData);

				$.ajax({
					url : "updateThroughSelectedCode",
					type : "POST",
					data : formData,
					processData : false,
					contentType : false,
					success : function(data) {

						alert("Updated Successfully")
						window.location.href = "collectorPromotion";
					},
					error : function(error) {
						alert(error)
						console.log(error);
					}
				});
			});
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
	<script src="dist/js/AdvisorTeamCollection.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
	<!-- </form> -->
</body>
</html>