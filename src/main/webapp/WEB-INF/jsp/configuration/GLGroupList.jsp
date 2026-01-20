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
				<h1 id="ContentPlaceHolder1_IdHeader">GL Group List</h1>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Accounting</li>
				</ol>
			</section>
			<!-- <form method="" action="" id="form1" modelAttribute=""
				enctype="multipart/form-data"> -->
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="box box-success">
								<div class="box-header with-border">
									<h3 class="box-title">GL Group List</h3>
								</div>
								<div class="box-body">
									<div class="col-md-6">
										<div class="form-group row">
											<label class="col-sm-4 control-label">Select Group
												Type</label>
											<div class="col-sm-8">
												<select name="selectGroupType" id="selectGroupType"
													class="form-control select2" style="width: 100%;" disabled="disabled">
													<option value="">All</option>
													<option selected="selected" value="Other">Other</option>
												</select>
											</div>
										</div>
										<h5 style="font-weight: bold; margin-left: 15px;">Primary
											Group</h5>
										<label> 
										<input type="radio" name="primaryGroup"
											value="Profit Loss" style="margin-left: 15px;"
											onclick="toggleRadioButtons('incomeExpenseRadios', 'assetLiabilityRadios');">Profit Loss
										</label> 
										<label> 
    									<input type="radio" name="primaryGroup" 
           									onclick="toggleRadioButtons('assetLiabilityRadios', 'incomeExpenseRadios');" 
          	 								value="Balance Sheet" style="margin-left: 15px;">Balance Sheet
										</label>
 										<label> 
 										<input type="radio" name="primaryGroup" onclick="showData();"
											value="All" style="margin-left: 15px;">All
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
										<div class="row col-md-12">
											<input type="button" name="btnShow" value="Show" id="btnShow" class="btn btn-success pull-right margin-r-5" 
											onclick="showData()">
									   </div>		
									</div>
									<div class="col-md-6">
										
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
								border="1" id="glGroupTable"
								style="width: 100%; border-collapse: collapse;">
								<caption></caption>
								<thead>
									<tr style="color: White; background-color: #008385;">
										<th scope="col">Select</th>
										<th scope="col">Sr No.</th>
										<th scope="col">Account Group</th>
										<th scope="col">Primary Group</th>
										<th scope="col">Group Type</th>
										<th scope="col">Account Group(Unicode)</th>
										<th scope="col">View</th>
										<th scope="col">Delete</th>
									</tr>
								</thead>
								<tbody id="glGroupTableBody">
								</tbody>
							</table>
						</div>
						</div>
						<div class="box-body">
							<div class="clearfix margin-bottom-10"></div>
						</div>
					</div>
				</section>
			<!-- </form> -->
		</div>
		<!-- /.content-wrapper -->
		<div class="control-sidebar-bg"></div>
	</div>
	
	<script>
	function showData() {
	    var primaryGroup = $('input[name="primaryGroup"]:checked').val();
	    var primarySubGroup = $('input[name="primarySubGroup"]:checked').val();

	    if (primaryGroup === "Profit Loss" || primaryGroup === "Balance Sheet" || primaryGroup === "All") {
	        $.ajax({
	            type: "POST",
	            url: "/retrieveDataByPrimaryGroupAndSubGroup",
	            contentType: "application/json",
	            data: JSON.stringify({ primaryGroup: primaryGroup, primarySubGroup: primarySubGroup }),
	            success: function (data) {
	                var glGroupTableBody = $('#glGroupTableBody');
	                glGroupTableBody.empty();
	                $.each(data, function (index, item) {
	                    var row = $('<tr>');
	                    row.append($('<td><input type="checkbox"></td>'));
	                    row.append($('<td>' + (index + 1) + '</td>'));
	                    row.append($('<td>' + item.accountGroup + '</td>'));
	                    row.append($('<td>' + item.primaryGroup + '</td>'));
	                    row.append($('<td>' + item.groupType + '</td>'));
	                    row.append($('<td>' + item.accountGroupUnicode + '</td>'));
	                   /*  row.append($('<td><a href="getNewGLGroupEditByID?id=${item.id}">View</a></td>')); */ 
	                   var viewLink=$('<td><a href="/getNewGLGroupEditByID?id='+item.id+'">View</a></td>')
	                   row.append(viewLink);
	                   
                       var deleteLink = $('<td><a href="javascript:;" class="delete-link">Delete</a></td>');
                       deleteLink.on('click', function () {
                       var confirmation = confirm("Are you sure you want to delete this ID?");
                       if (confirmation) {
                       $.ajax({
                       type: "POST",
                       url: "/deleteGLGroupListById",
                       data: { id: item.id },
                       success: function () {
                    	   row.remove();
                       },
                       error: function (error) {
                       console.log("Error:", error); 
             }
         });
     }
 });

                      row.append(deleteLink);

	                    glGroupTableBody.append(row);
	                });
	            },
	            error: function (error) {
	                console.log("Error:", error);
	            }
	        });
	    } else {
	        console.log("Primary Group not supported.");
	    }
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
		<script src="dist/js/accountingJs.js"></script>
	<!-- Select2 -->
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script>
</body>
<!-- Dk/Admin/ShareIssue.aspx?ismodify=false EDB D 09:26:56 GMT -->
</html>