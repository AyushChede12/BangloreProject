
$(document).ready(function() {
	$('#saveBtn').click(function(event) {
		alert("save button clicked");
		event.preventDefault();
		var authenticate = $("#authenticateFor").val();
		var minor = $("#minor").val();
		// 1️⃣ Clear all validation messages
		$("[id^='chk']").text('');
		let isValid = true;

		function validateText(fieldId, chkId, message) {
			const value = $('#' + fieldId).val().trim();
			if (value === '') {
				$('#' + chkId).text(message);
				isValid = false;
			}
			return value;
		}


		function validateFile(fieldId, chkId, message, allowedTypes = [], maxSizeMB = 2) {
			const input = $('#' + fieldId)[0];

			if (!input || input.files.length === 0) {
				$('#' + chkId).text(message);
				isValid = false;
				return null;
			}

			const file = input.files[0];

			if (allowedTypes.length && !allowedTypes.includes(file.type)) {
				$('#' + chkId).text('Only JPG / PNG allowed');
				isValid = false;
				return null;
			}

			if (file.size > maxSizeMB * 1024 * 1024) {
				$('#' + chkId).text(`File size must be < ${maxSizeMB}MB`);
				isValid = false;
				return null;
			}

			return file;
		}


		validateText('authenticateFor', 'chkauthenticatefor', 'Please select authenticate for');
		if (authenticate == 'aadhar') {
			validateText('aadharNo', 'chkaadharno', 'Please enter Aadhar number');
		}
		validateText('signupDate', 'chksignupdate', 'Please select signup date');
		validateText('firstName', 'chkfirstname', 'Please enter first name');
		validateText('middleName', 'chkmiddlename', 'Please enter middle name');
		validateText('lastName', 'chklastname', 'Please enter last name');
		validateText('dob', 'chkdob', 'Please select date of birth');
		validateText('minor', 'chkminor', 'Please select minor');
		if (minor == 'Yes') {
			validateText('guardianName', 'chkguardianname', 'Please enter guardian name');
			validateText('guardianAccNo', 'chkguardianaccno', 'Please enter guardian account no');
		}
		validateText('relationToApplicant', 'chkrelationtoapplicant', 'Please select relation');
		validateText('customerGender', 'chkgender', 'Please select gender');
		validateText('customerAge', 'chkage', 'Please enter age');
		validateText('customerAddress', 'chkaddress', 'Please enter address');
		validateText('category', 'chkcategory', 'Please select category');
		validateText('caste', 'chkcaste', 'Please select caste');
		validateText('state', 'chkstate', 'Please select state');
		validateText('district', 'chkdistrict', 'Please select district');
		validateText('pinCode', 'chkpincode', 'Please enter pincode');
		validateText('branchName', 'chkbranch', 'Please select branch');
		validateText('contactNo', 'chkcontactno', 'Please enter contact number');
		validateText('emailId', 'chkemailid', 'Please enter email ID');
		validateText('panNo', 'chkpanno', 'Please enter PAN number');
		validateText('voterNo', 'chkvoterno', 'Please enter voter ID');
		validateText('drivingLicenceNo', 'chkdrivinglicenseno', 'Please enter license number');


		const customerPhoto1 = validateFile(
			'customerPhoto',
			'chkaadharimage',
			'Please select aadhar card image',
			['image/jpeg', 'image/png'],
			2
		);

		const customerSignature1 = validateFile(
			'customerSignature',
			'chkpanimage',
			'Please select pan card image',
			['image/jpeg', 'image/png'],
			1
		);

		const customerVoter1 = validateFile(
			'customerVoter',
			'chkvoterimage',
			'Please select voter ID image',
			['image/jpeg', 'image/png'],
			2
		);

		const customerDriving1 = validateFile(
			'customerDriving',
			'chklicenseimage',
			'Please select driving license image',
			['image/jpeg', 'image/png'],
			2
		);

		const nomineAadhar1 = validateFile(
			'nomineAadhar',
			'chknomineeaadhar',
			'Please select nomoniee aadhar',
			['image/jpeg', 'image/png'],
			2
		);

		const nomineSignature1 = validateFile(
			'nomineSignature',
			'chknomineesignature',
			'Please select nominee signature',
			['image/jpeg', 'image/png'],
			2
		);

		validateText('nomineeName', 'chknomineename', 'Please enter nominee name');
		validateText('nomineeRelationToApplicant', 'chknomineerelationtoapplicant', 'Please select nominee relation');
		validateText('nomineeDOB', 'chknomineedob', 'Please select nominee DOB');
		validateText('nomineeAge', 'chknomineeage', 'Please enter nominee age');
		validateText('nomineeMobileNo', 'chknomineemobileno', 'Please enter nominee mobile no');
		validateText('nomineeAddress', 'chknomineeaddress', 'Please enter nominee address');
		validateText('nomineePanNo', 'chknomineepan', 'Please enter nominee pan');
		validateText('nomineeKycNo', 'chknomineekycno', 'Please enter nominee Kyc No(if not type NA)');
		validateText('nomineeKycType', 'chknoimneekyctype', 'Please select nominee kyc type');


		if (!isValid) return false;

		var formData = new FormData();

		// Text fields
		formData.append("memberCode", $('#memberCode').val());
		formData.append("authenticateFor", $('#authenticateFor').val());
		formData.append("signupDate", $('#signupDate').val());
		formData.append("major", $('#major').val());
		formData.append("minor", $('#minor').val());
		formData.append("customerGender", $('#customerGender').val());
		formData.append("guardianName", $('#guardianName').val());
		formData.append("relationToApplicant", $('#relationToApplicant').val());
		formData.append("dob", $('#dob').val());
		formData.append("customerAge", $('#customerAge').val());
		formData.append("relationshipStatus", $('#relationshipStatus').val());
		formData.append("customerAddress", $('#customerAddress').val());
		formData.append("state", $('#state').val());
		formData.append("district", $('#district').val());
		formData.append("aadharNo", $('#aadharNo').val());
		formData.append("pinCode", $('#pinCode').val());
		formData.append("branchName", $('#branchName').val());
		formData.append("panNo", $('#panNo').val());
		formData.append("voterNo", $('#voterNo').val());
		formData.append("drivingLicenceNo", $('#drivingLicenceNo').val());
		formData.append("referralCode", $('#referralCode').val());
		formData.append("referralName", $('#referralName').val());
		formData.append("contactNo", $('#contactNo').val());
		formData.append("emailId", $('#emailId').val());
		formData.append("profession", $('#profession').val());
		formData.append("academicBackground", $('#academicBackground').val());
		formData.append("firstName", $('#firstName').val());
		formData.append("middleName", $('#middleName').val());
		formData.append("lastName", $('#lastName').val());


		// Nominee
		formData.append("nomineeName", $('#nomineeName').val());
		formData.append("nomineeRelationToApplicant", $('#nomineeRelationToApplicant').val());
		formData.append("nomineeAge", $('#nomineeAge').val());
		formData.append("nomineeAddress", $('#nomineeAddress').val());
		formData.append("nomineePanNo", $('#nomineePanNo').val());
		formData.append("nomineeKycNo", $('#nomineeKycNo').val());
		formData.append("nomineeKycType", $('#nomineeKycType').val());
		formData.append("nomineeMobileNo", $('#nomineeMobileNo').val());

		// Payment
		formData.append("memberFees", $('#memberFees').val());
		formData.append("chequeNo", $('#chequeNo').val());
		formData.append("chequeDate", $('#chequeDate').val());
		formData.append("depositAcNo", $('#depositAcNo').val());
		formData.append("referenceNo", $('#referenceNo').val());
		formData.append("remarks", $('#remarks').val());
		formData.append("paymentBy", $('#paymentBy').val());
		formData.append("lightBill", $('#lightBill').val());
		formData.append("taxBill", $('#taxBill').val());
		formData.append("nomineeDOB", $('#nomineeDOB').val());
		formData.append("buildingFund", $('#buildingFund').val());
		formData.append("adminCharge", $('#adminCharge').val());
		formData.append("documentCharge", $('#documentCharge').val());
		formData.append("otherCharge", $('#otherCharge').val());
		formData.append("entryFee", $('#entryFee').val());
		formData.append("noOfShare", $('#noOfShare').val());
		formData.append("shareAmount", $('#shareAmount').val());


		// File uploads
		const customerPhoto = $('#customerPhoto')[0].files[0];
		const customerSignature = $('#customerSignature')[0].files[0];
		const customerVoter = $('#customerVoter')[0].files[0];
		const customerDriving = $('#customerDriving')[0].files[0];
		const nomineSignature = $('#nomineSignature')[0].files[0];
		const nomineAadhar = $('#nomineAadhar')[0].files[0];

		if (customerPhoto) formData.append("customerPhoto", customerPhoto);
		if (customerSignature) formData.append("customerSignature", customerSignature);
		if (customerVoter) formData.append("customerVoter", customerVoter);
		if (customerDriving) formData.append("customerDriving", customerDriving);
		if (nomineSignature) formData.append("nomineSignature", nomineSignature);
		if (nomineAadhar) formData.append("nomineAadhar", nomineAadhar);


		// Toggles
		formData.append("memberStatus", $('#toggle-member-status').is(":checked") ? "1" : "0");
		formData.append("memberBanking", $('#toggle-banking-status').is(":checked") ? "1" : "0");
		formData.append("netBanking", $('#toggle-netbanking-status').is(":checked") ? "1" : "0");
		formData.append("smsSend", $('#toggle-sms-status').is(":checked") ? "1" : "0");

		// ✅ Auto domain + context path
		const fullUrl = window.location.origin + "/api/customermanagement/saveOrUpdateCustomer";

		console.log("POST to URL: ", fullUrl);

		// AJAX call
		$.ajax({
			type: 'POST',
			url: fullUrl,
			data: formData,
			processData: false,
			contentType: false,
			success: function(response, textStatus, xhr) {
				console.log("✅ Response:", response);

				if (xhr.status === 200 || xhr.status === 201) {
					alert(response.message || "Customer saved successfully!");
					location.reload();
				} else {
					alert("Unexpected response: " + (response.message || "Unknown error"));
				}
			},
			error: function(xhr) {
				alert("error");
				console.error("❌ Error response: ", xhr);
				let msg = "Something went wrong while saving.";
				if (xhr.responseJSON && xhr.responseJSON.message) {
					msg = xhr.responseJSON.message;
				} else if (xhr.responseText) {
					msg = xhr.responseText;
				}
				alert(msg);
			}
		});
	});
});


