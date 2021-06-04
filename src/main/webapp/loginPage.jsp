<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">

<title>CodeChallenge!</title>
<link rel="stylesheet" href="loginPage.css">
</head>
<body>

	<h1 class="title">Get 100 bonus points just for signing up!</h1>
	<br>
	<br>
	<!-- <form class="needs-validation" novalidate="">
		<table>
			<tr>
				<b></b>
			</tr>
			<tr>
				<td>
					<div class="row g-3">
						<div class="col-sm-3">
							<label for="firstName" class="form-label"></label> <input
								type="text" id="firstName" placeholder="First name" value=""
								required="">
							<div class="invalid-feedback">Valid first name is required.</div>
						</div>
				</td>
				<td></td>
				<td>
					<div class="col-12">
						<label for="email" class="form-label"></label> <input type="email"
							id="email" placeholder="Email">
						<div class="invalid-feedback">Please enter a valid email
							address.</div>
					</div>
				</td>
			</tr>
			<tr>
				<td>
					<div class="col-sm-3">
						<label for="lastName" class="form-label"></label> <input
							type="text" id="lastName" placeholder="Last name" value=""
							required="">
						<div class="invalid-feedback">Valid last name is required.</div>
					</div>
				</td>

				<td><b>Your Contact Info</b></td>
			</tr>

			<tr>
				<td>
					<div class="col-md-5">
						<label for="country" class="form-label"></label> <select
							class="form-select" id="gender" required="">
							<option value="">Gender</option>
							<option>Male</option>
							<option>Female</option>
							<option>Other</option>
						</select>
						<div class="invalid-feedback">Please select a valid Gender.</div>
					</div>
				</td>
				<td>

					<div class="col-12">
						<label for="address" class="form-label"></label> <input
							type="text" id="address" placeholder="Address" required="">
						<div class="invalid-feedback">Please enter your address.</div>
					</div>

				</td>
			</tr>

			<tr>
				<td><b>Create Password</b></td>
				<td>
					<div class="col-12">
						<label for="phone" class="form-label"></label> <input type="text"
							id="phone" placeholder="Mobile Phone Number" required="">
						<div class="invalid-feedback">Please enter your phone
							number.</div>
					</div>
				</td>
			</tr>
			class="form-control"


			<tr>
				<td>
					<div class="col-12">
						<label for="password" class="form-label"></label> <input
							type="password" id="password" placeholder="password">
						<div class="invalid-feedback">Please enter a valid password.</div>
					</div>
				</td>
			</tr>
			<tr></tr>





			<hr class="my-4">

			<button class="btn btn-danger" type="button" onclick="fromform()">Become
				a Member</button>

			<input type="button" value="Display Regi"
				onclick="window.location.href='PrintList.jsp'; return false;" />
		</table>

	</form > -->

	<div class="container">
		<main>
			<div class="row g-5">

				<div class="col-md-12 col-lg-12">


					<form class="needs-validation" novalidate
						style="margin-left:20%;margin-right:20%" id="form">
						<br> <b>TELL US ABOUT YOU</b><br>
						<div class="row g-3">
							<div class="col-sm-6">
								<label for="firstName" class="form-label"></label> <input
									type="text" class="form-control" id="firstName"
									placeholder="First name" value="" required="">
									<small id="name_msg">Error message</small>
							</div>

							<div class="col-sm-6">
								<label for="email" class="form-label"></label> <input
									type="email" id="email" class="form-control"
									placeholder="Email">
							</div>
						</div>
						<div class="row g-3">
							<div class="col-sm-6">
								<label for="lastName" class="form-label"></label> <input
									type="text" id="lastName" placeholder="Last name" value=""
									class="form-control" required="">
									
							</div>

							<div class="col-sm-6">
								<br> <b>Your Contact Info</b> <br> <label
									for="address" class="form-label"></label> <input type="text"
									id="address" placeholder="Address" required=""
									class="form-control">
							</div>
						</div>
						<div class="row g-3">
							<div class="col-sm-6">
								<label for="country" class="form-label"></label> <select
									class="form-select" id="gender" required="">
									<option value="">Gender</option>
									<option>Male</option>
									<option>Female</option>
									<option>Other</option>
								</select>
							</div>

							<div class="col-sm-6">
								<label for="phone" class="form-label"></label> <input
									type="text" id="phone" placeholder="Mobile Phone Number"
									required="" class="form-control">
									<small id="phone_msg">Error message</small>
							</div>
						</div>
						<div class="row g-3">
							<div class="col-sm-6">
								<br> <b>Your Contact Info</b><br> <label
									for="password" class="form-label"></label> <input
									type="password" id="password" placeholder="password"
									class="form-control">
									<small id="pass_msg">Error message</small>
							</div>
							<button class="btn btn-danger" type="button" onclick="fromform()">Become
								a Member</button>

							<input type="button" value="Display Regi"
								onclick="window.location.href='PrintList.jsp'; return false;" />

						</div>
					</form>
				</div>
			</div>
		</main>

	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="loginPage.js"></script>
</body>
</html>