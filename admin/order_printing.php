<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>

    <style>
* {
    box-sizing: border-box;
    -moz-box-sizing: border-box;
}   
body {
    margin: 0;
    padding: 0;
    background-color: #FAFAFA;
    font: 13pt "Tohoma";
}
table{
    background:#ffffff;
    font: 11px;
    width:100%;
    border-collapse:collapse;
    font-family:Verdana, Arial, Helvetica, sans-serif;
    font-size:13px;
    border:thin solid #d3d3d3;
}
@page{
    size: A4;
    margin: 0;
}
.page {
    width: 21cm;
    overflow:hidden;
    min-height:297mm;
    padding: 2.5cm;
    margin-left:auto;
    margin-right:auto;
    background: white;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
}
tr{
    height: 24px;
    border:thin solid #d3d3d3;
}
tr td{
    padding-right: 2px;
    padding-left: 2px;
    border:thin solid #d3d3d3;
}
tr:hover{
    background: rgba(0,0,0,0.05);
}
th{
    background: rgba(0,0,255,0.1);
    text-align: center;
    font-weight: bold;
    color: #000;
    border: solid 1px #ccc;
    height: 24px;
}
.header{
    overflow: hidden;
}
.logo {
    background-color:#FFFFFF;
    text-align:left;
    float:left;
}
.company {
    padding-top:24px;
    text-transform:uppercase;
    background-color:#FFFFFF;
    text-align:center;
    float:right;
    font-size:16px;
}
.title {
    padding-top: 50px;
    clear: left;
    text-align:center;
    position:relative;
    color:#0000FF;
    font-size: 24px;
    top:1px;
}
.footer{
    position:absolute;
    bottom: 0;
    width: 16cm;
}
.footer-left {
    text-align:center;
    text-transform:uppercase;
    padding-top:24px;
    position:relative;
    height: 150px;
    width:50%;
    color:#000;
    float:left;
    font-size: 13px;
    bottom: 0;
}
.footer-right {
    text-align:center;
    text-transform:uppercase;
    padding-top:24px;
    position:relative;
    height: 150px;
    width:50%;
    color:#000;
    font-size: 13px;
    float:right;
    bottom: 0;
}
@media print {
 @page {
 margin: 0;
 border: initial;
 border-radius: initial;
 width: initial;
 min-height: initial;
 box-shadow: initial;
 background: initial;
 page-break-after: always;
}
}
</style>
</head>
<body onload="window.print();">
<div id="page" class="page">
<div class="header"> 
    <div class="logo"><img src="logo.jpg" width="100" height="100" ></div>
    <div class="company"><span>C??ng ty Balo th???i trang<br> <br> <br>  </span></div>
</div>
    <head>
        <title>Ho?? ????n thanh to??n</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="../css/admin_style.css" >
        <script src="../resources/ckeditor/ckeditor.js"></script>
    </head>
    <body>
        <?php
        session_start();
        if (!empty($_SESSION['current_user'])) {
            include '../connect_db.php';
            $orders = mysqli_query($con, "SELECT orders.name, orders.address, orders.phone, orders.note, order_detail.*, product.name as product_name 
            FROM orders
            INNER JOIN order_detail ON orders.id = order_detail.order_id
            INNER JOIN product ON product.id = order_detail.product_id
            WHERE orders.id = " . $_GET['id']);
            $orders = mysqli_fetch_all($orders, MYSQLI_ASSOC);
        }
        ?>
        <div id="order-detail-wrapper">
            <div id="order-detail">
                <h1>Ho?? ????n thanh to??n</h1>
                <label>Ng?????i nh???n: </label><span> <?= $orders[0]['name'] ?></span><br/>
                <label>??i???n tho???i: </label><span> <?= $orders[0]['address'] ?></span><br/>
                <label>?????a ch???: </label><span> <?= $orders[0]['phone'] ?></span><br/>
                
                <h3>S???n ph???m mua</h3>
                <ul>
                    <?php
                    $totalQuantity = 0;
                    $totalMoney = 0;
                    foreach ($orders as $row) {
                        ?>
                        <li>
                            <span class="item-name"><?= $row['product_name'] ?></span>
                            <span class="item-quantity"> - SL: <?= $row['quantity'] ?> s???n ph???m</span>
                        </li>
                        <?php
                        $totalMoney += ($row['price'] * $row['quantity']);
                        $totalQuantity += $row['quantity'];
                    }
                    ?>
                </ul>
                <label>T???ng SL:</label> <?= $totalQuantity ?>
                <p><label>T???ng ti???n:</label> <?= number_format($totalMoney, 0, ",", ".") ?> VN??</p>
                <p><label>Ghi ch??: </label><?= $orders[0]['note'] ?></p>
            </div>
            <div class="footer">
                <div class="footer-left"><br> Kh??ch H??ng<br>(k?? v?? ghi r?? h??? t??n) </div>
                <div class="footer-right"> ......, ng??y ... th??ng ... n??m ......<br>
                Nh??n vi??n<br>(k?? v?? ghi r?? h??? t??n) </div>
            </div>
        </div>
    </body>
</html>