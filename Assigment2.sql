mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
8 rows in set (0.03 sec)

mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| employee_details     |
+----------------------+
1 row in set (0.01 sec)

mysql> select * from employee_details;
+------------+---------------+----------------+
| employeeID | employeeName  | employeeSalary |
+------------+---------------+----------------+
|          1 | Vaibhav Salve |          40000 |
|          2 | Eshanika Keni |          70000 |
|          3 | Purva Keni    |          50000 |
|          4 | Manthan Samje |          30000 |
|          5 | Manas Keni    |          60000 |
+------------+---------------+----------------+
5 rows in set (0.02 sec)

mysql> select * from employee_details limit 3;
+------------+---------------+----------------+
| employeeID | employeeName  | employeeSalary |
+------------+---------------+----------------+
|          1 | Vaibhav Salve |          40000 |
|          2 | Eshanika Keni |          70000 |
|          3 | Purva Keni    |          50000 |
+------------+---------------+----------------+
3 rows in set (0.00 sec)

mysql> select * from employee_details limit 2;
+------------+---------------+----------------+
| employeeID | employeeName  | employeeSalary |
+------------+---------------+----------------+
|          1 | Vaibhav Salve |          40000 |
|          2 | Eshanika Keni |          70000 |
+------------+---------------+----------------+
2 rows in set (0.00 sec)

mysql> select * from employee_details order by employeeSalary;
+------------+---------------+----------------+
| employeeID | employeeName  | employeeSalary |
+------------+---------------+----------------+
|          4 | Manthan Samje |          30000 |
|          1 | Vaibhav Salve |          40000 |
|          3 | Purva Keni    |          50000 |
|          5 | Manas Keni    |          60000 |
|          2 | Eshanika Keni |          70000 |
+------------+---------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employeeName;
+------------+---------------+----------------+
| employeeID | employeeName  | employeeSalary |
+------------+---------------+----------------+
|          2 | Eshanika Keni |          70000 |
|          5 | Manas Keni    |          60000 |
|          4 | Manthan Samje |          30000 |
|          3 | Purva Keni    |          50000 |
|          1 | Vaibhav Salve |          40000 |
+------------+---------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employeeName desc;
+------------+---------------+----------------+
| employeeID | employeeName  | employeeSalary |
+------------+---------------+----------------+
|          1 | Vaibhav Salve |          40000 |
|          3 | Purva Keni    |          50000 |
|          4 | Manthan Samje |          30000 |
|          5 | Manas Keni    |          60000 |
|          2 | Eshanika Keni |          70000 |
+------------+---------------+----------------+
5 rows in set (0.00 sec)

mysql> select * from employee_details order by employeeName desc limit 2;
+------------+---------------+----------------+
| employeeID | employeeName  | employeeSalary |
+------------+---------------+----------------+
|          1 | Vaibhav Salve |          40000 |
|          3 | Purva Keni    |          50000 |
+------------+---------------+----------------+
2 rows in set (0.00 sec)

mysql> select* from studentmanagement system;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'system' at line 1
mysql> select* from studentmanagementsystem;
ERROR 1146 (42S02): Table 'e_commerce.studentmanagementsystem' doesn't exist
mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
8 rows in set (0.00 sec)

mysql> use studentmanagementsystem;
Database changed
mysql> show tables;
+-----------------------------------+
| Tables_in_studentmanagementsystem |
+-----------------------------------+
| feedback                          |
| student                           |
+-----------------------------------+
2 rows in set (0.00 sec)

mysql> select * from student;
+-----------+----------------+-----+----------+
| StudentID | Name           | Age | Address  |
+-----------+----------------+-----+----------+
| 1         | Sanskruti Keni |  22 | Govandi  |
| 2         | Eshanika Keni  |  20 | Trombay  |
| 3         | Purva Keni     |  21 | Chembur  |
| 4         | Manthan Samje  |  19 | Worli    |
| 5         | Manas Keni     |  20 | Mankhurd |
+-----------+----------------+-----+----------+
5 rows in set (0.01 sec)

mysql> select distinct Address from student;
+----------+
| Address  |
+----------+
| Govandi  |
| Trombay  |
| Chembur  |
| Worli    |
| Mankhurd |
+----------+
5 rows in set (0.00 sec)

mysql> select Address from student;
+----------+
| Address  |
+----------+
| Govandi  |
| Trombay  |
| Chembur  |
| Worli    |
| Mankhurd |
+----------+
5 rows in set (0.00 sec)

