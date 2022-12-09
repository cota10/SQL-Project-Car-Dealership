INSERT INTO salesperson(
	salesperson_id,
	first_name,
	last_name 
) values(
	1,
	'Max',
	'Johnson'
), (
	2,
	'Ray',
	'Charles' 
);

INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address
) values(
	1,
	'Ulises',
	'Cota',
	'121 Puff Dr, Los Angeles, CA 01221'
), (
	2,
	'Sandra',
	'Novak',
	'122 Puff Dr, Los Angeles, CA 01221'
);

INSERT INTO invoice(
	invoice_id,
	price,
	salesperson_id,
	customer_id,
	car_id
) values(
	1,
	20000,
	1,
	2,
	2
), (
	2,
	30000,
	2,
	1,
	1
);

INSERT INTO car(
	car_id,
	car_year,
	make,
	model,
	color,
	new_or_used,
	invoice_id
) values(
	1,
	'2022',
	'Honda',
	'Accord',
	'Black',
	'New',
	2
), (
	2,
	'2016',
	'Toyota',
	'Corolla',
	'White',
	'Used',
	1
);

INSERT INTO mechanic(
	mechanic_id,
	first_name,
	last_name
) values (
	1,
	'Juan',
	'Ortega' 
), (
	2, 
	'Matthew',
	'Hobbs'
);

INSERT INTO parts(
	part_id,
	part_name
) values(
	1, 
	'Wheels' 
), (
	2, 
	'Engine'
), (
	3, 
	'A/C'
);

INSERT INTO service_ticket(
	service_ticket_id,
	service_type,
	customer_id,
	mechanic_id,
	car_id,
	part_id
) values(
	1,
	'New engine',
	2,
	1,
	2,
	2
), (
	2,
	'New A/C',
	1,
	2,
	1,
	3
);

