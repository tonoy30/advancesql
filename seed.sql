-- employee table
create table employee
(
	emp_ID int,
	emp_NAME varchar(50),
	DEPT_NAME varchar(50),
	SALARY int
);

insert
	into
	employee
values(101,
'Mohan',
'Admin',
4000);

insert
	into
	employee
values(102,
'Rajkumar',
'HR',
3000);

insert
	into
	employee
values(103,
'Akbar',
'IT',
4000);

insert
	into
	employee
values(104,
'Dorvin',
'Finance',
6500);

insert
	into
	employee
values(105,
'Rohit',
'HR',
3000);

insert
	into
	employee
values(106,
'Rajesh',
'Finance',
5000);

insert
	into
	employee
values(107,
'Preet',
'HR',
7000);

insert
	into
	employee
values(108,
'Maryam',
'Admin',
4000);

insert
	into
	employee
values(109,
'Sanjay',
'IT',
6500);

insert
	into
	employee
values(110,
'Vasudha',
'IT',
7000);

insert
	into
	employee
values(111,
'Melinda',
'IT',
8000);

insert
	into
	employee
values(112,
'Komal',
'IT',
10000);

insert
	into
	employee
values(113,
'Gautham',
'Admin',
2000);

insert
	into
	employee
values(114,
'Manisha',
'HR',
3000);

insert
	into
	employee
values(115,
'Chandni',
'IT',
4500);

insert
	into
	employee
values(116,
'Satya',
'Finance',
6500);

insert
	into
	employee
values(117,
'Adarsh',
'HR',
3500);

insert
	into
	employee
values(118,
'Tejaswi',
'Finance',
5500);

insert
	into
	employee
values(119,
'Cory',
'HR',
8000);

insert
	into
	employee
values(120,
'Monica',
'Admin',
5000);

insert
	into
	employee
values(121,
'Rosalin',
'IT',
6000);

insert
	into
	employee
values(122,
'Ibrahim',
'IT',
8000);

insert
	into
	employee
values(123,
'Vikram',
'IT',
8000);

insert
	into
	employee
values(124,
'Dheeraj',
'IT',
11000);

-- product tables
create table product
( 
    product_category varchar(255),
    brand varchar(255),
    product_name varchar(255),
    price int
);

insert
	into
	product
values
('Phone',
'Apple',
'iPhone 12 Pro Max',
1300),
('Phone',
'Apple',
'iPhone 12 Pro',
1100),
('Phone',
'Apple',
'iPhone 12',
1000),
('Phone',
'Samsung',
'Galaxy Z Fold 3',
1800),
('Phone',
'Samsung',
'Galaxy Z Flip 3',
1000),
('Phone',
'Samsung',
'Galaxy Note 20',
1200),
('Phone',
'Samsung',
'Galaxy S21',
1000),
('Phone',
'OnePlus',
'OnePlus Nord',
300),
('Phone',
'OnePlus',
'OnePlus 9',
800),
('Phone',
'Google',
'Pixel 5',
600),
('Laptop',
'Apple',
'MacBook Pro 13',
2000),
('Laptop',
'Apple',
'MacBook Air',
1200),
('Laptop',
'Microsoft',
'Surface Laptop 4',
2100),
('Laptop',
'Dell',
'XPS 13',
2000),
('Laptop',
'Dell',
'XPS 15',
2300),
('Laptop',
'Dell',
'XPS 17',
2500),
('Earphone',
'Apple',
'AirPods Pro',
280),
('Earphone',
'Samsung',
'Galaxy Buds Pro',
220),
('Earphone',
'Samsung',
'Galaxy Buds Live',
170),
('Earphone',
'Sony',
'WF-1000XM4',
250),
('Headphone',
'Sony',
'WH-1000XM4',
400),
('Headphone',
'Apple',
'AirPods Max',
550),
('Headphone',
'Microsoft',
'Surface Headphones 2',
250),
('Smartwatch',
'Apple',
'Apple Watch Series 6',
1000),
('Smartwatch',
'Apple',
'Apple Watch SE',
400),
('Smartwatch',
'Samsung',
'Galaxy Watch 4',
600),
('Smartwatch',
'OnePlus',
'OnePlus Watch',
220);