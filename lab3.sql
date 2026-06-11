/*
Task: Let's consider a scenario where you want to retrieve information about students

from a database table named student and display the results in ascending order based on their last names.

Student table contain column (stud_id,FirstName,LastName,Age,Phoneno,Address) add 5 records in tables.

Hint: Use orderBy clause in a ascending Order

mysql> create database Student_Info;
Query OK, 1 row affected (0.01 sec)

mysql> use Student_Info;
Database changed
mysql> create table student(Student_ID varchar(30) not null primary key,FirstName varchar(20),LastName varchar(20),Age int not null, PhoneNo varchar(10)not null,Address varchar(50) not null);
Query OK, 0 rows affected (0.04 sec)

mysql> desc student;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| Student_ID | varchar(30) | NO   | PRI | NULL    |       |
| FirstName  | varchar(20) | YES  |     | NULL    |       |
| LastName   | varchar(20) | YES  |     | NULL    |       |
| Age        | int         | NO   |     | NULL    |       |
| PhoneNo    | varchar(10) | NO   |     | NULL    |       |
| Address    | varchar(50) | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
6 rows in set (0.01 sec)

mysql> INSERT INTO student
    -> VALUES
    -> ('1001','Sanskruti','Keni',22,'8104861207','Borla Govandi'),
    -> ('1002','Eshanika','Patil',20,'9867992930','Trombay'),
    -> ('10003','Manthan','Samje',19,'9876543210','Worli Village'),
    -> ('1004','Manas','Keni',22,'1556342563','Trombay'),
    -> ('1005','Purva','Keni',19,'9654238425','Mulund');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from Student;
+------------+-----------+----------+-----+------------+---------------+
| Student_ID | FirstName | LastName | Age | PhoneNo    | Address       |
+------------+-----------+----------+-----+------------+---------------+
| 10003      | Manthan   | Samje    |  19 | 9876543210 | Worli Village |
| 1001       | Sanskruti | Keni     |  22 | 8104861207 | Borla Govandi |
| 1002       | Eshanika  | Patil    |  20 | 9867992930 | Trombay       |
| 1004       | Manas     | Keni     |  22 | 1556342563 | Trombay       |
| 1005       | Purva     | Keni     |  19 | 9654238425 | Mulund        |
+------------+-----------+----------+-----+------------+---------------+
5 rows in set (0.00 sec)

mysql> select * from Student order by LastName desc;
+------------+-----------+----------+-----+------------+---------------+
| Student_ID | FirstName | LastName | Age | PhoneNo    | Address       |
+------------+-----------+----------+-----+------------+---------------+
| 10003      | Manthan   | Samje    |  19 | 9876543210 | Worli Village |
| 1002       | Eshanika  | Patil    |  20 | 9867992930 | Trombay       |
| 1001       | Sanskruti | Keni     |  22 | 8104861207 | Borla Govandi |
| 1004       | Manas     | Keni     |  22 | 1556342563 | Trombay       |
| 1005       | Purva     | Keni     |  19 | 9654238425 | Mulund        |
+------------+-----------+----------+-----+------------+---------------+
5 rows in set (0.00 sec)