<?php 
include 'chil/connect.php';

if(isset($_POST['submit'])){

	$HouseId = $_POST['HouseId'];
	$UserId = $_POST['UserId'];

	
	$HouseId_check = "SELECT * FROM buyers WHERE HouseId = ?";
	$HouseId_stmt = $conn->prepare($HouseId_check);
	$HouseId_stmt->bind_param("s",$HouseId);
	$HouseId_stmt->execute();

	$HouseId_stmt->store_result();
	if($HouseId_stmt->num_rows()>0){
		?>
		<script> alert("House Already Sold!");</script>
	<?php
	}else{
		//template for the sql query
		$sql = "INSERT INTO buyers(HOUSEID,USERID) VALUES(?,?)";

	//preparing the statement
		$stmt = $conn->prepare($sql);
		$stmt->bind_param("ss",$HouseId,$UserId);
		$result = $stmt->execute();

			if($result){ ?>
				<h4 style="color:#490334;">CONGRATULATIONS</h4>
				<?php
			}
		}
	}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Buy</title>
	<link rel="stylesheet" href="par/registration.css">
	
</head>
<body>
<header>
    <span class="text7"> RESIDENTIAL NEGOTIATION</span>
</header>
<br><br>

	<form method="post" action="buy.php">
		<fieldset>
			<legend id="reg">BUY</legend>
			<br>
			
			<label for="HouseId">HOUSEID</label><br>
				<input type="text" name="HouseId" placeholder="Enter HouseID" required ><br><br>

                <label for="UserId">USERID</label><br>
				<input type="text" name="UserId" placeholder="Enter UserID" required ><br><br>


	        <br>
			<button type="submit" name="submit"><b> BUY </b> </button><br><br>
			
			<a href="buy.php" style="text-decoration: none;"> 
			
			</fieldset>
	</form>
</body>
</html>