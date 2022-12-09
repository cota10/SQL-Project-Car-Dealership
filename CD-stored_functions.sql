create or replace function add_salesperson(_salesperson_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
returns void
as $MAIN$
begin
	insert into salesperson(salesperson_id,first_name,last_name)
	values (_salesperson_id,_first_name,_last_name);
end;
$MAIN$
language plpgsql;

select add_salesperson(3, 'Kevin', 'Hart');
select add_salesperson(4, 'John', 'Doe');

--------------------------------------------------------------------------

 create or replace function add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
returns void
as $MAIN$
begin
	insert into customer(customer_id,first_name,last_name)
	values (_customer_id,_first_name,_last_name);
end;
$MAIN$
language plpgsql;

select add_customer(3, 'Karen', 'White');
select add_customer(4, 'Michael', 'Kelso');

---------------------------------------------------------------------------------

create or replace function add_invoice(_invoice_id INTEGER, _price INTEGER, _salesperson_id INTEGER, _customer_id INTEGER, _car_id INTEGER)
returns void
as $MAIN$
begin
	insert into invoice(invoice_id,price,salesperson_id,customer_id,car_id)
	values (_invoice_id,_price,_salesperson_id,_customer_id,_car_id);
end;
$MAIN$
language plpgsql;

select add_invoice(3, 40000, 4, 3, 4);
select add_invoice(4, 25000, 3, 4, 3);

-----------------------------------------------------------------------------

create or replace function add_car(_car_id INTEGER, _car_year INTEGER, _make VARCHAR, _model VARCHAR, _color VARCHAR, _new_or_used VARCHAR, _invoice_id INTEGER)
returns void
as $MAIN$
begin
	insert into car(car_id,car_year,make,model,color,new_or_used,invoice_id)
	values (_car_id,_car_year,_make,_model,_color,_new_or_used,_invoice_id);
end;
$MAIN$
language plpgsql;

select add_car(3, 2022, 'Honda', 'Civic', 'Red', 'New', 4);
select add_car(4, 2020, 'Acura', 'TLX', 'Gray', 'Used', 3);
 
---------------------------------------------------------------------------------

create or replace function add_mechanic(_mechanic_id INTEGER, _first_name VARCHAR, _last_name VARCHAR)
returns void
as $MAIN$
begin
	insert into mechanic(mechanic_id,first_name,last_name)
	values (_mechanic_id,_first_name,_last_name);
end;
$MAIN$
language plpgsql;

select add_mechanic(3, 'Jorge', 'Avila');
select add_mechanic(4, 'Nathan', 'Kohlhoff');
 
--------------------------------------------------------------------------------------

create or replace function add_parts(_part_id INTEGER, _part_name VARCHAR)
returns void
as $MAIN$
begin
	insert into parts(part_id,part_name)
	values (_part_id,_part_name);
end;
$MAIN$
language plpgsql;

select add_parts(4, 'Starter');
select add_parts(5, 'Steering Wheel');

------------------------------------------------------------------------------------------

create or replace function add_service_ticket(_service_ticket_id INTEGER, _service_type VARCHAR, _customer_id INTEGER, _mechanic_id INTEGER, _car_id INTEGER, _part_id INTEGER)
returns void
as $MAIN$
begin
	insert into service_ticket(service_ticket_id,service_type,customer_id,mechanic_id,car_id,part_id)
	values (_service_ticket_id,_service_type,_customer_id,_mechanic_id,_car_id,_part_id);
end;
$MAIN$
language plpgsql;

select add_service_ticket(3, 'New Starter', 3, 4, 4, 4);
select add_service_ticket(4, 'New Steering Wheel', 4, 3, 3, 5);
