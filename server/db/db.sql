create table customer (
    cust_id NUMERIC(10) NOT NULL PRIMARY KEY,
    first_name varchar(50) NOT NULL ,
    last_name varchar(50),
    addr_id BIGINT NOT NULL REFERENCES addr(addr_id)
);

create table cust_phone (
    cust_id BIGINT NOT NULL REFERENCES customer(cust_id),
    ph_no VARCHAR(15) NOT NULL 
);


create table order_line (
    cust_id BIGINT NOT NULL REFERENCES customer(cust_id),
    order_id BIGSERIAL NOT NULL PRIMARY KEY
);


create table order_info (
    order_id BIGINT NOT NULL REFERENCES order_line(order_id) ,
    date_ DATE NOT NULL DEFAULT CURRENT_DATE,
    order_status VARCHAR(20) NOT NULL
);


create table products (
    prod_id BIGSERIAL NOT NULL PRIMARY KEY,
    brand VARCHAR(50) NOT NULL,
    prod_name VARCHAR(50) NOT NULL,
    price NUMERIC(10, 3) NOT NULL,
    category VARCHAR(20) NOT NULL,
    stock NUMERIC(5) NOT NULL,
);

create table order_products (
    order_id BIGINT NOT NULL REFERENCES order_line(order_id),
    prod_id BIGINT NOT NULL REFERENCES products(prod_id)

);

create table user_login (
    id BIGSERIAL NOT NULL PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL,
    passwd VARCHAR(50) NOT NULL,
    user_type VARCHAR(10) NOT NULL
);

create table employee(
    emp_id NUMERIC(10) NOT NULL PRIMARY KEY,
    emp_type VARCHAR(15) NOT NULL
);

create table salesperson(
    emp_id NUMERIC(10) NOT NULL PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL
);

create table WareHouseSupervisor (
    emp_id NUMERIC(10) NOT NULL PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NULL
);

create table SalesClerk (
    emp_id NUMERIC(10) NOT NULL PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NULL
);

create table addr (
    addr_id BIGSERIAL NOT NULL PRIMARY KEY,
    state_  VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    street VARCHAR(50) NOT NULL,
    pincocde NUMERIC(10) NOT NULL
);

create table ShippingDepartmentEmployee(
    emp_id NUMERIC(10) NOT NULL PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NULL
);

create table shipment (
    order_id BIGINT NOT NULL REFERENCES order_line(order_id),
    shipment_id NUMERIC() NOT NULL 
);

create table emp_ph (
    emp_id BIGINT NOT NULL REFERENCES employee(emp_id),
    ph_no VARCHAR(15) NOT NULL 
);

create table sp_prod (
    emp_id BIGINT NOT NULL REFERENCES employee(emp_id),
    prod_id BIGINT NOT NULL REFERENCES products(prod_id)
);


insert into addr (state_, city, street, pincode) values ('Tamil Nadu', 'Trichy','Baker Street', 620015);
insert into addr (state_, city, street, pincode) values ('Tamil Nadu', 'Chennai','Amrita Salai', 928015);
insert into addr (state_, city, street, pincode) values ('Tamil Nadu', 'Trichy','ABC Street', 620015);
insert into addr (state_, city, street, pincode) values ('Kerala', 'Palakad','DEF Street', 123456);
insert into addr (state_, city, street, pincode) values ('Kerala', 'Palakad','Street Street', 123456);


insert into products (brand, prod_name, price, category) values('Havels' , 'Fan', 5000, 'Electrical');
insert into products (brand, prod_name, price, category) values('Philips' , 'LED Lamp', 870, 'Electrical');
insert into products (brand, prod_name, price, category) values('AsianPaints' , 'Black Paint', 6750, 'Building Materials');
insert into products (brand, prod_name, price, category) values('Company1' , 'PVC Pipe', 3200, 'Pipes and Fittings');
insert into products (brand, prod_name, price, category) values('Company1' , '1000 litre Water Tank', 45000, 'Pipes and Fittings');
insert into products (brand, prod_name, price, category) values('AsianPaints' , 'Tractor Emulsion', 5000, 'Building Materials');
insert into products (brand, prod_name, price, category) values('Havels' , 'Wire', 5000, 'Electrical');

