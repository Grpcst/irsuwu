<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Registration</title>

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
                    <h2>Registration Form</h2>
                </div>

                <form id="defaultForm" method="post" class="form-horizontal" action="reg.php">
                    
                    <div class="form-group">
                        <label class="col-md-3 control-label">First Name</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control" placeholder="Your First Name" required name="fname"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Last Name</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control" placeholder="Your last Name" name="lname" required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Organization</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control" placeholder="Your Organization" name="orgname" required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">City</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control" placeholder="Your City here" name="city" required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Contact Number</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control" placeholder="Your Contact Number" name="contact" required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">E-mail</label>
                        <div class="col-md-6">
                            <input type="text" class="form-control" placeholder="Your E-mail here" name="email" required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Password</label>
                        <div class="col-md-6">
                            <input type="Password" class="form-control" placeholder="Your Password here" name="pw" required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-3 control-label">Confirm Password</label>
                        <div class="col-md-6">
                            <input type="Password" class="form-control" placeholder="Confirm your Password" name="pw2" required/>
                        </div>
                    </div>
                        <div class="form-group">
                            <div class="col-md-6 control-label">
                                <button type="submit" class="btn btn-warning" name="signup"  value="Sign up">Submit</button>
                                <button type="reset" class="btn btn-warning" name="clear"  value="Clear">Clear</button>
                            </div>
                        </div>
                    
                </form>
            </div>
        </div>
    </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>