function checkingTheFunction(id) {

	var input = {
		"id": id
	}
	const myJson = JSON.stringify(input);

	$.ajax({
		type: "post",
		contentType: "application/json",
		url: 'addClientEdit',
		data: myJson,
		asynch: false,
		success: function(data) {
			console.log(data);
			if (data.length > 0) {
				var client = data[0];
				alert("Fetching data for client number: " + client.clientNo);
				document.getElementById("clientId").value = client.clientId;
				document.getElementById("clientNo").value = client.clientNo;
				document.getElementById("registrationDate").value = client.registrationDate;
				document.getElementById("memberNamePrefix").value = client.memberNamePrefix;
				document.getElementById("memberName").value = client.memberName;

				document.getElementById("relativeName").value = client.relativeName;
				document.getElementById("relativeRelation").value = client.relativeRelation;

				document.getElementById("ContentPlaceHolder1_ddlGender").value = client.gender;
				document.getElementById("dob").value = client.dob;

				document.getElementById("ageId").value = client.age;
				document.getElementById("maritalStatus").value = client.maritalStatus;
				document.getElementById("ContentPlaceHolder1_txtAddress").value = client.address;
				document.getElementById("district").value = client.district;
				document.getElementById("state").value = client.state;

				document.getElementById("branchName").value = client.branchName;
				/*document.getElementById("loginID").value = client.loginID;
				document.getElementById("password").value = client.password;
				document.getElementById("memberIncome").value = client.memberIncome;*/

				document.getElementById("pinCode").value = client.pinCode;
				document.getElementById("aadharNo").value = client.aadharNo;
				document.getElementById("pan").value = client.pan;
				document.getElementById("voterNo").value = client.voterNo;

				document.getElementById("phoneno").value = client.phoneno;
				document.getElementById("emailid").value = client.emailid;
				document.getElementById("occupation").value = client.occupation;
				document.getElementById("education").value = client.education;

				document.getElementById("clientPurpose").value = client.clientPurpose;
				/*document.getElementById("passportNumber").value = client.passportNumber;*/
				document.getElementById("caste").value = client.caste;
				document.getElementById("religionName").value = client.religionName;

				document.getElementById("categoryName").value = client.categoryName;
				document.getElementById("riskCategory").value = client.riskCategory;
				document.getElementById("nationality").value = client.nationality;

				document.getElementById("nomineeName").value = client.nomineeName;
				document.getElementById("nRelation").value = client.nRelation;
				document.getElementById("nomineeAddress").value = client.nomineeAddress;
				document.getElementById("nomineeKycNumber").value = client.nomineeKycNumber;

				document.getElementById("nomineeMobileNo").value = client.nomineeMobileNo;
				document.getElementById("nomineeAge").value = client.nomineeAge;
				document.getElementById("nomineePanNo").value = client.nomineePanNo;
				document.getElementById("nomineeKycType").value = client.nomineeKycType;

				document.getElementById("taluka").value = client.taluka;
				document.getElementById("village").value = client.village;

				/*document.getElementById("memberJoiningFess").value = client.memberJoiningFess;
				document.getElementById("shareAllotedfrm").value = client.shareAllotedfrm;
				document.getElementById("noOfShared").value = client.noOfShared;
				document.getElementById("enterShareAmount").value = client.enterShareAmount;
	
				document.getElementById("paymode").value = client.paymode;
				document.getElementById("remarks").value = client.remarks;
				document.getElementById("clientIDNo").value = client.id;*/

				//var imgElement = document.getElementById("preview");
				//imgElement.src ="data:image/png;base64,"+data[i].image;

				var imgElement = document.getElementById("preview");
				console.log(client.frontEndPhoto); // Check if the Base64 data is present
				imgElement.setAttribute("src", "data:image/png;base64," + client.frontEndPhoto);

				var imgElement = document.getElementById("secondpreview");
				console.log(client.frontEndSignature); // Check if the Base64 data is present
				imgElement.setAttribute("src", "data:image/png;base64," + client.frontEndSignature);

			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

/*Add Member Ajax */
function AddMemberAjax() {
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getAllClient',
		data: {},
		asynch: false,
		success: function(data) {
			for (let i = 0; i < data.length; i++) {
				const tableData = data.map(function(value) {
					return (
						`<tr>
                         <td>${value.clientNo}</td>
				         <td>${value.memberName}</td>
				         <td>${value.registrationDate}</td>
						 <td>${value.gender}</td>	
						 <td>${value.dob}</td>
						 <td>${value.branchName}</td>	
						 <td>${value.aadharNo}</td>
						 <td>${value.pan}</td>	
						 <td>${value.voterNo}</td>
						 <td>${value.phoneno}</td>	
						 <td>${value.emailid}</td>
						 <td onclick="checkingTheFunction(${value.id})" > <img src="dist/img/pen_paper_2-32.png"></a></td>
                     </tr>`
					);
				})
					.join('');
				const tabelBody = document.querySelector("#table");
				table.innerHTML = tableData;
			}
		},
		error: function() {
			alert("Device control failed");
		}
	});
}

//get Dropdown into Share alloated from
function getDropDownSharealloateFrom() {

	$.ajax({
		type: "get",
		contentType: "application/json",
		url: 'getDropDownShareAllotedFrom',
		asynch: false,
		success: function(data) {

			var appenddata1 = "";
			for (var i = 0; i < data.length; i++) {
				appenddata1 += "<option value ='" + data[i].name + "'>" + data[i].name + "</option>";
			}
			$("#shareAllotedfrm").append(appenddata1);
		},
		error: function() {
			alert("Device control failed");
		}
	});

}

