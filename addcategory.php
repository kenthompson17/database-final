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
                        <li><a href="addmerchant.php">Add Merchant</a></li>
                        <li class="active"><a href="addcategory.php">Add Category</a></li> 
                        <li><a href="addtransaction.php">Add Transaction</a></li> 
                    </ul>
                </div>
            </div>
        </nav>
        
    <div class="row">    
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <h1>Add Category</h1>
            
            <form id="addcategory_form" role="form" method="get" action="addcategory.php">
                <div class="form-group">
                    <label for="categoryType">Category</label>
                    <input type="category" class="form-control" id="categoryId" name="categoryName" placeholder="Add Category Type">
                    <br>
                </div>
                <button type="submit" class="btn btn-default btn-md" id="submit" name="submit">Add Category</button>
            </form>
        </div>
        <div class="col-md-2"></div>
    </div>
            <div class="row">
            <div class="col-md-2"></div>
            <div class="col-md-8">
                <h1>PHP submission:</h1>
                <?php 
                    print($_GET["categoryName"]);
                ?>
            </div>
            <div class="col-md-2"></div>
        </div><!-- row-->
    
    
    </body>
</html>