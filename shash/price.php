<!doctype html>
<html lang="en">
    <title>Price</title>
<head>
 
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="par/data.css">
    <title>price</title>
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card mt-4">
                    <div class="card-header">
                        <h4 style="color:#0e6277;"> FILTER BY PRICE </h4>
                    </div>
                    <div class="card-body">

                        <form action="" method="GET">
                            <div class="row">
                                <div class="col-md-4">
                                    <label for="" style="color:#0e6277;">Start Price</label>
                                    <input type="text" name="start_price" value="<?php if(isset($_GET['start_price'])){echo $_GET['start_price']; }else{echo "10000000";} ?>" class="form-control">
                                </div>
                                <div class="col-md-4">
                                    <label for="" style="color:#0e6277;">End Price</label>
                                    <input type="text" name="end_price" value="<?php if(isset($_GET['end_price'])){echo $_GET['end_price']; }else{echo "300000000";} ?>" class="form-control">
                                </div>
                                <div class="col-md-4">
                                    <label for="" style="color:#0e6277;">Click Me</label> <br/>
                                    <button type="submit" class="btn btn-primary px-4">Filter</button>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>

            <div class="col-md-12 mt-3">
                <div class="card">
                    <div class="card-header">
                        <h5 style="color:#0e6277;">PRODUCT DETAILS</h5>
                    </div>
                    <div class="card-body">
                        <div class="row">
                        <?php  
                        
                        include 'chil/connect.php';

                        if(isset($_GET['start_price']) && isset($_GET['end_price']))
                        {
                            $startprice = $_GET['start_price'];
                            $endprice = $_GET['end_price'];

                            $query = "SELECT * FROM residence WHERE Price BETWEEN $startprice AND $endprice ";
                        }
                        else
                        {
                            $query = "SELECT * FROM residence";
                        }
                        
                        $query_run = mysqli_query($conn, $query);

                        if(mysqli_num_rows($query_run) > 0)
                        {
                            foreach($query_run as $items)
                            {
                                // 
                                ?>
                                <div class="col-md-4 mb-3">
                                <div class="border p-2">
                                    <h6 style="color:#5c640f; text-decoration: underline;" >NAME</h6> <h5 style="color:#490334;"><?php echo $items['NAME']; ?></h5>
                                    <h6 style="color:#5c640f; text-decoration: underline;">HOUSEID </h6><h5 style="color:#490334;"><?php echo $items['HOUSEID']; ?></h5>
                                    <h6 style="color:#5c640f; text-decoration: underline;">PRICE </h6><h5 style="color:#490334;"><?php echo $items['PRICE']; ?></h5>
                                    <h6 style="color:#5c640f; text-decoration: underline;">CONTINENT </h6><h5 style="color:#490334;"><?php echo $items['CONTINENT']; ?></h5>
                                </div>
                                </div>
                                <?php
                            }
                        }
                        else
                        {
                            echo "No Record Found";
                        }
                        ?>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>


        <div class="list1">
            <a href="buy.php" >BUY</a>
        </div>
</body>
</html>