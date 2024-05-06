<?php
include 'config.php'; 
$book_name = $_GET['book_name'] ?? '';
$author_name = $_GET['author_name'] ?? '';

if (strlen($book_name) > 0 && strlen($author_name) > 0) {
    // For Case when both book_name and author_name are provided
    $sql = "SELECT book_name, author_name, price FROM books WHERE book_name LIKE ? OR author_name LIKE ?";
    $stmt = $conn->prepare($sql);
    $book_name_param = '%' . $book_name . '%';
    $author_name_param = '%' . $author_name . '%';
    $stmt->bind_param('ss', $book_name_param, $author_name_param);

} else if (strlen($book_name) > 0) {
    // For Case when book_name is provided
    $sql = "SELECT book_name, author_name, price FROM books WHERE book_name LIKE ?";
    $stmt = $conn->prepare($sql);
    $book_name_param = '%' . $book_name . '%';
    $stmt->bind_param('s', $book_name_param);

} else if (strlen($author_name) > 0) {
    // For Case when author_name is provided
    $sql = "SELECT book_name, author_name, price FROM books WHERE author_name LIKE ?";
    $stmt = $conn->prepare($sql);
    $author_name_param = '%' . $author_name . '%';
    $stmt->bind_param('s', $author_name_param);
    
} else {
    // No specific search criteria, fetch all books
    $sql = "SELECT book_name, author_name, price FROM books";
    $stmt = $conn->prepare($sql);
}

if ($stmt) {
    if (strlen($book_name) > 0 && strlen($author_name) > 0) {
        $book_name_param = '%' . $book_name . '%';
        $author_name_param = '%' . $author_name . '%';
        $stmt->bind_param('ss', $book_name_param, $author_name_param);
    } else if (strlen($book_name) > 0 || strlen($author_name) > 0) {
        $search_param = '%' . ($book_name ? $book_name : $author_name) . '%';
        $stmt->bind_param('s', $search_param);
    }

    $stmt->execute();
    $result = $stmt->get_result();

    $data = []; 
    while($row = $result->fetch_assoc()) {
        $data[] = $row; 
    }

    $stmt->close();

    header('Content-Type: application/json');

    echo json_encode($data);
} else {
    echo json_encode(["error" => "Error in preparing statement: " . htmlspecialchars($conn->error)]);
}
?>