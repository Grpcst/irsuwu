<?php

 require('dbconnect.php');

 if(isset($_POST['uname']) && isset($_POST['pword'])){
 	$uname=$_POST['uname'];
 	$pword=$_POST['pword'];
 	 $q=mysql_query("select count(*) as cnt from login where uname='".$uname."' and pword='".$pword."'");

 	 $r=mysql_fetch_assoc($q)["cnt"];

 	//$query = "SELECT * FROM login WHERE $uname = '".$un."' AND $pword = '".$pw."'" ;
	//$result = mysqli_query($dbc,$query);

	
 	 if($r==1){
 	 	header("location:sub.php");
 	 }else{
 	 	header("location:login2.php?err=true");
 	 	echo"unscccessful login";
 	 }
 	 /*
 	 if ($result) 
 	 {
	    echo "query successfull wrote to DB";
	    header('location:../submission.html');
	}
	else
	{
	    echo"unscccessful login";
	}
	*/
 }