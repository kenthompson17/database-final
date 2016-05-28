<!DOCTYPE html>
<html>
    <?php
        require_once(login.php);
    ?>    
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
                        <li class="active"><a href="home.php">Home</a></li>
                        <li><a href="addmerchant.php">Add Merchant</a></li>
                        <li><a href="#">Add Category</a></li> 
                        <li><a href="#">Add Transaction</a></li> 
                    </ul>
                </div>
            </div>
        </nav>
        
        <div class="row">
            <div class="col-lg-2"></div>
            <div class="col-lg-8">
                <h1>Database Technologies 547:330, Spring 2015</h1>
                <p>
                    Ken Thompson - kmt136<br>
                    Ruhil Shah - rs<br>
                    Albert Iglesias - ai160<br>
                    Joseph Chanik - jc1531<br>
                    <br>
                    This project is an example database based off of receipts that we've gathered throughout the semester.
                    <br>
                    The goal is to design an interactive webpage that allows the user to access the database through an HTML/PHP interface.
                </p>
                <img src="erd.png" />
            </div>
            <div class="col-lg-2"></div>
    </body>
    
    
</html>