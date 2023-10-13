<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "sample";
$table = "announcements";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$announcement_text = $_POST['announcement_text'];
$announcement_datetime = date("Y-m-d H:i:s");

$sql = "INSERT INTO $table (announcement_text, announcement_datetime) VALUES (?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $announcement_text, $announcement_datetime);

if ($stmt->execute()) {
    echo "Announcement posted successfully.";
} else {
    echo "Error posting announcement: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
