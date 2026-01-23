

/* Save Data */

$(document).ready(function() {

	$("#branchTable").hide();
	$("#updateBtn").hide();

	/* Validation */

	$("#saveBtn").click(function() {



		let isValid = true;

		$('#vglheadno').text('');
		$('#vbankname').text('');
		$('#vbankacno').text('');
		$('#vbranch').text('');
		$('#vbranchcode').text('');
		$('#vaddress').text('');
		$('#vactype').text('');
		$('#vacopendate').text('');
		$('#vstatus').text('');
		$('#vpin').text('');
		$('#vstate').text('');
		$('#vcontactperson').text('');
		$('#vcontactno').text('');
		$('#vifsccode').text('');


		// Fetch input values
		var glHeadNo = $('#glHeadNo').val().trim();
		var name = $('#name').val().trim();
		var bankAccoununtNo = $('#bankAccoununtNo').val().trim();
		var branch = $('#branch').val().trim();
		var code = $('#code').val().trim();
		var address = $('#address').val().trim();
		var accountType = $('#accountType').val();
		var openingDate = $('#openingDate').val().trim();
		var status = $('#status').val();
		var pin = $('#pin').val().trim();
		var state = $('#state').val();
		var contactPerson = $('#contactPerson').val().trim();
		var contactNo = $('#contactNo').val().trim();
		var ifscCode = $('#ifscCode').val().trim();


		// GL Head No Validation
		if (glHeadNo === "" || isNaN(glHeadNo)) {
			$('#vglheadno').text('* GL Head No must be Numeric');
			$('#glHeadNo').focus();
			isValid = false;
		}

		// Bank Name Validation
		if (name === "") {
			$('#vbankname').text('* Bank name is required');
			$('#name').focus();
			isValid = false;
		}
		// Bank AccoununtNo Validation
		if (bankAccoununtNo === "") {
			$('#vbankacno').text('* Bank account no is required');
			$('#bankAccoununtNo').focus();
			isValid = false;
		} else if (!/^[0-9]{9,18}$/.test(bankAccoununtNo)) {
			$('#vbankacno').text('* Enter valid account number');
			$('#bankAccoununtNo').focus();
			isValid = false;
		}

		if (branch === "") {
			$('#vbranch').text('* Branch name is required');
			$('#branch').focus();
			isValid = false;
		}
		if (code === "") {
			$('#vbranchcode').text('* Branch code is required');
			$('#code').focus();
			isValid = false;
		} else if (!/^[A-Za-z0-9]{1,10}$/.test(code)) {
			$('#vbranchcode').text('* Invalid branch code');
			$('#code').focus();
			isValid = false;
		}
		if (address === "") {
			$('#vaddress').text('* Address is required');
			$('#address').focus();
			isValid = false;
		}
		if (accountType === "") {
			$('#vactype').text('* Please select account type');
			$('#accountType').focus();
			isValid = false;
		}
		if (openingDate === "") {
			$('#vacopendate').text('* Please select opening date');
			$('#openingDate').focus();
			isValid = false;
		}
		if (status === "") {
			$('#vstatus').text('* Please select status');
			$('#status').focus();
			isValid = false;
		}
		if (pin === "") {
			$('#vpin').text('* Pin code is required');
			$('#pin').focus();
			isValid = false;
		} else if (!/^[0-9]{6}$/.test(pin)) {
			$('#vpin').text('* Enter valid 6-digit PIN');
			$('#pin').focus();
			isValid = false;
		}

		if (state === "") {
			$('#vstate').text('* Please select state');
			$('#state').focus();
			isValid = false;
		}
		if (contactPerson === "") {
			$('#vcontactperson').text('* Contact person is required');
			$('#contactPerson').focus();
			isValid = false;
		}
		if (contactNo === "") {
			$('#vcontactno').text('* Contact no Is requierd');
			$('#contactNo').focus();
			isValid = false;
		} else if (!/^[6-9][0-9]{9}$/.test(contactNo)) {
			$('#vcontactno').text('* Enter valid mobile number');
			$('#contactNo').focus();
			isValid = false;
		}
		if (ifscCode === "") {
			$('#vifsccode').text('* please enter IFSC code');
			$('#ifscCode').focus();
			isValid = false;
		} else if (!/^[A-Z]{4}0[A-Z0-9]{6}$/.test(ifscCode)) {
			$('#vifsccode').text('* Invalid IFSC code');
			$('#ifscCode').focus();
			isValid = false;
		}

		// ❗ Stop if validation fails
		if (!isValid) {
			return;
		}

		// 🔹 Create JSON object manually (NO FORM SUBMIT)
		let branchData = {
			glHeadNo: Number(glHeadNo),
			name: $("#name").val().trim(),
			bankAccoununtNo: $("#bankAccoununtNo").val().trim(),
			branch: $("#branch").val().trim(),
			branchCode: $("#code").val().trim(),
			address: $("#address").val().trim(),
			/*allowInterBranchTransaction: $("#selectTransactionCheckbox").eq(0).is(":checked"),
			isForFundTransfer: $("#selectTransactionCheckbox").eq(1).is(":checked"),*/
			accountType: $("#accountType").val(),
			openingDate: $("#openingDate").val(),
			status: $("#status").val(),
			pin: $("#pin").val(),
			state: $("#state").val(),
			contactPerson: $("#contactPerson").val(),
			contactNo: $("#contactNo").val(),
			ifscCode: $("#ifscCode").val(),
			balance: $("#balance").val() || 0
		};

		console.log("Sending Data:", branchData);
		// 🔹 AJAX CALL
		$.ajax({
			url: "saveAllBranchMaster",
			type: "POST",
			contentType: "application/json",
			data: JSON.stringify(branchData),
			success: function(response) {
				if (response.status === "CREATED") {
					alert(response.message);
					location.reload();
				} else {
					alert("Something went wrong");
				}
			},
			error: function(xhr) {
				console.error(xhr.responseText);
				alert("Please Check all the Fields properly");
			}
		});
	});

	$.ajax({
		url: "getAllBranchMaster",
		type: "GET",
		success: function(response) {

			console.log("Branch API Response 👉", response);

			let tbody = $("#branchTableBody");
			tbody.empty();

			if (response.status === "OK") {

				$.each(response.data, function(index, branch) {

					let row = `
	                       <tr>
	                           <td>${index + 1}</td>
	                           <td>${(branch.branchCode || '').toUpperCase()}</td>
	                           <td>${(branch.branch || '').toUpperCase()}</td>
	                           <td>${branch.openingDate || ''}</td>
	                           <td>${(branch.pin || '').toUpperCase()}</td>
	                           <td>${(branch.state || '').toUpperCase()}</td>
	                           <td>${(branch.contactPerson || '').toUpperCase()}</td>
	                           <td>${branch.contactNo || ''}</td>
	                           <td>
	                               <button type="button" class="btn btn-sm btn-primary"
	                                   onclick="editData(${branch.id})">
	                                   <i class="fa fa-edit"></i>
	                               </button>
	                           </td>
	                           <td>
	                               <button type="button" class="btn btn-sm btn-danger"
	                                   onclick="deleteBranch(${branch.id})">
	                                   <i class="fa fa-trash"></i>
	                               </button>
	                           </td>
	                       </tr>
	                   `;
					tbody.append(row);
				});

			} else {
				tbody.append(`
	                   <tr>
	                       <td colspan="10" class="text-center text-danger">
	                           No branch records found
	                       </td>
	                   </tr>
	               `);
			}
		},
		error: function(xhr) {
			console.error(xhr);
			alert("Failed to load branch data");
		}
	});
});


