<?php
include"conn.php";

$action = $_POST['submit'];


switch ($action) {
  case "additem":
    $item = str_replace("'", "''",$_POST['item']);
	$store = str_replace("'", "''",$_POST['store']);
	$category = str_replace("'", "''",$_POST['category']);
	$description = str_replace("'", "''",$_POST['description']);
	$price = $_POST['price'];
	$pic = $_FILES["pic"]["tmp_name"];
	$pic_name = $_FILES["pic"]["name"];
	$sql = $conn->query("INSERT INTO stock (store, item, category, description, price, pic)
			VALUES ('$store', '$item', '$category', '$description', '$price', '$pic_name')");
	
	move_uploaded_file($pic, __DIR__."/image/".basename($_FILES["pic"]["name"]));
	$conn = null;
	echo "
	<script>alert('Item has been successfully added')</script>
	<script>window.location = 'vendors.php?shopname=$store'</script>
	";

    break;
  case "buy":
    $item = $_POST['item'];
	$item_id = $_POST['item_id'];
	$price = $_POST['price'];
	$quantity = $_POST['quantity'];
	$price = $price*$quantity;

	$sql = $conn->query("INSERT INTO sales (item, item_id, price, quantity)
			VALUES ('$item', '$item_id', '$price', '$quantity')");
	
	$conn = null;
	
	echo "
	<script>alert('Item has been successfully added')</script>
	<script>window.location = 'stkpay.php?amount=$price'</script>
	";

    break;
	case "login":
		session_start();
		$username = $_POST['phone'];
		$password = md5($_POST['password']);
		$account = $_POST['account'];
		$status = "Active";
		
		$sql = "SELECT * FROM `vendors` WHERE `phone`=? AND `password`=? AND `account`=? AND `status`=?";
		$query = $conn->prepare($sql);
		$query->execute(array($username,$password,$account,$status));
		$row = $query->rowCount();
		$fetch = $query->fetch();
		if($row > 0) {
			$shop = $fetch['shopname'];
			echo "
			<script>window.location = 'vendors.php?shopname=$shop'</script>
			";
		}
		else{
			echo "
			<script>alert('Invalid username or password')</script>
			<script>window.location = 'index.php'</script>
			";
		}
    break;
	case "register":
		$bname = str_replace("'", "''",$_POST['bname']);
		$phone = $_POST['phone'];
		$password = md5($_POST['password']);
		$county = str_replace("'", "''",$_POST['county']);
		$subcounty = str_replace("'", "''",$_POST['subcounty']);
		$account = "vendor";
		$areacode = str_replace("'", "''",$_POST['areacode']);
		$status = "Inactive";
		
		$sql = "SELECT * FROM `vendors` WHERE `account`=? AND `phone`=? ";
		$query = $conn->prepare($sql);
		$query->execute(array($account,$phone));
		$row = $query->rowCount();
		$fetch = $query->fetch();
			if($row > 0){
				echo "	<script>alert('You already av an existing account')</script>
						<script>window.location = 'index.php'</script>";
				}
			
			else{
				$Isql = "INSERT INTO vendors (shopname, phone, password, county, constituency, areacode, account, status)
			VALUES ('$bname', '$phone', '$password', '$county', '$subcounty', '$areacode', '$account', '$status')";
				$conn->exec($Isql);
				$conn = null;
				echo "<script>window.location = 'index.php'</script>";
				}
    
    break;
  default:
    echo "Invalid operation";
}

