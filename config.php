<?php
    $server="localhost";
    $username="root";
    $password="";
    $db="books_database";
    
    $conn=mysqli_connect($server,$username,$password,$db);
    
    if(!$conn)
    die("connection to this database failed due to " .mysqli_connect_error());
?>