insert into user_login (user_name, passwd, user_type) values ('customer1', 'customer1', 'CM');
insert into user_login (user_name, passwd, user_type) values ('customer2', 'customer2', 'CM');
insert into user_login (user_name, passwd, user_type) values ('customer3', 'customer3', 'CM');
insert into user_login (user_name, passwd, user_type) values ('customer4', 'customer4', 'CM');
insert into user_login (user_name, passwd, user_type) values ('customer5', 'customer5', 'CM');
insert into user_login (user_name, passwd, user_type) values ('salesperson1', 'salesperson1', 'SP');
insert into user_login (user_name, passwd, user_type) values ('salesperson2', 'salesperson2', 'SP');
insert into user_login (user_name, passwd, user_type) values ('salesperson3', 'salesperson3', 'SP');
insert into user_login (user_name, passwd, user_type) values ('salesperson4', 'salesperson4', 'SP');
insert into user_login (user_name, passwd, user_type) values ('salesperson5', 'salesperson5', 'SP');
insert into user_login (user_name, passwd, user_type) values ('warehouse1', 'warehouse1', 'WS');
insert into user_login (user_name, passwd, user_type) values ('warehouse2', 'warehouse2', 'WS');
insert into user_login (user_name, passwd, user_type) values ('warehouse3', 'warehouse3', 'WS');
insert into user_login (user_name, passwd, user_type) values ('warehouse4', 'warehouse4', 'WS');
insert into user_login (user_name, passwd, user_type) values ('warehouse5', 'warehouse5', 'WS');
insert into user_login (user_name, passwd, user_type) values ('salesclerk1', 'salesclerk1', 'SC');
insert into user_login (user_name, passwd, user_type) values ('salesclerk2', 'salesclerk2', 'SC');
insert into user_login (user_name, passwd, user_type) values ('salesclerk3', 'salesclerk3', 'SC');
insert into user_login (user_name, passwd, user_type) values ('salesclerk4', 'salesclerk4', 'SC');
insert into user_login (user_name, passwd, user_type) values ('salesclerk5', 'salesclerk5', 'SC');
insert into user_login (user_name, passwd, user_type) values ('shipping1', 'shipping1', 'SE');
insert into user_login (user_name, passwd, user_type) values ('shipping2', 'shipping2', 'SE');
insert into user_login (user_name, passwd, user_type) values ('shipping3', 'shipping3', 'SE');
insert into user_login (user_name, passwd, user_type) values ('shipping4', 'shipping4', 'SE');
insert into user_login (user_name, passwd, user_type) values ('shipping5', 'shipping5', 'SE');


INSERT INTO customer VALUES (1, 'Rick', 'Morty', 1);
INSERT INTO customer VALUES (2, 'James', 'King', 2);
INSERT INTO customer VALUES (3, 'Antony', 'Davis', 3);
INSERT INTO customer VALUES (4, 'Hannibal', 'Lector', 4);
INSERT INTO customer VALUES (5, 'Will', 'Graham', 5);


INSERT INTO cust_phone VALUES (1, '9512924133');
INSERT INTO cust_phone VALUES (2, '9525125200');
INSERT INTO cust_phone VALUES (3, '9887562143');
INSERT INTO cust_phone VALUES (4, '7075687420');
INSERT INTO cust_phone VALUES (5, '9856743210');
 

INSERT INTO EMPLOYEE values(6,'SP');
INSERT INTO EMPLOYEE values(7,'SP');
INSERT INTO EMPLOYEE values(8,'SP');
INSERT INTO EMPLOYEE values(9,'SP');
INSERT INTO EMPLOYEE values(10,'SP');
INSERT INTO EMPLOYEE values(11,'WS');
INSERT INTO EMPLOYEE values(12,'WS');
INSERT INTO EMPLOYEE values(13,'WS');
INSERT INTO EMPLOYEE values(14,'WS');
INSERT INTO EMPLOYEE values(15,'WS');
INSERT INTO EMPLOYEE values(16,'SC');
INSERT INTO EMPLOYEE values(17,'SC');
INSERT INTO EMPLOYEE values(18,'SC');
INSERT INTO EMPLOYEE values(19,'SC');
INSERT INTO EMPLOYEE values(20,'SC');
INSERT INTO EMPLOYEE values(21,'SE');
INSERT INTO EMPLOYEE values(22,'SE');
INSERT INTO EMPLOYEE values(23,'SE');
INSERT INTO EMPLOYEE values(24,'SE');
INSERT INTO EMPLOYEE values(25,'SE');

 

