<?php 
include 'chil/connect.php';

if(isset($_POST['submit'])){

	$HouseId = $_POST['HouseId'];
	$UserId = $_POST['UserId'];

	
	$HouseId_check = "SELECT * FROM confirm WHERE HouseId = ?";
	$HouseId_stmt = $conn->prepare($HouseId_check);
	$HouseId_stmt->bind_param("s",$HouseId);
	$HouseId_stmt->execute();

	$HouseId_stmt->store_result();
	if($HouseId_stmt->num_rows()>0){
		?>
		<script> alert("House Already Confirmed!");</script>
	<?php
	}else{
		//template for the sql query
		$sql = "INSERT INTO confirm(HOUSEID,USERID) VALUES(?,?)";

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
	<title>Confirm</title>
	<link rel="stylesheet" href="par/registration.css">
	
</head>
<body>
<header>
    <span class="text7"> RESIDENTIAL NEGOTIATION</span>
</header>
<br><br>

	<form method="post" action="confirm.php">
		<fieldset>
			<legend id="reg">CONFIRM</legend>
			<br>
			
			<label for="HouseId">HOUSEID</label><br>
				<input type="text" name="HouseId" placeholder="Enter HouseID" required ><br><br>

                <label for="UserId">USERID</label><br>
				<input type="text" name="UserId" placeholder="Enter UserID" required ><br><br>


	        <br>
			<button type="submit" name="submit"><b> CONFIRM </b> </button><br><br>
			
			<a href="confirm.php" style="text-decoration: none;"> 
			
			</fieldset>
	</form>
</body>
</html>