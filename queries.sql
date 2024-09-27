DROP TABLE IF EXISTS covers, books;

CREATE TABLE books(
	book_id SERIAL PRIMARY KEY NOT NULL,
	isbn VARCHAR(102) UNIQUE NOT NULL,
	author VARCHAR(102) NOT NULL,
	title VARCHAR(255) NOT NULL,
	descriptions TEXT NOT NULL,
	rating NUMERIC NOT NULL,
	read_on DATE NOT NUll
);

CREATE TABLE covers(
	cover_id SERIAL PRIMARY KEY,
	imageurl VARCHAR(255) UNIQUE NOT NULL,
	isbn VARCHAR(102) REFERENCES books(isbn)
	ON DELETE CASCADE 
);

INSERT INTO books (author, title, description, rating, isbn, read_on) VALUES 
('George S. Clason', 'The Richest Man in Babylon', 'A timeless classic on financial wisdom, offering practical advice on wealth-building through a series of parables set in ancient Babylon. It emphasizes principles such as saving a portion of your income, investing wisely, and living below your means to achieve lasting financial success.', 8.7, '9780451205360', '2024-02-15'),
('James Clear', 'Atomic Habits', 'A comprehensive and actionable guide to building good habits and breaking bad ones. James Clear explores the power of incremental changes, or atomic habits, to transform life. The book provides scientific insights on how habits are formed and offers practical strategies for mastering the tiny behaviors that lead to significant results.', 9.3, '9780735211292', '2024-05-22'),
('Chris Gardner', 'The Pursuit of Happyness', 'An inspiring and deeply moving autobiography about overcoming incredible adversity. Chris Gardner recounts his journey from homelessness to becoming a successful stockbroker, showing how perseverance, determination, and belief in oneself can turn even the most dire circumstances into opportunities for success.', 8.9, '9780060744878', '2024-08-12'),
('Paulo Coelho', 'The Alchemist', 'A philosophical and enchanting novel that follows the journey of Santiago, a young shepherd, in search of his personal legend and treasure. Along the way, he encounters profound life lessons about following our dreams, listening to the heart, and recognizing the interconnectedness of all things. The story is an allegory for self-discovery and spiritual growth.', 9.1, '9780061122415', '2023-11-02');


INSERT INTO covers (imageurl, isbn)
VALUES 
('https://covers.openlibrary.org/b/isbn/9780451205360-M.jpg?default=false', '9780451205360'),
('https://covers.openlibrary.org/b/isbn/9780735211292-M.jpg?default=false', '9780735211292'),
('https://covers.openlibrary.org/b/isbn/9780060744878-M.jpg?default=false', '9780060744878'),
('https://covers.openlibrary.org/b/isbn/9780061122415-M.jpg?default=false', '9780061122415')
RETURNING *;


SELECT * FROM books
JOIN covers
ON books.isbn = covers.isbn
ORDER BY rating DESC
;

