<?php
//setting header to json
header('Content-Type: application/json');

//database
$host = '127.0.0.1';
$user = 'root';
$pass = '';
$db = 'graph';

//get connection
$mysqli = new mysqli($host, $user, $pass, $db);

if(!$mysqli){
  die("Connection failed: " . $mysqli->error);
}

//query to get data from the table
$query = sprintf("SELECT months, clients FROM tblgraph");

//execute query
$result = $mysqli->query($query);

//loop through the returned data
$data = array();
foreach ($result as $row) {
  $data[] = $row;
}

//free memory associated with result
$result->close();

//close connection
$mysqli->close();

//now print the data
print json_encode($data);