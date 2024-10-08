<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

// Database connection (ensure this file exists and has the correct PDO object)
include 'db_connection.php';

class Get1
{
    private $pdo;

    public function __construct($pdo)
    {
        $this->pdo = $pdo;
    }

    function getModuleId()
    {
        try {
            $sql = "SELECT * FROM tbl_activities_header";
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute();

            $returnValue = $stmt->fetchAll(PDO::FETCH_ASSOC);

            error_log("SQL Query: $sql");
            error_log("Result: " . print_r($returnValue, true));

            return json_encode($returnValue);
        } catch (PDOException $e) {
            error_log("Database error: " . $e->getMessage());
            return json_encode(['error' => 'Database error occurred']);
        } catch (Exception $e) {
            error_log("General error: " . $e->getMessage());
            return json_encode(['error' => 'An error occurred']);
        }
    }
    function getheaderId()
    {
        try {
            $sql = "SELECT * FROM tbl_activities_details";
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute();

            $returnValue = $stmt->fetchAll(PDO::FETCH_ASSOC);

            error_log("SQL Query: $sql");
            error_log("Result: " . print_r($returnValue, true));

            return json_encode($returnValue);
        } catch (PDOException $e) {
            error_log("Database error: " . $e->getMessage());
            return json_encode(['error' => 'Database error occurred']);
        } catch (Exception $e) {
            error_log("General error: " . $e->getMessage());
            return json_encode(['error' => 'An error occurred']);
        }
    }
    function getCards()
    {
        try {
            $sql = "SELECT project_cards_id,
            project_cards_remarks,
            project_cards_cardId,
            project_cards_modulesId
            FROM tbl_project_cards";
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute();

            $returnValue = $stmt->fetchAll(PDO::FETCH_ASSOC);

            error_log("SQL Query: $sql");
            error_log("Result: " . print_r($returnValue, true));

            return json_encode($returnValue);
        } catch (PDOException $e) {
            error_log("Database error: " . $e->getMessage());
            return json_encode(['error' => 'Database error occurred']);
        } catch (Exception $e) {
            error_log("General error: " . $e->getMessage());
            return json_encode(['error' => 'An error occurred']);
        }
    }
    function projectModeId()
    {
        try {
            $sql = "SELECT * FROM tbl_project_modules";
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute();

            $returnValue = $stmt->fetchAll(PDO::FETCH_ASSOC);

            error_log("SQL Query: $sql");
            error_log("Result: " . print_r($returnValue, true));

            return json_encode($returnValue);
        } catch (PDOException $e) {
            error_log("Database error: " . $e->getMessage());
            return json_encode(['error' => 'Database error occurred']);
        } catch (Exception $e) {
            error_log("General error: " . $e->getMessage());
            return json_encode(['error' => 'An error occurred']);
        }
    }
    function addMode($json)
    {
        $json = json_decode($json, true);
        try {
            $sql = "INSERT INTO tbl_project_modules (
            project_modules_projectId,
            project_modules_masterId	
            ) VALUES (
            :project_modules_projectId,
            :project_modules_masterId)";
            $stmt = $this->pdo->prepare($sql);
            $stmt->bindParam(':project_modules_projectId', $json['project_modules_projectId'], PDO::PARAM_STR);
            $stmt->bindParam(':project_modules_masterId', $json['project_modules_masterId'], PDO::PARAM_STR);
            $stmt->execute();
            $lastInsertId = $this->pdo->lastInsertId();
            return json_encode(['success' => true, 'id' => $lastInsertId]);
        } catch (PDOException $e) {
            error_log("Database error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'Database error occurred: ' . $e->getMessage()]);
        } catch (Exception $e) {
            error_log("General error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'An error occurred: ' . $e->getMessage()]);
        }
    }
    function addDuration($json)
    {
        $json = json_decode($json, true);
        try {
            $sql = "INSERT INTO tbl_activities_header (
            activities_header_modulesId,
            activities_header_duration		
            ) VALUES (
            :activities_header_modulesId,
            :activities_header_duration)";
            $stmt = $this->pdo->prepare($sql);
            $stmt->bindParam(':activities_header_modulesId', $json['activities_header_modulesId'], PDO::PARAM_STR);
            $stmt->bindParam(':activities_header_duration', $json['activities_header_duration'], PDO::PARAM_STR);
            $stmt->execute();
            $lastInsertId = $this->pdo->lastInsertId();
            return json_encode(['success' => true, 'id' => $lastInsertId]);
        } catch (PDOException $e) {
            error_log("Database error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'Database error occurred: ' . $e->getMessage()]);
        } catch (Exception $e) {
            error_log("General error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'An error occurred: ' . $e->getMessage()]);
        }
    }
    function addActivity($json)
    {
        $json = json_decode($json, true);
        try {
            $sql = "INSERT INTO tbl_activities_details (
            activities_details_remarks,
            activities_details_content,
            activities_details_headerId	
            ) VALUES (
            :activities_details_remarks,
            :activities_details_content,
            :activities_details_headerId)";
            $stmt = $this->pdo->prepare($sql);
            $stmt->bindParam(':activities_details_remarks', $json['activities_details_remarks'], PDO::PARAM_STR);
            $stmt->bindParam(':activities_details_content', $json['activities_details_content'], PDO::PARAM_STR);
            $stmt->bindParam(':activities_details_headerId', $json['activities_details_headerId'], PDO::PARAM_STR);
            $stmt->execute();
            $lastInsertId = $this->pdo->lastInsertId();
            return json_encode(['success' => true, 'id' => $lastInsertId]);
        } catch (PDOException $e) {
            error_log("Database error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'Database error occurred: ' . $e->getMessage()]);
        } catch (Exception $e) {
            error_log("General error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'An error occurred: ' . $e->getMessage()]);
        }
    }
    function addCards($json)
    {
        $json = json_decode($json, true);
        try {
            $sql = "INSERT INTO tbl_project_cards (
            project_cards_remarks,
            project_cards_modulesId,
            project_cards_cardId
            ) VALUES (
            :project_cards_remarks,
            :project_cards_modulesId,
            :project_cards_cardId)";
            $stmt = $this->pdo->prepare($sql);
            $stmt->bindParam(':project_cards_remarks', $json['project_cards_remarks'], PDO::PARAM_STR);
            $stmt->bindParam(':project_cards_modulesId', $json['project_cards_modulesId'], PDO::PARAM_STR);
            $stmt->bindParam(':project_cards_cardId', $json['project_cards_cardId'], PDO::PARAM_STR);
            $stmt->execute();
            $lastInsertId = $this->pdo->lastInsertId();
            return json_encode(['success' => true, 'id' => $lastInsertId]);
        } catch (PDOException $e) {
            error_log("Database error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'Database error occurred: ' . $e->getMessage()]);
        } catch (Exception $e) {
            error_log("General error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'An error occurred: ' . $e->getMessage()]);
        }
    }
    function addOutput($json)
    {
        $json = json_decode($json, true);
        try {
            $sql = "INSERT INTO tbl_outputs (
            outputs_moduleId,
            outputs_remarks,
            outputs_content
            ) VALUES (
                :outputs_moduleId,
                :outputs_remarks,
                :outputs_content)";
            $stmt = $this->pdo->prepare($sql);
            $stmt->bindParam(':outputs_moduleId', $json['outputs_moduleId'], PDO::PARAM_STR);
            $stmt->bindParam(':outputs_remarks', $json['outputs_remarks'], PDO::PARAM_STR);
            $stmt->bindParam(':outputs_content', $json['outputs_content'], PDO::PARAM_STR);
            $stmt->execute();
            $lastInsertId = $this->pdo->lastInsertId();
            return json_encode(['success' => true, 'id' => $lastInsertId]);
        } catch (PDOException $e) {
            error_log("Database error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'Database error occurred: ' . $e->getMessage()]);
        } catch (Exception $e) {
            error_log("General error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'An error occurred: ' . $e->getMessage()]);
        }
    }
    function addInstruction($json)
    {
        $json = json_decode($json, true);
        try {
            $sql = "INSERT INTO tbl_instruction (	
            instruction_remarks,
            instruction_modulesId,
            instruction_content
            ) VALUES (
                :instruction_remarks,
                :instruction_modulesId,
                :instruction_content)";
            $stmt = $this->pdo->prepare($sql);
            $stmt->bindParam(':instruction_remarks', $json['instruction_remarks'], PDO::PARAM_STR);
            $stmt->bindParam(':instruction_modulesId', $json['instruction_modulesId'], PDO::PARAM_STR);
            $stmt->bindParam(':instruction_content', $json['instruction_content'], PDO::PARAM_STR);
            $stmt->execute();
            $lastInsertId = $this->pdo->lastInsertId();
            return json_encode(['success' => true, 'id' => $lastInsertId]);
        } catch (PDOException $e) {
            error_log("Database error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'Database error occurred: ' . $e->getMessage()]);
        } catch (Exception $e) {
            error_log("General error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'An error occurred: ' . $e->getMessage()]);
        }
    }
    function addCoachHeader($json)
    {
        $json = json_decode($json, true);
        try {
            $sql = "INSERT INTO tbl_coach_header (	
            coach_header_duration,
            coach_header_moduleId
            ) VALUES (
                :coach_header_duration,
                :coach_header_moduleId)";
            $stmt = $this->pdo->prepare($sql);
            $stmt->bindParam(':coach_header_duration', $json['coach_header_duration'], PDO::PARAM_STR);
            $stmt->bindParam(':coach_header_moduleId', $json['coach_header_moduleId'], PDO::PARAM_STR);
            $stmt->execute();
            $lastInsertId = $this->pdo->lastInsertId();
            return json_encode(['success' => true, 'id' => $lastInsertId]);
        } catch (PDOException $e) {
            error_log("Database error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'Database error occurred: ' . $e->getMessage()]);
        } catch (Exception $e) {
            error_log("General error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'An error occurred: ' . $e->getMessage()]);
        }
    }

    function addCoachDetails($json)
    {
        $json = json_decode($json, true);
        try {
            $sql = "INSERT INTO tbl_coach_detail (	
            coach_detail_coachheaderId,
            coach_detail_content,
            coach_detail_renarks	
            ) VALUES (
                :coach_detail_coachheaderId,	
                :coach_detail_content,	
                :coach_detail_renarks)";
            $stmt = $this->pdo->prepare($sql);
            $stmt->bindParam(':coach_detail_coachheaderId', $json['coach_detail_coachheaderId'], PDO::PARAM_STR);
            $stmt->bindParam(':coach_detail_content', $json['coach_detail_content'], PDO::PARAM_STR);
            $stmt->bindParam(':coach_detail_renarks', $json['coach_detail_renarks'], PDO::PARAM_STR);
            $stmt->execute();
            $lastInsertId = $this->pdo->lastInsertId();
            return json_encode(['success' => true, 'id' => $lastInsertId]);
        } catch (PDOException $e) {
            error_log("Database error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'Database error occurred: ' . $e->getMessage()]);
        } catch (Exception $e) {
            error_log("General error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'An error occurred: ' . $e->getMessage()]);
        }
    }
}

// Handle preflight requests for CORS (for OPTIONS request)
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    http_response_code(200);
    exit();
}

// Instantiate the Get class with the database connection
$get = new Get1($pdo);

$json = isset($_POST['json']) ? $_POST['json'] : '';
// Determine the request method and check for the operation
$operation = '';
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $operation = isset($_POST['operation']) ? $_POST['operation'] : '';
} else {
    echo json_encode(['error' => 'Invalid request method']);
    exit;
}

// Handle different operations based on the request
switch ($operation) {
    case "getModuleId":
        echo $get->getModuleId();
        break;
    case "getheaderId":
        echo $get->getModuleId();
        break;
    case "getCards":
        echo $get->getCards();
        break;
    case "projectModeId":
        echo $get->projectModeId();
        break;
    case "addMode":
        echo $get->addMode($json);
        break;
    case "addDuration":
        echo $get->addDuration($json);
        break;
    case "addActivity":
        echo $get->addActivity($json);
        break;
    case "addCards":
        echo $get->addCards($json);
        break;
    case "addOutput":
        echo $get->addOutput($json);
        break;
    case "addInstruction":
        echo $get->addInstruction($json);
        break;
    case "addCoachHeader":
        echo $get->addCoachHeader($json);
        break;
    case "addCoachDetails":
        echo $get->addCoachDetails($json);
        break;
}
