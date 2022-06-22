<?php include"conn.php"; ?>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="style.css">
</head>
<body>

<div class="topnav" id="myTopnav">
  <a href="index.php" class="active">Home</a>
  <a href="#additem" data-toggle="modal" data-target="#additem">Add Items</a>
  <a href="#contact">Stock</a>
  <a href="#about">About</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
<div class="container-fluid">

<div class="table-responsive">
<table class="table table-striped table-hover">
    <thead>
        <tr>
            <th colspan="6">
               <h2>List of Orders</h2>
            </th>
        </tr>
      <tr>
        <th>Store</th>
        <th>Item</th>
        <th>Quantity</th>
        <th>Price</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
	<?php
	$order = $_GET['order'];
	$stmt = $conn->query("SELECT * FROM sales where ordernumber = '$order'");
	$stmt->execute();
	while($row = $stmt->fetch()){
	?>
      <tr>
        <td><?php echo $row['store']; ?></td>
        <td><?php echo $row['item']; ?></td>
        <td><?php echo $row['quantity']; ?></td>
        <td>kSH <?php echo $row['price']; ?></td>
        <td><?php echo $row['stage']; ?></td>
      </tr>      
	<?php } ?>

    </tbody>
</table>
</div>

<br>

<div class="modal fade" id="additem" role="dialog">
	<div class="modal-dialog">

	  <!-- Modal content-->
	  <div class="modal-content">
		<div class="modal-header">
		<h3>Add New Item</h3>
		  <button type="button" class="close" data-dismiss="modal">&times;</button>
		</div>
		<div class="modal-body">
			<form action="action.php" method="POST" enctype="multipart/form-data">
				<div class="form-group">
					<label for="exampleFormControlInput1">Item Name:</label>
					<input type="text" class="form-control" id="item" name="item" placeholder="Enter item name" required>
				 </div>
				 <div class="form-group">
					<label for="exampleFormControlInput1">Category:</label>
					<input type="text" class="form-control" id="category" name="category" placeholder="Item category" required>
				 </div>
				 <div class="form-group">
					<label for="exampleFormControlInput1">Item description:</label>
					<input type="text" class="form-control" id="description" name="description" placeholder="Enter item name" required>
				 </div>
				 <div class="form-group">
					<label for="exampleFormControlInput1">Item price:</label>
					<input type="number" class="form-control" id="price" name="price" placeholder="Enter item name" required>
					<input type="file" name="pic">
				 </div>
				<button type="submit" name="submit" class="btn btn-primary" value="additem">Add</button>			  
			</form>
		</div>
	  </div>
	</div>
</div>


</div>
<?php include"footer.php"; ?>