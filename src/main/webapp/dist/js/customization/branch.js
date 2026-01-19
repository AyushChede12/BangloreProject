
$(document).ready(function() {
	$("#branchTable").hide();
	$("#updateBtn").hide();

	$("#saveBtn").click(function() {

		// 🔹 Create JSON object manually (NO FORM SUBMIT)
		let branchData = {
			glHeadNo: $("#glHeadNo").val().trim(),
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
				alert("Error while saving branch");
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
	                                   onclick="viewData(${branch.id})">
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

function showBtnFunc() {
	$("#branchTable").show();
}

function hideBtnFunc() {
	$("#branchTable").hide();
}

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

function viewData(id) {
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
				$("#id").val(branch.id);
				$("#glHeadNo").val(branch.branchCode);
				$("#name").val(branch.branchName);
				$("#openingDate").val(branch.openingDate);
				$("#address").val(branch.address);
				$("#pin").val(branch.pin);
				$("#state").val(branch.state);
				$("#branchManagerContactNo").val(branch.branchManagerContactNo);
				$("#accountDepartmentContactNo").val(branch.accountDepartmentContactNo);
			} else {
				alert("Branch not found: " + response.message);
			}
		},
		error: function(xhr) {
			alert("Request failed: " + xhr.responseText);
		}
	});


}