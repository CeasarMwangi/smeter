<?php
$servername = "localhost";
$username = "root";
$password = "";

$dbname = "watermeterdb";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
echo "Connected successfully";

$sql = "SELECT SUM(meter_reading.amount) AS 'amount' from meter_reading where meter_id = 1";

$result = mysqli_query($conn, $sql);

if ($result) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        // echo "amount: " . $row["amount"]. " - Amount paid: " . $row["amount_paid"]. "<br>";
        print_r($row);
    }
} else {
    echo "0 results";
}
$conn->close();
?>