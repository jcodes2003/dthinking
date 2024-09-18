<?php
// Include database connection file
require_once 'db_connection.php';

// Enable error reporting for debugging
error_reporting(E_ALL);
ini_set('display_errors', 1);

// Allow cross-origin requests
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Allow-Headers: Content-Type");

try {
    // Check if the request method is POST
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
        // Retrieve user data from the POST request
        $input = json_decode(file_get_contents('php://input'), true);
        if (json_last_error() !== JSON_ERROR_NONE) {
            throw new Exception('Invalid JSON format');
        }
        
        $username = isset($input['users_school_id']) ? $input['users_school_id'] : '';
        $password = isset($input['users_password']) ? $input['users_password'] : '';

        // Validate input
        if (empty($username) || empty($password)) {
            echo json_encode(['success' => false, 'message' => 'All fields are required']);
            exit;
        }

        // Check if the school ID already exists
        $stmt = $pdo->prepare("SELECT * FROM tbl_users WHERE users_school_id = ?");
        $stmt->execute([$username]);
        if ($stmt->rowCount() > 0) {
            echo json_encode(['success' => false, 'message' => 'School ID already exists']);
            exit;
        }

        // Hash the password before storing it
        $hashedPassword = password_hash($password, PASSWORD_DEFAULT);

        // Prepare SQL statement to insert new user
        $stmt = $pdo->prepare("INSERT INTO tbl_users (users_school_id, users_password) VALUES (?, ?)");

        // Execute the statement
        if ($stmt->execute([$username, $hashedPassword])) {
            echo json_encode(['success' => true, 'message' => 'User registered successfully']);
        } else {
            throw new Exception('Registration failed');
        }
    } else {
        // If the request method is not POST
        echo json_encode(['success' => false, 'message' => 'Invalid request method']);
    }
} catch (Exception $e) {
    // Catch any exceptions and return them as JSON
    echo json_encode(['success' => false, 'message' => $e->getMessage()]);
}
?>
