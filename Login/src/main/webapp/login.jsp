<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet" href="login.css">
</head>
<body>
<div class="d-flex justify-content-center align-items-center m-5 " id="parent">
	<div align=center class="border border-primary rounded w-100 m-5 p-5">
		<h1>Login Page</h1>
		<br><br>
		<form action=LoginServlet method=post>
			<div class="form-group m-2 " id="email" >
				<label for="exampleInputEmail1">Email address</label> <input
					onChange={} required name=txtName class="form-control" id="email"
					aria-describedby="emailHelp" placeholder="Enter email"> <small
					id="emailHelp" class="form-text text-muted">We'll never
					share your email with anyone else.</small>
			</div>
			<div class="form-group m-2">
				<label for="exampleInputPassword1">Password</label> <input required
					name=txtPwd type="password" class="form-control" id="pass"
					placeholder="Password">
			</div>
			<div class="form-group form-check m-2">
				<input required type="checkbox" class="form-check-input"
					id="exampleCheck1"> <label class="form-check-label"
					for="exampleCheck1">Check me out</label>
			</div>
			<button type="submit" class="btn btn-primary m-2">Submit</button>
			<button type="reset" class="btn btn-primary m-2">Reset</button>
		</form>
	</div>
	</div>
<script src="login.js"></script>

</body>
</html>