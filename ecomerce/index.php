<?php include"header.php";?>

<div class="container-fluid">

<div class="modal fade" id="cart" role="dialog">
	<div class="modal-dialog">

	  <!-- Modal content-->
	  <div class="modal-content">
		<div class="modal-header">
		<h3>Order Details</h3>
		  <button type="button" class="close" data-dismiss="modal">&times;</button>
		</div>
		<div class="modal-body">
			<table class="table table-responsive">
    <thead>
      <tr>
        <th>Item Name</th>
        <th>Quantity</th>
        <th>Price</th>
		<th>Total</th>
      </tr>
    </thead>
    <tbody>
	<?php 
	if(!empty($_SESSION['shopping_cart'])){
		$total = 0;
		foreach($_SESSION['shopping_cart'] as $key => $product){
		?>
      <tr>
        <td><?php echo $product['name']; ?></td>
        <td><?php echo $product['quantity']; ?></td>
        <td>Ksh. <?php echo $product['price']; ?></td>
		<td>Ksh. <?php echo number_format($product['quantity']*$product['price'],2); ?></td>
		<td><a href="index.php?action=delete&id=<?php echo $product['id']; ?>" class="btn btn-danger">Remove</a></td>
		<?php $total=($total+($product['quantity']*$product['price'])); ?>
      </tr>
	<?php } ?>
      <tr>
        <td colspan="3" align="right"><b>Grand Total  :</td>
		<td colspan="2">Ksh. <?php echo '<b>'.$total.'</b>'; }?></td>
      </tr>
	  
		<?php 
		if(isset($_SESSION['shopping_cart'])):
		if(count($_SESSION['shopping_cart'])>0):
		?>
		<tr>
		<td colspan="5">
		<form action="index.php" method="POST">
		<div class="form-group">
		<label for="text">Contact Name</label>
		<input type="text" name="customer" class="form-control" placeholder="Enter your name" required>
		</div>
		</td></tr><tr>
		<td colspan="5">
		<div class="form-group">
		<label for="text">Payment Number</label>
		<input type="text" name="phone" class="form-control" placeholder="Enter your Mpesa number" required>
		</div>
		</td></tr><tr>
		<td colspan="5">
		<div class="form-group">
		  <label for="sel1">Select County:</label>
		  <select class="form-control" onchange="fetch()" id="jimbo" name="jimbo">
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
		</td></tr><tr>
		</td></tr><tr>
		<td colspan="5">
		<div class="form-group">
		  <label for="sel1">Select Constituency:</label>
		  <select class="form-control" id="constituency" name="constituency">
		  
		  </select>
		 </div> 
		</td></tr><tr>
		</td></tr><tr>
		<td colspan="5">
		<div class="form-group">
		<label for="text">Physical Address</label>
		<input type="text" name="address" class="form-control" placeholder="Enter your address">
		</div>
		</td></tr><tr>
		<td colspan="5">
		<button type="submit" name="placeorder" class="btn btn-success">Checkout</button>
		</td></tr>
		</form>
		</td>
		<?php  endif; endif;?>
	  </tr>
    </tbody>
  </table>
		</div>
	  </div>
	</div>
</div>


  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="image/image1.jpg" alt="Los Angeles" style="width:100%;">
		<div class="carousel-caption d-none d-md-block" >
			<h2>Welcom To Duka Letu</h2>
			<pstyle="font-size:20px;">We have the best offer</p>
		</div>
      </div>

      <div class="item">
        <img src="image/image2.jpg" alt="Chicago" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="image/image3.jpg" alt="New york" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  
  <br>
 <div class="row" style="padding:2px; margin:0px;"> 
  <?php
	$stmt = $conn->query('SELECT * FROM stock');
	$stmt->execute();
	while($row = $stmt->fetch()){
	?>
	<form action="index.php" method="POST">
	<div class="card">
    <div class="card-body" align="center">
	<img class="card-img-top" src="image/<?php echo $row['pic']; ?>" alt="Card image">
      <h4 class="card-title"><b><?php echo $row['item']; ?></h4>
      <p class="card-text">Ksh : <?php echo $row['price']; ?> /=</b>
	  <br>
	  <?php echo $row['description']; ?></p>
	  <p><input type="number" name="quantity" placeholder="Enter Quantity" value="" required></p>
	  <input type="hidden" name="name" value="<?php echo $row['item']; ?>">
	  <input type="hidden" name="store" value="<?php echo $row['store']; ?>">
	  <input type="hidden" name="price" value="<?php echo $row['price']; ?>">
	  <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
	  </p>
      <p>
	  <button type="submit " name="add_to_cart" class="btn btn-primary" style="margin-bottom:2px;">Add To Cart</button>
	  </p>
    </div>
  </div>
  </form>
  
	<?php }?>
  
  </div>
</div>
</div>
<?php include"footer.php"; ?>