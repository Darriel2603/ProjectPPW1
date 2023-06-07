<?php 
ob_start();
session_start();
include 'admin/include/connection.php';
unset($_SESSION['customer']);
header("location: ".BASE_URL.'login.php'); 
?>