<?php 
if(empty($_GET['shopname'])){
	echo "
	<script>alert('You must login')</script>
	<script>window.location = 'index.php'</script>
	";
}
$shop = $_GET['shopname'];
include"conn.php"; 
?>
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
  <a href="vendors.php" class="active"><?php echo $shop; ?></a>
  <a href="#additem" data-toggle="modal" data-target="#additem">Add Items</a>
  <a href="#contact">Stock</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
<div class="container-fluid">
<h1>List of orders</h1>
<table class="table">
    <thead>
      <tr>
		<th>Date Ordered</th>
		<th>Customer</th>
        <th>County</th>
        <th>Sub-county</th>
        <th>Area code</th>
		<th>Phone</th>
		<th>Product Name</th>
        <th>Quantity</th>
        <th>Price</th>
        <th>Payment</th>
        <th>Status</th>
      </tr>
    </thead>
    <tbody>
	<?php
	$stmt = $conn->query("SELECT invoice.date, invoice.customer, invoice.county, invoice.constituency, invoice.areacode, invoice.phone, sales.item, sales.quantity, sales.stage, sales.price, sales.store, invoice.status FROM `invoice`, `sales` WHERE invoice.order_number = sales.ordernumber and store = '$shop' order by sales.id desc");
	$stmt->execute();
	while($row = $stmt->fetch()){
	?>
      <tr>
		<td><?php echo $row['date']; ?></td>
		<td><?php echo $row['customer']; ?></td>
		<td><?php echo $row['county']; ?></td>
		<td><?php echo $row['constituency']; ?></td>
		<td><?php echo $row['areacode']; ?></td>
		<td><?php echo $row['phone']; ?></td>
		<td><?php echo $row['item']; ?></td>
        <td><?php echo $row['quantity']; ?></td>
        <td><?php echo $row['price']; ?></td>
		<td><?php echo $row['status']; ?></td>
		<td>
		<button type="button" class="btn btn-info btn-lg" id="<?php echo $row['stage']; ?>" data-toggle="modal" data-target="#UpdateOrder"><?php echo $row['stage']; ?></button>
		</td>
      </tr>      
	<?php } ?>

    </tbody>
</table>

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
				  <label for="sel1">Select County:</label>
				  <select class="form-control" id="category" name="category">
					<?php 
					$stmt = $conn->query('SELECT * FROM category');
					$stmt->execute();
					while($row = $stmt->fetch()){
						$county = $row['category_name'];
					?>
					<option value="<?php echo $county; ?>"><?php echo $county; ?></option>
					<?php } ?>
				  </select>
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
				 <input type="hidden" name="store" value="<?php echo $shop; ?>" />
				<button type="submit" name="submit" class="btn btn-primary" value="additem">Add</button>			  
			</form>
		</div>
	  </div>
	</div>
</div>


<!-- Modal -->
<div id="UpdateOrder" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Update Order</h4>
      </div>
      <div class="modal-body">
          <form action="" method="POST">
          <input type="hidden" name="orderid" value="">
          <div class="form-group">
            <label for="pwd">Consignment Number:</label>
            <input type="text" class="form-control" name="consignment">
          </div>
          <div class="form-group">
          <select class="form-control" name="status">
            <option>Pending</option>
            <option>Shipping</option>
            <option>Completed</option>
            <option>Cancel</option>
          </select>
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" type="submit" type="updateorder" class="btn btn-primary">Update</button>
      </div>
      </form>
    </div>

  </div>
</div>

</div>
<?php include"footer.php"; ?>