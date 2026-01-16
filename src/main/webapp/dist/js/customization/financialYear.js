$(document).ready(function() {

	const today = new Date().toISOString().split('T')[0];
	$('#fDate').val(today);
	$('#tDate').val(today);

	$("#addBtn").click(function() {

		var fyName = $('#fyName').val().trim();
		var fDate = $('#fDate').val().trim();
		var tDate = $('#tDate').val().trim();

		const financialData = {
			fyName: fyName,
			fDate: fDate,
			tDate: tDate
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