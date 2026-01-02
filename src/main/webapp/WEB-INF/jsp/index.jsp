<!DOCTYPE html>
<html class="no-js" lang="">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
<meta charset="utf-8" />
<meta http-equiv="x-ua-compatible" content="ie=edge" />
<title>Login</title>
<meta name="description" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!-- Favicon -->
<link rel="shortcut icon" href="images/favicon.html" type="image/x-icon" />
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<!-- Fontawesome CSS -->
<link rel="stylesheet" href="css/fontawesome-all.min.css" />
<!-- Flaticon CSS -->
<link rel="stylesheet" href="font/flaticon.css" />
<!-- Google Web Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&amp;display=swap"
	rel="stylesheet" />
<link rel="stylesheet"
	href="../cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<!-- Custom CSS -->
<link rel="stylesheet" href="css/style.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
	crossorigin="anonymous">

<style>
/* Full Screen Background Image */
body.login-bg {
	height: 100vh;
	margin: 0;
	background: url("../img/figure/bgImage.jpg") no-repeat center center
		fixed;
	background-size: cover;
	display: flex;
	justify-content: center;
	align-items: center;
	font-family: "Poppins", sans-serif;
}

/* Login Card */
.login-card {
	width: 420px;
	background: #ffffffdd;
	padding: 30px;
	border-radius: 16px;
	box-shadow: 0px 10px 35px rgba(0, 0, 0, 0.15);
	text-align: center;
	position: relative;
	overflow: visible;
	backdrop-filter: blur(4px);
}

/* Profile Circle Image */
.profile-img {
	width: 130px;
	height: 130px;
	border-radius: 50%;
	object-fit: cover;
	border: 5px solid white;
	position: absolute;
	top: -65px;
	left: 50%;
	transform: translateX(-50%);
	box-shadow: 0 6px 20px rgba(0, 0, 0, 0.2);
}

/* Title */
.login-card h3 {
	margin-top: 80px;
	font-weight: 700;
	color: #343a40;
}

/* Inputs */
.form-control {
	height: 48px;
	border-radius: 10px;
}

/* Login Button */
.login-btn {
	width: 100%;
	height: 48px;
	border-radius: 10px;
	font-size: 18px;
	font-weight: 600;
	transition: 0.3s;
}

</style>
</head>

<body class="login-bg">
	<div id="preloader" class="preloader">
		<div class='inner'>
			<div class='line1'></div>
			<div class='line2'></div>
			<div class='line3'></div>
		</div>
	</div>
	<form method="post" action="loginValidate">

		<div class="login-card">

			<!-- PROFILE IMAGE (Circular Avatar above form) -->
			<img src="../img/figure/loginlogo.png" class="profile-img"
				alt="Profile Image">

			<h3>FINANCE LOGIN</h3>
			<p class="text-muted">Please login to continue</p>

			<!-- User ID -->
			<div class="mt-3 text-start">
				<label class="fw-bold">User ID</label> <input type="text"
					class="form-control" name="userId" id="userId"
					placeholder="Enter User ID"> <span id="rfvloginuser"
					style="display: none; color: red;">Enter User Name</span>
			</div>

			<!-- Password -->
			<div class="mt-3 text-start">
				<label class="fw-bold">Password</label> <input type="password"
					class="form-control" name="password" id="password"
					placeholder="Enter Password"> <span id="rfvloginPassword"
					style="display: none; color: red;">Enter Password</span>
			</div>

			<!-- Backend Error Message -->
			<%
			String msg = (String) request.getAttribute("msg");
			%>
			<%
			if (msg != null) {
			%>
			<p style="color: red; margin-top: 10px;"><%=msg%></p>
			<%
			}
			%>

			<!-- Login Button -->
			<button type="submit" class="btn btn-outline-warning mt-4 login-btn">Login</button>

		</div>

	</form>
	<!-- jquery-->
	<script src="js/jquery-3.5.0.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Imagesloaded js -->
	<script src="js/imagesloaded.pkgd.min.js"></script>
	<!-- Validator js -->
	<script src="js/validator.min.js"></script>
	<!-- Custom Js -->
	<script src="js/main.js"></script>
	<script type="text/javascript">
		//<![CDATA[
		var Page_Validators = new Array(
				document.getElementById("rfvloginuser"), document
						.getElementById("rfvloginPassword"));
		//]]>
	</script>
	<script type="text/javascript">
		//<![CDATA[
		var rfvloginuser = document.all ? document.all["rfvloginuser"]
				: document.getElementById("rfvloginuser");
		rfvloginuser.controltovalidate = "txtusername";
		rfvloginuser.focusOnError = "t";
		rfvloginuser.errormessage = "Enter User Name";
		rfvloginuser.display = "Dynamic";
		rfvloginuser.validationGroup = "A";
		rfvloginuser.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		rfvloginuser.initialvalue = "";
		var rfvloginPassword = document.all ? document.all["rfvloginPassword"]
				: document.getElementById("rfvloginPassword");
		rfvloginPassword.controltovalidate = "txtPassword";
		rfvloginPassword.focusOnError = "t";
		rfvloginPassword.errormessage = "Enter Password";
		rfvloginPassword.display = "Dynamic";
		rfvloginPassword.validationGroup = "A";
		rfvloginPassword.evaluationfunction = "RequiredFieldValidatorEvaluateIsValid";
		rfvloginPassword.initialvalue = "";
		//]]>
	</script>
	<script type="text/javascript">
		//<![CDATA[

		var Page_ValidationActive = false;
		if (typeof (ValidatorOnLoad) == "function") {
			ValidatorOnLoad();
		}

		function ValidatorOnSubmit() {
			if (Page_ValidationActive) {
				return ValidatorCommonOnSubmit();
			} else {
				return true;
			}
		}
		//]]>
	</script>
</body>
</html>