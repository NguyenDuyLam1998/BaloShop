<!DOCTYPE html>
<html>
<head>
	<title>LOGIN</title>
	<style>
      body
     {
          font-family: tahoma;
          font-size: 21px;
          background-image: url(icon1.jpg);
           display: flex;
           justify-content: center;
           align-items: center;
               height: 100vh;
          
     }

     *
     {
          font-family: sans-serif;
          box-sizing: border-box;
     }

     form
     {
          width: 500px;
          border: 2px solid #ccc;
          padding: 30px;
          background: #fff;
          border-radius: 15px;
     }

     h2
     {
          text-align: center;
          margin-bottom: 40px;
     }

     input

     {
          display: block;
          border: 2px solid #ccc;
           width: 95%;
          margin: 10px auto;
          border border-radius: 5px;
     }

     label
     {
          color: #555;
          font-size: 18px;
          padding: 10px;
     }
     button
     {
          float: right;
          background: #888;
          padding: 10px 15px;
          color: #A94442;
          border-radius: 5px;
          margin-right: 10px;
          border: none;
     }

     button:hover
     {
          opacity: .7;
     }

     .error {
     background: #F2DEDE;
     color: #fff;
     padding: 10px;
     width: 95%;
     border-radius: 5px;
      margin: 20px auto;
}    
     </style>
</head>
<body>
     <form action="login.php" method="post">
     	<h2>LOGIN</h2>
     	<?php if (isset($_GET['error'])) { ?>
     		<p class="error"><?php echo $_GET['error']; ?></p>
     	<?php } ?>
     	<label>User Name</label>
     	<input type="text" name="username" placeholder="User Name"><br>

     	<label>Password</label>
     	<input type="password" name="pass" placeholder="Password"><br>

     	<button type="submit">Next</button>
     </form>
</body>
</html>