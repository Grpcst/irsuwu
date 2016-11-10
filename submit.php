<?php
print_r($_FILES);
$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["pdf"]["name"]);
$uploadOk = 1;

if (file_exists($target_file)) {
    echo "Sorry, file already exists.";
    $uploadOk = 0;
}
// Check file size

// Allow certain file formats

// Check if $uploadOk is set to 0 by an error
if ($uploadOk == 0) {
    echo "Sorry, your file was not uploaded.";
// if everything is ok, try to upload file
} else {
    if (move_uploaded_file($_FILES["pdf"]["tmp_name"], $target_file)) {
        echo "The file ". basename( $_FILES["pdf"]["name"]). " has been uploaded.";
    } else {
        echo "Sorry, there was an error uploading your file.";
    }
}
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

					 $title=$_POST['title'];
					 $abstract=$_POST['abstract'];
					 $authors=$_POST['authors'];
					 $keyword=$_POST['keyword'];
					 $track=$_POST['track'];
					 $ppttype=$_POST['presentation'];
					 //$submittedDate=$_POST['submittedDate'];
					 //$pdf=$_POST['target_file'];

					 $submittedDate = date('Y-m-d');

				$query = mysqli_query($conn,"insert into abstract(title,abstract,author,keywords,track,ppttype,pdf,submittedDate) values('".$title."','".$abstract."','".$authors."','".$keyword."','".$track."','".$ppttype."','".strval($target_file)."','".$submittedDate."')");

				 if ($query) {
					header("location:sub.php"); }

					


?>

