<style>
.dashboard-cards {
	margin-top: 20px;
}

.dash-card {
	background: #ffffff;
	border-radius: 16px;
	padding: 18px 20px;
	box-shadow: 0 4px 15px rgba(0, 0, 0, 0.08);
	transition: 0.3s ease;
	border-left: 6px solid transparent;
	height: 150px;
}

.dash-card:hover {
	transform: translateY(-6px);
	box-shadow: 0 8px 18px rgba(0, 0, 0, 0.1);
}

.dash-card .title {
	font-size: 15px;
	font-weight: 600;
	margin-bottom: 10px;
	color: #333;
}

.values {
	display: flex;
	justify-content: space-between;
}

.values span {
	font-size: 13px;
	color: #555;
}

.values h3 {
	margin: 5px 0 0 0;
	font-size: 22px;
	font-weight: 700;
	color: #111;
}

/* Unique border colors for each card */
.card1 {
	border-color: #ff9800;
}

.card2 {
	border-color: #4caf50;
}

.card3 {
	border-color: #2196f3;
}

.card4 {
	border-color: #9c27b0;
}

.modern-boxes {
    margin-top: 25px;
}

.new-card {
    background: #fff;
    border-radius: 18px;
    padding: 20px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.10);
    transition: 0.3s ease;
    position: relative;
    overflow: hidden;
}

.new-card:hover {
    transform: translateY(-6px);
    box-shadow: 0 8px 18px rgba(0,0,0,0.15);
}

.new-card .card-header h4 {
    font-size: 17px;
    margin: 0 0 10px 0;
    font-weight: 600;
}

.count-value {
    font-size: 36px;
    font-weight: 700;
    margin-bottom: 12px;
    color: #222;
}

.progress-line {
    height: 3px;
    background: rgba(255,255,255,0.4);
    margin-bottom: 12px;
}

.card-actions {
    display: flex;
    justify-content: space-between;
}

.card-actions a {
    font-size: 14px;
    font-weight: 600;
    color: white;
    text-decoration: none;
    padding: 6px 12px;
    border-radius: 10px;
    background: rgba(255,255,255,0.2);
    backdrop-filter: blur(3px);
    transition: 0.3s;
}

.card-actions a:hover {
    background: rgba(255,255,255,0.35);
}

