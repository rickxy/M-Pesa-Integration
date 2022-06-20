
<?php
  $CheckoutRequestID = $_GET['CheckoutRequestID'];
  print_r($CheckoutRequestID);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form class="contact2-form validate-form" action="check_transaction_status.php" method="post">
    <input type="hidden" name="Check_request_ID" value="<?php echo $CheckoutRequestID?>" />
    </br></br>
    <button class="contact2-form-btn" style="margin-bottom: 30px;">Confirm Payment is Complete</button>
    </form>
</body>
</html>