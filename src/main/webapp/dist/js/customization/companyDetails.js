$(document).ready(function() {

	$.ajax({
		type: "GET",
		contentType: "application/json",
		url: 'getConmapnyDetails',
		asynch: false,
		success: function(response) {

			if (response.status == 'FOUND') {
				let company = response.data[0];
				document.getElementById("id").value = 1;
				document.getElementById("companyName").value = company.companyName;
				document.getElementById("shortName").value = company.shortName;
				document.getElementById("doj").value = company.doj;
				document.getElementById("cin").value = company.cin;
				document.getElementById("pan").value = company.pan;
				document.getElementById("tan").value = company.tan;
				document.getElementById("gst").value = company.gst;
				document.getElementById("shareValue").value = company.shareValue;
				document.getElementById("address").value = company.address;
				document.getElementById("state").value = company.state;
				document.getElementById("pinCode").value = company.pinCode;
				document.getElementById("email").value = company.email;
				document.getElementById("authorizedcapital").value = company.authorizedcapital;
				document.getElementById("paidup").value = company.paidup;
				document.getElementById("landLine").value = company.landLine;
				document.getElementById("mobile").value = company.mobile;
				document.getElementById("tDSWithPAN").value = company.tDSWithPAN;
				document.getElementById("tDSWithoutPAN").value = company.tDSWithoutPAN;
				document.getElementById("tax").value = company.tax;
				document.getElementById("taxSr").value = company.taxSr;

				var imgElement = document
					.getElementById("preview");
				imgElement.src = "data:image/png;base64,"
					+ company.frontEndPhoto;
				//imgElement.src ="data:image/png;base64,"+data[i].image;

				var imgElement = document
					.getElementById("secondpreview");
				imgElement.src = "data:image/png;base64,"
					+ company.frontEndSignature;
				//imgElement.src ="data:image/png;base64,"+data[i].image;
			}

		},
		error: function() {
			alert("Device control failed");
		}
	});

	$("#updateBtn").click(function(event) {
		event.preventDefault();

		// Convert text to uppercase
		$("#formid").find("input[type=text], textarea").each(function() {
			if ($(this).val()) {
				$(this).val($(this).val().toUpperCase());
			}
		});

		// Clear all error messages
		$('#chkcompanyname, #chkshortname, #chkregistrationdate, #chkcinno, #chkpan, #chktan, #chkgstin, #chknominalsharevalue, #chkaddress, #chkstate, #chkpincode, #chkemailid, #chkauthorizedcapital, #chkpaidupcapital, #chknof, #chkmobileno, #chktdswithpan, #chktdswithoutpan, #chktaxdeduction, #chktaxdeductionsenior').text('');

		// Get field values
		var companyName = $('#companyName').val().trim();
		var shortName = $('#shortName').val().trim();
		var registrationDate = $('#doj').val().trim();
		var cin = $('#cin').val().trim();
		var pan = $('#pan').val().trim();
		var tan = $('#tan').val().trim();
		var gst = $('#gst').val().trim();
		var shareValue = $('#shareValue').val().trim();
		var address = $('#address').val().trim();
		var state = $('#state').val().trim();
		var pinCode = $('#pinCode').val().trim();
		var email = $('#email').val().trim();
		var authorizedcapital = $('#authorizedcapital').val().trim();
		var paidup = $('#paidup').val().trim();
		var landLine = $('#landLine').val().trim();
		var mobile = $('#mobile').val().trim();
		var tDSWithPAN = $('#tDSWithPAN').val().trim();
		var tDSWithoutPAN = $('#tDSWithoutPAN').val().trim();
		var tax = $('#tax').val().trim();
		var taxSr = $('#taxSr').val().trim();

		// Regex patterns
		/* var contactPattern = /^[6-9][0-9]{9}$/;
		var panPattern = /^[A-Z]{5}[0-9]{4}[A-Z]{1}$/;
		var pinPattern = /^[1-9][0-9]{5}$/;
		var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
		const cinPattern = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[^A-Za-z0-9]).+$/; // Alpha + numeric + special char
		const tanPattern = /^[A-Z]{4}[0-9]{5}[A-Z]{1}$/; */

		let isValid = true;

		if (companyName === '') {
			$('#chkcompanyname').text('* This field is required');
			$('#companyName').focus();
			isValid = false;
		}
		if (shortName === '') {
			$('#chkshortname').text('* This field is required');
			$('#shortName').focus();
			isValid = false;
		}
		if (registrationDate === '') {
			$('#chkregistrationdate').text('* This field is required');
			$('#doj').focus();
			isValid = false;
		}
		if (cin === '') {
			$('#chkcinno').text('* This field is required');
			$('#cin').focus();
			isValid = false;
		}
		if (pan === '') {
			$('#chkpan').text('* This field is required');
			$('#pan').focus();
			isValid = false;
		}
		if (tan === '') {
			$('#chktan').text('* This field is required');
			$('#tan').focus();
			isValid = false;
		}
		if (gst === '') {
			$('#chkgstin').text('* This field is required');
			$('#gst').focus();
			isValid = false;
		}
		if (shareValue === '') {
			$('#chknominalsharevalue').text('* This field is required');
			$('#shareValue').focus();
			isValid = false;
		}
		if (address === '') {
			$('#chkaddress').text('* This field is required');
			$('#address').focus();
			isValid = false;
		}
		if (state === '') {
			$('#chkstate').text('* This field is required');
			$('#state').focus();
			isValid = false;
		}
		if (pinCode === '') {
			$('#chkpincode').text('* This field is required');
			$('#pinCode').focus();
			isValid = false;
		}
		if (email === '') {
			$('#chkemailid').text('* This field is required');
			$('#email').focus();
			isValid = false;
		}
		if (authorizedcapital === '') {
			$('#chkauthorizedcapital').text('* This field is required');
			$('#authorizedcapital')
				.focus();
			isValid = false;
		}
		if (paidup === '') {
			$('#chkpaidupcapital').text('* This field is required');
			$('#paidup').focus();
			isValid = false;
		}
		if (landLine === '') {
			$('#chknof').text('* This field is required');
			$('#landLine').focus();
			isValid = false;
		}
		if (mobile === '') {
			$('#chkmobileno').text('* This field is required');
			$('#mobile').focus();
			isValid = false;
		}
		if (tDSWithPAN === '') {
			$('#chktdswithpan').text('* This field is required');
			$('#tDSWithPAN').focus();
			isValid = false;
		}
		if (tDSWithoutPAN === '') {
			$('#chktdswithoutpan').text('* This field is required');
			$('#tDSWithoutPAN').focus();
			isValid = false;
		}
		if (tax === '') {
			$('#chktaxdeduction').text('* This field is required');
			$('#tax').focus();
			isValid = false;
		}
		if (taxSr === '') {
			$('#chktaxdeductionsenior').text('* This field is required');
			$('#taxSr').focus();
			isValid = false;
		}

		if (!isValid) {
			return false;
		}

		let formData = {
			id: parseInt($("#id").val()),
			companyName: $("#companyName").val(),
			shortName: $("#shortName").val(),
			doj: $("#doj").val(),
			cin: $("#cin").val(),
			pan: $("#pan").val(),
			tan: $("#tan").val(),
			gst: $("#gst").val(),
			shareValue: $("#shareValue").val(),
			address: $("#address").val(),
			state: $("#state").val(),
			pinCode: $("#pinCode").val(),
			email: $("#email").val(),
			authorizedcapital: $("#authorizedcapital").val(),
			paidup: $("#paidup").val(),
			landLine: $("#landLine").val(),
			mobile: $("#mobile").val(),
			tDSWithPAN: $("#tDSWithPAN").val(),
			tDSWithoutPAN: $("#tDSWithoutPAN").val(),
			tax: $("#tax").val(),
			taxSr: $("#taxSr").val()
		};

		$.ajax({
			url: "/updateCompanyDetails",
			type: "POST",
			contentType: "application/json; charset=utf-8",
			dataType: "json",
			data: JSON.stringify(formData),
			success: function(response) {
				if (response.status === "OK") {
					alert(response.message);   // ✅ success message
					location.reload();
				} else {
					alert("Update failed: " + response.message);
				}
			},
			error: function() {
				alert("Error updating company details");
			}
		});

	});

});

