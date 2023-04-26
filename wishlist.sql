CREATE TABLE wishlist (
  wishlist_id int NOT NULL,
  customer_id int NOT NULL,
  book_id int NOT NULL,
  date_added date NOT NULL,
  quantity int NOT NULL,
  PRIMARY KEY (wishlist_id),
  CONSTRAINT wishlist_ibfk_1 FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
  CONSTRAINT wishlist_ibfk_2 FOREIGN KEY (book_id) REFERENCES book (book_id)
);
