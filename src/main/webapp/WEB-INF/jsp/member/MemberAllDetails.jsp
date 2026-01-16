<%@ page import="java.util.List"%>
<%@ page import="com.society.application.model.Member"%>
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	onload="summaryDataFetchinDropDown();"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<form method="post" action="" id="form1">
		<script type="text/javascript">
			//<![CDATA[       
			function callback(ids) {
				var input = {
					"id" : ids
				}
				$
						.ajax({
							type : "post",
							contentType : "application/json",
							data : JSON.stringify(input),
							url : 'getMember',
							asynch : false,
							success : function(data) {
								var x = Number(data.id)
								document.getElementById("id").value = x;
								document.getElementById("memberName").value = data.memberName;
								document.getElementById("registrationDate").value = data.registrationDate;
								document.getElementById("relativeName").value = data.relativeName;
								document.getElementById("dob").value = data.dob;
								document.getElementById("address").value = data.address;
								document.getElementById("pinCode").value = data.pinCode;
								document.getElementById("nomineeName").value = data.nomineeName;
								document.getElementById("emailid").value = data.emailid;
								document.getElementById("dob").value = data.dob;
								document.getElementById("age").value = data.age;
								document.getElementById("bankCode").value = data.branchName;
								document.getElementById("gender").value = data.gender;
							},
							error : function() {
								alert("Device control failed");
							}
						});
			}
			document.getElementById("btnView").onclick = function() {
				this.disabled = true
			}
			//]]>
		</script>
		<div
			style="height: auto; min-height: 100%;  margin: 15px; background: url(dist/img/back.jpg);">
			<!-- Header Start-->
			<jsp:include page="../menu.jsp" />
			<!-- Header End -->
			<!-- Left side column. contains the logo and sidebar -->
			<!-- Aside Menu Start-->
			<jsp:include page="../asideMenu.jsp" />
			<!-- Aside Menu end -->
			<script type="text/javascript">
				//<![CDATA[
				Sys.WebForms.PageRequestManager
						._initialize(
								'ctl00$ScriptManager1',
								'form1',
								[
										'tctl00$ContentPlaceHolder1$UpdatePanel3',
										'ContentPlaceHolder1_UpdatePanel3',
										'tctl00$ContentPlaceHolder1$gdvData$ctl02$UpdatePanel3',
										'ContentPlaceHolder1_gdvData_UpdatePanel3_0',
										'tctl00$ContentPlaceHolder1$gdvData$ctl03$UpdatePanel3',
										'ContentPlaceHolder1_gdvData_UpdatePanel3_1',
										'tctl00$ContentPlaceHolder1$gdvData$ctl04$UpdatePanel3',
										'ContentPlaceHolder1_gdvData_UpdatePanel3_2',
										'tctl00$ContentPlaceHolder1$gdvData$ctl05$UpdatePanel3',
										'ContentPlaceHolder1_gdvData_UpdatePanel3_3',
										'tctl00$ContentPlaceHolder1$gdvData$ctl06$UpdatePanel3',
										'ContentPlaceHolder1_gdvData_UpdatePanel3_4',
										'tctl00$ContentPlaceHolder1$gdvData$ctl07$UpdatePanel3',
										'ContentPlaceHolder1_gdvData_UpdatePanel3_5',
										'tctl00$ContentPlaceHolder1$gdvData$ctl08$UpdatePanel3',
										'ContentPlaceHolder1_gdvData_UpdatePanel3_6',
										'tctl00$ContentPlaceHolder1$gdvData$ctl09$UpdatePanel3',
										'ContentPlaceHolder1_gdvData_UpdatePanel3_7',
										'tctl00$ContentPlaceHolder1$gdvData$ctl10$UpdatePanel3',
										'ContentPlaceHolder1_gdvData_UpdatePanel3_8' ],
								[], [], 90, 'ctl00');
				//]]>
			</script>
			<!-- Content Wrapper. Contains page content -->
			<div class="content-wrapper" style="min-height: 1105.75px;">
				<section class="content-header">
					<h1 id="ContentPlaceHolder1_IdHeader">
					<b>CUSTOMER MODULE</b>
				</h1>
				<h5 style="margin-left: 18px;">VIEW SUMMARY</h5>
					<ol class="breadcrumb">
						<li><a href="Home.html"><i class="fa fa-dashboard"></i>
								Home</a></li>
						<li><a href="#">Dashboard</a></li>
						<li class="active">Summary</li>
					</ol>
				</section>
				<section class="content">
					<div class="row">
						<div class="col-md-12">
							<div class="form-container">
								<div class="box-header">
									<h3 class="box-title">SEARCH DETAILS</h3>
								</div>
								<div class="form-horizontal">
									<div class="box-body">
										<div class="col-md-6">
											<div class="row">
												<label class="col-sm-4 control-label">SELECT BY CODE<strong
													style="color: Red">*</strong></label>
												<div class="col-sm-8">
													<select
														name="ctl00$ContentPlaceHolder1$ddlSearchMemberCode"
														onchange="SearchTHePolicyNumber();"
														id="ContentPlaceHolder1_ddlSearchMemberCode"
														class="form-control select2">
														<option selected="selected" value="">SELECT
															CRITERIA</option>
													</select>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
							<div class="form-container">
								<div class="box-header">
									<h3 class="box-title">CUSTOMER DETAILS</h3>
								</div>

								<div class="box-body form-horizontal">
									<div class="row four-field-row">

										<div class="col-md-3">
											<label class="col-sm-4 control-label">CUSTOMER CODE :</label>
											<div class="col-sm-8">
												<input name="id" type="text" disabled="disabled" id="id"
													class="form-control" autocomplete="off" />
											</div>
										</div>

										<div class="col-md-3">
											<label class="col-sm-4 control-label">CUSTOMER NAME :</label>
											<div class="col-sm-8">
												<input name="memberName" type="text" maxlength="4"
													disabled="disabled" id="memberName" class="form-control"
													autocomplete="off" />
											</div>
										</div>

										<div class="col-md-3">
											<label class="col-sm-4 control-label">REGISTRATION
												DATE :</label>
											<div class="col-sm-8">
												<div class="input-group date">
													<div class="input-group-addon">
														<i class="fa fa-calendar"></i>
													</div>
													<input name="registrationDate" type="text"
														disabled="disabled" id="registrationDate"
														class="form-control"
														data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
														data-mask="" />
												</div>
											</div>
										</div>

										<div class="col-md-3">
											<label class="col-sm-4 control-label">Relative Name :</label>
											<div class="col-sm-8">
												<input name="relativeName" type="text" disabled="disabled"
													id="relativeName" class="form-control" autocomplete="off" />
											</div>
										</div>
									</div>


									<div class="row four-field-row">

										<div class="col-md-3">
											<label class="col-sm-4 control-label">Address :</label>
											<div class="col-sm-8">
												<input name="address" type="text" disabled="disabled"
													id="address" class="form-control" autocomplete="off" />
											</div>
										</div>

										<div class="col-md-3">
											<label class="col-sm-4 control-label">Pincode :</label>
											<div class="col-sm-8">
												<input name="pinCode" type="text" disabled="disabled"
													id="pinCode" class="form-control" autocomplete="off" />
											</div>
										</div>

										<div class="col-md-3">
											<label class="col-sm-4 control-label">State :</label>
											<div class="col-sm-8">
												<input name="state" type="text" disabled="disabled"
													id="state" class="form-control" autocomplete="off" />
											</div>
										</div>

										<div class="col-md-3">
											<label class="col-sm-4 control-label">Mobile :</label>
											<div class="col-sm-8">
												<input name="phoneno" type="text" disabled="disabled"
													id="phoneno" class="form-control" autocomplete="off" />
											</div>
										</div>
									</div>


									<div class="row four-field-row">

										<div class="col-md-3">
											<label class="col-sm-4 control-label">Aadhar No. :</label>
											<div class="col-sm-8">
												<input name="aadharNo" type="text" disabled="disabled"
													id="aadharNo" class="form-control" autocomplete="off" />
											</div>
										</div>

										<div class="col-md-3">
											<label class="col-sm-4 control-label">PAN :</label>
											<div class="col-sm-8">
												<input name="pan" type="text" disabled="disabled" id="pan"
													class="form-control" autocomplete="off" />
											</div>
										</div>

										<div class="col-md-3">
											<label class="col-sm-4 control-label">Nominee Name :</label>
											<div class="col-sm-8">
												<input name="nomineeName" type="text" disabled="disabled"
													id="nomineeName" class="form-control" autocomplete="off" />
											</div>
										</div>

										<div class="col-md-3">

											<label class="col-sm-4 control-label">Email ID :</label>
											<div class="col-sm-8">
												<input name="emailid" type="text" disabled="disabled"
													id="emailid" class="form-control" autocomplete="off" />
											</div>
										</div>
									</div>


									<div class="row four-field-row">

										<div class="col-md-3">
											<label class="col-sm-4 control-label">DOB :</label>
											<div class="col-sm-8">
												<input name="dob" type="text" disabled="disabled" id="dob"
													class="form-control" autocomplete="off" />
											</div>
										</div>

										<div class="col-md-3">
											<label class="col-sm-4 control-label">Age :</label>
											<div class="col-sm-8">
												<input name="age" type="text" disabled="disabled" id="age"
													class="form-control" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" />
											</div>
										</div>

										<div class="col-md-3">
											<label class="col-sm-4 control-label">Branch Code :</label>
											<div class="col-sm-8">
												<input name="bankCode" type="text" disabled="disabled"
													id="bankCode" class="form-control" autocomplete="off" />
											</div>
										</div>

										<div class="col-md-3">

											<label class="col-sm-4 control-label">Gender :</label>
											<div class="col-sm-8">
												<input name="gender" type="text" disabled="disabled"
													id="gender" class="form-control" autocomplete="off" />
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row" style="margin-top: 20px;">
						<div class="col-md-4">
							<div id="kycSection" class="form-container">
						<div>
							<h3 class="box-title">
								<b>CUSTOMER PHOTO</b>
							</h3>
						</div>

						<div class="box-body form-horizontal">
							<div class="row"  style="margin-top: 20px;">
								<div class="col-sm-2 text-center">
									<label>PHOTO</label> <input type="file" name="aadharCard"
										id="aadharCard" accept="image/*"
										onchange="previewImage(this,'previewFront')"
										style="display: none;"> <label for="aadharFront">
										<img id="previewFront" src="../images/upload/upload.png"
										style="width: 150px; height: 150px; border: 1px solid #ccc; cursor: pointer;">
									</label>
								</div>
							</div>
						</div>
					</div>
						</div>
					</div>

					<!-- <div class="row">
						<div class="col-md-12">
							<div class="box box-success"
								style="box-shadow: none; overflow: auto !important;">
								<div class="box-body">
									<div class="clearfix margin-bottom-10"></div>
									<div>
										<table cellspacing="0" cellpadding="3" rules="all"
											class="display nowrap table table-hover table-striped table-bordered"
											border="1" id="ContentPlaceHolder1_gdvData"
											style="width: 100%; border-collapse: collapse;">
											<caption></caption>
											<tr style="color: White; background-color: #008385;">
											</tr>

										</table>
									</div>
								</div>
							</div>
						</div>
					</div> -->
					<div class="modal modal-success fade" id="modal-success">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title">Details View</h4>
								</div>
								<div class="modal-body">
									<div id="ContentPlaceHolder1_UpdatePanel3">
										<div style="box-shadow: none; overflow: auto;">
											<div></div>
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-outline pull-left"
										data-dismiss="modal">Close</button>
								</div>
							</div>
							<!-- /.modal-content -->
						</div>
						<!-- /.modal-dialog -->
					</div>
					<!-- /.modal -->
				</section>
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
		<!-- Select2 -->
		<script src="bower_components/select2/dist/js/select2.full.min.js"></script>

		<script src="dist/js/memberSection.js"></script>

	</form>
</body>
<!-- Dk/Admin/MemberAllDetails.aspx EDB D 09:26:56 GMT -->
</html>