var fileTag = document.getElementById("filetag"), preview = document
	.getElementById("preview"), secondfiletag = document
		.getElementById("secondfiletag"), secondpreview = document
			.getElementById("secondpreview");

fileTag.addEventListener("change", function() {
	changeImage(this);
});

secondfiletag.addEventListener("change", function() {
	changeImage2(this);
});

function changeImage(input) {
	var reader;

	if (input.files && input.files[0]) {
		reader = new FileReader();

		reader.onload = function(e) {
			preview.setAttribute('src', e.target.result);
		}
		reader.readAsDataURL(input.files[0]);
	}
}

function changeImage2(input) {
	var reader;

	if (input.files && input.files[0]) {
		reader = new FileReader();

		reader.onload = function(e) {
			secondpreview.setAttribute('src', e.target.result);
		}

		reader.readAsDataURL(input.files[0]);
	}
}

function enableDisabledField() {
	document.getElementById("companyName").readOnly = false;
	document.getElementById("shortName").readOnly = false;
	document.getElementById("doj").readOnly = false;
	document.getElementById("cin").readOnly = false;
	document.getElementById("pan").readOnly = false;
	document.getElementById("tan").readOnly = false;
	document.getElementById("gst").readOnly = false;
	document.getElementById("shareValue").readOnly = false;
	document.getElementById("address").readOnly = false;
	document.getElementById("state").readOnly = false;
	document.getElementById("pinCode").readOnly = false;
	document.getElementById("email").readOnly = false;
	document.getElementById("authorizedcapital").readOnly = false;
	document.getElementById("paidup").readOnly = false;
	document.getElementById("landLine").readOnly = false;
	document.getElementById("mobile").readOnly = false;
	document.getElementById("tDSWithPAN").readOnly = false;
	document.getElementById("tDSWithoutPAN").readOnly = false;
	document.getElementById("tax").readOnly = false;
	document.getElementById("taxSr").readOnly = false;
	document.getElementById("updateBtn").disabled = false;
}