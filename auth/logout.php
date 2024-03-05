<?php
// Define PAGE_URL constant
define('PAGE_URL', 'http://localhost/Dairy/');

// Include auth.php file
include("auth.php");

// Create an instance of the logmein class
$log = new logmein();
$log->encrypt = false; // set encryption to false

// Log out
$log->logout();

// Redirect to the home page
header("location:".PAGE_URL);
?>
