<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, GET, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");
header("Content-Type: application/json");

// Database connection (ensure this file exists and has the correct PDO object)
include 'db_connection.php';

class Get
{
    private $pdo;

    public function __construct($pdo)
    {
        $this->pdo = $pdo;
    }

    function getContacts()
    {
        try {
            $sql = "SELECT 
            tbl_front_cards.cards_title,
            tbl_front_cards.cards_id,
            tbl_front_cards.cards_content,
            MAX(tbl_back_cards_header.back_content) as back_content,
            MAX(tbl_back_cards_header.back_content_title) as back_content_title,
            MAX(tbl_back_cards_header.back_cards_header_frontId) as back_cards_header_frontId,
            MAX(tbl_back_cards_header.back_cards_header_title) as back_cards_header_title
        FROM tbl_front_cards 
        LEFT JOIN tbl_back_cards_header ON tbl_back_cards_header.back_cards_header_frontId = tbl_front_cards.cards_id
        WHERE tbl_front_cards.cards_masterId = 1
        GROUP BY tbl_front_cards.cards_id, tbl_front_cards.cards_title, tbl_front_cards.cards_content
        ORDER BY tbl_front_cards.cards_id ASC";
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute();
            $returnValue = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return json_encode($returnValue);
        } catch (PDOException $e) {
            error_log("Database error in getContacts: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode([
                'error' => 'Database error occurred',
                'details' => $e->getMessage(),
                'file' => $e->getFile(),
                'line' => $e->getLine()
            ]);
        } catch (Exception $e) {
            error_log("General error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'An error occurred']);
        }
    }

    function getDefine()
    {
        try {
            $sql = "SELECT 
            tbl_front_cards.cards_title,
            tbl_front_cards.cards_id,
            tbl_front_cards.cards_content,
            MAX(tbl_back_cards_header.back_content) as back_content,
            MAX(tbl_back_cards_header.back_content_title) as back_content_title,
            MAX(tbl_back_cards_header.back_cards_header_frontId) as back_cards_header_frontId,
            MAX(tbl_back_cards_header.back_cards_header_title) as back_cards_header_title
            FROM tbl_front_cards 
            LEFT JOIN tbl_back_cards_header ON tbl_back_cards_header.back_cards_header_frontId = tbl_front_cards.cards_id
            WHERE tbl_front_cards.cards_masterId = 2
            GROUP BY tbl_front_cards.cards_id, tbl_front_cards.cards_title, tbl_front_cards.cards_content
            ORDER BY tbl_front_cards.cards_id ASC";
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute();
            $returnValue = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return json_encode($returnValue);
        } catch (PDOException $e) {
            error_log("Database error in getDefine: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode([
                'error' => 'Database error occurred',
                'details' => $e->getMessage(),
                'file' => $e->getFile(),
                'line' => $e->getLine()
            ]);
        } catch (Exception $e) {
            error_log("General error: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode(['error' => 'An error occurred']);
        }
    }

