<?php
$servername = "localhost";
$username = "root";
$password = "";
$database = "sample";

// Create a connection
$conn = new mysqli($servername, $username, $password, $database);

// Check the connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if data was submitted via POST
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $title = isset($_POST['title']) ? $_POST['title'] : '';
    $content = isset($_POST['content']) ? $_POST['content'] : '';

    if (!empty($title) && !empty($content)) {
        $datetime = date("Y-m-d H:i:s"); // Get current date and time
        
        // SQL query to insert data
        $sql = "INSERT INTO announcements (title, content, post_date) VALUES ('$title', '$content', '$datetime')";

        if ($conn->query($sql) === TRUE) {
            echo "Record inserted successfully.";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
    } else {
        echo "Title and content must not be empty.";
    }
}

// Query to retrieve announcements, ordered by datetime in descending order
$sql = "SELECT * FROM announcements ORDER BY datetime DESC";
$result = $conn->query($sql);

// Close the connection
$conn->close();
?>
