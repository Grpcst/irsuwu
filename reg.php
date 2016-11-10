<?php

 require('dbconnect.php');

 $role=$_POST['role'];
 $fname=$_POST['fname'];
 $lname=$_POST['lname'];
 $orgname=$_POST['orgname'];
 $city=$_POST['city'];
 $contact=$_POST['contact'];
 $email=$_POST['email'];
 $pw=$_POST['pw'];

 $q=mysql_query("insert into register values('author','".$fname."','".$lname."','".$orgname."','".$city."','".$contact."','".$email."','".$pw."')") or die(mysql_error());

 if ($q) {
header("location:login2.php"); }
?>