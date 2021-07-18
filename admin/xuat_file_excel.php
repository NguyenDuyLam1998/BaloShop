<?php 
session_start();
error_reporting(0);
$conn=mysqli_connect("localhost","root","","balo");
mysqli_query($conn,'SET NAMES "utf8"'); // hiển thị tiếng việt
$sql="select * from product";
$kq=mysqli_query($conn,$sql);
 //$a=$_GET['export_excel'];
$output='';
//if (isset($a)) {
    if (mysqli_num_rows($kq)) {
        $output.='<table class="table" bordered="1">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Price</th>
                <th>Content</th>
            </tr>';
            $i=1;
        while($hang=mysqli_fetch_object($kq))
        {
            $output.='
            <tr>
                <td>'.$hang->id.'</td>
                <td>'.$hang->name.'</td>
                <td>'.$hang->price.'</td>
                <td>'.$hang->content.'</td>
            </tr>
            ';
            $i++;
        }
        $output.='</table>';
        header("Content-Type:application/xls");
        header("Content-Disposition: attachment; filename=download.xls");
        echo $output;
    }

//}
 ?>