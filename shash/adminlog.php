<?php
include 'chil/connect.php';
session_start();

if(isset($_POST['submit'])){
	$personid = $_POST['Personid'];
	$Password = $_POST['Password'];

	$sql = "SELECT PERSONID,NAME,PASSWORD FROM admin WHERE PERSONID=?";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param("s",$personid);
	$stmt->execute();

	$stmt->bind_result($db_personid,$db_name,$db_pass);
	if($stmt->fetch()){
		//echo $db_usn;
		//echo $db_pass;
		$_SESSION['Name'] = $db_name;
		echo $_SESSION['Name'];
		$pass_decode = password_verify($Password, $db_pass);

		if($pass_decode){
			echo "Login successful";
			header("location:admin.php");
		}else{
			echo "Incorrect Password";
		}
	}else{
		echo "Incorrect Personid";
	}
}

?>
<!DOCTYPE html>
<html>
<head>
<title>Admin Login</title>
	<link rel="stylesheet" href="par/registration.css">

</head>
<body>
<header>
    <span class="text7"> RESIDENTIAL NEGOTIATION</span>
</header>


<form method="post" action="adminlog.php">
		<fieldset>
			<legend id="reg">LOGIN</legend>
			<br>
			<label for="Personid"> PERSONID</label><br>
				<input type="text" name="Personid" placeholder="Enter PERSONID" required ><br>

			<br>
			<label for="Password"> PASSWORD </label> 	<br>
			<input type="password" name="Password" placeholder="Enter Password" ><br><br>
			
			
			<button type="submit" name="submit"><b> SUBMIT </b> </button>
			<br>
           
            <br>
            <a href="login.php" style="text-decoration: none; "> Are you an user? click here</a>
			</fieldset>
	</form>
</body>
</html>