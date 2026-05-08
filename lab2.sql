mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)

mysql> use ecommerce;
Database changed
mysql> desc customer;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Customer_ID   | varchar(10) | NO   | PRI | NULL    |       |
| Customer_name | varchar(20) | NO   |     | NULL    |       |
| city          | varchar(10) | NO   |     | NULL    |       |
| email_ID      | varchar(10) | NO   |     | NULL    |       |
| address       | varchar(10) | NO   |     | NULL    |       |
| phone_no      | varchar(10) | NO   |     | NULL    |       |
| pin_code      | varchar(10) | YES  |     | NULL    |       |
| bill_no       | int         | NO   |     | NULL    |       |
| state         | varchar(20) | NO   |     | NULL    |       |
| country       | varchar(30) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| orders              |
| prodect             |
| product             |
+---------------------+
5 rows in set (0.00 sec)

mysql> desc product;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_ID     | varchar(10) | NO   | PRI | NULL    |       |
| product_name   | varchar(15) | NO   |     | NULL    |       |
| category       | varchar(10) | NO   |     | NULL    |       |
| sub_category   | varchar(10) | NO   |     | NULL    |       |
| original_price | varchar(10) | NO   |     | NULL    |       |
| selling_price  | varchar(10) | NO   |     | NULL    |       |
| stock          | varchar(10) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> delete from customer;
Query OK, 1 row affected (0.07 sec)

mysql> delete from product;
Query OK, 0 rows affected (0.00 sec)

mysql> delete from orders;
Query OK, 0 rows affected (0.00 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)

mysql> desc customer;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Customer_ID   | varchar(10) | NO   | PRI | NULL    |       |
| Customer_name | varchar(20) | NO   |     | NULL    |       |
| city          | varchar(10) | NO   |     | NULL    |       |
| email_ID      | varchar(10) | NO   |     | NULL    |       |
| address       | varchar(10) | NO   |     | NULL    |       |
| phone_no      | varchar(10) | NO   |     | NULL    |       |
| pin_code      | varchar(10) | YES  |     | NULL    |       |
| bill_no       | int         | NO   |     | NULL    |       |
| state         | varchar(20) | NO   |     | NULL    |       |
| country       | varchar(30) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> desc product;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| product_ID     | varchar(10) | NO   | PRI | NULL    |       |
| product_name   | varchar(15) | NO   |     | NULL    |       |
| category       | varchar(10) | NO   |     | NULL    |       |
| sub_category   | varchar(10) | NO   |     | NULL    |       |
| original_price | varchar(10) | NO   |     | NULL    |       |
| selling_price  | varchar(10) | NO   |     | NULL    |       |
| stock          | varchar(10) | YES  |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> select * from customer;
Empty set (0.00 sec)

mysql> drop table orders;
Query OK, 0 rows affected (0.10 sec)

