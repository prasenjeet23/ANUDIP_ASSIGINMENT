use ecommerce;
Database changed
mysql>  select * from customer;
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
10 rows in set (0.00 sec)

mysql> update customer set phone_no = '9664061160' where customer_id = 'C101';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
+-------------+---------------+------------+----------------------+---------------+------------+----------+---------+-------+---------+
| Customer_id | Customer_name | city       | email_ID             | address       | phone_no   | pin_code | bill_no | state | country |
+-------------+---------------+------------+----------------------+---------------+------------+----------+---------+-------+---------+
| c101        | prasenjeet    | mumbai     | prasenjeet@gmail.com | sairoad       | 9664061160 | 421306   |       0 |       |         |
| C102        | neeraj        | grand road | neeraj@gmail.com     | gb park       | 7879564123 | 400512   |       0 |       |         |
| C103        | ayush         | titwala    | ayush@gmail.com      | maha nager    | 1458585789 | 535643   |       0 |       |         |
| C104        | ajay          | bhandup    | ajay@gmail.com       | mangatram     | 9988567891 | 421509   |       0 |       |         |
| C106        | jaiswar       | kalyan     | jaiswar@gmail.com    | shastri nagar | 9564678210 | 23222    |       0 |       |         |
| C107        | rawat         | pune       | rawat@gmail.com      | uttrakhand    | 772837     | 829546   |       0 |       |         |
+-------------+---------------+------------+----------------------+---------------+------------+----------+---------+-------+---------+
6 rows in set (0.00 sec)

mysql> select * from customer where customer_name like '%eet';
+-------------+---------------+--------+----------------------+---------+------------+----------+---------+-------+---------+
| Customer_id | Customer_name | city   | email_ID             | address | phone_no   | pin_code | bill_no | state | country |
+-------------+---------------+--------+----------------------+---------+------------+----------+---------+-------+---------+
| c101        | prasenjeet    | mumbai | prasenjeet@gmail.com | sairoad | 9664061160 | 421306   |       0 |       |         |
+-------------+---------------+--------+----------------------+---------+------------+----------+---------+-------+---------+
1 row in set (0.01 sec)

mysql> select * from customer where customer_name like '%eet%';
+-------------+---------------+--------+----------------------+---------+------------+----------+---------+-------+---------+
| Customer_id | Customer_name | city   | email_ID             | address | phone_no   | pin_code | bill_no | state | country |
+-------------+---------------+--------+----------------------+---------+------------+----------+---------+-------+---------+
| c101        | prasenjeet    | mumbai | prasenjeet@gmail.com | sairoad | 9664061160 | 421306   |       0 |       |         |
+-------------+---------------+--------+----------------------+---------+------------+----------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like '%sen%';
+-------------+---------------+--------+----------------------+---------+------------+----------+---------+-------+---------+
| Customer_id | Customer_name | city   | email_ID             | address | phone_no   | pin_code | bill_no | state | country |
+-------------+---------------+--------+----------------------+---------+------------+----------+---------+-------+---------+
| c101        | prasenjeet    | mumbai | prasenjeet@gmail.com | sairoad | 9664061160 | 421306   |       0 |       |         |
+-------------+---------------+--------+----------------------+---------+------------+----------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like 'ne%';
+-------------+---------------+------------+------------------+---------+------------+----------+---------+-------+---------+
| Customer_id | Customer_name | city       | email_ID         | address | phone_no   | pin_code | bill_no | state | country |
+-------------+---------------+------------+------------------+---------+------------+----------+---------+-------+---------+
| C102        | neeraj        | grand road | neeraj@gmail.com | gb park | 7879564123 | 400512   |       0 |       |         |
+-------------+---------------+------------+------------------+---------+------------+----------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer where customer_name like 'n_____';
+-------------+---------------+------------+------------------+---------+------------+----------+---------+-------+---------+
| Customer_id | Customer_name | city       | email_ID         | address | phone_no   | pin_code | bill_no | state | country |
+-------------+---------------+------------+------------------+---------+------------+----------+---------+-------+---------+
| C102        | neeraj        | grand road | neeraj@gmail.com | gb park | 7879564123 | 400512   |       0 |       |         |
+-------------+---------------+------------+------------------+---------+------------+----------+---------+-------+---------+
1 row in set (0.00 sec)

mysql>  select * from customer where address like 'a_____';
Empty set (0.00 sec)

mysql>  select * from customer where address like 'a___';
Empty set (0.00 sec)

