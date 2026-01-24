
$(document).ready(function() {

	const today = new Date().toISOString().split('T')[0];
	$('#openingDate').val(today);

	/*Arjun Save Bank Data*/
	$("#saveBank").click(function() {

		let bankData = {
			bankId: $("#bankId").val() || null,   // new save साठी null
			bankName: $("#bankName").val().trim(),
			accountNo: $("#accountNo").val().trim(),
			mobileNo: $("#mobileNo").val().trim(),
			address: $("#address").val().trim(),
			openingDate: $("#openingDate").val(),
			openingBalance: $("#openingBalance").val() || 0
		};

		console.log("Sending Bank Data:", bankData);

		$.ajax({
			url: "saveAndUpdateAllBankModule",          // 🔹 controller API URL
			type: "POST",
			contentType: "application/json",
			data: JSON.stringify(bankData),
			success: function(response) {
				if (response.status === "CREATED") {
					alert(response.message + "\n Your Bank ID Genreted - " + bankData.bankId);
					location.reload();
				} else {
					alert(" Bank Data Save failed");
				}
			},
			error: function(xhr) {
				console.error(xhr.responseText);
				alert("Error while saving bank");
			}
		});
	});

	/*Arjun Get AllData*/
	$.ajax({
		url: "getAllBankAccount",   // 🔹 controller API
		type: "GET",
		success: function(response) {

			let tbody = $("#bankTableBody");
			tbody.empty();

			if (response.status === "FOUND") {


				$.each(response.data, function(index, bank) {
					let row = `
	                      <tr>
	                          <td>${index + 1}</td>
	                          <td>${bank.bankId}</td>
	                          <td>${bank.bankName}</td>
	                          <td>${bank.accountNo}</td>
	                          <td>${bank.mobileNo}</td>
	                          <td>${bank.address}</td>
	                          <td>${bank.openingDate}</td>
	                          <td>${bank.openingBalance}</td>
	                          <td>
	                              <button type="button" class="btn btn-sm btn-primary"
	                                  onclick="editBank(${bank.id})">
									  <i class="fa fa-edit"></i>
								  </button>
	                          </td>
	                          <td>
	                              <button type = "button" class="btn btn-sm btn-danger"
	                                  onclick="deleteBank(${bank.id})">
									  <i class="fa fa-trash"></i>
								  </button>
	                          </td>
	                      </tr>`;
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
			console.error(xhr.responseText);
			alert("Error while fetching bank list");
		}
	});
});


/* Arjun Edit Bank Data*/
function editBank(id) {
	$("#updateB").show();
	$("#saveBank").hide();
	$("#showB").hide();
	$("#hideB").hide();

	$.ajax({
		url: "getBankAccountById",
		type: "GET",
		data: { id: id },
		success: function(response) {
			if (response.status == "FOUND") {
				const bank = response.data;
				$("#id").val(bank.id);
				$("#bankName").val(bank.bankName);
				$("#accountNo").val(bank.accountNo);
				$("#mobileNo").val(bank.mobileNo);
				$("#address").val(bank.address);
				$("#openingDate").val(bank.openingDate);
				$("#openingBalance").val(bank.openingBalance);
			}
		}
	});
}

/* Arjun Update Bank Data*/
function updateBank() {
	let bankData = {
		id: $("#id").val(),
		bankId: $("#bankId").val() || null,   // new save साठी null
		bankName: $("#bankName").val().trim(),
		accountNo: $("#accountNo").val().trim(),
		mobileNo: $("#mobileNo").val().trim(),
		address: $("#address").val().trim(),
		openingDate: $("#openingDate").val(),
		openingBalance: $("#openingBalance").val() || 0
	};

	console.log("Sending Bank Data:", bankData);

	$.ajax({
		url: "saveAndUpdateAllBankModule",          // 🔹 controller API URL
		type: "POST",
		contentType: "application/json",
		data: JSON.stringify(bankData),
		success: function(response) {
			if (response.status === "OK") {
				alert(response.message);
				location.reload();
			} else {
				alert(" Bank Data Updated failed");
			}
		},
		error: function(xhr) {
			console.error(xhr.responseText);
			alert("Error while saving bank");
		}
	});
}


function deleteBank(id) {
	if (confirm("Are you sure you want to delete this Bank Account?")) {

		$.ajax({
			url: "deleteBankAccountById",
			type: "POST",
			data: { id: id },
			success: function(response) {
				if (response.status == "OK") {
					alert(response.message);
					location.reload();
				} else {
					alert("Bank Data Delete failed ");
				}
			},
			error: function(xhr) {
				console.error(xhr.responseText);
				alert("Failed to delete Bank Account.");
			}
		});
	}
}



function showBank() {
	$("#hideB").show();
	$("#showB").hide();
}

function hideBank() {
	$("#hideB").hide();
	$("#showB").show();
}
