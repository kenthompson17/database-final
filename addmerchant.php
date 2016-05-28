<!DOCTYPE html>
<html>
        <head>
        <title>Database Final Project</title>
        <script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
        <script src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
        
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
        
        <!-- Optional theme -->
        <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
        
        <!-- Latest compiled and minified JavaScript -->
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

        <!--Custom CSS-->
  		<link rel="stylesheet" href="stylesheet.css">
  		<script src="index.js"></script>
  		
    </head>
    
    <body>
        
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div>
                    <ul class="nav navbar-nav">
                        <li><a href="home.php">Home</a></li>
                        <li class="active"><a href="addmerchant.php">Add Merchant</a></li>
                        <li><a href="addcategory.php">Add Category</a></li> 
                        <li><a href="addtransaction.php">Add Transaction</a></li> 
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <h1>Add Merchant</h1>
                
                <form id="addmerchant_form" role="form" method="get" action="addmerchant.php">
                    <div class="form-group">
                        <label for="mercName">Merchant Name</label>
                        <input type="mercName" class="form-control" id="mercName" name="mercName" placeholder="Add Merchant Name">
                        <br>
                        <label for="mercAdr">Merchant Address</label>
                        <input type="mercAdr" class="form-control" id="mercAdr" name="mercAdr" placeholder="Add Merchant Address">
                        <br>
                        <label for="mercName">Merchant Phone</label>
                        <input type="mercName" class="form-control" id="mercPhone" name="mercPhone" placeholder="Add Merchant Phone">
                    </div>
                    <button type="submit" class="btn btn-default btn-md" id="submit" name="submit">Add Merchant</button>
                </form>
            </div>
            <div class="col-lg-2"></div>
        </div>
        
        <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <h1>PHP submission:</h1>
                <?php 
                    print($_GET["mercName"]);
                    echo nl2br("\n");
                    print($_GET["mercAdr"]);
                    echo nl2br("\n");
                    print($_GET["mercPhone"]);
                ?>
            </div>
            <div class="col-md-2"></div>
        </div><!-- row-->
    </body>
</html>