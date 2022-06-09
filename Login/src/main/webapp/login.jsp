<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>

    <div class="container border border-primary p-2 p-lg-5">
        
        <div class="row justify-content-center">
            <div class="col-6 display-4 text-center mb-3 border-bottom"><strong>Login Page</strong></div>
            
        </div>
        <form action=LoginServlet method=post>
            <div class="form-group">
              <label for="exampleInputEmail1" class="display-5 m-1"><strong>Email address</strong></label>
              <input name="txtName"  class="form-control input-lg"id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
              <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1" class="display-5 m-1"><strong>Password</strong></label>
              <input name="txtPwd" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
            </div>
            

            <div class="container">
            <div class="row">
                <div class="col-md-6 col-sm-12 p-2"><button type="submit" class="btn btn-primary w-100">Submit</button></div>
                <div class="col-md-6 col-sm-12 p-2"><button type="reset" class="btn btn-primary w-100">Reset</button></div>
            </div>
            </div>
            
          </form>
          
    </div>
</body>
<script>
let x=<%=request.getAttribute("error")%>
if(x!=null)
	{
	alert("wrong email or password");
	}
</script>
</html>