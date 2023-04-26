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
