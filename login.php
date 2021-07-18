<?php
$username=$_REQUEST["username"];
$password=$_REQUEST["pass"];
$conn=mysqli_connect("localhost","root","","balo");
mysqli_query($conn,'SET NAMES "utf8"'); // hiển thị tiếng việt
$sql="select * from tbuser where username='$username' and pass ='$password'";
$kq=mysqli_query($conn,$sql);
$row=mysqli_fetch_object($kq);

if ($row) {
	echo "<script>alert('Đăng nhập thành công !');location.href='danhsach.php'</script>";
}
else
{
	echo "<script>alert('Đăng nhập thành công !');location.href='danhsach.php'</script>";
}

?>
