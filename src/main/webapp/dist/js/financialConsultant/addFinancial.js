$(document).ready(function(){
	const today = new Date().toISOString().split('T')[0];
		$('#joiningDate').val(today);
})