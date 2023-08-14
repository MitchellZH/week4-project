CREATE TABLE salespeople(
  salesperson_id SERIAL PRIMARY KEY,
  full_name VARCHAR(25),
  email VARCHAR(50)
);

CREATE TABLE customers(
  customer_id SERIAL PRIMARY KEY,
  full_name VARCHAR(25),
  email VARCHAR(50)
);

CREATE TABLE mechanics(
  mechanic_id SERIAL PRIMARY KEY,
  full_name VARCHAR(25),
  email VARCHAR(50)
);

CREATE TABLE cars(
  car_id SERIAL PRIMARY KEY,
  make VARCHAR(25),
  model VARCHAR(25),
  car_year VARCHAR(4),
  salesperson_id INT,
  FOREIGN KEY (salesperson_id) REFERENCES salespeople(salesperson_id),
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE invoices(
  invoice_id SERIAL PRIMARY KEY,
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  car_id INT,
  FOREIGN KEY (car_id) REFERENCES cars(car_id),
  salesperson_id INT,
  FOREIGN KEY (salesperson_id) REFERENCES salespeople(salesperson_id)
);

CREATE TABLE service_tickets(
  sv_ticket_id SERIAL PRIMARY KEY,
  car_id INT,
  FOREIGN KEY (car_id) REFERENCES cars(car_id),
  customer_id INT,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE service_history(
  issue VARCHAR(100),
  mechanic_id INT,
  FOREIGN KEY (mechanic_id) REFERENCES mechanics(mechanic_id),
  car_id INT,
  FOREIGN KEY (car_id) REFERENCES cars(car_id),
  sv_ticket_id INT,
  FOREIGN KEY (sv_ticket_id) REFERENCES service_tickets(sv_ticket_id)
);