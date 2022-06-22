<?php 
include"conn.php";

session_start();
$product_ids = array();


//check if add to cart has been submitted
if(isset($_POST['add_to_cart'])){
	//if shoping cart exist
	if(isset($_SESSION['shopping_cart'])){
		//keep truck of the shopping cart items
		$count = count($_SESSION['shopping_cart']);
		$product_ids = array_column($_SESSION['shopping_cart'],'id');
		if(!in_array($_POST['id'], $product_ids)){
				$_SESSION['shopping_cart'][$count] = array(
					'id' => $_POST['id'],
					'name' => $_POST['name'],
					'store' => $_POST['store'],
					'price' => $_POST['price'],
					'quantity' => $_POST['quantity'],
				);
		}
		//if the product id exist on shopping cart increase the quantity
		else{
			for($i = 0; $i < count($product_ids); $i++){
				if($product_ids[$i]== $_POST['id']){
					//add quantity to the existing product id on the shopping cart
					$_SESSION['shopping_cart'][$i]['quantity'] += $_POST['quantity'];
					}
				}
			}
		}
	//if shopping cart doesnt exist create array with key zero
	else{
		$_SESSION['shopping_cart'][0] = array
		(
			'id' => $_POST['id'],
			'name' => $_POST['name'],
			'store' => $_POST['store'],
			'price' => $_POST['price'],
			'quantity' => $_POST['quantity'],
		);
	}
}
//when remove button on shopping cart is clicked
if(ISSET($_GET['action'])=="delete"){
	foreach($_SESSION['shopping_cart'] as $key => $product){
		if($product['id'] == $_GET['id']){
			//remove product from the shopping cart
			unset($_SESSION['shopping_cart'][$key]);
		}
	}
	//reset session array key
	$_SESSION['shopping_cart'] = array_values($_SESSION['shopping_cart']);
	header('Location: index.php');
	exit;
}
if(isset($_POST['placeorder'])){
	$name = $_POST['customer'];
	$jimbo = $_POST['jimbo'];
	$jimbo = str_replace("'", "\'",$jimbo);
	$bunge = $_POST['constituency'];
	$address = $_POST['address'];
	$phone = $_POST['phone'];
	$ordernum = date('YmdHis');
	$ordernum = $name."-".$ordernum;
	$status = "Unpaid";
	$total = 0;
	
	foreach($_SESSION['shopping_cart'] as $key => $product){
		$id = $product['id'];
		$item = $product['name'];
		$store = $product['store'];
		$quantity = $product['quantity'];
		$price = $product['price']*$quantity;
		$total = $total+$price;

		$sql = $conn->query("INSERT INTO sales (item, item_id, price, quantity, store, ordernumber,stage)
			VALUES ('$item', '$id', '$price', '$quantity', '$store', '$ordernum','Unpaid')");
		
	}
	
	try{
	$stmt = $conn->query("INSERT INTO invoice (order_number, customer, amount, county, constituency, areacode, phone, status)
			VALUES ('$ordernum', '$name', '$total', ' $jimbo', ' $bunge', '$address', '$phone', '$status')");
			
	$conn = null;
	//call mpesa api
    header("Location:stkpay.php?phone=".$phone);
     session_destroy();
     exit();
    
    session_unset();
	}
	catch(PDOException $e) {
		  echo "Error: " . $e->getMessage();
		}
}
?>