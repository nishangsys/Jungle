<?php
$mysqli = new mysqli("localhost", "root", "", "pos");

if ($mysqli->connect_errno) {
    printf("Connect failed: %s\n", $mysqli->connect_error);
    exit();
}

$payment = $_POST['payment'];

$query = "UPDATE payment set payment = ".$payment." WHERE id = 1";
$result = $mysqli->query($query);