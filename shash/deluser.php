<?php
include 'chil/connect.php';
if(isset($_POST['submit'])){

	$UserId = $_POST['UserId'];
	$sql = "DELETE FROM users WHERE UserId = ?";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param("s",$UserId);
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
	<title>Delete User</title>
	<link rel="stylesheet" href="par/registration.css">
</head>
<body>

<form method="post" action="deluser.php">
	<fieldset>
	<legend id="reg">DELETE</legend>
			<br>
	<label for="UserId">USERID</label> 
	<input type="text" name="UserId" placeholder="Enter UserId" required ><br><br>

	<button type="submit" name="submit">DELETE</button>
	</fieldset>
</form>
</body>
</html>