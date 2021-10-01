<?php
include 'chil/connect.php';
if(isset($_POST['submit'])){

	$HouseId = $_POST['HouseId'];
	$sql = "DELETE FROM residence WHERE HouseId = ?";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param("s",$HouseId);
	$result=$stmt->execute();

	if($result){
		?> <script> alert("Record Successfully Deleted from the Database."); </script>
	<?php
	}else{ ?>
		<script> alert("The delete Operation was Unsuccessful"); </script>
	<?php
	}

}

?>
<!DOCTYPE html>
<html>
<head>
	<title>Delete House</title>
	<link rel="stylesheet" href="par/registration.css">
</head>
<body>

<form method="post" action="delhouse.php">
	<fieldset>
	<legend id="reg">DELETE</legend>
			<br>
	<label for="HouseId"> USN </label> 
	<input type="text" name="HouseId" placeholder="Enter HouseId " required ><br><br>

	<button type="submit" name="submit">DELETE</button>
	</fieldset>
</form>
</body>
</html>