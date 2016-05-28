<?php
                //login.php
                $conn = mysqli_connect('studentweb.comminfo.rutgers.edu', 'class-2015-1-04-547-330-01_jc1531', 'jc1531', 'S:o3!OEsJ5e#');
                
                if (!$conn){
                die("Connection failed: " . mysqli_connect_error());
                }
                echo "Connected successfully";
                        ?>
                