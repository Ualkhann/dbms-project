CREATE TABLE book (
  book_id int NOT NULL,
  category_id int NOT NULL,
  author_id int NOT NULL,
  title varchar(100) NOT NULL,
  description text,
  price decimal(10,2) NOT NULL,
  PRIMARY KEY (book_id),
  CONSTRAINT book_ibfk_1 FOREIGN KEY (category_id) REFERENCES category (category_id),
  CONSTRAINT book_ibfk_2 FOREIGN KEY (author_id) REFERENCES author (author_id)
);
