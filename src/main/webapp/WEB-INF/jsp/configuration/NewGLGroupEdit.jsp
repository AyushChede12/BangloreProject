<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<!-- 	<form method="" action="" id="" modelAttribute=""
				enctype="multipart/form-data"> -->
			<section class="content">
				<input type="hidden" name="id" id="id" value="${glGroup.id}">
				<div class="row">
					<div class="col-md-12">
						<div class="box box-success">
							<div class="box-header with-border">
								<h3 class="box-title">New GL Group</h3>
							</div>
							<div class="box-body">
								<div class="col-md-6">
									<div class="form-group row">
										<label for="gLGroupNo" class="col-sm-4 control-label">GL
											Group No. </label>
										<div class="col-sm-8">
											<input name="gLGroupNo" type="text" id="gLGroupNo"
												value="${glGroup.gLGroupNo}" class="form-control"
												Placeholder="Enter Account Group" disabled="disabled" />
										</div>
									</div>
									<h5 style="font-weight: bold; margin-left: 15px;">Primary
										Group</h5>
									<label> <input type="radio" name="primaryGroup"
										id="primaryGroup" value="Profit Loss"
										style="margin-left: 15px;"
										onclick="toggleRadioButtons('incomeExpenseRadios', 'assetLiabilityRadios');"
										${glGroup.primaryGroup == 'Profit Loss' ? 'checked' : ''}>Profit
										Loss
									</label> <label> <input type="radio" name="primaryGroup"
										id="primaryGroup" value="Balance Sheet"
										style="margin-left: 15px;"
										onclick="toggleRadioButtons('assetLiabilityRadios', 'incomeExpenseRadios');"
										${glGroup.primaryGroup == 'Balance Sheet' ? 'checked' : ''}>Balance
										Sheet
									</label>
									<div id="incomeExpenseRadios"
										style="display: none; margin-left: 15px;">
										<label> <input type="radio" name="primarySubGroup"
											id="primarySubGroup" value="Income"
											${glGroup.primarySubGroup == 'Income' ? 'checked' : ''}>Income
										</label> <label> <input type="radio" name="primarySubGroup"
											id="primarySubGroup" value="Expenses"
											${glGroup.primarySubGroup == 'Expenses' ? 'checked' : ''}>Expenses
										</label>
									</div>
									<div id="assetLiabilityRadios"
										style="display: none; margin-left: 15px;">
										<label> <input type="radio" name="primarySubGroup"
											id="primarySubGroup" value="Asset"
											${glGroup.primarySubGroup == 'Asset' ? 'checked' : ''}>Asset
										</label> <label> <input type="radio" name="primarySubGroup"
											id="primarySubGroup" value="Liability"
											${glGroup.primarySubGroup == 'Liability' ? 'checked' : ''}>Liability
										</label>
									</div>
									<div class="form-group row">
										<label class="col-sm-4 control-label">Select Group
											Type</label>
										<div class="col-sm-8">
											<select name="groupType" id="groupType"
												value="${glGroup.groupType}" class="form-control select2"
												style="width: 100%;">
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
												value="${glGroup.accountGroup}" class="form-control"
												Placeholder="Enter Account Group" />
										</div>
									</div>
									<div class="form-group row">
										<label for="branchCode" class="col-sm-4 control-label">Account
											Group(Unicode) </label>
										<div class="col-sm-8">
											<input name="accountGroupUnicode" type="text"
												value="${glGroup.accountGroupUnicode}"
												id="accountGroupUnicode" class="form-control"
												Placeholder="Enter Account Group (Unicode)" />
										</div>
									</div>
									<input type="button" name="btnUpdate" value="Update"
										id="btnUpdate" onclick="updateNewGLGroupListByGLGroupNo();"
										class="btn btn-success pull-right margin-r-5" />
									<div class="row col-md-12"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
			<!-- </form> -->
		</div>
		<!-- /.content-wrapper -->
		<div class="control-sidebar-bg"></div>
	</div>

	<script>
	function updateNewGLGroupListByGLGroupNo(){
		  var gLGroupNo = $("#gLGroupNo").val();
		  var primaryGroup = $('input[name="primaryGroup"]:checked').val();
		  
		    var data = {
		        gLGroupNo: gLGroupNo,
		        primaryGroup: primaryGroup, 
		        primarySubGroup: $('input[name="primarySubGroup"]:checked').val(),
		        groupType: $("#groupType").val(),
		        accountGroup: $("#accountGroup").val(),
		        accountGroupUnicode: $("#accountGroupUnicode").val()
		    };
		    
		    $.ajax({
		        type: "POST",
		        url: "/updateNewGLGroupListByGLGroupNo",
		        contentType: "application/json",
		        data: JSON.stringify(data),
		        success: function (response) {
		            alert(response.message);
		            if (response.redirect) {
		                window.location.href = response.redirect;
		            }
		        },
		        error: function () {
		            alert("Failed to update GL Group data.");
		        }
		    });	
	}
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