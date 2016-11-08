<?php

 require('dbconnect.php');

 $fname=$_POST['fname'];
 $lname=$_POST['lname'];
 $orgName=$_POST['orgName'];
 $city=$_POST['city'];
 $contact=$_POST['contact'];
 $email=$_POST['email'];
 $pw=$_POST['pw'];

 $q=mysql_query("insert into register values('".$fname."','".$lname."','".$orgname."','".$city."','".$contact."','".$email."','".$pw."')") or die(mysql_error());

 if ($q) {
header("location:login2.php"); }
?>