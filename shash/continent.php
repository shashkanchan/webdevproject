<?php
include 'chil/connect.php';
if(isset($_POST['submit'])){
	$Continent = $_POST['Continent'];
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Continent</title>
	<link rel="stylesheet" type="text/css" href="par/continent.css">
</head>
<body>
	<form method="post" action="continent.php">
		<fieldset>
        <legend id="reg">SEARCH</legend>
			<br>
			<label for="Continent">CONTINENT</label><br>
			<input type="text" name="Continent" placeholder="Enter the Continent"><br><br>
			<button type="submit" name="submit">FILTER</button>
		</fieldset>
	</form>

	<br><br>

	<table class="content-table">
		<tr>
                <th>HOUSEID</th>
                <th>HOUSE NAME</th>
                <th>CONTINENT</th>
                <th>PRICE</th>
                <th>LOCATION</th>
                <th>DESCRIPTION</th>
		</tr>
		<?php
			$sql = "SELECT * FROM residence WHERE Continent = ?";
			$stmt = $conn->prepare($sql);
			$stmt->bind_param("s",$Continent);
			$stmt->execute();
			$result = $stmt->get_result();
			while($row = $result->fetch_assoc()){
		?>
		<tr class="active-row">
                       <td> <?php echo $row['HOUSEID']; ?> </td>
                       <td> <?php echo $row['NAME']; ?> </td>
                       <td> <?php echo $row['CONTINENT']; ?> </td>
                       <td> <?php echo $row['PRICE']; ?> </td>
                       <td> <?php echo $row['LOCATION']; ?> </td>
                       <td> <?php echo $row['DESCRIPTION']; ?> </td>
		</tr>
		<?php
			}
		?>
	</table>

<br><br>
	<div class="list1">
            <a href="buy.php" >BUY</a>
        </div>
	
</body>
</html>