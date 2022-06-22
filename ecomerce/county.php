<?php
include"conn.php";

$county = $_POST['county'];

$county = str_replace("'", "\'", $county);

if(!empty($county)) {
$stmt = $conn->prepare("SELECT * FROM regions where county = '$county'");
$stmt->execute();
$data = $stmt->fetchAll(PDO::FETCH_ASSOC);

echo json_encode($data);
}
else{
	echo json_encode("0 results");
}
$conn = null;
?>
