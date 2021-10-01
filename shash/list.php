<?php
include 'chil/connect.php';
?>

<!DOCTYPE html>
<html>
    <head>
        <title>List</title>
        <link rel="stylesheet" href="par/continent.css" type="text/css">
    </head>    
    <body>
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
               $sql ="SELECT * FROM residence";
               $stmt = $conn->prepare($sql);
               $stmt->execute();
               $result = $stmt->get_result();
               while($row = $result->fetch_assoc())
               {
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

        <div class="list1">
            <a href="buy.php" >BUY</a>
        </div>
    

    </body>
</html>    