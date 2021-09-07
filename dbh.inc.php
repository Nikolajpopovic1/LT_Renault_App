<?php
$serverName = "localhost";
$dBUsernamna = "root";
$dBPassword = "Triglav123.";
$DbName = "LT";
$conn = mysqli_connect($serverName,$dBUsernamna,$dBPassword,$DbName);
if(!$conn){
    die("Connection failed: " . mysqli_connect_error());
}
