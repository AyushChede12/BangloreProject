$(document).ready(function() {

	const today = new Date().toISOString().split('T')[0];
	$('#fDate').val(today);
	$('#tDate').val(today);

	$("#addBtn").click(function() {

		// Clear all previous messages
		$('#chkfyname').text('');
		$('#chkdatefrom').text('');
		$('#chkdateto').text('');

		// Fetch input values
		var fyName = $('#fyName').val().trim();
		var dateFrom = $('#fDate').val().trim();
		var dateTo = $('#tDate').val().trim();

		let isValid = true;

		// Validation: Financial Year Name
		// Validation: Financial Year Name
		if (fyName === '') {
			$('#chkfyname').text('* This field is required');
			$('#fyName').focus();
			isValid = false;
		} else {
			const fyPattern = /^[0-9]{4}-[0-9]{4}$/;
			if (!fyPattern.test(fyName)) {
				$('#chkfyname').text('* Please enter proper financial year (e.g., 2021-2022)');
				$('#fyName').focus();
				isValid = false;
			} else {
				const parts = fyName.split('-');
				const startYear = parseInt(parts[0]);
				const endYear = parseInt(parts[1]);
				if (endYear - startYear !== 1) {
					$('#chkfyname').text('* Financial year should be consecutive years (e.g., 2021-2022)');
					$('#fyName').focus();
					isValid = false;
				}
			}
		}


		// Validation: Date From
		if (dateFrom === '') {
			$('#chkdatefrom').text('* This field is required');
			if (isValid) $('#fDate').focus();
			isValid = false;
		}

		// Validation: Date To
		if (dateTo === '') {
			$('#chkdateto').text('* This field is required');
			if (isValid) $('#tDate').focus();
			isValid = false;
		}

		// Optional: Additional Date Range Validation
		if (dateFrom !== '' && dateTo !== '') {
			if (new Date(dateFrom) > new Date(dateTo)) {
				$('#chkdateto').text('* Date To must be after Date From');
				if (isValid) $('#tDate').focus();
				isValid = false;
			}
		}

		if (!isValid) {
			return false; // Stop AJAX call
		}

		const financialData = {
			fyName: fyName,
			fDate: dateFrom,
			tDate: dateTo
		};

		$.ajax({
			url: 'saveAndUpdateAllFinancialYear',
			type: 'POST',
			contentType: 'application/json',
			data: JSON.stringify(financialData),
			success: function(response) {
				if (response.status == 'CREATED') {
					alert("Financial Year Saved Successfully"); // Show custom message from controller
					location.reload(); // Reload page or update table
				} else {
					alert('Something went wrong. Please try again.');
				}
			},
			error: function(xhr) {
				console.error('Error:', xhr.responseText);
				alert('Failed to save financial data.');
			}
		});
	});

	$.ajax({
		type: "GET",
		url: "getAllFYDetails",
		contentType: "application/json",
		success: function(response) {
			console.log("Full Response from API:", response);

			let data = response;

			// Sort by first year numerically (DESCENDING)
			data.sort((a, b) => {
				const aYear = parseInt(a.fyName.split('-')[0]);
				const bYear = parseInt(b.fyName.split('-')[0]);
				return bYear - aYear;   // DESCENDING
			});

			let tableBody = $(".datatable tbody");
			tableBody.empty();

			data.forEach((item, index) => {
				let row = `<tr>
		                    <td>${index + 1}</td>
		                    <td>${item.fyName}</td>
		                    <td>${item.fDate}</td>
		                    <td>${item.tDate}</td>
		                    <td>
		                        <button type="button" style="background: none;" class="iconbutton" onclick="viewData(${item.id})" title="View">
		                            <i class="fa-solid fa-pen-to-square text-success"></i>
		                        </button>
		                    </td>
							<td>
								<button type="button" class="iconbutton" onclick="deleteData(${item.id})" title="Delete">
									<i class="fa-solid fa-trash text-light"></i>
								</button>
							</td>
		                </tr>`;
				tableBody.append(row);
			});

		},
		error: function() {
			alert("Error while calling the API.");
		}
	});
});

function viewData(id) {

	$.ajax({
		url: "getFinancialYearById",
		type: "GET",
		data: { id: id },
		success: function(response) {
			if (response.status == "FOUND") {
				const branch = response.data;
				$("#id").val(branch.id);
				$("#fyName").val(branch.fyName);
				$("#fDate").val(branch.fDate);
				$("#tDate").val(branch.tDate);
			} else {
				alert("Financial Year not found: " + response.message);
			}
		},
		error: function(xhr) {
			alert("Request failed: " + xhr.responseText);
		}
	});
}

function deleteData(id) {
	if (confirm("Are you sure you want to delete this financial year?")) {
		$.ajax({
			url: "deleteFinancialYearById",
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
				alert("Failed to delete financial Year.");
				console.error("Error:", error);
			}
		});
	}

}