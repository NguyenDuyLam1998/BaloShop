<!DOCTYPE><head>
    <meta charset="utf-8">
    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" type="text/css" href="menu.css">

</head>
<body>
    <div id="khung">
    <div id="header">
        <img src="logo.jpg" width="1200px" height="120px">
    </div>
    <div id="menu">
         <ul>
        <li><a href="#">Trang chủ</a>
            <ul>
                <li><a href="https://balostore.com/p/balo-unisex-thoi-trang-nam-nu-618-trang/">Balo thời trang</a></li>
            </ul>
        </li>

        <li><a href="#">Tin tức</a>
            <ul>
                <li><a href="https://balohanghieu.com/balo/balo-nam">Balo thời trang nam</a></li>
                <li><a href="https://juno.vn/collections/ba-lo-thoi-trang">Balo thời trang nữ</a></li>
            </ul>
        </li>
        <li><a href="#">Giới thiệu</a>
            <ul>
                <li><a href="https://www.mrvui.vn/cac-hang-balo-noi-tieng">Thông tin thương hiệu</a></li>
                <li><a href="#">Chính sách ưu đãi</a></li>
            </ul>
        </li>
        <li><a href="#">Hỗ trợ</a>
            <ul>
                <li><a href="chinhsach.html">Chính sách vận chuyển</a></li>
                <li><a href="#">Thông tin chuyển khoản</a></li>
                <li><a href="#">Tuyển dụng</a></li>
            </ul>
            </li>
      </ul>
    </div>
    <div id="noidung" class="clear_fix">
    <div id="left">
        <h3>Balo thời trang</h3>
        <ul>
        <li><a href="https://balohanghieu.com/balo/balo-nam">Balo thời trang nam</a></li>
        <li><a href="https://juno.vn/collections/ba-lo-thoi-trang">Balo thời trang nữ</a></li>
        </ul>
    </div>

    <div id="main">
        <head>
            <meta charset="UTF-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <style>
                body{
                    font-family: arial;
                }
                .container{
                    width: 800px;
                    margin: 0 auto;
                    background: green;
                }
                h1{
                    text-align: center;
                }
                .product-items{
                    border: 1px solid #ccc;
                    padding: 30px;
                }
                .product-item{
                    float: left;
                    width: 23%;
                    margin: 1%;
                    padding: 10px;
                    box-sizing: border-box;
                    border: 1px solid #ccc;
                    line-height: 26px;
                }
                .product-item label{
                    font-weight: bold;
                }
                .product-item p{
                    margin: 0;
                    line-height: 26px;
                    max-height: 52px;
                    overflow: hidden;
                }
                .product-price{
                    color: blue;
                    font-weight: bold;
                }
                .product-img{
                    padding: 5px;
                    border: 1px solid #ccc;
                    margin-bottom: 5px;
                }
                .product-item img{
                    max-width: 100%;
                }
                .product-item ul{
                    margin: 0;
                    padding: 0;
                    border-right: 1px solid #ccc;
                }
                .product-item ul li{
                    float: left;
                    width: 33.3333%;
                    list-style: none;
                    text-align: center;
                    border: 1px solid #ccc;
                    border-right: 0;
                    box-sizing: border-box;
                }
                .clear-both{
                    clear: both;
                }
                a{
                    text-decoration: none;
                }
                .buy-button{
                    text-align: right;
                    margin-top: 10px;
                }
                .buy-button a{
                    background: #444;
                    padding: 5px;
                    color: #fff;
                }
                #pagination{
                    text-align: right;
                    margin-top: 15px;
                }
                .page-item{
                    border: 1px solid #ccc;
                    padding: 5px 9px;
                    color: #888;
                }
                .current-page{
                    background: #000;
                    color: #FFF;
                }
            </style>
        </head>
        <body>
        <?php
        include './connect_db.php';
        $item_per_page = !empty($_GET['per_page'])?$_GET['per_page']:4;
        $current_page = !empty($_GET['page'])?$_GET['page']:1; //Trang hiện tại
        $offset = ($current_page - 1) * $item_per_page;
        $products = mysqli_query($con, "SELECT * FROM `product` ORDER BY `id` ASC  LIMIT " . $item_per_page . " OFFSET " . $offset);
        $totalRecords = mysqli_query($con, "SELECT * FROM `product`");
        $totalRecords = $totalRecords->num_rows;
        $totalPages = ceil($totalRecords / $item_per_page);
        ?>
        <div class="container">
            <h1>Danh sách sản phẩm</h1>
            <div class="product-items">
                <?php
                while ($row = mysqli_fetch_array($products)) {
                    ?>
                    <div class="product-item">
                        <div class="product-img">
                            <a href="detail.php?id=<?= $row['id'] ?>"><img src="<?= $row['image'] ?>" title="<?= $row['name'] ?>" /></a>
                        </div>
                        <strong><a href="detail.php?id=<?= $row['id'] ?>"><?= $row['name'] ?></a></strong><br/>
                        <label>Giá: </label><span class="product-price"><?= number_format($row['price'], 0, ",", ".") ?> đ</span><br/>
                        <p><?= $row['content'] ?></p>
                        <div class="buy-button">
                            <a href="detail.php?id=<?= $row['id'] ?>">Xem sản phẩm</a>
                        </div>
                    </div>
                <?php } ?>
                <div class="clear-both"></div>
                <?php
                include './pagination.php';
                ?>
                <div class="clear-both"></div>
            </div>
        </div>
    </body>
    </div>
    <div id="right">
        <form id="add-to-cart-form" action="admin/index.php" method="POST">
            <input type="submit" value="Đăng nhập admin" />
        </form>
        <h3>Follow Me!</h3>
        <ul>
        <li><a href="#">Zalo</a>
            <ul>
                <li><a href="#">Lâm Nguyễn</a></li>
            </ul>
        </li>

        <li><a href="#">FaceBook</a>
             <ul>
                <li><a href="#">Lâm Nguyễn</a></li>
            </ul>
        </li>
        <li><a href="#">Email</a>
            <ul>
                <li><a href="#">lamnguyenhd00@gmail.com</a></li>
            </ul>
        </li>
        </ul>
    </div>
</div>
    <div id="footer">
        <p>Liên hệ với chúng tôi Hotline: 09876543210</p>
    </div>
</div>
</body></html>