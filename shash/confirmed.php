<?php
include 'chil/connect.php';
?>

<!DOCTYPE html>
<html>
    <head>
        <title>Confirmed Buyers</title>
        <link rel="stylesheet" href="par/buyers.css" type="text/css">
    </head>    
    <body>

    <h1>CONFIRMED BUYERS</h1>
        <table  class="content-table">
            <tr>
                <th>USER NAME</th>
                <th>USERID</th>
                <th>HOUSEID</th>
                <th>PRICE</th>

            </tr>
            <?php
               $sql ="SELECT users.NAME, confirm.USERID,confirm.HOUSEID,residence.PRICE FROM users,residence,confirm WHERE users.USERID=confirm.USERID AND residence.HOUSEID=confirm.HOUSEID";
               $stmt = $conn->prepare($sql);
               $stmt->execute();
               $result = $stmt->get_result();
               while($row = $result->fetch_assoc())
               {
                   ?>
                   <tr class="active-row">
                       <td> <?php echo $row['NAME']; ?> </td>
                       <td> <?php echo $row['USERID']; ?> </td>
                       <td> <?php echo $row['HOUSEID']; ?> </td>
                       <td> <?php echo $row['PRICE']; ?> </td>
                    </tr>  
                    <?php 
               }
            ?>
        </table>
    

    </body>
</html>    