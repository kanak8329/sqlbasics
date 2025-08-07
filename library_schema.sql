-- Table: Authors
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE
);

-- Table: Books
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    author_id INT,
    publication_year INT,
    isbn VARCHAR(20) UNIQUE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Table: Members
CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    registration_date DATE
);

-- Table: Loans
CREATE TABLE Loans (
    loan_id INT PRIMARY KEY,
    book_id INT,
    member_id INT,
    loan_date DATE NOT NULL,
    return_date DATE,
    FOREIGN KEY (book_id) REFERENCES Books(book_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);




-- Insert data into Authors
INSERT INTO Authors (author_id, first_name, last_name, birth_date) VALUES
(1, 'Stephen', 'King', '1947-09-21'),
(2, 'J.K.', 'Rowling', '1965-07-31'),
(3, 'George', 'Orwell', '1903-06-25');

-- Insert data into Books
INSERT INTO Books (book_id, title, author_id, publication_year, isbn) VALUES
(101, 'It', 1, 1986, '978-0451452631'),
(102, 'Harry Potter and the Sorcerer''s Stone', 2, 1997, '978-0590353427'),
(103, '1984', 3, 1949, '978-0451524932'),
(104, 'The Shining', 1, 1977, '978-0385121675');

-- Insert data into Members
INSERT INTO Members (member_id, first_name, last_name, email, registration_date) VALUES
(1, 'Alice', 'Smith', 'alice.smith@example.com', '2023-01-15'),
(2, 'Bob', 'Johnson', 'bob.johnson@example.com', '2023-02-20');

-- Insert data into Loans
INSERT INTO Loans (loan_id, book_id, member_id, loan_date, return_date) VALUES
(1, 101, 1, '2024-03-01', '2024-03-15'),
(2, 103, 2, '2024-03-05', NULL);

