<?php include"cart.php"; ?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="style.css">
<script src="main.js"></script>
</head>
<body>

<div class="topnav" id="myTopnav">
  <a href="index.php" class="active">Home</a>
  <a href="admin.php">admin</a>
  <a href="#Vendorlogin" data-toggle="modal" data-target="#Vendorlogin">Vendor</a>
  <a href="#about">Truck</a>
  <a href="#cart" data-toggle="modal" data-target="#cart" style="display:block;">
  <i class="fa fa-shopping-cart" style="font-size:24px;"></i>
  <span class="badge progress-bar-danger" id="notify" style = "font-size: 15px; font-weight:bold;">
  <?php if(isset($_SESSION['shopping_cart'])):
  echo sizeof($_SESSION['shopping_cart']);
  endif; ?></span></a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

<div class="modal fade" id="Vendorlogin" role="dialog">
	<div class="modal-dialog">

	  <!-- Modal content-->
	  <div class="modal-content">
		<div class="modal-header">
		<h3><b>Vendor Login Form</b></h3>
		  <button type="button" class="close" data-dismiss="modal">&times;</button>
		</div>
		<div class="modal-body">
			<ul class="nav nav-tabs" id="myTab" role="tablist" style="position:static; height:auto;">
				<li class="nav-item active">
					<a href="#login" aria-controls="login" role="tab" data-toggle="tab"><b>Login</b></a>
				</li>
				<li class="nav-item">
					<a href="#VendorReg" aria-controls="VendorReg" role="tab" data-toggle="tab"><b>Register</b></a>
				</li>
				<li class="nav-item">
					<a href="#ForgotPassword" aria-controls="ForgotPassword" role="tab" data-toggle="tab"><b>Forgot Password</b></a>
				</li>
			</ul>
			<div class="tab-content">
				<div role="tabpanel" class="tab-pane active" id="login" style="color:#6da0cc;">
					<form action="action.php" method="POST">
						<div class="form-group">
							<label for="exampleFormControlInput1">Phone Number:</label>
							<input type="text" class="form-control" id="phone" name="phone" placeholder="Enter your email address" required>
						 </div>
						<div class="form-group">
							<label for="exampleFormControlInput1">Password:</label>
							<input type="password" class="form-control" id="password" name="password" placeholder="8 characters" required>
						 </div>
						 <input type="hidden" name="account" value="vendor" />
						<button type="submit" name="submit" class="btn btn-primary" value="login">Login</button>			  		  
					</form>
				</div>
				
				<div role="tabpanel" class="tab-pane" id="VendorReg" style="color:#6da0cc;">
					<form action="action.php" method="POST">
						<div class="form-group">
							<label for="exampleFormControlInput1">Business Name:</label>
							<input type="text" class="form-control" id="bname" name="bname" placeholder="Business Name:" required>
						 </div>
						 <div class="form-group">
							<label for="exampleFormControlInput1">Phone Number:</label>
							<input type="text" class="form-control" id="phone" name="phone" placeholder="254700711233" required>
						 </div>
						 <div class="form-group">
							<label for="exampleFormControlInput1">Password:</label>
							<input type="password" class="form-control" id="password" name="password" placeholder="8 Characters:" required>
						 </div>
						  <div class="form-group">
						  <label for="sel1">Select County:</label>
						  <select class="form-control" id="county" name="county">
						  <option>Select County</option>
							<?php 
							$stmt = $conn->query('SELECT * FROM regions GROUP BY county');
							$stmt->execute();
							while($row = $stmt->fetch()){
								$county = $row['county'];
							?>
							<option value="<?php echo $county; ?>"><?php echo $county; ?></option>
							<?php } ?>
						  </select>
						 </div> 
						 <div class="form-group">
						  <label for="sel1">Select Constituency:</label>
						  <select class="form-control" id="subcounty" name="subcounty">
						  </select>
						 </div> 
						 <div class="form-group">
							<label for="exampleFormControlInput1">Area Code:</label>
							<input type="text" class="form-control" id="areacode" name="areacode" placeholder="Physical Location" required>
						 </div>
						<button type="submit" name="submit" class="btn btn-primary" value="register" >Add</button>			  
					</form>
				</div>
				
				<div role="tabpanel" class="tab-pane" id="ForgotPassword" style="color:#6da0cc;">
					<form action="./include/Reset.php" method="POST">
						<div class="form-group">
							<label for="exampleFormControlInput1">Email Address:</label>
							<input type="email" class="form-control" id="myemail" name="myemail" placeholder="Enter your email address" required>
						 </div>
						<div class="form-group">
							<label for="exampleFormControlInput1">Phone Number:</label>
							<input type="text" class="form-control" id="myphone" name="myphone" placeholder="Enter your Phone number" required>
						 </div>
						 <div class="form-group">
							<label for="exampleFormControlInput1">New Password:</label>
							<input type="password" class="form-control" id="new_password" name="new_password" placeholder="8 characters" required>
						 </div>
						<button type="submit" name="reset" class="btn btn-primary" value="reset">Reset</button>			  
					</form>
				</div>
				
			</div>
		</div>
		<div class="modal-footer">
			<p align="left">Discover a new shopping way</p>
		</div>
	  </div>
	</div>
</div>
