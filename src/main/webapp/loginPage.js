
function fromform() {

	$.ajax({
		url: 'GetAjaxData',
		type: 'POST',
		dataType: 'json',
		data: {
		fname:$("#firstName").val(),
		lname:$("#lastName").val(),
		email:$("#email").val(),
		password:$("#password").val(),
		address:$("#address").val(),
		phone:$("#phone").val(),
		gender:$("#gender").val(),
		
		},
		success: function(result) {
			alert('SUCCESS');
		}
	});
}