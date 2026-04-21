 -- Books
INSERT INTO Books (book_id, title, author, category, total_copies) VALUES
(101, 'The Alchemist', 'Paulo Coelho', 'Fiction', 5),
(102, 'A Brief History of Time', 'Stephen Hawking', 'Science', 3),
(103, 'Sapiens', 'Yuval Noah Harari', 'History', 4),
(104, 'Clean Code', 'Robert C. Martin', 'Technology', 6),
(105, 'The Great Gatsby', 'F. Scott Fitzgerald', 'Fiction', 2);

 -- Students
INSERT INTO Students (student_id, name, department, join_date) VALUES
(1, 'Rahul Sharma', 'CSE', '2021-06-15'),
(2, 'Ananya Verma', 'ECE', '2022-07-20'),
(3, 'Kiran Reddy', 'MECH', '2020-01-10'),
(4, 'Sneha Patel', 'CIVIL', '2019-08-25'),
(5, 'Arjun Kumar', 'CSE', '2018-03-12');

 -- Issued books
INSERT INTO IssuedBooks (issue_id, book_id, student_id, issue_date, return_date) VALUES
(1001, 101, 1, '2026-03-01', '2026-03-10'),
(1002, 102, 2, '2026-03-05', '2026-03-15'),
(1003, 103, 1, '2026-03-20', NULL),
(1004, 104, 3, '2026-03-18', NULL),
(1005, 105, 2, CURDATE() - INTERVAL 5 DAY, NULL),
(1006, 101, 4, '2021-01-10', '2021-01-20'),
(1007, 102, 5, '2020-02-15', '2020-02-25');


