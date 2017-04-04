<?php
// Lucas Sward 
// Hound Dogs
$connection = @mysqli_connect ('127.0.0.1', 'root', 'lucas', 'HoundDogs');

if(mysqli_connect_errno())
{
	echo "<h4>Failed to connect to MySQL: </h4>".mysqli_connect_error();
}
else
{
	echo "<h4>Successfully connected to MySQL: </h4>";
}

$Username = $_REQUEST['username'];
$Password = $_REQUEST['password'];
$Reppass = $_REQUEST['reppassword'];
if($Password == $Reppass)
{
	$sql = "INSERT INTO users (username,password) VALUES	
		('$Username','$Password');";
		if(mysqli_query($connection, $sql))
		{
			echo "You have successfully signed up!";
		}
		else
		{
			echo "Error: Could not execute $sql ."; 
			mysqli_error($connection);
		}
		include 'NewUserLogin.php';
	mysqli_close($connection);
}
else 
{
	echo "Your passwords do not match, try again";
}
?>