mysql> drop table customer;
Query OK, 0 rows affected (0.03 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| ecommerce          |
| information_schema |
| mysql              |
| performance_schema |
| sakila             |
| sys                |
| world              |
+--------------------+
7 rows in set (0.00 sec)

mysql> use ecommerce;
Database changed
mysql> create table customer(Customer_ID varchar(10) not null primary key, name varchar(15) not null,city varchar(10) not null, email_ID varchar(20) not null, address varchar(20) not null,phone_no varchar(10) not null,pin_code varchar(10));
Query OK, 0 rows affected (0.10 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| prodect             |
| product             |
+---------------------+
4 rows in set (0.00 sec)

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Customer_ID | varchar(10) | NO   | PRI | NULL    |       |
| name        | varchar(15) | NO   |     | NULL    |       |
| city        | varchar(10) | NO   |     | NULL    |       |
| email_ID    | varchar(20) | NO   |     | NULL    |       |
| address     | varchar(20) | NO   |     | NULL    |       |
| phone_no    | varchar(10) | NO   |     | NULL    |       |
| pin_code    | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> insert into customer(Customer_ID, name, city,email_ID,address,phone_no,pin_code)values('c101','prasenjeet','mumbai','prasenjeet@gmail.com','sairoad','8355918353','421306');
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer
    -> ;
+-------------+------------+--------+----------------------+---------+------------+----------+
| Customer_ID | name       | city   | email_ID             | address | phone_no   | pin_code |
+-------------+------------+--------+----------------------+---------+------------+----------+
| c101        | prasenjeet | mumbai | prasenjeet@gmail.com | sairoad | 8355918353 | 421306   |
+-------------+------------+--------+----------------------+---------+------------+----------+
1 row in set (0.00 sec)

mysql> select Customer_id,name from customer;
+-------------+------------+
| Customer_id | name       |
+-------------+------------+
| c101        | prasenjeet |
+-------------+------------+
1 row in set (0.00 sec)

mysql> insert into customer values ('C102','neeraj','grand road','neeraj@gmail.com', 'gb park', '7879564123', '400512');
Query OK, 1 row affected (0.07 sec)

mysql> insert into customer values ('C103','ayush','titwala','ayush@gmail.com', 'maha nager', '1458585789', '535643');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values ('C104','ajay','bhandup','ajay@gmail.com', 'mangatram', '9988567891', '421509');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values ('C105','rahul','nahur','rahul@gmail.com', 'vaishali nagar', '9989865730', '426199');
Query OK, 1 row affected (0.01 sec)

mysql> insert into customer values ('C106','jaiswar', 'kalyan', 'jaiswar@gmail.com','shastri nagar', '9564678210', '23222' ),('C107', 'rawat', 'pune','rawat@gmail.com','uttrakhand','772837','829546' );
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from customer;
+-------------+------------+------------+----------------------+----------------+------------+----------+
| Customer_ID | name       | city       | email_ID             | address        | phone_no   | pin_code |
+-------------+------------+------------+----------------------+----------------+------------+----------+
| c101        | prasenjeet | mumbai     | prasenjeet@gmail.com | sairoad        | 8355918353 | 421306   |
| C102        | neeraj     | grand road | neeraj@gmail.com     | gb park        | 7879564123 | 400512   |
| C103        | ayush      | titwala    | ayush@gmail.com      | maha nager     | 1458585789 | 535643   |
| C104        | ajay       | bhandup    | ajay@gmail.com       | mangatram      | 9988567891 | 421509   |
| C105        | rahul      | nahur      | rahul@gmail.com      | vaishali nagar | 9989865730 | 426199   |
| C106        | jaiswar    | kalyan     | jaiswar@gmail.com    | shastri nagar  | 9564678210 | 23222    |
| C107        | rawat      | pune       | rawat@gmail.com      | uttrakhand     | 772837     | 829546   |
+-------------+------------+------------+----------------------+----------------+------------+----------+
7 rows in set (0.00 sec)

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Customer_ID | varchar(10) | NO   | PRI | NULL    |       |
| name        | varchar(15) | NO   |     | NULL    |       |
| city        | varchar(10) | NO   |     | NULL    |       |
| email_ID    | varchar(20) | NO   |     | NULL    |       |
| address     | varchar(20) | NO   |     | NULL    |       |
| phone_no    | varchar(10) | NO   |     | NULL    |       |
| pin_code    | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql> alter table customer modify Customer_id varchar(10)  not null;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Customer_id | varchar(10) | NO   | PRI | NULL    |       |
| name        | varchar(15) | NO   |     | NULL    |       |
| city        | varchar(10) | NO   |     | NULL    |       |
| email_ID    | varchar(20) | NO   |     | NULL    |       |
| address     | varchar(20) | NO   |     | NULL    |       |
| phone_no    | varchar(10) | NO   |     | NULL    |       |
| pin_code    | varchar(10) | YES  |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
7 rows in set (0.00 sec)

mysql>  alter table customer add bill_no int not null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Customer_id | varchar(10) | NO   | PRI | NULL    |       |
| name        | varchar(15) | NO   |     | NULL    |       |
| city        | varchar(10) | NO   |     | NULL    |       |
| email_ID    | varchar(20) | NO   |     | NULL    |       |
| address     | varchar(20) | NO   |     | NULL    |       |
| phone_no    | varchar(10) | NO   |     | NULL    |       |
| pin_code    | varchar(10) | YES  |     | NULL    |       |
| bill_no     | int         | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
8 rows in set (0.00 sec)

mysql> alter table customer add state varchar(10) not null, add  country varchar(10) not null;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc customer;
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| Customer_id | varchar(10) | NO   | PRI | NULL    |       |
| name        | varchar(15) | NO   |     | NULL    |       |
| city        | varchar(10) | NO   |     | NULL    |       |
| email_ID    | varchar(20) | NO   |     | NULL    |       |
| address     | varchar(20) | NO   |     | NULL    |       |
| phone_no    | varchar(10) | NO   |     | NULL    |       |
| pin_code    | varchar(10) | YES  |     | NULL    |       |
| bill_no     | int         | NO   |     | NULL    |       |
| state       | varchar(10) | NO   |     | NULL    |       |
| country     | varchar(10) | NO   |     | NULL    |       |
+-------------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)


mysql> alter table customer change column name Customer_name varchar(10) not null;
Query OK, 7 rows affected (0.14 sec)
Records: 7  Duplicates: 0  Warnings: 0

mysql> desc customer;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Customer_id   | varchar(10) | NO   | PRI | NULL    |       |
| Customer_name | varchar(10) | NO   |     | NULL    |       |
| city          | varchar(10) | NO   |     | NULL    |       |
| email_ID      | varchar(20) | NO   |     | NULL    |       |
| address       | varchar(20) | NO   |     | NULL    |       |
| phone_no      | varchar(10) | NO   |     | NULL    |       |
| pin_code      | varchar(10) | YES  |     | NULL    |       |
| bill_no       | int         | NO   |     | NULL    |       |
| state         | varchar(10) | NO   |     | NULL    |       |
| country       | varchar(10) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+---------------+------------+----------------------+----------------+------------+----------+---------+-------+---------+
| Customer_id | Customer_name | city       | email_ID             | address        | phone_no   | pin_code | bill_no | state | country |
+-------------+---------------+------------+----------------------+----------------+------------+----------+---------+-------+---------+
| c101        | prasenjeet    | mumbai     | prasenjeet@gmail.com | sairoad        | 8355918353 | 421306   |       0 |       |         |
| C102        | neeraj        | grand road | neeraj@gmail.com     | gb park        | 7879564123 | 400512   |       0 |       |         |
| C103        | ayush         | titwala    | ayush@gmail.com      | maha nager     | 1458585789 | 535643   |       0 |       |         |
| C104        | ajay          | bhandup    | ajay@gmail.com       | mangatram      | 9988567891 | 421509   |       0 |       |         |
| C105        | rahul         | nahur      | rahul@gmail.com      | vaishali nagar | 9989865730 | 426199   |       0 |       |         |
| C106        | jaiswar       | kalyan     | jaiswar@gmail.com    | shastri nagar  | 9564678210 | 23222    |       0 |       |         |
| C107        | rawat         | pune       | rawat@gmail.com      | uttrakhand     | 772837     | 829546   |       0 |       |         |
+-------------+---------------+------------+----------------------+----------------+------------+----------+---------+-------+---------+
7 rows in set (0.00 sec)

mysql> create table orders (order_id int not null primary key auto_increment, Customer_id varchar(5) not null, product_id varchar(5) not null, quantity int not null, total_price double not null, payment_mode varchar(20) not null, order_date date not null, order_status varchar(20) not null, foreign key (Customer_ID) references customer (Customer_ID), foreign key (product_ID) references product (product_ID));
Query OK, 0 rows affected (0.06 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(20) | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table demo drop primary key;
Query OK, 0 rows affected (0.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(20) | NO   |     | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table demo add primary key (id);
Query OK, 0 rows affected (0.08 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql>  desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(20) | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> show tables;
+---------------------+
| Tables_in_ecommerce |
+---------------------+
| customer            |
| demo                |
| orders              |
| prodect             |
| product             |
+---------------------+
5 rows in set (0.00 sec)

mysql> use ecommerce;
Database changed
mysql> select * from customer;
+-------------+---------------+------------+----------------------+----------------+------------+----------+---------+-------+---------+
| Customer_id | Customer_name | city       | email_ID             | address        | phone_no   | pin_code | bill_no | state | country |
+-------------+---------------+------------+----------------------+----------------+------------+----------+---------+-------+---------+
| c101        | prasenjeet    | mumbai     | prasenjeet@gmail.com | sairoad        | 8355918353 | 421306   |       0 |       |         |
| C102        | neeraj        | grand road | neeraj@gmail.com     | gb park        | 7879564123 | 400512   |       0 |       |         |
| C103        | ayush         | titwala    | ayush@gmail.com      | maha nager     | 1458585789 | 535643   |       0 |       |         |
| C104        | ajay          | bhandup    | ajay@gmail.com       | mangatram      | 9988567891 | 421509   |       0 |       |         |
| C105        | rahul         | nahur      | rahul@gmail.com      | vaishali nagar | 9989865730 | 426199   |       0 |       |         |
| C106        | jaiswar       | kalyan     | jaiswar@gmail.com    | shastri nagar  | 9564678210 | 23222    |       0 |       |         |
| C107        | rawat         | pune       | rawat@gmail.com      | uttrakhand     | 772837     | 829546   |       0 |       |         |
+-------------+---------------+------------+----------------------+----------------+------------+----------+---------+-------+---------+
7 rows in set (0.00 sec)

mysql> delete from customer where Customer_id = 'C105';
Query OK, 1 row affected (0.01 sec)

mysql> select * from customer;
+-------------+---------------+------------+----------------------+---------------+------------+----------+---------+-------+---------+
| Customer_id | Customer_name | city       | email_ID             | address       | phone_no   | pin_code | bill_no | state | country |
+-------------+---------------+------------+----------------------+---------------+------------+----------+---------+-------+---------+
| c101        | prasenjeet    | mumbai     | prasenjeet@gmail.com | sairoad       | 8355918353 | 421306   |       0 |       |         |
| C102        | neeraj        | grand road | neeraj@gmail.com     | gb park       | 7879564123 | 400512   |       0 |       |         |
| C103        | ayush         | titwala    | ayush@gmail.com      | maha nager    | 1458585789 | 535643   |       0 |       |         |
| C104        | ajay          | bhandup    | ajay@gmail.com       | mangatram     | 9988567891 | 421509   |       0 |       |         |
| C106        | jaiswar       | kalyan     | jaiswar@gmail.com    | shastri nagar | 9564678210 | 23222    |       0 |       |         |
| C107        | rawat         | pune       | rawat@gmail.com      | uttrakhand    | 772837     | 829546   |       0 |       |         |
+-------------+---------------+------------+----------------------+---------------+------------+----------+---------+-------+---------+
6 rows in set (0.00 sec)

mysql> desc customer;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Customer_id   | varchar(10) | NO   | PRI | NULL    |       |
| Customer_name | varchar(10) | NO   |     | NULL    |       |
| city          | varchar(10) | NO   |     | NULL    |       |
| email_ID      | varchar(20) | NO   |     | NULL    |       |
| address       | varchar(20) | NO   |     | NULL    |       |
| phone_no      | varchar(10) | NO   |     | NULL    |       |
| pin_code      | varchar(10) | YES  |     | NULL    |       |
| bill_no       | int         | NO   |     | NULL    |       |
| state         | varchar(10) | NO   |     | NULL    |       |
| country       | varchar(10) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
10 rows in set (0.01 sec)

mysql> desc orders;
+--------------+-------------+------+-----+---------+----------------+
| Field        | Type        | Null | Key | Default | Extra          |
+--------------+-------------+------+-----+---------+----------------+
| order_id     | int         | NO   | PRI | NULL    | auto_increment |
| Customer_id  | varchar(5)  | NO   | MUL | NULL    |                |
| product_id   | varchar(5)  | NO   | MUL | NULL    |                |
| quantity     | int         | NO   |     | NULL    |                |
| total_price  | double      | NO   |     | NULL    |                |
| payment_mode | varchar(20) | NO   |     | NULL    |                |
| order_date   | date        | NO   |     | NULL    |                |
| order_status | varchar(20) | NO   |     | NULL    |                |
+--------------+-------------+------+-----+---------+----------------+
8 rows in set (0.00 sec)

mysql> truncate table orders;
Query OK, 0 rows affected (0.16 sec)

mysql> select * from orders;
Empty set (0.00 sec)

mysql>  desc customer;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| Customer_id   | varchar(10) | NO   | PRI | NULL    |       |
| Customer_name | varchar(10) | NO   |     | NULL    |       |
| city          | varchar(10) | NO   |     | NULL    |       |
| email_ID      | varchar(20) | NO   |     | NULL    |       |
| address       | varchar(20) | NO   |     | NULL    |       |
| phone_no      | varchar(10) | NO   |     | NULL    |       |
| pin_code      | varchar(10) | YES  |     | NULL    |       |
| bill_no       | int         | NO   |     | NULL    |       |
| state         | varchar(10) | NO   |     | NULL    |       |
| country       | varchar(10) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
10 rows in set (0.00 sec)

mysql> insert into demo values('101','prasenjeet');
Query OK, 1 row affected (0.01 sec)

mysql>  select * from demo;
+-----+------------+
| id  | name       |
+-----+------------+
| 101 | prasenjeet |
+-----+------------+
1 row in set (0.00 sec)

mysql> truncate table demo;
Query OK, 0 rows affected (0.05 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | varchar(20) | NO   | PRI | NULL    |       |
| name  | varchar(20) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql>