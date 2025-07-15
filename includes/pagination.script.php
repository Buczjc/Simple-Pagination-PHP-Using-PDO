<?php
//get page number
if(isset($_GET['page_no']) && $_GET['page_no'] !== "") {
    $page_no = $_GET['page_no'];
}else {
    $page_no = 1;
}

//total rows or records to display
$total_records_per_page = 6;
//get the page offset for the LIMIT query
$offset = ($page_no - 1) * $total_records_per_page;

//query string for the tables and result
$fetchData = $pdo->query("SELECT * FROM paginationtable LIMIT $offset, $total_records_per_page");

//get previous page
$previous_page = $page_no - 1;
//get next page
$next_page = $page_no + 1;

//get the total count of records
$stmt = $pdo->query("SELECT COUNT(*) AS total_records FROM paginationtable");
//total records
$row = $stmt->fetch(PDO::FETCH_ASSOC);
//store row to a variable
$total_records = $row['total_records'];

//get total pages
$total_no_of_pages = ceil($total_records / $total_records_per_page);