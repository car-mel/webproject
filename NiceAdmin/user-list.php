<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Table</title>
</head>
<body>
    <?php
    // Replace with your database connection details
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "sample";

    // Create a connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Fetch users from the database
    $sql = "SELECT id, username, email, password, gender, status FROM users";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        // Display the user list as a table
        echo "<table border='1'>";
        echo "<tr><th>ID</th><th>Username</th><th>Email</th><th>Password</th><th>Gender</th><th>Status</th></tr>";
        
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>{$row['id']}</td>";
            echo "<td>{$row['username']}</td>";
            echo "<td>{$row['email']}</td>";
            echo "<td>{$row['password']}</td>";
            echo "<td>{$row['gender']}</td>";
            echo "<td>{$row['status']}</td>";
            echo "</tr>";
        }
        
        echo "</table>";
    } else {
        echo "No users found.";
    }

    // Close the connection
    $conn->close();
    ?>
</body>
</html>
