CREATE TABLE review (
  review_id int NOT NULL,
  book_id int NOT NULL,
  customer_id int NOT NULL,
  rating int NOT NULL,
  comments text,
  PRIMARY KEY (review_id),
  CONSTRAINT review_ibfk_1 FOREIGN KEY (book_id) REFERENCES book (book_id),
  CONSTRAINT review_ibfk_2 FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);
