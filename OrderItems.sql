CREATE TABLE orderitem (
  order_item_id int NOT NULL,
  order_id int NOT NULL,
  book_id int NOT NULL,
  quantity int NOT NULL,
  price decimal(10,2) NOT NULL,
  PRIMARY KEY (order_item_id),
  CONSTRAINT orderitem_ibfk_1 FOREIGN KEY (order_id) REFERENCES orders (order_id),
  CONSTRAINT orderitem_ibfk_2 FOREIGN KEY (book_id) REFERENCES book (book_id)
);
