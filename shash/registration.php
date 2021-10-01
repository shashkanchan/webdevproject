<?php 
include 'chil/connect.php';

if(isset($_POST['submit'])){

	$UserId = $_POST['UserId'];
	$Name = $_POST['Name'];
	$Email = $_POST['Email'];
	$Password = $_POST['Password'];
	$Confirm = $_POST['ConfirmPassword'];
	$Phone = $_POST['Phone'];
	

	$pass = password_hash($Password, PASSWORD_DEFAULT);
	
	$UserId_check = "SELECT * FROM users WHERE UserId = ?";
	$UserId_stmt = $conn->prepare($UserId_check);
	$UserId_stmt->bind_param("s",$UserId);
	$UserId_stmt->execute();

	$UserId_stmt->store_result();
	if($UserId_stmt->num_rows()>0){
		?>
		<script> alert("User Already Registered!");</script>
	<?php
	}else{
		//template for the sql query
		$sql = "INSERT INTO users(USERID,NAME,EMAIL,PASSWORD,PHONE) VALUES(?,?,?,?,?)";

	//preparing the statement
		$stmt = $conn->prepare($sql);
		$stmt->bind_param("ssssi",$UserId,$Name,$Email,$pass,$Phone);
		$result = $stmt->execute();

			if($result){
				header("location:login.php");
			}
		}
	}

?>

<!DOCTYPE html>
<html>
<head>
	<title>Registration</title>
	<link rel="stylesheet" href="par/registration.css">
	
	<script type="text/javascript">
		function validate(){
			var pwd1 = document.getElementById("password");
			var pwd2 = document.getElementById("confirmPassword");

			if(pwd1.value.length < 6){
				alert("Password must have more than Six characters.");
				return false;
			}
			else{
				if(pwd1.value != pwd2.value){
					alert("Passwords do not match. Re-Enter it.");
					return false;
				}
				else{
					return true;
				}
			}
		}

	</script>
</head>
<body>
<header>
    <span class="text7"> RESIDENTIAL NEGOTIATION</span>
</header>
<br><br>

	<form onsubmit="return validate()" method="post" action="registration.php">
		<fieldset>
			<legend id="reg">REGISTER</legend>
			<br>
			
			<label for="UserId">USERID</label><br>
				<input type="text" name="UserId" placeholder="Enter UserID" required ><br><br>

			<label for="Name"> NAME </label> <br>			
				<input type="text" name="Name" placeholder="Enter Name" required ><br><br>
			
			<label for="Email"> EMAIL </label> 	<br>		
			<input type="email" name="Email" placeholder="Enter Email-Id" ><br><br>
			
			<label for="Password"> PASSWORD </label> 	<br>
			<input type="password" name="Password" id="password" placeholder="Enter Password" ><br><br>
			
			<label for="Password"> CONFIRM PASSWORD </label> <br>
			<input type="password" name="ConfirmPassword" id="confirmPassword" placeholder="Re-Enter Password" ><br><br>

			<label for="mobile"> MOBILE NUMBER </label> <br>
			<input type="tel" name="Phone" placeholder="Enter valid mobile no." maxlength="10" ><br><br>
	        <br>
			<button type="submit" name="submit"><b> SUBMIT </b> </button><br><br>
			
			<a href="login.php" style="text-decoration: none;"> Already Have an Account? </a><br><br>
			
			</fieldset>
	</form>
</body>
</html>