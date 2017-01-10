<?php
$host="localhost"; // Host name 
$username="root"; // Mysql username 
$password=""; // Mysql password 
$db_name="irsuwu"; // Database name 
$tbl_name="register"; // Table name 

// Connect to server and select databse.
mysql_connect("$host", "$username", "$password")or die("cannot connect"); 
mysql_select_db("$db_name")or die("cannot select DB");

// username and password sent from form 
$email=$_POST['uname']; 
$pw=$_POST['pw']; 


// To protect MySQL injection (more detail about MySQL injection)
$email = stripslashes($email);
$pw = stripslashes($pw);
$email = mysql_real_escape_string($email);
$pw = mysql_real_escape_string($pw);

$sql="SELECT * FROM register WHERE email='$email' and pw='$pw'";
$result=mysql_query($sql);


// Mysql_num_row is counting table row
$count=mysql_num_rows($result);
// If result matched $uname and $pw, table row must be 1 row


if($count==1){
$result=mysql_fetch_array($result);
$role = $result['role'];

//page link on the basis of user role you can add more  condition on the basis of ur roles in db
	if($role =='admin'){
	 	$link = 'admin.php';
	}

	elseif($role =='author'){
		$link = 'sub.php';

	}elseif($role =='trackcoordinator'){
	 	$link = 'trackco.php';

	}elseif($role =='reviewer'){
	 	$link = 'reviewer.php';

	}elseif($role =='secretary'){
 		$link = 'sub.php';
	}else
		echo "Wrong User...";

 }
 
// session Register $uname, $pw and redirect to file "login_success.php"
$_session["uname"] = $uname;
$_session["pw"] = $pw;
$_session["role"] = $role;
header("Location: ".$link."");


//else {
//echo "Wrong Username or Password";
//}
?>