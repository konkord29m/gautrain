<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html> 
	<head>
		<title>Gautrain</title>
		<!--<link href="styles/mycss.css" rel="stylesheet" type="text/css" >-->
                <!--<link rel="stylesheet" type="text/css" href="css/head.css">-->
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<style>
			body{
				font-family:Arial;
				padding:10px;
				
			}

			.media.media-body.media-heading{
			
				
				background-color:#CCCC66;
			}			
			#fText{
				text-align:center;
				font-style:italic;
				background-color:#999666;

			}
			
			#trainView{
				height:500;
				width:1000;
				padding-right:200px;
				
			}
			.heading{
				text-align:center;
				font-family:Algerian,Arial;
				color:#CC9933;
			
			}
                        input
                        {
                             height:50px;
                            margin:2px;
                        }
		
		</style>
	</head>
		
	<body>
		<div><img src="images/bg-hdr.jpg"></div>
		
		<!--<div><video width=1000 height=500 align=center>
			<source src="Introduction to Servlets.mp4" type="video/mp4">
			<source src="Introduction to Servlets.ogg" type="video/ogg">
			
		</video></div>-->
		
		<!--<div id="menu">
			<ul align="center" text-decoration="none">
				<li><a href="">Home</li>
				<li><a href="">Gold Card Registration</li>
				<li><a href="">Gautrain Benefits</li>
				<li><a href="">Contact Us</li>
			</ul>
		</div>-->
		
	
		
		<nav class="navbar navbar-inverse">
			  <div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">GAUTRAIN</a>
				</div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="registr.jsp">Gold Card Registration</a></li>
					<li><a href="#">Gautrain Benefits</a></li>
					<li><a href="#">Contact Us</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
				  
				  <li><a href="login.htm"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</ul>
                                <ul>
         <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
         
        <!--<li id="login">
             <img src="images/pro.jpg" width="50" height="50"/>
             <a id="login-trigger" href="#">
               My Trips <span>&#x25BC;</span>
            </a>
            <div id="login-content">
                <:form  >
                    
                    <fieldset id="inputs">
                        <input id="username" type="email" required="true" placeholder="Email" name="Email" value="">   
                        <input id="password" type="password" required="true" placeholder="Password" name="Password" value="">
                    </fieldset>
                    
                    <fieldset id="actions">
                        <input type="submit" id="submit" value="Log in">
                      
                    </fieldset>
	               <a id="reg" data-toggle="modal" data-target="#myModal">Register</a>

                </:form>
            </div>                     
        </li>-->
		
    </ul>		
                              
                              
			  </div>
		</nav>
		
			<!--<form class="navbar-form navbar-left">
  <div class="input-group">
    <input type="text" class="form-control" placeholder="Search">
    <div class="input-group-btn">
      <button class="btn btn-default" type="submit">
        <i class="glyphicon glyphicon-search"></i>
      </button>
    </div>
  </div>
</form>-->
		
		<div class="media">
			<div class="media-left">
				<img src="images/gold_card.png" class="media-object"> <!--style="width:250px"-->
			</div>
			<div class="media-body">
				<h4 class="media-heading"></h4>
				<p><h3 style= font-family:Algerian,Arial;color:#CC9933;>YOUR GAUTRAIN GOLD CARD</h3></p>
					Gautrain's train, bus and parking services are all fully integrated and may be used separately or jointly by transferring from one to another. 
					These services are all accessed by means of a contactless smart card: your Gautrain Gold Card. 
					You can access the station parking facilities without a Gautrain Gold Card if you’re a first time user (you'll be issued with a paper ticket), but you will need a valid Gautrain Gold Card to use either the trains or the buses or to exit the parking.<br/> 
					Please note that cash is not accepted on either the trains or the buses or at parking exit gates.
				<p><h3 style= font-family:Algerian,Arial;color:#CC9933;>
				BUYING YOUR GAUTRAIN GOLD CARD</h3></p>
					<p>Gautrain Gold Cards may be purchased from all ticket offices and ticket vending machines at any Gautrain station as well as at selected retail outlets in the vicinity of the bus routes. 
					A once-off card licence fee of R14 is payable when you purchase your card and cannot be refunded or transferred or used to pay for Gautrain services. 
					Remember: Ticket vending machines display user instructions in four languages and are equipped with earphone jacks for the audio-impaired.</p>
			</div>
			
			<div class="heading">
				<p><h2>OUR SERVICES:</h2></p>
			</div>
				<div id="transType" style=margin-left:80px>
					<div id="trainView" >
						<video align="center" controls width=500 height=500>
							<source src="images/Gautrain’s 200km expansion in Gauteng on the cards.mp4" type="video/mp4">
							<source src="images/Gautrain’s 200km expansion in Gauteng on the cards.ogg" type="video/ogg">
						</video>
						<p>
							Click here to view: 
							<a href="#" target="_blank">Train Fares</a>.
						</p>
					
					</div>
			
			
					<div id="busView">
						<video align="center" controls width=500 height=500>
							<source src="Gautrain Bus.mp4" type="video/mp4">
							<source src="Gautrain Bus.ogg" type="video/ogg">
						</video>
					<p>
						Click here to view: 
						<a href="#" target="_blank">Bus Fares</a>.
					</p>
					
				</div>
				</div>
				
				
				
			
			
		</div>
		
		
		
		<div id="fText">
			<footer>
				GAUTRAIN TRANSPORT SERVICES
			</footer>
		</div>
	</body>

	






</html>
