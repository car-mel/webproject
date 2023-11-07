<?php
if (isset($_POST['user_id'], $_POST['new_status'])) {
    $userId = $_POST['user_id'];
    $newStatus = $_POST['new_status'];

    // Database Configuration
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "sample";
    $table = "users"; // Replace with your actual user table name

    // Create a database connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Update the user's status in the database
    $sql = "UPDATE $table SET status = ? WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("si", $newStatus, $userId);

    if ($stmt->execute()) {
    $conn->commit();
    echo "Status updated successfully.";
} else {
    $conn->rollback(); // Rollback changes if an error occurred
    echo "Error updating status: " . $stmt->error;
}


    $stmt->close();
    $conn->close();
}
?>
