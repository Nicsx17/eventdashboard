<?php
// Database connection configuration
$hostname = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "graph";

// Create connection
$conn = new mysqli($hostname, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch location data from the database
$sql = "SELECT * FROM tblmap";
$result = $conn->query($sql);

$locations = array();

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        $locations[] = $row;
    }
}

// Return location data as JSON
header('Content-Type: application/json');
echo json_encode($locations);

$conn->close();
?>