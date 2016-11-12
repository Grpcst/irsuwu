<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Login</title>

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
                    <h2>Login Form</h2>
                </div>

                <form id="defaultForm" method="post" class="form-horizontal" action="login.php">
                   <!-- 
                    <div class="form-group">
                        <label class="col-md-2 control-label">User Type</label>
                        <div class="col-md-6">
                            <select class="form-control" id="exampleSelect1" name="utype">
                                <option>Select</option>
                                <option>Author</option>
                                <option>Reviewer</option>
                                <option>Track Coordinator</option>
                                <option>Chairman</option>
                                <option>Secretary</option>    
                            </select>
                        </div>
                    </div>
                    -->


                    <div class="form-group">
                        <label class="col-md-2 control-label">Username</label>
                        <div class="col-md-6">
                            <input type="text" id="username" class="form-control" placeholder="Your E-mail here" required="true" name="uname"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-md-2 control-label">Password</label>
                        <div class="col-md-6">
                            <input type="Password" id="password" class="form-control" placeholder="Your Password here" required="true" name="pw"/>
                        </div>
                    </div>
                        <div class="form-group">
                            <div class="col-md-6 control-label">
                                <button type="submit" id="submitbtn" class="btn btn-warning" name="signup"  value="Sign up">Login</button>
                                    Sign-up <a href="reg2.php">Here</a>
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