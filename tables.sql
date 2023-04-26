CREATE TABLE author (
  author_id int NOT NULL,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  PRIMARY KEY (author_id)
);

CREATE TABLE category (
  category_id int NOT NULL,
  category_name varchar(50) NOT NULL,
  PRIMARY KEY (category_id)
);

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

CREATE TABLE customer (
  customer_id int NOT NULL,
  first_name varchar(50) NOT NULL,
  last_name varchar(50) NOT NULL,
  email varchar(100) NOT NULL,
  phone varchar(20) DEFAULT NULL,
  address varchar(100) DEFAULT NULL,
  city varchar(50) DEFAULT NULL,
  state varchar(50) DEFAULT NULL,
  zip_code varchar(20) DEFAULT NULL,
  PRIMARY KEY (customer_id)
                      );

CREATE TABLE orders (
  order_id int NOT NULL,
  customer_id int NOT NULL,
  order_date date NOT NULL,
  status varchar(20) NOT NULL,
  total_amount decimal(10,2) NOT NULL,
  PRIMARY KEY (order_id),
  CONSTRAINT order_ibfk_1 FOREIGN KEY (customer_id) REFERENCES customer (customer_id)
);

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
