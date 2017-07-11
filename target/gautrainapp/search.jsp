<%-- 
    Document   : search
    Created on : 03 Jul 2017, 3:57:17 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
<style> 
#panel, #flip {
    padding: 5px;
    text-align: center;
    background-color: #e5eecc;
    border: solid 1px #c3c3c3;
}

#panel {
    padding: 50px;
    display: none;
}

#panel1, #flip1 {
    padding: 5px;
    text-align: center;
    background-color: #e5eecc;
    border: solid 1px #c3c3c3;
}

#panel1 {
    padding: 50px;
    display: none;
}
body{
	background-color:#808080;
	font-family:Arial;
	background-size:cover;
	background-attachment:fixed;

}

#trainPic{
	
	background-size:cover;
	background-attachment:fixed;
	

}


</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script> 
$(document).ready(function(){
    $("#flip").click(function(){
        $("#panel").slideToggle("fast");
    });
});

$(document).ready(function(){
    $("#flip1").click(function(){
        $("#panel1").slideToggle("fast");
    });
});

$(document).ready(function(){
    $("#flip2").click(function(){
        $("#panel2").slideToggle("fast");
    });
});


</script>
</head>

<body style="background-image:url('images/images.jpg')">
<div id="flip">Click to slide TRAIN COUPONS</div>
<div id="panel"> 
	<div id="trainPic" style="background-image:url('images/Gautrain-in-depot-retouched.jpg')"></div>

		<fieldset id="wrap">
		   <legend>TRAIN COUPON SELECTIONS:</legend>
		   <table height="5px">
				 <table cellspacing="20" align="center" >
                    <tr>
						<th>   <label>Departure Area</label>
								
						<input list="flights" class="form-control" name="departureArea" >
							<datalist id="flights">
							<option value="Hatfield">
							<option value="Pretoria">
							<option value="Centurion">
							<option value="Midrand">
							<option value="Malboro">
							<option value="Sandton">
							<option value="Rosebank"> 
							<option value="Park">
							<option value="Rhodesfield">
						 
						
						</datalist>
							
						
						</th>
						<th>   <label>Destination Area</label>
								<!--<select>
									<option></option>
									<option>Hatfield</option>
									<option>Pretoria</option<>
									<option>Centurion</option>
									<option>Midrand</option>
									<option>Malboro</option>
									<option>Sandton<option>
									<option>Rosebank</option>  
									<option>Park</option>
									<option>Rhodesfield</option>
								</select>-->
						
						
								
								<input list="flights" name="destinationArea" class="form-control" >
								<datalist id="flights">
								  <option value="Hatfield">
								  <option value="Pretoria">
								  <option value="Centurion">
								  <option value="Midrand">
								  <option value="Malboro">
								  <option value="Sandton">
								  <option value="Rosebank"> 
								  <option value="Park">
								 <option value="Rhodesfield">
								</datalist>
						</th>
				   
						<th><label>Coupon Category</label>
								<input list="category" name="categoryArea" class="form-control" >
								<datalist id="category">
								  <option value="PAY-AS-YOU-GO SINGLE TRAIN FARES - HIGH PEAK">
								  <option value="PAY-AS-YOU-GO SINGLE TRAIN FARES - PEAK">
								  <option value="PAY-AS-YOU-GO SINGLE TRAIN FARES - OFF-PEAK">
								  <option value="WEEKLY TRAVEL PRODUCT: SAVE UP TO 7.5%"> 
								  <option value="MONTHLY TRAVEL PRODUCT: SAVE UP TO 15%">
								
								</datalist>
								<!--<select>
									<option></option>
									<option>PAY-AS-YOU-GO SINGLE TRAIN FARES - HIGH PEAK</option>
									<option>PAY-AS-YOU-GO SINGLE TRAIN FARES - PEAK</option>
									<option>PAY-AS-YOU-GO SINGLE TRAIN FARES - OFF-PEAK</option>
									<option>WEEKLY TRAVEL PRODUCT: SAVE UP TO 7.5%</option> 
									<option>MONTHLY TRAVEL PRODUCT: SAVE UP TO 15%</option>
						
								</select>-->
						</th>
                   
						<th>
							<input type="submit" value="PURCHASE" id="search" name="search">
		
						</th>
                    </tr>
		   
				</table>
			</table>
		 </fieldset>
	</div><br/> 
	     
		 
		
	  <!--</form>-->
	


</div>
<div id="flip1">Click to PURCHASE BUS COUPONS</div>
	
<div id="panel1">
	<fieldset id="wrap" >
	
		   <legend>TRAIN COUPON SELECTIONS:</legend>
		   <table height="5px">
				 <table cellspacing="20" align="center" >
                    <tr>
						<th>   <label>Bus</br></label>
								
						<!--<input list="busFares" class="form-control" name="busFares" >
							<datalist id="bus">
							<option value="Rail User Peak">
							<option value="Rail User Off-Peak">
							<option value="Non-Rail User Peak">
							<option value="Non-Rail User Off-Peak">
						
						</datalist>-->
						
						<input list="busFares" name="busFare" class="form-control" >
								<datalist id="bus">
									<option value="Rail User Peak">
									<option value="Rail User Off-Peak">
									<option value="Non-Rail User Peak">
									<option value="Non-Rail User Off-Peak">
								
								</datalist>
							
						
						</th>
						
				   
						
						<th>
							<input type="submit" value="PURCHASE" id="search" name="search">
		
						</th>
                    </tr>
		   
				</table>
			</table>
		 </fieldset>
		
</div>


	


	




</body>
</html>
