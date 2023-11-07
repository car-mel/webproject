<?php
// Database configuration (update with your own)
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "webproj";

// Create a database connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get data from the POST request and validate/sanitize it
$name = $_POST['name'];
$date = $_POST['date'];
$time = $_POST['time'];
$location = $_POST['location'];
$ootd = $_POST['ootd'];

// Prepare and bind the INSERT statement using a prepared statement
$insert_sql = "INSERT INTO activities (name, date, time, location, ootd) VALUES (?, ?, ?, ?, ?)";

$stmt = $conn->prepare($insert_sql);
$stmt->bind_param("sssss", $name, $date, $time, $location, $ootd);

// Execute the INSERT statement
if ($stmt->execute()) {
    echo "Activity saved successfully";
} else {
    echo "Error: " . $stmt->error;
}

// Close the prepared statement and the database connection
$stmt->close();
$conn->close();
?>
