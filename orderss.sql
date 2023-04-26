CREATE TABLE orders (
  order_id int NOT NULL,
  customer_id int NOT NULL,
  order_date date NOT NULL,
  status varchar(20) NOT NULL,
  total_amount decimal(10,2) NOT NULL,
  PRIMARY KEY (order_id),
  CONSTRAINT order_ibfk_1 FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);