    function getIdeate()
    {
        try {
            $sql = "SELECT tbl_front_cards.cards_title,
       tbl_front_cards.cards_id,
       tbl_front_cards.cards_content,
       GROUP_CONCAT(tbl_back_cards_header.back_content) AS back_content,
       GROUP_CONCAT(tbl_back_cards_header.back_content_title) AS back_content_title,
       GROUP_CONCAT(tbl_back_cards_header.back_cards_header_frontId) AS back_cards_header_frontId,
       GROUP_CONCAT(tbl_back_cards_header.back_cards_header_title) AS back_cards_header_title
        FROM tbl_front_cards
        LEFT JOIN tbl_back_cards_header ON tbl_back_cards_header.back_cards_header_frontId = tbl_front_cards.cards_id
        WHERE tbl_front_cards.cards_masterId = 3
        GROUP BY tbl_front_cards.cards_id, tbl_front_cards.cards_title, tbl_front_cards.cards_content
        ORDER BY tbl_front_cards.cards_id ASC";
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute();
            $returnValue = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return json_encode($returnValue);
        } catch (PDOException $e) {
            error_log("Database error in getPrototype: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode([
                'error' => 'Database error occurred',
                'details' => $e->getMessage(),
                'file' => $e->getFile(),
                'line' => $e->getLine()
            ]);
        } catch (Exception $e) {
            error_log("General error in getPrototype: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode([
                'error' => 'An error occurred',
                'details' => $e->getMessage(),
                'file' => $e->getFile(),
                'line' => $e->getLine()
            ]);
        }
    }

    function getPrototype()
    {
        try {
            $sql = "SELECT tbl_front_cards.cards_title,
                tbl_front_cards.cards_id,
                tbl_front_cards.cards_content,
                GROUP_CONCAT(tbl_back_cards_header.back_content) AS back_content,
                GROUP_CONCAT(tbl_back_cards_header.back_content_title) AS back_content_title,
                GROUP_CONCAT(tbl_back_cards_header.back_cards_header_frontId) AS back_cards_header_frontId,
                GROUP_CONCAT(tbl_back_cards_header.back_cards_header_title) AS back_cards_header_title
                FROM tbl_front_cards
                LEFT JOIN tbl_back_cards_header ON tbl_back_cards_header.back_cards_header_frontId = tbl_front_cards.cards_id
                WHERE tbl_front_cards.cards_masterId = 4
                GROUP BY tbl_front_cards.cards_id, tbl_front_cards.cards_title, tbl_front_cards.cards_content
                ORDER BY tbl_front_cards.cards_id ASC";
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute();
            $returnValue = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return json_encode($returnValue);
        } catch (PDOException $e) {
            error_log("Database error in getPrototype: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode([
                'error' => 'Database error occurred',
                'details' => $e->getMessage(),
                'file' => $e->getFile(),
                'line' => $e->getLine()
            ]);
        } catch (Exception $e) {
            error_log("General error in getPrototype: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode([
                'error' => 'An error occurred',
                'details' => $e->getMessage(),
                'file' => $e->getFile(),
                'line' => $e->getLine()
            ]);
        }
    }

    function getTest()
    {
        try {
            $sql = "SELECT tbl_front_cards.cards_title,
       tbl_front_cards.cards_id,
       tbl_front_cards.cards_content,
       GROUP_CONCAT(tbl_back_cards_header.back_content) AS back_content,
       GROUP_CONCAT(tbl_back_cards_header.back_content_title) AS back_content_title,
       GROUP_CONCAT(tbl_back_cards_header.back_cards_header_frontId) AS back_cards_header_frontId,
       GROUP_CONCAT(tbl_back_cards_header.back_cards_header_title) AS back_cards_header_title
        FROM tbl_front_cards
        LEFT JOIN tbl_back_cards_header ON tbl_back_cards_header.back_cards_header_frontId = tbl_front_cards.cards_id
        WHERE tbl_front_cards.cards_masterId = 5
        GROUP BY tbl_front_cards.cards_id, tbl_front_cards.cards_title, tbl_front_cards.cards_content
        ORDER BY tbl_front_cards.cards_id ASC";
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute();
            $returnValue = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return json_encode($returnValue);
        } catch (PDOException $e) {
            error_log("Database error in getTest: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode([
                'error' => 'Database error occurred',
                'details' => $e->getMessage(),
                'file' => $e->getFile(),
                'line' => $e->getLine()
            ]);
        } catch (Exception $e) {
            error_log("General error in getTest: " . $e->getMessage() . " in " . $e->getFile() . " on line " . $e->getLine());
            return json_encode([
                'error' => 'An error occurred',
                'details' => $e->getMessage(),
                'file' => $e->getFile(),
                'line' => $e->getLine()
            ]);
        }
    }

    function getBack()
    {
        $cardId = isset($_POST['cardId']) ? $_POST['cardId'] : '';
        try {
            $sql = "SELECT tbl_front_cards.cards_title, 
                    tbl_front_cards.cards_id, 
                    tbl_front_cards.cards_content,
                    tbl_back_cards_header.back_content, 
                    tbl_back_cards_header.back_content_title,
                    tbl_back_cards_header.back_cards_header_frontId
            FROM tbl_back_cards_header 
            INNER JOIN tbl_front_cards ON tbl_front_cards.cards_id = tbl_back_cards_header.back_cards_header_frontId
            WHERE tbl_back_cards_header.back_cards_header_frontId = :cardId ";

            $stmt = $this->pdo->prepare($sql);
            $stmt->bindParam(':cardId', $cardId, PDO::PARAM_INT);
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


    function getBack1()
    {
        $cardId = isset($_POST['cardId']) ? $_POST['cardId'] : '';
        try {
            $sql = "SELECT tbl_front_cards.cards_title, 
                    tbl_front_cards.cards_id, 
                    tbl_front_cards.cards_content,
                    tbl_back_cards_header.back_content, 
                    tbl_back_cards_header.back_content_title,
                    tbl_back_cards_header.back_cards_header_frontId,
                    tbl_back_cards_header.back_cards_header_title
            FROM tbl_back_cards_header 
            INNER JOIN tbl_front_cards ON tbl_front_cards.cards_id = tbl_back_cards_header.back_cards_header_frontId
            WHERE tbl_back_cards_header.back_cards_header_frontId = :cardId";

            $stmt = $this->pdo->prepare($sql);
            $stmt->bindParam(':cardId', $cardId, PDO::PARAM_INT);
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
    function getBack2()
    {
        $cardId = isset($_POST['cardId']) ? $_POST['cardId'] : '';
        try {
            $sql = "SELECT tbl_front_cards.cards_title, 
                    tbl_front_cards.cards_id, 
                    tbl_front_cards.cards_content,
                    tbl_back_cards_header.back_content, 
                    tbl_back_cards_header.back_content_title,
                    tbl_back_cards_header.back_cards_header_frontId,
                    tbl_back_cards_header.back_cards_header_title
            FROM tbl_back_cards_header 
            INNER JOIN tbl_front_cards ON tbl_front_cards.cards_id = tbl_back_cards_header.back_cards_header_frontId
            WHERE tbl_back_cards_header.back_cards_header_frontId = :cardId";

            $stmt = $this->pdo->prepare($sql);
            $stmt->bindParam(':cardId', $cardId, PDO::PARAM_INT);
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
    function getBack3()
    {
        $cardId = isset($_POST['cardId']) ? $_POST['cardId'] : '';
        try {
            $sql = "SELECT tbl_front_cards.cards_title, 
                    tbl_front_cards.cards_id, 
                    tbl_front_cards.cards_content,
                    tbl_back_cards_header.back_content, 
                    tbl_back_cards_header.back_content_title,
                    tbl_back_cards_header.back_cards_header_frontId,
                    tbl_back_cards_header.back_cards_header_title
            FROM tbl_back_cards_header 
            INNER JOIN tbl_front_cards ON tbl_front_cards.cards_id = tbl_back_cards_header.back_cards_header_frontId
            WHERE tbl_back_cards_header.back_cards_header_frontId = :cardId";

            $stmt = $this->pdo->prepare($sql);
            $stmt->bindParam(':cardId', $cardId, PDO::PARAM_INT);
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
    function getBack4()
    {
        $cardId = isset($_POST['cardId']) ? $_POST['cardId'] : '';
        try {
            $sql = "SELECT tbl_front_cards.cards_title, 
                    tbl_front_cards.cards_id, 
                    tbl_front_cards.cards_content,
                    tbl_back_cards_header.back_content, 
                    tbl_back_cards_header.back_content_title,
                    tbl_back_cards_header.back_cards_header_frontId,
                    tbl_back_cards_header.back_cards_header_title
            FROM tbl_back_cards_header 
            INNER JOIN tbl_front_cards ON tbl_front_cards.cards_id = tbl_back_cards_header.back_cards_header_frontId
            WHERE tbl_back_cards_header.back_cards_header_frontId = :cardId";

            $stmt = $this->pdo->prepare($sql);
            $stmt->bindParam(':cardId', $cardId, PDO::PARAM_INT);
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
    function getFolder()
    {
        try {
            $sql = "SELECT * FROM tbl_folder ORDER BY folder_id DESC";
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
    function GetModes()
    {
        try {
            $sql = "SELECT * FROM tbl_module_master ORDER BY module_master_id ASC";
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
    function getLessons()
    {
        $modeId = isset($_POST['modeId']) ? $_POST['modeId'] : '';
        try {
            $sql = "SELECT tbl_front_cards.cards_title, 
            tbl_front_cards.cards_id, 
            tbl_front_cards.cards_content,
            GROUP_CONCAT(tbl_back_cards_header.back_content ORDER BY tbl_back_cards_header.back_content) AS back_content, 
            GROUP_CONCAT(tbl_back_cards_header.back_content_title ORDER BY tbl_back_cards_header.back_content_title) AS back_content_title,
            GROUP_CONCAT(tbl_back_cards_header.back_cards_header_frontId ORDER BY tbl_back_cards_header.back_cards_header_frontId) AS back_cards_header_frontId,
            GROUP_CONCAT(tbl_back_cards_header.back_cards_header_title ORDER BY tbl_back_cards_header.back_cards_header_title) AS back_cards_header_title,
            GROUP_CONCAT(tbl_module_master.module_master_name ORDER BY tbl_module_master.module_master_id) AS module_master_name,
            tbl_front_cards.cards_masterId
                FROM tbl_back_cards_header 
                INNER JOIN tbl_front_cards ON tbl_front_cards.cards_id = tbl_back_cards_header.back_cards_header_frontId
                INNER JOIN tbl_module_master ON tbl_module_master.module_master_id = tbl_front_cards.cards_masterId
                WHERE tbl_front_cards.cards_masterId = :modeId
                GROUP BY tbl_front_cards.cards_id, 
                tbl_front_cards.cards_title, 
                tbl_front_cards.cards_content,
                tbl_front_cards.cards_masterId;";

            $stmt = $this->pdo->prepare($sql);
            $stmt->bindParam(':modeId', $modeId, PDO::PARAM_INT);
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
    function getProject()
    {
        try {
            $sql = "SELECT * FROM tbl_project WHERE project_id = (SELECT MAX(project_id) FROM tbl_project)";
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute();

            $returnValue = $stmt->fetch(PDO::FETCH_ASSOC);

            if (!$returnValue) {
                return json_encode(['error' => 'No project found']);
            }

            error_log("SQL Query: $sql");
            error_log("Result: " . print_r($returnValue, true));

            header('Content-Type: application/json');
            echo json_encode($returnValue);
        } catch (PDOException $e) {
            error_log("Database error: " . $e->getMessage());
            header('HTTP/1.1 500 Internal Server Error');
            echo json_encode(['error' => 'Database error occurred']);
        } catch (Exception $e) {
            error_log("General error: " . $e->getMessage());
            header('HTTP/1.1 500 Internal Server Error');
            echo json_encode(['error' => 'An error occurred']);
        }
    }
    
}

// Handle preflight requests for CORS (for OPTIONS request)
if ($_SERVER['REQUEST_METHOD'] == 'OPTIONS') {
    http_response_code(200);
    exit();
}

// Instantiate the Get class with the database connection
$get = new Get($pdo);

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

    case 'getProject':
        echo $get->getProject();
        break;
    case "getLessons":
        echo $get->getLessons();
        break;
    case "GetModes":
        echo $get->GetModes();
        break;
    case "getContacts":
        echo $get->getContacts();
        break;
    case "getDefine":
        echo $get->getDefine();
        break;
    case "getIdeate":
        echo $get->getIdeate();
        break;
    case "getPrototype":
        echo $get->getPrototype();
        break;
    case "getTest":
        echo $get->getTest();
        break;
    case "getBack":
        echo $get->getBack();
        break;
    case "getBack1":
        echo $get->getBack1();
        break;
    case "getBack2":
        echo $get->getBack2();
        break;
    case "getBack3":
        echo $get->getBack3();
        break;
    case "getBack4":
        echo $get->getBack4();
        break;
    case "getFolder":
        echo $get->getFolder();
        break;
    default:
        echo json_encode(['error' => 'Invalid operation']);
        break;
}
