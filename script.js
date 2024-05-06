
function searchQuery() {
    const book_name = document.getElementById('book_name').value;
    const author_name = document.getElementById('author_name').value;

    const url = `search.php?book_name=${encodeURIComponent(book_name)}&author_name=${encodeURIComponent(author_name)}`;
    const resultContainer = document.getElementById('resultContainer');

    fetch(url)
        .then(response => {
            if (!response.ok) {
                console.error('Error fetching data:', error);
                showErrorMessage('Network response was not ok', resultContainer)
            }
            return response.json();
        })
        .then(books => {
            cleanChildById('resultContainer');
            // Handle empty list
            if (books.length > 0) {
                createBookList(books, resultContainer);
            } else {
                // Check if books are found
                const div = document.createElement('div');
                div.textContent = 'No books found';
                div.classList.add('error-message');
                resultContainer.appendChild(div);
            }
        })
        .catch(error => {
            console.error('Error fetching data:', error);
            showErrorMessage('Error in fetching data')
        });

    return false;
}
function createBookList(books, resultContainer) {
    const listContainer = document.createElement('div');
    listContainer.className = 'book-list';

    //header for larger screen
    const headDiv = document.createElement('div');
    headDiv.classList.add('book-item', 'header');

    const headers = ['Title', 'Author', 'Price'];
    headers.forEach(text => {
        const div = document.createElement('div');
        div.className = 'book-title';
        div.textContent = text;
        headDiv.appendChild(div);
    });
    listContainer.appendChild(headDiv);

    books.forEach(item => {
        const bookDiv = document.createElement('div');

        bookDiv.className = 'book-item';

        const titleDiv = document.createElement('div');
        titleDiv.textContent = item.book_name;
        titleDiv.className = 'book-title';

        //book-author
        const authorDiv = document.createElement('div');
        authorDiv.className = 'book-author';
        const authorLabel = document.createElement('span');
        authorLabel.textContent = "Author: ";
        authorLabel.className = 'author-label';
        const authorName = document.createElement('span');
        authorName.textContent = item.author_name;
        authorName.className = 'author-name';
        authorDiv.appendChild(authorLabel);
        authorDiv.appendChild(authorName);


        //book-price
        const priceDiv = document.createElement('div');
        priceDiv.className = 'book-price';
        const priceLabel = document.createElement('span');
        priceLabel.textContent = "Price: ";
        priceLabel.className = 'price-label';
        const priceValue = document.createElement('span');
        priceValue.textContent = `$${item.price}`;
        priceValue.className = 'price-value';
        priceDiv.appendChild(priceLabel);
        priceDiv.appendChild(priceValue);

        bookDiv.appendChild(titleDiv);
        bookDiv.appendChild(authorDiv);
        bookDiv.appendChild(priceDiv);
        listContainer.appendChild(bookDiv);
    });

    resultContainer.appendChild(listContainer);
}

function showErrorMessage(msg, resultContainer) {
    cleanChildById(resultContainer);
    const div = document.createElement('div');
    div.textContent = msg;
    div.classList.add('error-message');
    resultContainer.appendChild(div);
}

function cleanChildById(id) {
    const resultContainer = document.getElementById(id);
    while (resultContainer.firstChild) {
        resultContainer.removeChild(resultContainer.firstChild);
    }
}

window.onload = function () {
    searchQuery()
}