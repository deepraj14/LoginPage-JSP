<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<body>

<div class="d-flex flex-col justify-content-center align-item-center m-5 d-5">
<div class="border border-primary rounded p-5 m-5">
<h1>Login Successful <%=request.getAttribute("email")%></h1>
<a href=login.jsp
 class="d-flex justify-content-center align-item-center btn-primary rounded w-100">Logout</a>
</div>
</div>



<script>

window.onload=event.preventDefault();
</script>
</body>
</html>