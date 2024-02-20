<?php
//this file allows the php files to connect to the SQL database and interact with it//
$dbServername = "localhost";
$dbUsername = "root";
$dbPassword = "";
$dbName = "ziongroup18";

$conn = mysqli_connect($dbServername, $dbUsername, $dbPassword, $dbName);