/* Update Data*/

function updateBranch() {

	let isValid = true;

	$('#vglheadno').text('');
	$('#vbankname').text('');
	$('#vbankacno').text('');
	$('#vbranch').text('');
	$('#vbranchcode').text('');
	$('#vaddress').text('');
	$('#vactype').text('');
	$('#vacopendate').text('');
	$('#vstatus').text('');
	$('#vpin').text('');
	$('#vstate').text('');
	$('#vcontactperson').text('');
	$('#vcontactno').text('');
	$('#vifsccode').text('');


	// Fetch input values
	var glHeadNo = $('#glHeadNo').val().trim();
	var name = $('#name').val().trim();
	var bankAccoununtNo = $('#bankAccoununtNo').val().trim();
	var branch = $('#branch').val().trim();
	var code = $('#code').val().trim();
	var address = $('#address').val().trim();
	var accountType = $('#accountType').val();
	var openingDate = $('#openingDate').val().trim();
	var status = $('#status').val();
	var pin = $('#pin').val().trim();
	var state = $('#state').val();
	var contactPerson = $('#contactPerson').val().trim();
	var contactNo = $('#contactNo').val().trim();
	var ifscCode = $('#ifscCode').val().trim();


	// GL Head No Validation
	if (glHeadNo === "" || isNaN(glHeadNo)) {
		$('#vglheadno').text('* GL Head No must be Numeric');
		$('#glHeadNo').focus();
		isValid = false;
	}

	// Bank Name Validation
	if (name === "") {
		$('#vbankname').text('* Bank name is required');
		$('#name').focus();
		isValid = false;
	}
	// Bank AccoununtNo Validation
	if (bankAccoununtNo === "") {
		$('#vbankacno').text('* Bank account no is required');
		$('#bankAccoununtNo').focus();
		isValid = false;
	} else if (!/^[0-9]{9,18}$/.test(bankAccoununtNo)) {
		$('#vbankacno').text('* Enter valid account number');
		$('#bankAccoununtNo').focus();
		isValid = false;
	}

	if (branch === "") {
		$('#vbranch').text('* Branch name is required');
		$('#branch').focus();
		isValid = false;
	}
	if (code === "") {
		$('#vbranchcode').text('* Branch code is required');
		$('#code').focus();
		isValid = false;
	} else if (!/^[A-Za-z0-9]{1,10}$/.test(code)) {
		$('#vbranchcode').text('* Invalid branch code');
		$('#code').focus();
		isValid = false;
	}
	if (address === "") {
		$('#vaddress').text('* Address is required');
		$('#address').focus();
		isValid = false;
	}
	if (accountType === "") {
		$('#vactype').text('* Please select account type');
		$('#accountType').focus();
		isValid = false;
	}
	if (openingDate === "") {
		$('#vacopendate').text('* Please select opening date');
		$('#openingDate').focus();
		isValid = false;
	}
	if (status === "") {
		$('#vstatus').text('* Please select status');
		$('#status').focus();
		isValid = false;
	}
	if (pin === "") {
		$('#vpin').text('* Pin code is required');
		$('#pin').focus();
		isValid = false;
	} else if (!/^[0-9]{6}$/.test(pin)) {
		$('#vpin').text('* Enter valid 6-digit PIN');
		$('#pin').focus();
		isValid = false;
	}

	if (state === "") {
		$('#vstate').text('* Please select state');
		$('#state').focus();
		isValid = false;
	}
	if (contactPerson === "") {
		$('#vcontactperson').text('* Contact person is required');
		$('#contactPerson').focus();
		isValid = false;
	}
	if (contactNo === "") {
		$('#vcontactno').text('* Contact no Is requierd');
		$('#contactNo').focus();
		isValid = false;
	} else if (!/^[6-9][0-9]{9}$/.test(contactNo)) {
		$('#vcontactno').text('* Enter valid mobile number');
		$('#contactNo').focus();
		isValid = false;
	}
	if (ifscCode === "") {
		$('#vifsccode').text('* please enter IFSC code');
		$('#ifscCode').focus();
		isValid = false;
	} else if (!/^[A-Z]{4}0[A-Z0-9]{6}$/.test(ifscCode)) {
		$('#vifsccode').text('* Invalid IFSC code');
		$('#ifscCode').focus();
		isValid = false;
	}

	// ❗ Stop if validation fails
	if (!isValid) {
		return;
	}

	// 🔹 Fetch values from form
	let branchData = {
		id: $("#branchId").val(), // must have the hidden field for ID
		glHeadNo: Number($("#glHeadNo").val().trim()),
		name: $("#name").val().trim(),
		bankAccoununtNo: $("#bankAccoununtNo").val().trim(),
		branch: $("#branch").val().trim(),
		branchCode: $("#code").val().trim(),
		address: $("#address").val().trim(),
		accountType: $("#accountType").val(),
		openingDate: $("#openingDate").val(),
		status: $("#status").val(),
		pin: $("#pin").val(),
		state: $("#state").val(),
		contactPerson: $("#contactPerson").val(),
		contactNo: $("#contactNo").val(),
		ifscCode: $("#ifscCode").val(),
		balance: $("#balance").val() || 0
	};

	console.log("Updating Branch Data:", branchData); // 🔹 debug

	// 🔹 AJAX call
	$.ajax({
		url: "updateBranchMaster",
		type: "POST",
		contentType: "application/json",
		data: JSON.stringify(branchData),
		success: function(response) {
			console.log(response); // 🔹 debug
			if (response.status === "OK") {
				alert(response.message);
				location.reload();
			} else {
				alert("Update failed");
			}
		},
		error: function(xhr) {
			console.error(xhr.responseText); // 🔹 check server error
			alert("Error while updating branch");
		}
	});
}

