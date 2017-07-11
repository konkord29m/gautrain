<%-- 
    Document   : registr
    Created on : 28 Jun 2017, 11:48:30 AM
    Author     : HP
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title></title>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
          <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
          <link rel="stylesheet" type="text/css" href="css/style.css">
	</head>
	
	<style>
        hr{
            border: 1px solid #09438e;
         }
       .btn {
        margin-top:15px;
        background: #00c4f5;
        background-image: -webkit-linear-gradient(top, #00c4f5, #2980b9);
        background-image: -moz-linear-gradient(top, #00c4f5, #2980b9);
        background-image: -ms-linear-gradient(top, #00c4f5, #2980b9);
        background-image: -o-linear-gradient(top, #00c4f5, #2980b9);
        background-image: linear-gradient(to bottom, #00c4f5, #2980b9);
        -webkit-border-radius: 24;
        -moz-border-radius: 24;
        border-radius: 24px;
        font-family: Courier New;
        color: #ffffff;
        font-size: 20px;
        padding: 10px 20px 10px 20px;
        text-decoration: none;
      }

      .btn:hover {
        background: #3cb0fd;
        background-image: -webkit-linear-gradient(top, #3cb0fd, #3498db);
        background-image: -moz-linear-gradient(top, #3cb0fd, #3498db);
        background-image: -ms-linear-gradient(top, #3cb0fd, #3498db);
        background-image: -o-linear-gradient(top, #3cb0fd, #3498db);
        background-image: linear-gradient(to bottom, #3cb0fd, #3498db);
        text-decoration: none;
      }
        #contents
        {
            margin: 3%;
            background-image:url(images/trans.png);
        }
        #contents2
        {
            margin-top:8%;
            background-image:url(images/trans.png);
        }
		#color{
	
			background-size:cover;
			background-attachment:fixed;
	

}
      
    </style>
	
	<body ></>
        <div id="color" class="row" style="background-image:url('images/logo3.png')">
            <div id="contents"class="col-xs-12 col-md-6">
                <h1>REGISTER TO USE GAUTRAIN SERVICES:</h1></br>
                <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
            
			<!--<form action="registr.htm" modelAttribute="registUser" method="POST">-->
                <!--<form action="registUser" method="post">
                <div class="form-group">
                    <input placeholder="Title" type="text" name="title" style="width:250px; height:40px;"><br>
                             
                </div>
                <div class="form-group">
                    <input placeholder="First Name" name="firstNames" type="text" style="width:250px; height:40px;"><br>
                           
                </div>
                <div class="form-group">
                    <input placeholder="Surname" name="lastName" type="text" style="width:250px; height:40px;"><br>
                             
                </div>
                <div class="form-group">
                    <input placeholder="Date of Birth" name="dob" type="date" style="width:250px; height:40px;" ><br>
                     
                </div>
                <div class="form-group">
                    <input placeholder="Role" name="role" type="text" style="width:250px; height:40px;"><br>
                             
                </div>
                <div class="form-group">
                    <input placeholder="Email address" name="emailAddr" type="email" style="width:250px; height:40px;"><br> 
                     
                </div>
                <div class="input-icon password">
                    <input placeholder="Password" name="password" type="password" style="width:250px; height:40px;"><br>
                 
                </div>
                <br>
                <button type="submit" class="btn-primary" style="width:250px; height:40px;">Register</button>
                
            
        </form>  -->    
                    <form action="registUser" method="post">
                        <h4>Client Credentials:</h4>
				
			<hr></hr>
			<div class="form-group">
                            <label for="name">Title:</label>
                            <input type="text" id="title" class="form-control"  placeholder="Enter Title" style="width:80%">
					
			</div>
				
			<div class="form-group">
				<label for="name">First Name:</label>
				<input type="text" id="firstNames" class="form-control"  placeholder="Enter First Name" style="width:80%">
                        </div>
			<div class="form-group">
				<label for="pwd">Surname:</label>
				<input type="text" class="form-control" id="lastName" placeholder="Enter Surname" style="width:80%">
			</div>
    
                        <div class="form-group"> 
                            <label class="control-label" for="date">Date of Birth</label>
                            <input class="form-control" id="dob"  placeholder="MM/DD/YYYY" type="date" style="width:80%">
                        </div>
                                
                        <div class="form-group">
                            <label for="role">Role:</label>
                            <input type="text" class="form-control" id="role" placeholder="Enter Role" style="width:80%">
			</div>
	  
                        <div class="form-group">
                            <label for="password">Password:</label>
                            <input type="password" class="form-control" id="password" placeholder="Enter Password" style="width:80%">
                        </div>
    
                            </br>
                            </br>
                        <h4>Contact Details:</h4>
                            <hr></hr>
   
                        <div class="form-group">
                            <label for="name">Email:</label>
                            <input type="email" class="form-control" id="emailAddr" placeholder="Enter Email" style="width:80%">
                        </div>
   
                            </br>
                            <hr></hr>
      
                        <div class="form-group">
                            <button type="submit" class="btn btn-primary">SUBMIT</button>
                            
                            <button type="button" class="btn btn-warning">RESET</button>
                            <button type="button" class="btn btn-info">CANCEL</button>
                        </:form>-->
                        </div>
                 <!--<form action="registr.do" modelAttribute="registUser" method="POST">  
      <input type="text" placeholder="Title" name ="title"/>
      <input type="Text" placeholder="First Name" name="firstNames" />
      <input type="text" placeholder="Surname" name="lastName" />
      <input type="Text" placeholder="DOB" name="dob" />
      <input type="Text" placeholder="Email" name="role" />
      <input type="password" placeholder="Password" name="password" /> 
      <input type="Text" placeholder="Email" name="emailAddr" />
      <input type="submit" value="Register"/>
                    </form>-->
            </div>
           
            <div id="contents2"class="col-xs-6 col-md-4">
                <h4 <label style="color:#54ce95">Registration Summary</h4>
                <hr id="hr"></hr>
                    <p>Submit your details to register your Gautrain Gold Card.</p>
               
            </div>
 
      </div>
        
    </body>
</html>
