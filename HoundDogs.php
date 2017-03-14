<?php

$connection = @mysqli_connect ('localhost', 'root', 'Sassyr96!?','HoundDogs');

if(mysqli_connect_errno()){
	echo "<h4>Failed to connect to MySQL: </h4>".mysqli_connect_error();
}
else {
	echo "<h4>Welcome to Hound Dogs! </h4>";
	echo "<p>We'd like to invite you to use Hound Dogs to meet dogs around town. Please sign up below!</p>";
}
?>
