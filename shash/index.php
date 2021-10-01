<?php
session_start();
if(!isset($_SESSION['Name'])){
	header("location:login.php");
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Index</title>
	<link rel="stylesheet" href="par/index.css">
</head>
<body>

<header>
    <span class="text7"> RESIDENTIAL NEGOTIATION</span>
</header>
<br>

<div class="nav">
	<ul>
		<li><a href="home.php" >HOME </a></li>
		<li><a href="about.php" >ABOUT US </a></li>
		<li><a href="logout.php" >LOG OUT </a></li>
	</ul>
</div>

	<h2> Hello </h2>
	<h2> <?php 
			echo $_SESSION['Name'];
		?>
	</h2>
	<br><br>

	<div class="info">
		<p>
		    HOME IS WHERE <br> YOU FEEL LOVED <br> APPRECIATED <br>AND SAFE
		</p>
		<br>
		<div class="container">
		<a href="data.php">
         <img  src="par/images/key.png"
         width="50" height="70" position="center" class="image">
		 <div class="middle">
		 <div class="text"><a href="data.php">SEARCH</div>
		 </div>
      </a>
			<br>       
	</div>



</body>
</html>