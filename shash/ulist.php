<?php
include 'chil/connect.php';
?>

<!DOCTYPE html>
<html>
    <head>
        <title>List</title>
        <link rel="stylesheet" href="par/buyers.css" type="text/css">
    </head>    
    <body>
        <h1>CUSTOMERS DATA</h1>
    <table class="content-table">
            <tr>
                <th>USERID</th>
                <th>NAME</th>
                <th>EMAIL</th>
                <th>PHONE</th>
            </tr>
            <?php
               $sql ="SELECT * FROM users";
               $stmt = $conn->prepare($sql);
               $stmt->execute();
               $result = $stmt->get_result();
               while($row = $result->fetch_assoc())
               {
                   ?>
                   <tr class="active-row">
                       <td> <?php echo $row['USERID']; ?> </td>
                       <td> <?php echo $row['NAME']; ?> </td>
                       <td> <?php echo $row['EMAIL']; ?> </td>
                       <td> <?php echo $row['PHONE']; ?> </td>
                    </tr>  
                    <?php 
               }
            ?>
        </table>
    

    </body>
</html>    