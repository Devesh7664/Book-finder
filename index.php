<!doctype html>
<html lang="en">

<head> 
    <!-- Required meta tags -->
    <meta charset="utf-8"> 
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Book Finder</title>
    <link href="styles.css" rel="stylesheet">
    <script src="script.js" ></script>
</head>
    <body>
        <div class="container">
            <h1>Book Finder:</h1>
            <form id="searchForm" class="search-form" onsubmit="return searchQuery()">
                <div class="form-group">
                    <label for="book_name">Title</label>
                    <input class='input-field' type="text" id="book_name" name="book_name" placeholder="Search Book">
                </div>
                <div class="form-group">
                    <label for="author_name">Author</label>
                    <input class='input-field' type="text" id="author_name" name="author_name" placeholder="Search Author">
                </div>
                <button type="submit" class="btn-search">Search</button>
            </form>
        </div>
        <div id="resultContainer"></div>
    </body>
</html>