<?php

function countActivityPerMonth($specifiedMonth)
{
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

    $sql = "SELECT * FROM activities";
    $result = mysqli_query($conn, $sql);

    $activityCount = 0; // Initialize activity count for the specified month

    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $datetimeString = $row['date'];
            $dateTime = new DateTime($datetimeString);

            // Convert DateTime object to Unix timestamp
            $timestamp = $dateTime->getTimestamp();

            $month = date('n', $timestamp); // Use the Unix timestamp

            // Check if the activity occurred in the specified month
            if ($month == $specifiedMonth) {
                $activityCount++;
            }
        }

        return $activityCount;
    } else {
        return 0; // No results found
    }
    $conn->close();
}
// Close the database connection

// Return the data as JSON
// header('Content-Type: application/json');
// echo json_encode($data);
?>