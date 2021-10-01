<?php
session_start();
if(!isset($_SESSION['Name'])){
	header("location:index.php");
}
?>

<!DOCTYPE html>
<html>
<head>
<title>Data</title>
	<link rel="stylesheet" href="par/data.css">

</head>
<body>
<header>
    <span class="text7"> RESIDENTIAL NEGOTIATION</span>
</header>
<br><br>


<h2 ><b>SEARCH . SEE . LOVE</b></h2><br><br>

<div class="list1">
    <a href="list.php" >COMPLETE LIST</a>
</div>

<div class="list1">
    <a href="continent.php" >SEARCH BY CONTINENT</a>
</div>

<div class="list1">
    <a href="price.php" >SEARCH BY PRICE</a>
</div>

<div class="list1">
    <a href="confirmed.php" >CONFIRMED BUYERS</a>
</div>

</body>
</html>