/* Card Colors */
.c1 { background: linear-gradient(135deg, #00bcd4, #007c91); color: #fff; }
.c2 { background: linear-gradient(135deg, #4caf50, #2e7d32); color: #fff; }
.c3 { background: linear-gradient(135deg, #fbc02d, #f57f17); color: #fff; }
.c4 { background: linear-gradient(135deg, #e53935, #b71c1c); color: #fff; }

</style>
<jsp:include page="../header.jsp" />
<body class="skin-blue sidebar-mini"
	style="height: auto; min-height: 100%; background-color: rgba(36, 105, 92, 0.15);"
	cz-shortcut-listen="true" onload="setCashBalance();setBankMaster()">
	<form method="post" action="" id="form1">
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
				<section class="content bg-dis">
					<div class="row">
						<div class="col-xs-12"
							style="padding-left: 0px; padding-right: 0px;">
							<!--  <div class="box box-success" style="border: 0; margin-bottom: 25px;">
                        <div class="box-body">
                           <div class="col-md-3">
                              <div class="form-group">
                                 <label>Branch :</label>
                                 <select name="ctl00$ContentPlaceHolder1$ddlBranch" id="ContentPlaceHolder1_ddlBranch" class="form-control select2" style="width: 100%;">
                                    <option selected="selected" value="All">All Branch</option>
                                    <option value="001">Main Office - 001</option>
                                 </select>
                              </div>
                           </div>
                           <div class="col-md-3">
                              <div class="form-group">
                                 <label>From Date :</label>
                                 <div class="input-group date">
                                    <div class="input-group-addon">
                                       <i class="fa fa-calendar"></i>
                                    </div>
                                    <input name="ctl00$ContentPlaceHolder1$txtFDate" type="text" value="01/08/2022" id="ContentPlaceHolder1_txtFDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-3">
                              <div class="form-group">
                                 <label>To Date :</label>
                                 <div class="input-group date">
                                    <div class="input-group-addon">
                                       <i class="fa fa-calendar"></i>
                                    </div>
                                    <input name="ctl00$ContentPlaceHolder1$txtTDate" type="text" value="01/08/2022" id="ContentPlaceHolder1_txtTDate" class="form-control" data-inputmask="&#39;alias&#39;: &#39;dd/mm/yyyy&#39;" data-mask="" />
                                 </div>
                              </div>
                           </div>
                           <div class="col-md-3">
                              <div class="form-group">
                                 <label></label>
                                 <a id="ContentPlaceHolder1_btnSearch" class="btn btn-success margin-20" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$btnSearch&#39;,&#39;&#39;)"><span class="fa fa-search"></span> SEARCH</a>
                              </div>
                           </div>
                        </div>
                     </div>-->
						</div>
					</div>
					<div class="row dashboard-cards">

						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="dash-card card1">
								<p class="title">WALLET BALANCE</p>
								<div class="values">
									<div class="left">
										<span>IMPS Bal :</span>
										<h3 id="impsBal">0</h3>
									</div>
									<div class="right">
										<span>NEFT Bal :</span>
										<h3 id="neftBal">0</h3>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="dash-card card2">
								<p class="title">TOTAL RECEIVED</p>
								<div class="values">
									<div class="left">
										<span>Amount :</span>
										<h3>0</h3>
									</div>
									<div class="right">
										<span>Tot.Count :</span>
										<h3>0</h3>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="dash-card card3">
								<p class="title">TOTAL TRANSFER</p>
								<div class="values">
									<div class="left">
										<span>Amount :</span>
										<h3>0</h3>
									</div>
									<div class="right">
										<span>Tot.Count :</span>
										<h3>0</h3>
									</div>
								</div>
							</div>
						</div>

						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="dash-card card4">
								<p class="title">CARD TRANSACTION</p>
								<div class="values">
									<div class="left">
										<span>Balance :</span>
										<h3>0.00</h3>
									</div>
									<div class="right">
										<span>Tot.Count :</span>
										<h3>0</h3>
									</div>
								</div>
							</div>
						</div>

					</div>
					<br> <br>

					<!-- =========================================================== -->
					<div class="row modern-boxes">

						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="new-card c1">
								<div class="card-header">
									<h4>Member</h4>
								</div>
								<h2 id="memberCount" class="count-value">0</h2>

								<div class="card-actions">
									<a href="searchMember"><i class="fa fa-eye"></i> View</a> <a
										href="addMember"><i class="fa fa-plus"></i> Add</a>
								</div>
							</div>
						</div>

						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="new-card c2">
								<div class="card-header">
									<h4>Share Issue</h4>
								</div>
								<h2 id="shareCount" class="count-value">0</h2>

								<div class="card-actions">
									<a href="memberShareReport"><i class="fa fa-eye"></i> View</a>
									<a href="shareIssue"><i class="fa fa-plus"></i> Add</a>
								</div>
							</div>
						</div>

						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="new-card c3">
								<div class="card-header">
									<h4>Advisor / Collector</h4>
								</div>
								<h2 id="advisorCount" class="count-value">0</h2>

								<div class="card-actions">
									<a href="idCardPrinting"><i class="fa fa-eye"></i> View</a> <a
										href="addAdvisor"><i class="fa fa-plus"></i> Add</a>
								</div>
							</div>
						</div>

						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="new-card c4">
								<div class="card-header">
									<h4>RD Policy</h4>
								</div>
								<h2 id="rdCount" class="count-value">0</h2>

								<div class="card-actions">
									<a href="investmentSearch"><i class="fa fa-eye"></i> View</a> <a
										href="addInvestment"><i class="fa fa-plus"></i> Add</a>
								</div>
							</div>
						</div>

					</div>

					<div id="ContentPlaceHolder1_idview2" class="row modern-boxes">

						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="new-card c1">
								<div class="card-header">
									<h4>Daily Policy</h4>
								</div>
								<h2 id="dailyDepositeCount" class="count-value">0</h2>

								<div class="card-actions">
									<a href="investmentSearch"><i class="fa fa-eye"></i> View</a> <a
										href="addInvestment"><i class="fa fa-plus"></i> Add</a>
								</div>
							</div>
						</div>

						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="new-card c2">
								<div class="card-header">
									<h4>FD Policy</h4>
								</div>
								<h2 id="fixedDepositeCount" class="count-value">0</h2>

								<div class="card-actions">
									<a href="investmentSearch"><i class="fa fa-eye"></i> View</a> <a
										href="addInvestment"><i class="fa fa-plus"></i> Add</a>
								</div>
							</div>
						</div>

						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="new-card c3">
								<div class="card-header">
									<h4>MIS Policy</h4>
								</div>
								<h2 id="misCount" class="count-value">0</h2>

								<div class="card-actions">
									<a href="investmentSearch"><i class="fa fa-eye"></i> View</a> <a
										href="addInvestment"><i class="fa fa-plus"></i> Add</a>
								</div>
							</div>
						</div>

						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="new-card c4">
								<div class="card-header">
									<h4>Savings A/C</h4>
								</div>
								<h2 id="savingCount" class="count-value">0</h2>

								<div class="card-actions">
									<a href="searchSavingsAccount"><i class="fa fa-eye"></i>
										View</a> <a href="addSaving"><i class="fa fa-plus"></i> Add</a>
								</div>
							</div>
						</div>

					</div>

					<div id="ContentPlaceHolder1_idview3" class="row modern-boxes">

						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="new-card c1">
								<div class="card-header">
									<h4>Loan</h4>
								</div>
								<h2 id="loanCount" class="count-value">0</h2>

								<div class="card-actions">
									<a href="loanSearch"><i class="fa fa-eye"></i> View</a> <a
										href="LoanApplication"><i class="fa fa-plus"></i> Add</a>
								</div>
							</div>
						</div>

						<div class="col-md-3 col-sm-6 col-xs-12">
							<div class="new-card c2">
								<div class="card-header">
									<h4>Group Loan</h4>
								</div>
								<h2 id="groupCount" class="count-value">0</h2>

								<div class="card-actions">
									<a href="loanSearch"><i class="fa fa-eye"></i> View</a> <a
										href="GroupLoanApplication"><i class="fa fa-plus"></i> Add</a>
								</div>
							</div>
						</div>

					</div>
					
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
	</form>
</body>
<!-- Dk/Admin/Home.aspx EDB D 09:25:45 GMT -->
</html>