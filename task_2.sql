CREATE TABLE IF NOT EXISTS Books(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id) 
);

CREATE TABLE IF NOT EXISTS Authors(
    author_id PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(215)
);

CREATE TABLE IF NOT EXISTS Customers(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);

CREATE TABLE IF NOT EXISTS Orders(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE IF NOT EXISTS Order_Details(
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    quantity DOUBLE,
    order_id INT,
    book_id INT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);