mysql> select * from student;
+-----------+----------------+-----+----------+
| StudentID | Name           | Age | Address  |
+-----------+----------------+-----+----------+
| 1         | Sanskruti Keni |  22 | Govandi  |
| 2         | Eshanika Keni  |  20 | Trombay  |
| 3         | Purva Keni     |  21 | Chembur  |
| 4         | Manthan Samje  |  19 | Worli    |
| 5         | Manas Keni     |  20 | Mankhurd |
+-----------+----------------+-----+----------+
5 rows in set (0.00 sec)

mysql> select
    -> select * from student where StudentID between 1 and 4;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select * from student where StudentID between 1 and 4' at line 2
mysql>  select * from student where StudentID between '1' and '4';
+-----------+----------------+-----+---------+
| StudentID | Name           | Age | Address |
+-----------+----------------+-----+---------+
| 1         | Sanskruti Keni |  22 | Govandi |
| 2         | Eshanika Keni  |  20 | Trombay |
| 3         | Purva Keni     |  21 | Chembur |
| 4         | Manthan Samje  |  19 | Worli   |
+-----------+----------------+-----+---------+
4 rows in set (0.01 sec)

mysql> select * from student where Age between '10' and '30';
+-----------+----------------+-----+----------+
| StudentID | Name           | Age | Address  |
+-----------+----------------+-----+----------+
| 1         | Sanskruti Keni |  22 | Govandi  |
| 2         | Eshanika Keni  |  20 | Trombay  |
| 3         | Purva Keni     |  21 | Chembur  |
| 4         | Manthan Samje  |  19 | Worli    |
| 5         | Manas Keni     |  20 | Mankhurd |
+-----------+----------------+-----+----------+
5 rows in set (0.01 sec)

mysql>  select * from student where Age between '20' and '30';
+-----------+----------------+-----+----------+
| StudentID | Name           | Age | Address  |
+-----------+----------------+-----+----------+
| 1         | Sanskruti Keni |  22 | Govandi  |
| 2         | Eshanika Keni  |  20 | Trombay  |
| 3         | Purva Keni     |  21 | Chembur  |
| 5         | Manas Keni     |  20 | Mankhurd |
+-----------+----------------+-----+----------+
4 rows in set (0.00 sec)

mysql> select * from student where Age not between '20' and '30';
+-----------+---------------+-----+---------+
| StudentID | Name          | Age | Address |
+-----------+---------------+-----+---------+
| 4         | Manthan Samje |  19 | Worli   |
+-----------+---------------+-----+---------+
1 row in set (0.00 sec)

mysql> select * from student where StudentID in('1','3');
+-----------+----------------+-----+---------+
| StudentID | Name           | Age | Address |
+-----------+----------------+-----+---------+
| 1         | Sanskruti Keni |  22 | Govandi |
| 3         | Purva Keni     |  21 | Chembur |
+-----------+----------------+-----+---------+
2 rows in set (0.00 sec)

mysql>  select * from student where StudentID not in('1','3');
+-----------+---------------+-----+----------+
| StudentID | Name          | Age | Address  |
+-----------+---------------+-----+----------+
| 2         | Eshanika Keni |  20 | Trombay  |
| 4         | Manthan Samje |  19 | Worli    |
| 5         | Manas Keni    |  20 | Mankhurd |
+-----------+---------------+-----+----------+
3 rows in set (0.00 sec)

mysql> select * from student where Age is null;
Empty set (0.00 sec)

mysql> select * from student where Age is not null;
+-----------+----------------+-----+----------+
| StudentID | Name           | Age | Address  |
+-----------+----------------+-----+----------+
| 1         | Sanskruti Keni |  22 | Govandi  |
| 2         | Eshanika Keni  |  20 | Trombay  |
| 3         | Purva Keni     |  21 | Chembur  |
| 4         | Manthan Samje  |  19 | Worli    |
| 5         | Manas Keni     |  20 | Mankhurd |
+-----------+----------------+-----+----------+
5 rows in set (0.00 sec)

mysql>  select * from student where Age='22' and Address='Chembur';
Empty set (0.00 sec)

mysql>  select * from student where Age='22' or Address='Chembur';
+-----------+----------------+-----+---------+
| StudentID | Name           | Age | Address |
+-----------+----------------+-----+---------+
| 1         | Sanskruti Keni |  22 | Govandi |
| 3         | Purva Keni     |  21 | Chembur |
+-----------+----------------+-----+---------+
2 rows in set (0.00 sec)