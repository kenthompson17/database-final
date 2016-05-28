<!DOCTYPE html>
<!-- 
NEED TO: 
- Add PHP
- Add all the merchants to 

-->

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
                        <li><a href="addcategory.php">Add Category</a></li> 
                        <li class="active"><a href="addtransaction.php">Add Transaction</a></li> 
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="col-md-2"></div>
        <div class="col-md-8">
        <h1>Add Transaction</h1>
        
        <form id="addtransaction_form" role="form">    
            <label for="sel1" id="merchant">Select Merchant</label>
    	        <select class="form-control" id="category" name="category">
    	            <option>- Select Category -</option>
    		        <option>Merc1</option>
    		        <option>Merc2</option>
    		        <option>Merc3</option>
    		        <option>Merc4</option>
    		    </select>
    		</label>
            <br>
            <label for="total">Total</label>
            <input type="total" class="form-control" id="total" name="total" placeholder="Enter Total">
            <br>
            <label for="sel1" id="categories">Select Category</label>
    	        <select class="form-control" id="category" name="category">
    	            <option>- Select Category -</option>
    		        <option>Food/Drink</option>
    		        <option>Tools</option>
    		        <option>Electronic</option>
    		        <option>Household</option>
    		    </select>
    		</label>
        </form>    
        <br>
        <button type="submit" class="btn btn-default btn-md" id="submit" name="submit">Add Transaction</button>
        </div>
        <div class="col-md-2"></div>
        
        
        
        
        
        
        
    </body>
</html>