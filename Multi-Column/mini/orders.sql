CREATE TABLE Orders (
  order_id SERIAL PRIMARY KEY
  order_date DATE NOT NULL,
  customer_id INT NOT NULL,
  merchandise_id INT NOT NULL,
  quantity INT NOT NULL
  price NUMERIC(9,2) NOT NULL
);
