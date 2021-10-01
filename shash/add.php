<?php 
include 'chil/connect.php';

if(isset($_POST['submit'])){

	$HouseId = $_POST['HouseId'];
	$Name = $_POST['Name'];
	$Continent = $_POST['Continent'];
	$Price = $_POST['Price'];
	$Location = $_POST['Location'];
	$Description = $_POST['Description'];


	
	$HouseId_check = "SELECT * FROM residence WHERE HouseId = ?";
	$HouseId_stmt = $conn->prepare($HouseId_check);
	$HouseId_stmt->bind_param("s",$HouseId);
	$HouseId_stmt->execute();

	$HouseId_stmt->store_result();
	if($HouseId_stmt->num_rows()>0){
		?>
		<script> alert("House Already Registered!");</script>
	<?php
	}else{
		//template for the sql query
		$sql = "INSERT INTO residence(HOUSEID,NAME,CONTINENT,PRICE,LOCATION,DESCRIPTION) VALUES(?,?,?,?,?,?)";

	//preparing the statement
		$stmt = $conn->prepare($sql);
		$stmt->bind_param("sssiss",$HouseId,$Name,$Continent,$Price,$Location,$Description);
		$result = $stmt->execute();

			if($result){
				echo "success";
			}
		}
	}

?>

<!DOCTYPE html>
<html>
<head>
	<title>listing</title>
	<link rel="stylesheet" href="par/registration.css">
	
</head>
<body>

	<form method="post" action="add.php">
		<fieldset>
			<legend id="reg">ADD</legend>
			<br>
			
			<label for="HouseId">HOUSEID</label><br>
				<input type="text" name="HouseId" placeholder="Enter HouseID" required ><br><br>

			<label for="Name"> NAME </label> <br>			
				<input type="text" name="Name" placeholder="Enter House Name" required ><br><br>
			
			<label for="Continent"> CONTINENT </label> 	<br>		
			<input type="text" name="Continent" placeholder="Enter Continent" ><br><br>
			
			<label for="Price"> PRICE </label> <br>
			<input type="number" name="Price" id="Price" placeholder="Enter price" ><br><br>
			
			<label for="Location">LOCATION </label> <br>
			<input type="text" name="Location" id="Location" placeholder="Enter Location" ><br><br>

            <label for="Description"> DESCRIPTION </label> <br>
			<input type="text" name="Description" id="Description" placeholder="Add Description" ><br><br>

	        <br>
			<button type="submit" name="submit"><b> SUBMIT </b> </button><br><br>
			
			<a href="add.php" style="text-decoration: none;"> 
			
			</fieldset>
	</form>
</body>
</html>