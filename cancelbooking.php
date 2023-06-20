<?php

$bid=$_GET["bid"];
include_once 'dbfun.php';
$link= connect();
$query="delete from booking where bid=$bid";
mysqli_query($link, $query);
$_SESSION["msg"]="Booking cancelled successfully. We will refund the amount within 3-5 working days";
header("location: bhistory.php");

