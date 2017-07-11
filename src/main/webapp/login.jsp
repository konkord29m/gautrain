<%-- 
    Document   : login
    Created on : 29 Jun 2017, 8:53:17 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Login</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<style>
			body{
				margin-left:100px;
				margin-top:50px;
				background-color:black;
			}
			
			.picture{
				margin-right:100px;
			}
		</style>
	</head>
	
	
	
	<body>
		<div class="picture">
			<img src="images/Gautrain-in-depot-retouched.jpg" alt="not available" width=800 height=400>
		</div>
		 <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
		<form action="userLogin" method="post">
                    <!--class="form-horizontal -->
			<div class="form-group">
				<label class="control-label col-sm-2" for="email">Email:</label>
				<div class="col-sm-5">
					<input type="email" class="form-control" id="emailAddr" placeholder="Enter email" length="10" style="width:50%" value="${user.emailAddr}">
				</div>
			</div>
			<div class="form-group">
				<label class="control-label col-sm-2" for="pwd">Password:</label>
				<div class="col-sm-5"> 
					<input type="password" class="form-control" id="password" placeholder="Enter password" style="width:50%" value="${user.password}">
				</div>
			</div>
			
			<div class="form-group"> 
				<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">Submit</button>
				</div>
			</div>
		</form>
	</body>

</html>