INSERT INTO emp_ph VALUES (6, '7085463210');
INSERT INTO emp_ph VALUES (7, '9884756410');
INSERT INTO emp_ph VALUES (8, '8056789490');
INSERT INTO emp_ph VALUES (9, '7103698745');
INSERT INTO emp_ph VALUES (10, '9856789420');
INSERT INTO emp_ph VALUES (11, '9863254177');
INSERT INTO emp_ph VALUES (12, '7078423585');
INSERT INTO emp_ph VALUES (13, '9887564123');
INSERT INTO emp_ph VALUES (14, '7234241231');
INSERT INTO emp_ph VALUES (15, '8567352444');
INSERT INTO emp_ph VALUES (16, '7674578458');
INSERT INTO emp_ph VALUES (17, '3779656345');
INSERT INTO emp_ph VALUES (18, '4945463246');
INSERT INTO emp_ph VALUES (19, '9756346345');
INSERT INTO emp_ph VALUES (20, '6734532463');
INSERT INTO emp_ph VALUES (21, '8655634623');
INSERT INTO emp_ph VALUES (22, '5435235235');
INSERT INTO emp_ph VALUES (23, '9754363453');
INSERT INTO emp_ph VALUES (24, '7545635634');
INSERT INTO emp_ph VALUES (25, '5546345236');


INSERT INTO SALESPERSON values(6,'Tim','Ren');
INSERT INTO SALESPERSON values(7,'Ben','Ten');
INSERT INTO SALESPERSON values(8,'Gwen','Ten');
INSERT INTO SALESPERSON values(9,'Kevin','Joe');
INSERT INTO SALESPERSON values(10,'Jackie','Jhon');


INSERT INTO WareHouseSupervisor values(11,'Karl','Brose');
INSERT INTO WareHouseSupervisor values(12,'adam','zampa');
INSERT INTO WareHouseSupervisor values(13,'Ghill','christ');
INSERT INTO WareHouseSupervisor values(14,'peter','parker');
INSERT INTO WareHouseSupervisor values(15,'richard','parker');

 

INSERT INTO SalesClerk values(16,'Bil','gates');
INSERT INTO SalesClerk values(17,'Rem','paul');
INSERT INTO SalesClerk values(18,'Rom','weasley');
INSERT INTO SalesClerk values(19,'Stan','Brown');
INSERT INTO SalesClerk values(20,'peny','quick');

 
INSERT INTO ShippingDepartmentEmployee values(21,'Jack','paul');
INSERT INTO ShippingDepartmentEmployee values(22,'john','mena');
INSERT INTO ShippingDepartmentEmployee values(23,'rody','codes');
INSERT INTO ShippingDepartmentEmployee values(24,'SM','Bhoni');
INSERT INTO ShippingDepartmentEmployee values(25,'Donald','pump');


insert into order_line (cust_id) values (1);
insert into order_line (cust_id) values (2);
insert into order_line (cust_id) values (3);
insert into order_line (cust_id) values (4);
insert into order_line (cust_id) values (5);


insert into order_info values (1 ,'2020-05-10' ,'COMPLETE');
insert into order_info values (2 , '2020-05-11' , 'SHIPPED');
insert into order_info values (3 , '2020-06-23', 'INVOICED');
insert into order_info values (5 , '2020-09-29','INVOICED');
insert into order_info values (4 ,'2020-10-02'   , 'COMPLETE');
 
insert into order_products values (1 ,1);
insert into order_products values (1 ,2);
insert into order_products values (1 ,4);
insert into order_products values (2, 6);
insert into order_products values (2, 7);
insert into order_products values (3, 3);
insert into order_products values (3, 5);
insert into order_products values (3, 7);
insert into order_products values (4, 1);
insert into order_products values (5, 2);

insert into shipment values (1 , 123);
insert into shipment values (2 , 124);
insert into shipment values (3 , 123);
insert into shipment values (4 , 125);
insert into shipment values (5 , 125);


insert into sp_prod values (6, 1);
insert into sp_prod values (6, 4);
insert into sp_prod values (6, 5);
insert into sp_prod values (6, 6);
insert into sp_prod values (7, 2);
insert into sp_prod values (7, 3);
insert into sp_prod values (7, 4);
insert into sp_prod values (8, 1);
insert into sp_prod values (8, 2);
insert into sp_prod values (8, 4);
insert into sp_prod values (8, 5);
insert into sp_prod values (8, 5);
insert into sp_prod values (9, 3);
insert into sp_prod values (9, 7);
insert into sp_prod values (9, 6);
insert into sp_prod values (10, 2);
insert into sp_prod values (10, 5);
insert into sp_prod values (10, 6);


    