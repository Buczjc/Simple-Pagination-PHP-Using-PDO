<?php
include 'includes/db.connect.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Pagination</title>
    <link rel="stylesheet" href="stylesheets/style.css">
    
</head>
<body>
    <main>
        <div class="container">
            <h1>Pagination PHP</h1>
            <p>By: BUCZ</p>

            <table>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Content</th>
                    <th>Author</th>
                    <th>Created Date</th>
                </tr>
                <?php
                require_once 'includes/pagination.script.php';
                while($row = $fetchData->fetch(PDO::FETCH_ASSOC)) {
                    echo 
                    "<tr>
                        <td>$row[id]</td>
                        <td>$row[title]</td>
                        <td>$row[content]</td>
                        <td>$row[author]</td>
                        <td>$row[created_at]</td>
                    </tr>";
                }
                ?>
            </table>
            
        </div>
        <div class="pagination-container">
                <a class="<?php echo ($page_no <= 1) ? 'disabled' : ''; ?>" <?php echo ($page_no > 1) ? 'href=?page_no=' . $previous_page : ''; ?>>Previous</a>

                <?php
                for($counter = 1; $counter <= $total_no_of_pages; $counter++) { ?>
                <?php if($page_no != $counter) { ?>
                    <a href="?page_no=<?php echo $counter ?>"><?php echo $counter ?></a>
                <?php }else { ?>
                    <a class="disabled"><?php echo $counter ?></a>
                <?php } ?>
                <?php } ?>
                
                <a class="<?php echo ($page_no >= $total_no_of_pages) ? 'disabled' : ''; ?>" <?php echo ($page_no < $total_no_of_pages) ? 'href=?page_no=' . $next_page : ''; ?>>Next</a>
            </div>
            <div class="total-page">
                <strong>Page <?php echo $page_no;?> of <?php echo $total_no_of_pages;?></strong>
            </div>
    </main>
    
</body>
</html>