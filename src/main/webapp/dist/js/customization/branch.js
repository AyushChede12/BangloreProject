
$(document).ready(function() {
	$("#branchTable").hide();

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
	                           <td>${branch.branchCode || ''}</td>
	                           <td>${branch.branch || ''}</td>
	                           <td>${branch.openingDate || ''}</td>
	                           <td>${branch.pin || ''}</td>
	                           <td>${branch.state || ''}</td>
	                           <td>${branch.contactPerson || ''}</td>
	                           <td>${branch.contactNo || ''}</td>
	                           <td>
	                               <button class="btn btn-sm btn-primary"
	                                   onclick="editBranch(${branch.id})">
	                                   <i class="fa fa-edit"></i>
	                               </button>
	                           </td>
	                           <td>
	                               <button class="btn btn-sm btn-danger"
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

function showBtnFunc(){
	$("#branchTable").show();
}

function hideBtnFunc(){
	$("#branchTable").hide();
}