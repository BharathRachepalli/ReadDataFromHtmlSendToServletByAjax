
function fromform() {
	var xhr = new XMLHttpRequest();

	xhr.onreadystatechange = function() {

		if (this.status === 200 && this.readyState == 4) {
			window.location = "PrintList.jsp";
		}
	};

	xhr.open('POST', 'GetAjaxData', true);

	let fname = $("#firstName").val();
	let lname = $("#lastName").val();
	let email = $("#email").val();
	let password = $("#password").val();
	let address = $("#address").val();
	let phone = $("#phone").val();
	let gender = $("#gender").val();
	
	xhr.send(fname + "," + lname + "," + email + "," + password + "," + address + "," + phone + "," + gender);

}