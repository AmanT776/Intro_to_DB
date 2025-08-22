CREATE TABLE IF NOT EXISTS books(
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(130),
    author_id INT,
    price DOUBLE,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES author(author_id) 
);

CREATE TABLE IF NOT EXISTS authors(
    author_id PRIMARY KEY AUTO_INCREMENT,
    author_name VARCHAR(215)
);

CREATE TABLE IF NOT EXISTS customers(
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address text
);

CREATE TABLE IF NOT EXISTS orders(
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    order_date DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE IF NOT EXISTS order_details(
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    quantity DOUBLE,
    order_id INT,
    book_id INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id)
);