/* Delete Data */

function deleteBranch(id) {
	if (confirm("Are you sure you want to delete this branch?")) {
		$.ajax({
			url: "deleteBranchModuleById",
			type: "POST",
			data: { id: id },
			success: function(response) {
				if (response.status == "OK") {
					alert(response.message);
					location.reload();
				} else {
					alert("Delete failed: " + response.message);
				}
			},
			error: function(xhr, status, error) {
				alert("Failed to delete branch.");
				console.error("Error:", error);
			}
		});
	}

}

/*Edit Data*/

function editData(id) {
	$("#updateBtn").show();
	$("#saveBtn").hide();
	$("#hideBtn").hide();
	$("#showBtn").hide();
	$.ajax({
		url: "getBranchModuleById",
		type: "GET",
		data: { id: id },
		success: function(response) {
			if (response.status == "FOUND") {
				const branch = response.data;
				$("#branchId").val(branch.id);        // 🔹 Set ID for update
				$("#glHeadNo").val(branch.glHeadNo);
				$("#name").val(branch.name);
				$("#bankAccoununtNo").val(branch.bankAccoununtNo);
				$("#branch").val(branch.branch);
				$("#code").val(branch.branchCode);
				$("#address").val(branch.address);
				$("#accountType").val(branch.accountType);
				$("#openingDate").val(branch.openingDate);
				$("#status").val(branch.status);
				$("#pin").val(branch.pin);
				$("#state").val(branch.state);
				$("#contactPerson").val(branch.contactPerson);
				$("#contactNo").val(branch.contactNo);
				$("#ifscCode").val(branch.ifscCode);
				$("#balance").val(branch.balance);
			} else {
				alert("Branch not found: " + response.message);
			}
		},
		error: function(xhr) {
			alert("Request failed: " + xhr.responseText);
		}
	});
}


function showBtnFunc() {
	$("#branchTable").show();
	$("#hideBtn").show();
	$("#showBtn").hide();
}

function hideBtnFunc() {
	$("#branchTable").hide();
	$("#hideBtn").hide();
	$("#showBtn").show();

}
