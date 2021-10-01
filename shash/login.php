<?php
include 'chil/connect.php';
session_start();

if(isset($_POST['submit'])){
	$UserId = $_POST['UserId'];
	$Password = $_POST['Password'];

	$sql = "SELECT USERID,NAME,PASSWORD FROM users WHERE UserId=?";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param("s",$UserId);
	$stmt->execute();

	$stmt->bind_result($db_userid,$db_name,$db_pass);
	if($stmt->fetch()){
		//echo $db_usn;
		//echo $db_pass;
		$_SESSION['Name'] = $db_name;
		echo $_SESSION['Name'];
		$pass_decode = password_verify($Password, $db_pass);

		if($pass_decode){
			echo "Login successful";
			header("location:index.php");
		}else{
			echo "Incorrect Password";
		}
	}else{
		echo "Incorrect UserId";
	}
}

?>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
	<link rel="stylesheet" href="par/registration.css">

</head>
<body>
<header>
    <span class="text7"> RESIDENTIAL NEGOTIATION</span>
</header>
<br><br>

<form method="post" action="login.php">
		<fieldset>
			<legend id="reg">LOGIN</legend>
			<br>
			<label for="UserId"> USERID</label> <br>
				<input type="text" name="UserId" placeholder="Enter UserID" required ><br><br>

			<br>
			<label for="Password"> PASSWORD </label> 	<br>
			<input type="password" name="Password" placeholder="Enter Password" ><br><br>
			
			
			<button type="submit" name="submit"><b> SUBMIT </b> </button>
			<br>
			<a href="registration.php" style="text-decoration: none; "> Don't Have an Account? </a>
			
			</fieldset>
	</form>
</body>
</html>