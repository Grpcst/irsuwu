<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Abstract Submission</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
    <div class="container">
        <div class="row">
            <div class="col-sm-8 col-sm-offset-2">
                <div class="page-header">
                    <h2>Abstract Submissions</h2>
                </div>

                <form id="defaultForm" method="post" class="form-horizontal" action="submit.php" enctype="multipart/form-data">
                    
                    <div class="form-group">
                        <label class="col-md-2 control-label">Title</label>
                        <div class="col-md-10">
                            <input type="text" id="title" class="form-control" name="title" required="true"/>
                        </div>
                    </div>

                    <div class="form-group">
                         <label class="col-md-2 control-label">Abstract</label>
						 <div class="col-md-10">
									<textarea class="form-control" id="abstract" rows="15" required="true" name="abstract"></textarea>	
                                   <!-- <?php
                                        $words = $_POST['abstract'];
                                        $count = str_word_count($_POST['abstract']);
                                        //echo str_word_count("Hello world!");

                                        //$var =textareaObject.value ; //Store textarea text in $var 
                                        //print_r(str_word_count($var));
                                        //$words= str_word_count($_POST['clientdetails']);

                                        if ($count < 450) {
                                            $remain = 450 - $count;
                                            echo "($remain) words";
                                        } else {
                                            echo "($remain) words You have exceed the word limit";
                                        }
                                        
                                    ?>		-->			
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label">Author(s)</label>
                        <div class="col-md-10">
                            <textarea class="form-control" id="authors" rows="3" name="authors"></textarea>
                           
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-md-2 control-label">Keywords</label>
                        <div class="col-md-10">
                            <input type="text" id="keywords" class="form-control" name="keyword" required="true"/>
                        </div>
                    </div>
					
					<div class="form-group">
						<label class="col-md-2 control-label">Track</label>
						<div class="col-md-10">
							<select class="form-control" id="exampleSelect1" name="track">
								<option>Select</option>
								<option>Computer Science</option>
								<option>Science and Technology</option>
								<option>Mangement</option>
								<option>Animal Science</option>
								<option>Agriculture</option>	
							</select>
						</div>
					</div>		
					
                    <div class="form-group">
                        <label class="col-md-2 control-label">Presentation Type</label>
                        <div class="col-md-10" name="ppttype">
                            <div class="radio">
                                <label>
                                    <input type="radio" id="oral" name="presentation" value="oral" /> Oral
                                </label>
                            </div>
                            <div class="radio">
                                <label>
                                    <input type="radio" id="poster" name="presentation" value="pposter" /> Poster
                                </label>
                            </div>
                        </div>
                    </div>
					
					<div class="form-group">
						<label class="col-md-2 control-label">Upload your PDF file</label>
							<div class="col-md-10">
								<input type="file" class="form-control-file" id="exampleInputFile" aria-describedby="fileHelp" required="true" name="pdf">		
							</div>
					</div>
					
                    <div class="form-group">
                        <div class="col-md-6 control-label">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" name="agree" value="agree" /> I agree to <a href="terms.php">Terms and Conditions</a> 
                                </label>
                            </div>
                        </div>
                    </div>
					
                    <div class="form-group">
                        <div class="col-md-4 control-label">
                            <button type="submit" class="btn btn-warning" name="signup" id="btnsubmit"  value="Sign up">Submit</button>
                            <button type="reset" class="btn btn-warning" name="clear"  id="btnclear" value="Sign up">Clear</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

</form>
	

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>