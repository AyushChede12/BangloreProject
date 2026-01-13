<jsp:include page="../header.jsp" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	

<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true">
	<!-- <form method="post" action="updateCompanyDetails" modelAttribute="updateCompanyDetails" id="form1"> -->
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
					<b>CUSTOMIZATION</b>
				</h1>
				<h5 style="margin-left: 18px;">COMPANY MANAGE</h5>
				<ol class="breadcrumb">
					<li><a href="Home.html"><i class="fa fa-dashboard"></i>
							Home</a></li>
					<li><a href="#">Dashboard</a></li>
					<li class="active">Setting</li>
				</ol>
			</section>
			<section class="content">
				<div class="row">
					<div class="col-md-12">
						<div class="form-container">
							<div class="box-header ">
								<h3 class="box-title">Company Details</h3>
								<div class="box-tools pull-right">
										<button type="button" name="BtnEdit" id="BtnEdit"
											onclick="enableDisabledField()" style="background-color: green; border: none;" class="btn btn-sm btn-primary"
											title="Edit Company Details">
	
											<i class="fa fa-pencil"></i>  Edit
										</button>


								</div>
							</div>
							<form id="formid">
								<div id="ContentPlaceHolder1_pnlCdetails" class="aspNetDisabled">
									<div class="box-body">
										<!-- row-1  -->
										<div class="col-md-12" style="margin-top: 15px;">
											<input type="hidden" id="id" name="id">
											<div class="col-md-3">

												<label>Company Name :</label> <input name="companyName"
													type="text" placeholder="ENTER COMPANY NAME"
													readonly="readonly" id="companyName" class="form-control"
													autocomplete="off" /> <small id="chkcompanyname"
													style="color: red"></small>

											</div>
											<div class="col-md-3">

												<label>Short Name :</label> <input name="shortName"
													type="text" placeholder="ENTER SHORT NAME" maxlength="4"
													readonly="readonly" id="shortName" class="form-control"
													autocomplete="off" /> <small id="chkshortname"
													style="color: red"></small>

											</div>
											<div class="col-md-3">

												<label>Registration Date :</label> <input name="doj"
													type="date" readonly="readonly" id="doj"
													class="form-control"
													data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;"
													data-mask="" /> <small id="chkregistrationdate"
													style="color: red"></small>

											</div>
											<div class="col-md-3">

												<label>CIN No. :</label> <input name="cin" type="text"
													placeholder="ENTER CIN NO" readonly="readonly" id="cin"
													class="form-control" autocomplete="off" /> <small
													id="chkcinno" style="color: red"></small>

											</div>

										</div>

										<!-- row 2 -->
										<div class="col-md-12" style="margin-top: 15px;">

											<div class="col-md-3">

												<label>PAN :</label> <input name="pan" type="text"
													placeholder="ENTER PAN" readonly="readonly" id="pan"
													class="form-control" autocomplete="off" /> <small
													id="chkpan" style="color: red"></small>

											</div>
											<div class="col-md-3">

												<label>TAN :</label> <input name="tan" type="text"
													placeholder="ENTER TAN" readonly="readonly" id="tan"
													class="form-control" autocomplete="off" /> <small
													id="chktan" style="color: red"></small>

											</div>
											<div class="col-md-3">

												<label>GSTIN :</label> <input name="gst" type="text"
													readonly="readonly" id="gst" class="form-control"
													autocomplete="off" placeholder="ENTER GSTIN" /> <small
													id="chkgstin" style="color: red"></small>

											</div>
											<div class="col-md-3">

												<label>Nominal Share Value :</label> <input
													name="shareValue" type="text" value="10"
													readonly="readonly" id="shareValue" class="form-control"
													autocomplete="off" placeholder="ENTER NOMINAL SHARE VALUE"
													onkeypress="return isNumberKey(this, event);" /> <small
													id="chknominalsharevalue" style="color: red"></small>

											</div>
										</div>


										<!-- row 3 -->
										<div class="col-md-12" style="margin-top: 15px;">
											<div class="col-md-3">

												<label>Address :</label> <input name="address" type="text"
													placeholder="ENTER ADDRESS" readonly="readonly"
													id="address" class="form-control" autocomplete="off" /> <small
													id="chkaddress" style="color: red"></small>

											</div>
											<div class="col-md-3">

												<label>State :</label> <input name="state" type="text"
													placeholder="ENTER STATE" readonly="readonly" id="state"
													class="form-control" autocomplete="off" /> <small
													id="chkstate" style="color: red"></small>

											</div>
											<div class="col-md-3">

												<label>Pin Code :</label> <input name="pinCode" type="text"
													placeholder="ENTER PIN CODE" readonly="readonly"
													id="pinCode" class="form-control" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" /> <small
													id="chkpincode" style="color: red"></small>

											</div>
											<div class="col-md-3">

												<label>Email ID :</label> <input name="email" type="text"
													placeholder="ENTER EMAIL ID" readonly="readonly" id="email"
													class="form-control" autocomplete="off" /> <small
													id="chkemailid" style="color: red"></small>

											</div>
										</div>


										<!-- row 4 -->
										<div class="col-md-12" style="margin-top: 15px;">
											<div class="col-md-3">

												<label>Authorized Capital :</label> <input
													name="authorizedcapital" type="text"
													placeholder="ENTER AUTHORIZED CAPITAL" readonly="readonly"
													id="authorizedcapital" class="form-control"
													autocomplete="off"
													onkeypress="return isNumberKey(this, event);" /> <small
													id="chkauthorizedcapital" style="color: red"></small>

											</div>
											<div class="col-md-3">

												<label>PaidUp Capital :</label> <input name="paidup"
													type="text" placeholder="ENTER PAIDUP CAPITAL"
													readonly="readonly" id="paidup" class="form-control"
													autocomplete="off"
													onkeypress="return isNumberKey(this, event);" /> <small
													id="chkpaidupcapital" style="color: red"></small>

											</div>
											<div class="col-md-3">

												<label>NOF :</label> <input name="landLine" type="text"
													placeholder="ENTER NOF" readonly="readonly" id="landLine"
													class="form-control" autocomplete="off" /> <small
													id="chknof" style="color: red"></small>

											</div>
											<div class="col-md-3">

												<label>Mobile No :</label> <input name="mobile" type="text"
													placeholder="ENTER MOBILE NO" readonly="readonly"
													id="mobile" class="form-control" autocomplete="off" /> <small
													id="chkmobileno" style="color: red"></small>

											</div>
										</div>


										<!-- row 5 -->
										<div class="col-md-12" style="margin-top: 15px;">
											<div class="col-md-3">

												<label>TDS (With PAN) :</label> <input name="tDSWithPAN"
													type="text" placeholder="ENTER TDS(WITH PAN)"
													readonly="readonly" id="tDSWithPAN" class="form-control"
													autocomplete="off"
													onkeypress="return isNumberKey(this, event);" /> <small
													id="chktdswithpan" style="color: red"></small>

											</div>
											<div class="col-md-3">

												<label>TDS (Without PAN) :</label> <input
													name="tDSWithoutPAN" type="text"
													placeholder="ENTER TDS(WITHOUT PAN)" readonly="readonly"
													id="tDSWithoutPAN" class="form-control" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" /> <small
													id="chktdswithoutpan" style="color: red"></small>

											</div>
											<div class="col-md-3">

												<label>TAX Deduction:</label> <input name="tax" type="text"
													placeholder="ENTER TAX DEDUCTION" readonly="readonly"
													id="tax" class="form-control" autocomplete="off"
													onkeypress="return isNumberKey(this, event);" /> <small
													id="chktaxdeduction" style="color: red"></small>

											</div>
											<div class="col-md-3">

												<label>TAX Deduction(Senior) :</label> <input name="taxSr"
													type="text" placeholder="ENTER TAX DEDUCTION(SENIOR)"
													readonly="readonly" id="taxSr" class="form-control"
													autocomplete="off"
													onkeypress="return isNumberKey(this, event);" /> <small
													id="chktaxdeductionsenior" style="color: red"></small>

											</div>
										</div>
										<!-- row 6  -->
										<div class="col-md-12" style="margin-top: 15px;">

											<div class=" col-md-3"
												style="display: flex; margin: 15px 0 30px;">
												<div class="box-body">
													<div>
														<h4>
															<b>Logo</b>
														</h4>
														<p class="help-block">Maximum 10MB</p>
													</div>
													<div class="col-md-3">

														<div class="text-center">
															<img id="preview" class="profile-user-img"
																src="upload_Files/${Logo}" alt="Image"
																style="height: 110px; width: 110px;"> <input
																type="file" name="filetag" id="filetag" />
														</div>

													</div>
													<!-- <div class="clearfix"></div> -->
												</div>


												<div class="box-body">
													<div>
														<h4>
															<b>Signature</b>
														</h4>
														<p class="help-block">Maximum 10MB</p>
													</div>
													<div class="col-md-3">

														<div class="text-center">
															<img id="secondpreview" class="profile-user-img"
																src="upload_Files/${Signature}" alt="Image"
																style="height: 110px; width: 110px;"> <input
																type="file" name="secondfiletag" id="secondfiletag" />
														</div>

													</div>
													<!-- <div class="clearfix"></div> -->
												</div>

											</div>
										</div>



										<!-- row 7 -->
										<div class="col-md-12" style="margin-top: 15px;">
											<div class=" col-md-12" style="text-align: center;">
												<button type="submit"
													class="btn btn-info pull-right margin-r-5" id="updateBtn"
													disabled>Update</button>
											</div>
										</div>


									</div>

								</div>
							</form>
						</div>

					</div>

				</div>
			</section>
		</div>


		<!-- /.content-wrapper -->
		<div class="control-sidebar-bg"></div>
	</div>

	<script src="dist/js/adminlte.min.js"></script>
	<script src="dist/js/customization/companyDetails.js"></script>

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
	AdminLTE App
	<script src="dist/js/adminlte.min.js"></script>
	AdminLTE for demo purposes
	<script src="dist/js/demo.js"></script>
	Select2
	<script src="bower_components/select2/dist/js/select2.full.min.js"></script> -->


</body>
</html>