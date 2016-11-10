<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Track Co-ordination</title>


    <!-- Bootstrap -->
      <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	
	   <link rel = "stylesheet" type="text/css" href="style.css">

     <!--Adding favicon
     <link rel="icon" href="images/favicon.ico" type="favicon/ico">
     -->
     
  </head>

  <body>

  <div class="container-fluid">
     <div class = "row">

    <div class = "col-md-7">
        <img src="logo.jpg" id="logo">

        <h1 id = "h1"><b>International Research Symposium 2017</b></h1>
    </div>

        <div class="col-md-5">
          <div class = "col-md-2 col-md-push-1 menuItem">
            <a href="home.html">
                Home
              </a>
          </div>  

           <div class = "col-md-2 col-md-push-1 menuItem">
            <a href="keydates.html">
                Key Dates</a>
          </div>

          <div class = "col-md-2 col-md-push-1 menuItem">
            <a href="aboutus.html">
                About Us
              </a>
          </div>  

          <div class = "col-md-2 col-md-push-1 menuItem">
            <a href="contactus.html">
                Contact Us
              </a>
          </div>  
        </div>
      </div>
    </div>

    <hr class="featurette-divider hidden-md">

      <h1>Welcome to Track Coordinators Page</h1>

            <?php
        // 1. Enter Database details
        $dbhost = 'localhost';
        $dbuser = 'root';
        $dbpass = '';
        $dbname = 'irsuwu';

        // 2. Create a database connection
        $conn = mysqli_connect($dbhost,$dbuser,$dbpass);
        if (!$conn) {
            die("Database connection failed: " . mysqli_error());
        }

        // 3. Select a database to use 
        $db_select = mysqli_select_db($conn,$dbname);
        if (!$db_select) {
            die("Database selection failed: " . mysqli_error());
        }

        $query = mysqli_query($conn,"SELECT * FROM abstract");

      ?>

      <h2 id ="subdetails" align="center">Submission Details</h2>
      <div class="container">
          <div class="submitted list" ></div>
            <table style="width:100%" border="1px" padding="1px" class="table">
            <thead style="background-color: darkblue; color: white;">
              <tr>
                <th>Author ID</th>
                <th>Abstract ID</th>
                <th>Title</th>
                <th>Submitted Date</th>
                <th>Modified Date</th>
                <th>Status</th>
              </tr>
            </thead> 
          <?php

            while ($rows = mysqli_fetch_array($query)) {
               $AuthorID = $rows['AuthorID'];
               $AbstractID = $rows['AbstractID'];
               $title = $rows['title'];
               $submittedDate = $rows['submittedDate'];
               $modifiedDate = $rows['modifiedDate'];
               $status = $rows['status'];

              echo "<tr><td>".$AuthorID."</td><td>".$AbstractID."</td><td>".$title."</td><td>".$submittedDate."</td><td>".$modifiedDate."</td><td>".$status."</td></tr>";
             
    }

          ?>
             

          
        </table>
      </div>

      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <!--Footer-->
      <div class="footer" id="footer1">
        <div class="col-md-4" id="cpy"> Copyright &copy by CST_Creations</div>

      </div>    

      <div class="col-md-8" id="footer2">
        <div>
          <div class = "col-md-2">
            <a href="home.html">
                Home
              </a>
          </div>  

           <div class = "col-md-2">
            <a href="keydates.html">
                Key Dates</a>
          </div>

          <div class = "col-md-2">
            <a href="aboutus.html">
                About Us
              </a>
          </div>  

          <div class = "col-md-2">
            <a href="contactus.html">
                Contact Us
              </a>
          </div>  
        </div>
        
      </div>  

  </body>
  
  </html>