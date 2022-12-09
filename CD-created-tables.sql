CREATE TABLE salesperson(
	salesperson_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(200)
);

CREATE TABLE car(
	car_id SERIAL primary key,
	car_year VARCHAR(100),
	make VARCHAR(100),
	model VARCHAR(100),
	color VARCHAR(100),
	new_or_used VARCHAR(100),
	invoice_id INTEGER,
	FOREIGN KEY(invoice_id) REFERENCES invoice(invoice_id)
);

CREATE TABLE invoice(
	invoice_id SERIAL primary key,
	price INTEGER,
	invoice_date DATE DEFAULT CURRENT_DATE,
	salesperson_id INTEGER,
	customer_id INTEGER,
	car_id INTEGER,
	FOREIGN KEY(salesperson_id) REFERENCES salesperson(salesperson_id),
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE mechanic(
	mechanic_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE parts(
	part_id SERIAL primary key,
	part_name VARCHAR(150)
);

CREATE TABLE service_ticket(
	service_ticket_id SERIAL primary key,
	service_type VARCHAR(200),
	customer_id INTEGER,
	mechanic_id INTEGER,
	car_id INTEGER,
	part_id INTEGER,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(mechanic_id) REFERENCES mechanic(mechanic_id),
	FOREIGN KEY(car_id) REFERENCES car(car_id),
	FOREIGN KEY(part_id) REFERENCES parts(part_id)
);
