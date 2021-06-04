
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

$(document)
	.ready(
		function() {

			$("#name_msg").hide();

			$("#pass_msg").hide();

			$("#phone_msg").hide();

			var err_name = false;

			var err_pass = false;

			var error_phone = false;



			$("#firstName").focusout(function() {
				check_name();
			});



			$("#password").focusout(function() {
				check_pass();
			});

			$("#phone").focusout(function() {
				check_phone();
			});



			// name validation
			function check_name() {
				var pattern = /^(?!.*[0-9])(?=.*[a-z])(?!.*\s).{8,}$/;
				var my_name = $("#firstName").val();
				if (pattern.test(my_name) && my_name !== '') {

					$("#name_msg").html("<small>OK</small>");
					$("#name_msg").css("color", "green");
					$("#name_msg").show();
					$("#firstName").css("border", "2px groove palegreen");
					err_name = true;
				} else {
					if (my_name == "") {

						$("#name_msg").html(
							"<small>Do not leave empty</small>");
						$("#name_msg").css("color", "red");
						$("#name_msg").show();
						$("#firstName").css("border", "2px groove red");

					} else {

						$("#name_msg")
							.html(
								"<small>Only alphas are allowed length must be 8 or more</small>");
						$("#name_msg").css("color", "red");
						$("#name_msg").show();
						$("#firstName").css("border", "2px groove red");
					}
				}

			}

			function check_phone() {
				var pattern = /^(.*[0-9]).{8,}$/;
				var my_name = $("#phone").val();
				if (pattern.test(my_name) && my_name !== '') {

					$("#phone_msg").html("<small>OK</small>");
					$("#phone_msg").css("color", "green");
					$("#phone_msg").show();
					$("#phone").css("border", "2px groove palegreen");
					err_name = true;
				} else {
					if (my_name == "") {

						$("#phone_msg").html(
							"<small>Do not leave empty</small>");
						$("#phone_msg").css("color", "red");
						$("#phone_msg").show();
						$("#phone").css("border", "2px groove red");

					} else {

						$("#phone_msg")
							.html(
								"<small>Only numbers are allowed</small>");
						$("#phone_msg").css("color", "red");
						$("#phone_msg").show();
						$("#phone").css("border", "2px groove red");
					}
				}

			}

			// password validation
			function check_pass() {
				var pattern = /^(?!=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[!#$%&? "])(?!.*\s).{8,}$/;
				// var pattern =
				// /^(?=.*[0-9])(?=.*[A-Z].*[A-Z])(?=.*[a-z])(?=.*[!#$@%&?
				// "])(?!.*\s).{8,}$/;
				var password = $("#password").val();
				if (pattern.test(password)) {

					$("#pass_msg").html("<small>OK</small>");
					$("#pass_msg").css("color", "green");
					$("#pass_msg").show();
					$("#password").css("border", "2px groove palegreen");
					err_pass = true;
				} else {
					if (password == "") {

						$("#pass_msg").html(
							"<small>Do not leave empty</small>");
						$("#pass_msg").css("color", "red");
						$("#pass_msg").show();
						$("#password").css("border", "2px groove red");
					} else {

						$("#pass_msg")
							.html(
								"<small>Password should contain (Alphanumeric, char, length must be 8 or more )</small>");
						$("#pass_msg").css("color", "red");
						$("#pass_msg").show();
						$("#password").css("border", "2px groove red");
					}
				}
			}




			$("#form").submit(
				function() {
					err_name = false;

					err_pass = false;


					check_name();

					check_pass();


					if (err_name === true
						&& err_pass === true && error_phone === true
					) {
						alert("registration success");

					} else {
						alert("Please fill the form correctly");

					}
				});
		});