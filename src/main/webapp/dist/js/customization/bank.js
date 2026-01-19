$(document).ready(function() {
	$("#tableHideShow").hide();
	const today = new Date().toISOString().split('T')[0];
	$('#openingDate').val(today);
	$("#saveBtn").click(function() {

		let bankMaster = {
			bankName: $('#bankName').val().trim(),
			accountNo: $('#accountNo').val().trim(),
			mobileNo: $('#mobileNo').val().trim(),
			address: $('#address').val().trim(),
			openingDate: $('#openingDate').val().trim(),
			openingBalance: $('#openingBalance').val().trim()
		};

		$.ajax({
			url: 'saveAndUpdateAllBankModule',
			type: 'POST',
			data: JSON.stringify(bankMaster),
			contentType: "application/json",
			success: function(response) {
				alert("success");
				alert(response.message);
				location.reload();
			},
			error: function(xhr) {
				console.error("Error:", xhr.responseText);
				alert("Failed to save bank data.");
			}
		});
	});
	
	$.ajax({
			url: "getAllBankModule",
			type: "GET",
			success: function(response) {

				console.log("Branch API Response 👉", response);

				let tbody = $("#bankTableBody");
				tbody.empty();

				if (response.status === "FOUND") {

					$.each(response.data, function(index, branch) {

						let row = `
		                       <tr>
		                           <td>${index + 1}</td>
		                           <td>${(branch.bankName || '').toUpperCase()}</td>
		                           <td>${(branch.accountNo || '').toUpperCase()}</td>
		                           <td>${branch.openingDate || ''}</td>
		                           <td>${(branch.address || '').toUpperCase()}</td>
								   <td>${(branch.mobileNo || '').toUpperCase()}</td>
		                           <td>${(branch.openingBalance || '').toUpperCase()}</td>
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

function showBtnFunc(){
	$("#tableHideShow").show();
}

function hideBtnFunc(){
	$("#tableHideShow").hide();
}