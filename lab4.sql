mysql> create database joints;
ERROR 1007 (HY000): Can't create database 'joints'; database exists
mysql> use joints;
Database changed
mysql> desc department;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| dept_id   | int         | NO   | PRI | NULL    |       |
| dept_name | varchar(30) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | FINANCE   |
|       4 | MARKETING |
+---------+-----------+
4 rows in set (0.00 sec)

mysql> desc employee;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| emp_id   | int         | NO   | PRI | NULL    |       |
| emp_name | varchar(20) | NO   |     | NULL    |       |
| dept_id  | int         | YES  | MUL | NULL    |       |
+----------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from department;
+---------+-----------+
| dept_id | dept_name |
+---------+-----------+
|       1 | HR        |
|       2 | IT        |
|       3 | FINANCE   |
|       4 | MARKETING |
+---------+-----------+
4 rows in set (0.00 sec)

mysql>  select emp_name, dept_name from employee inner join department on employee.dept_id=department.dept_id;
+------------+-----------+
| emp_name   | dept_name |
+------------+-----------+
| prasenjeet | HR        |
| aayush     | HR        |
| neeraj     | IT        |
| ajay       | MARKETING |
+------------+-----------+
4 rows in set (0.00 sec)

mysql> select emp_name, dept_name from employee left join department on employee.dept_id=department.dept_id;
+------------+-----------+
| emp_name   | dept_name |
+------------+-----------+
| prasenjeet | HR        |
| neeraj     | IT        |
| aayush     | HR        |
| ankit      | NULL      |
| ajay       | MARKETING |
+------------+-----------+
5 rows in set (0.00 sec)

mysql> select emp_name, dept_name from employee right join department on employee.dept_id=department.dept_id;
+------------+-----------+
| emp_name   | dept_name |
+------------+-----------+
| prasenjeet | HR        |
| aayush     | HR        |
| neeraj     | IT        |
| NULL       | FINANCE   |
| ajay       | MARKETING |
+------------+-----------+
5 rows in set (0.00 sec)

mysql> select emp_name, dept_name from employee full join department;
+------------+-----------+
| emp_name   | dept_name |
+------------+-----------+
| prasenjeet | MARKETING |
| prasenjeet | FINANCE   |
| prasenjeet | IT        |
| prasenjeet | HR        |
| neeraj     | MARKETING |
| neeraj     | FINANCE   |
| neeraj     | IT        |
| neeraj     | HR        |
| aayush     | MARKETING |
| aayush     | FINANCE   |
| aayush     | IT        |
| aayush     | HR        |
| ankit      | MARKETING |
| ankit      | FINANCE   |
| ankit      | IT        |
| ankit      | HR        |
| ajay       | MARKETING |
| ajay       | FINANCE   |
| ajay       | IT        |
| ajay       | HR        |
+------------+-----------+
20 rows in set, 1 warning (0.00 sec)

mysql> select emp_name, dept_name from employee cross join department;
+------------+-----------+
| emp_name   | dept_name |
+------------+-----------+
| prasenjeet | MARKETING |
| prasenjeet | FINANCE   |
| prasenjeet | IT        |
| prasenjeet | HR        |
| neeraj     | MARKETING |
| neeraj     | FINANCE   |
| neeraj     | IT        |
| neeraj     | HR        |
| aayush     | MARKETING |
| aayush     | FINANCE   |
| aayush     | IT        |
| aayush     | HR        |
| ankit      | MARKETING |
| ankit      | FINANCE   |
| ankit      | IT        |
| ankit      | HR        |
| ajay       | MARKETING |
| ajay       | FINANCE   |
| ajay       | IT        |
| ajay       | HR        |
+------------+-----------+
20 rows in set (0.00 sec)

mysql>
mysql>
mysql>  use store_procedure_example;
Database changed
mysql> select * from employee;
+----+------------+------+--------+
| id | name       | dept | salary |
+----+------------+------+--------+
|  1 | prasenjeet | HR   |  10000 |
+----+------------+------+--------+
1 row in set (0.00 sec)

mysql> CREATE PROCEDURE GetEmployees()
    -> BEGIN
    ->     SELECT * FROM Employee;
    -> END //
ERROR 1304 (42000): PROCEDURE GetEmployees already exists
mysql> DELIMITER ;
mysql> call GetEmployees();
+----+------------+------+--------+
| id | name       | dept | salary |
+----+------------+------+--------+
|  1 | prasenjeet | HR   |  10000 |
+----+------------+------+--------+
1 row in set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> call GetEmployees;
+----+------------+------+--------+
| id | name       | dept | salary |
+----+------------+------+--------+
|  1 | prasenjeet | HR   |  10000 |
+----+------------+------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE GetEmployeeByDept(IN dept_name VARCHAR(50))
    -> BEGIN
    ->     SELECT *
    ->     FROM Employees
    ->     WHERE department = dept_name;
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql>  DELIMITER //
mysql>  CREATE PROCEDURE GetEmployeeByDept1(IN dept_name VARCHAR(50))
    -> BEGIN
    ->     SELECT *
    ->     FROM Employee
    ->     WHERE department = dept_name;
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE GetEmployeeByDept2(IN dept VARCHAR(50))
    -> BEGIN
    ->     SELECT *
    ->     FROM Employee
    ->     WHERE department = dept;
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql>
mysql> DELIMITER //
mysql> CREATE PROCEDURE GetEmployeeByDept3(IN dept VARCHAR(50))
    -> BEGIN
    ->     SELECT *
    ->     FROM Employee
    ->     WHERE dept = name;
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql> DELIMITER //
mysql> call GetEmployeeByDept3('IT');
    -> Call GetEmployeeByDept3('IT');
    -> Call GetEmployeeByDept3('IT');;
    -> end//
Empty set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

Empty set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

Empty set (0.01 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE GetEmployeeByDept4(IN name VARCHAR(50))
    -> BEGIN
    ->     SELECT *
    ->     FROM Employee
    ->     WHERE dept = name;
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql> DELIMITER //
mysql> call GetEmployeeByDept4('HR');
    -> END//
+----+------------+------+--------+
| id | name       | dept | salary |
+----+------------+------+--------+
|  1 | prasenjeet | HR   |  10000 |
+----+------------+------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> call GetEmployeeByDept4('IT');
    -> END //
Empty set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> CREATE PROCEDURE AddEmployee(
    ->      IN  id INT,
    ->      IN name VARCHAR(50),
    ->      IN dept VARCHAR(50),
    ->      IN salary INT
    -> )
    -> BEGIN
    ->     INSERT INTO Employee(id, name, dept, salary)
    ->     VALUES(id, name, dept, salary);
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER ;
mysql> call AddEmployee(2,'Khan','IT',12000);
Query OK, 1 row affected (0.01 sec)

mysql> UPDATE employee SET name =  'JAISWAR' WHERE id = 2;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+----+------------+------+--------+
| id | name       | dept | salary |
+----+------------+------+--------+
|  1 | prasenjeet | HR   |  10000 |
|  2 | JAISWAR    | IT   |  12000 |
+----+------------+------+--------+
2 rows in set (0.00 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE GetEmployeeCount(OUT total INT)
    -> BEGIN
    ->     SELECT COUNT(*) INTO total
    ->      FROM Employee;
    -> END //
Query OK, 0 rows affected (0.01 sec)

mysql> DELIMITER ;
mysql> CALL GetEmployeeCount(@total);
Query OK, 1 row affected (0.02 sec)

mysql> SELECT @total;
+--------+
| @total |
+--------+
|      2 |
+--------+
1 row in set (0.00 sec)

mysql>