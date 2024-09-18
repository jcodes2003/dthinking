<?php
// Allow CORS for cross-origin requests
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

// Database configuration
$host = 'localhost';
$dbname = 'dbchane'; // replace with your actual database name
$username = 'root'; // replace with your MySQL username
$password = '';     // replace with your MySQL password if any

try {
    // Create a PDO instance
    $pdo = new PDO("mysql:host=$host;dbname=$dbname;charset=utf8", $username, $password);

    // Set the PDO error mode to exception
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // Optionally, set default fetch mode and prevent emulated prepared statements
    $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    $pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);

    // No need to output anything here, just return the PDO object
    return $pdo;

} catch (PDOException $e) {
    // Log the error instead of outputting it
    error_log("Database connection failed: " . $e->getMessage());

    // Throw the exception to be handled by the calling code
    throw $e;
}
?>