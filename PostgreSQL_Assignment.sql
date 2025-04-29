-- Books Table
CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author VARCHAR(255) NOT NULL,
    price NUMERIC(10, 2) CHECK (price >= 0),
    stock INTEGER NOT NULL,
    published_year INTEGER
);

-- Customers Table
CREATE TABLE customers (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    joined_date DATE DEFAULT CURRENT_DATE
);

-- Orders Table
CREATE TABLE orders (
    id SERIAL PRIMARY KEY,
    customer_id INTEGER REFERENCES customers(id),
    book_id INTEGER REFERENCES books(id),
    quantity INTEGER CHECK (quantity > 0),
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 2. Insert Sample Data

-- Insert Books
INSERT INTO books (title, author, price, stock, published_year) VALUES
('The Pragmatic Programmer', 'Andrew Hunt', 40.00, 10, 1999),
('Clean Code', 'Robert C. Martin', 35.00, 5, 2008),
('You Don''t Know JS', 'Kyle Simpson', 30.00, 8, 2014);

-- Insert Customers
INSERT INTO customers (name, email) VALUES
('Alice Smith', 'alice@example.com'),
('Bob Johnson', 'bob@example.com'),
('Charlie Brown', 'charlie@example.com');

-- Insert Orders
INSERT INTO orders (customer_id, book_id, quantity) VALUES
(1, 2, 1),
(2, 1, 2),
(3, 3, 1),
(1, 3, 2);

-- 3. Queries with Comments

-- Show all books
SELECT * FROM books;

-- Show all customers
SELECT * FROM customers;

-- Show all orders
SELECT * FROM orders;

-- Update stock after a book is ordered
-- Example: Reduce stock of book ID 1 by 2
UPDATE books SET stock = stock - 2 WHERE id = 1;

-- Delete an order (ID 4)
DELETE FROM orders WHERE id = 4;

--Find customers who ordered 'Clean Code'
SELECT c.name, b.title
FROM orders o
JOIN customers c ON o.customer_id = c.id
JOIN books b ON o.book_id = b.id
WHERE b.title = 'Clean Code';

--Count how many times each book has been ordered
SELECT b.title, COUNT(o.id) AS total_orders
FROM books b
LEFT JOIN orders o ON b.id = o.book_id
GROUP BY b.title;

-- Total revenue per book
SELECT b.title, SUM(o.quantity * b.price) AS total_revenue
FROM orders o
JOIN books b ON o.book_id = b.id
GROUP BY b.title;

--Orders placed in the last 7 days
SELECT * FROM orders
WHERE order_date >= NOW() - INTERVAL '7 days';

-- Find books with stock less than 5
SELECT * FROM books WHERE stock < 5;

-- List customer emails who joined this month
SELECT name, email FROM customers
WHERE EXTRACT(MONTH FROM joined_date) = EXTRACT(MONTH FROM CURRENT_DATE);