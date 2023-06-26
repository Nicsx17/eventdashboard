<?php
// Connect to your MySQL database
$hostname = '127.0.0.1';
$username = 'root';
$password = '';
$dbname = 'graph';

$conn = new mysqli($hostname, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
  die('Connection failed: ' . $conn->connect_error);
}

// Retrieve data from the database
$sql = 'SELECT events, clients FROM tblevent';
$result = $conn->query($sql);

$data = array();
while ($row = $result->fetch_assoc()) {
  $data[] = $row;
}

// Close the database connection
$conn->close();

// Return data as JSON
header('Content-Type: application/json');
echo json_encode($data);
?>