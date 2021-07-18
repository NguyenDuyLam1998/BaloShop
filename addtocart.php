<?php
session_start();
ob_start();	
$conn= mysqli_connect("localhost","root","","balo");
mysqli_query($conn,'SET NAME "utf8"');

$id = !empty($_GET["id"])?(int)$_GET["id"]:0;
$SoLuong = !empty($_GET['SoLuong'])?(int)$_GET['SoLuong']:1;
$action = !empty($_GET["action"])?(int)$_GET["action"]:'add';

$query = $conn->query("SELECT * FROM product WHERE id=$id");
$pro = $query->fetch_object();

if ($action =='add'){
	if (isset($_SESSION['cart'][$id])){
		$_SESSION['cart'][$id]['SoLuong'] += $SoLuong;
	}
	else{
		$item = [
		'id'=> $pro->id,
		'name' => $pro->name,
		'price' => $pro->price,
		'SoLuong'=> $SoLuong
	];
		$_SESSION['cart'][$id]=$item;
		}
}


if($action == 'update'){
	if(isset($_SESSION['cart'][$id])){
		$_SESSION['cart'][$id]['SoLuong'] = $SoLuongud;
	}
}

if($action == 'delete'){
	if(isset($_SESSION['cart'][$id])){
		unset($_SESSION['cart'][$id]);	
	}
}

//echo "<pre>";
//print_r($_SESSION['cart']);
header('location:TrangGioHang.php');
ob_end_flush();
?>