# Book Finder

## Description

This project is a web application built using PHP, MySQL, and AJAX. It demonstrates a dynamic search feature where users can type into a search box and get real-time results displayed without refreshing the page. This is particularly useful for creating responsive user interfaces in web applications.

## Features

- Real-time search functionality
- Secure database interaction with prepared statements
- Responsive user interface

## Prerequisites

Before you begin, ensure you have met the following requirements:
- PHP 7.4 or higher
- MySQL 5.7 or higher
- Composer (for managing PHP dependencies)
- A web server like Apache or Nginx

## Installation

Follow these steps to get your development environment running:

1. Clone the repository
   ```bash
   git clone https://github.com/Devesh7664/books-search.git
   cd books-search
   ```

2. Import the SQL schema to your MySQL database
    ```bash
    CREATE DATABASE books_database;
    USE example_db;
    SOURCE path_to_project/books_database.sql;
    ```

4. Configure your database connection settings in config.php
    ```bash
    $server="localhost";
    $username="root";
    $password="";
    $db="books_database";
    ```

5. Start your web server and visit the application in your web browser.

## Usage
After starting the application:

1. Navigate to the homepage.
2. You will see two search fields:
    - **Title**: Enter a book title in the `Title` field.
    - **Author**: Enter an author's name in the `Author` field.
3. You can fill any one of these fields or both according to your requirement.
4. Click the `Search` button to fetch results. Results will be displayed directly below the search fields without needing to reload the page, thanks to AJAX.
5. Results will be displayed directly below the input field without needing to reload the page.

This dynamic search functionality allows for a flexible and responsive user experience.

## License
Distributed under the MIT License. See LICENSE for more information.


## Contact
Devesh singh - devesh7664@gmail.com

Project Link: https://devesh7664.000webhostapp.com/