mysql> select * from customer where city like 'k_____';
+-------------+---------------+--------+-------------------+---------------+------------+----------+---------+-------+---------+
| Customer_id | Customer_name | city   | email_ID          | address       | phone_no   | pin_code | bill_no | state | country |
+-------------+---------------+--------+-------------------+---------------+------------+----------+---------+-------+---------+
| C106        | jaiswar       | kalyan | jaiswar@gmail.com | shastri nagar | 9564678210 | 23222    |       0 |       |         |
+-------------+---------------+--------+-------------------+---------------+------------+----------+---------+-------+---------+
1 row in set (0.00 sec)

mysql> select * from customer limit 3;
+-------------+---------------+------------+----------------------+------------+------------+----------+---------+-------+---------+
| Customer_id | Customer_name | city       | email_ID             | address    | phone_no   | pin_code | bill_no | state | country |
+-------------+---------------+------------+----------------------+------------+------------+----------+---------+-------+---------+
| c101        | prasenjeet    | mumbai     | prasenjeet@gmail.com | sairoad    | 9664061160 | 421306   |       0 |       |         |
| C102        | neeraj        | grand road | neeraj@gmail.com     | gb park    | 7879564123 | 400512   |       0 |       |         |
| C103        | ayush         | titwala    | ayush@gmail.com      | maha nager | 1458585789 | 535643   |       0 |       |         |
+-------------+---------------+------------+----------------------+------------+------------+----------+---------+-------+---------+
3 rows in set (0.00 sec)

mysql>  select distinct city from customer;
+------------+
| city       |
+------------+
| mumbai     |
| grand road |
| titwala    |
| bhandup    |
| kalyan     |
| pune       |
+------------+
6 rows in set (0.00 sec)

mysql> select city from customer;
+------------+
| city       |
+------------+
| mumbai     |
| grand road |
| titwala    |
| bhandup    |
| kalyan     |
| pune       |
+------------+
6 rows in set (0.00 sec)

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
7 rows in set (0.01 sec)

mysql> select * from customer;
+-------------+---------------+------------+----------------------+---------------+------------+----------+---------+-------+---------+
| Customer_id | Customer_name | city       | email_ID             | address       | phone_no   | pin_code | bill_no | state | country |
+-------------+---------------+------------+----------------------+---------------+------------+----------+---------+-------+---------+
| c101        | prasenjeet    | mumbai     | prasenjeet@gmail.com | sairoad       | 9664061160 | 421306   |       0 |       |         |
| C102        | neeraj        | grand road | neeraj@gmail.com     | gb park       | 7879564123 | 400512   |       0 |       |         |
| C103        | ayush         | titwala    | ayush@gmail.com      | maha nager    | 1458585789 | 535643   |       0 |       |         |
| C104        | ajay          | bhandup    | ajay@gmail.com       | mangatram     | 9988567891 | 421509   |       0 |       |         |
| C106        | jaiswar       | kalyan     | jaiswar@gmail.com    | shastri nagar | 9564678210 | 23222    |       0 |       |         |
| C107        | rawat         | pune       | rawat@gmail.com      | uttrakhand    | 772837     | 829546   |       0 |       |         |
+-------------+---------------+------------+----------------------+---------------+------------+----------+---------+-------+---------+
6 rows in set (0.00 sec)

mysql> update customer set bill_no = '5' where customer_id = 'C101';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> update customer set bill_no = '10' where customer_id = 'C102';
Query OK, 1 row affected (0.06 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from customer;
+-------------+---------------+------------+----------------------+---------------+------------+----------+---------+-------+---------+
| Customer_id | Customer_name | city       | email_ID             | address       | phone_no   | pin_code | bill_no | state | country |
+-------------+---------------+------------+----------------------+---------------+------------+----------+---------+-------+---------+
| c101        | prasenjeet    | mumbai     | prasenjeet@gmail.com | sairoad       | 9664061160 | 421306   |       5 |       |         |
| C102        | neeraj        | grand road | neeraj@gmail.com     | gb park       | 7879564123 | 400512   |      10 |       |         |
| C103        | ayush         | titwala    | ayush@gmail.com      | maha nager    | 1458585789 | 535643   |       0 |       |         |
| C104        | ajay          | bhandup    | ajay@gmail.com       | mangatram     | 9988567891 | 421509   |       0 |       |         |
| C106        | jaiswar       | kalyan     | jaiswar@gmail.com    | shastri nagar | 9564678210 | 23222    |       0 |       |         |
| C107        | rawat         | pune       | rawat@gmail.com      | uttrakhand    | 772837     | 829546   |       0 |       |         |
+-------------+---------------+------------+----------------------+---------------+------------+----------+---------+-------+---------+
6 rows in set (0.00 sec)
