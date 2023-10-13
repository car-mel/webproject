<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sample";
$table = "users";

// Create a connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query to retrieve gender data
$sql = "SELECT gender, COUNT(*) as count FROM $table GROUP BY gender";
$result = $conn->query($sql);

// Create an array to store the data
$genderData = array();

// Fetch and format the data
while ($row = $result->fetch_assoc()) {
    $genderData[$row['gender']] = $row['count'];
}

// Close the database connection
$conn->close();

// Convert the gender data into a format suitable for Chart.js
$genderLabels = array_keys($genderData);
$genderCounts = array_values($genderData);

// Encode the data as JSON
$genderDataJSON = json_encode(array('labels' => $genderLabels, 'data' => $genderCounts));

echo $genderDataJSON;
?>
