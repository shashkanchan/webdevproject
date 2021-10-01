<?php
session_start();
if(!isset($_SESSION['Name'])){
	header("location:adminlog.php");
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Admin</title>
	<link rel="stylesheet" href="par/data.css">
</head>
<body>

<header>
    <span class="text7"> RESIDENTIAL NEGOTIATION</span>
</header>
<br>


<div class="nav">
	<ul>
		<li><a href="logout.php" >LOG OUT </a></li>
	</ul>
</div>

	<h2> Welcome Back Admin </h2>
	<h2> <?php 
			echo $_SESSION['Name'];
		?>
	</h2>

    <div class="list1">
    <a href="ulist.php" >CUSTOMER LIST</a>
    </div>

    <div class="list1">
    <a href="add.php" >ADD HOUSE</a>
    </div>

    <div class="list1">
    <a href="delhouse.php" >DELETE HOUSE</a>
    </div>

    <div class="list1">
    <a href="deluser.php" >DELETE USER</a>
    </div>

	<div class="list1">
    <a href="buyers.php" >BUYERS</a>
    </div>

</body>
</html>