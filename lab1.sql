/*
Create Database StudentManagementSystem
1.Create Table student
with attribute  StudentID (Primary Key)
Name
Age
Address
2.Create a table with named Feedback 

with attributes: 
● FeedbackID (Primary Key) 

● StudentID (Foreign key) 

● Date 

● InstructorName 

● Feedback
Add 5 Records in table

*/


mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.02 sec)

mysql> use StudentManagementSystem;
Database changed
mysql> Database changed
mysql> create table student(StudentID varchar(10) not null primary key,Name varchar(30) not null,Age int not null,Address varchar(50) not null);
Query OK, 0 rows affected (0.04 sec)
mysql> desc student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| StudentID | varchar(10) | NO   | PRI | NULL    |       |
| Name      | varchar(30) | NO   |     | NULL    |       |
| Age       | int         | NO   |     | NULL    |       |
| Address   | varchar(50) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> insert into student values('1','Sanskruti Keni',22,'Govandi'),('2','Eshanika Keni',20,'Trombay'),('3','Purva Keni',21,'Chembur'),('4','Manthan Samje',19,'Worli'),('5','Manas Keni',20,'Mankhurd');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

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

mysql>  create table Feedback(FeedbackID varchar(10) not null primary key,StudentID varchar(10) not null,Date datetime not null,InstructorName varchar(30) not null,Feedback varchar(50) not null,foreign key(StudentID) references student(StudentID));
Query OK, 0 rows affected (0.06 sec)

mysql> desc feedback;
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| FeedbackID     | varchar(10) | NO   | PRI | NULL    |       |
| StudentID      | varchar(10) | NO   | MUL | NULL    |       |
| Date           | datetime    | NO   |     | NULL    |       |
| InstructorName | varchar(30) | NO   |     | NULL    |       |
| Feedback       | varchar(50) | NO   |     | NULL    |       |
+----------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into feedback values('101','1','2026-06-09','Priyanka Mam','Good Presentation.'),('102','2','2026-06-09','Reshmi Mam','Good Learning Experience.'),('103','3','2026-06-09','Rajeshree Mam','Explain the Topic Very Well.'),('104','4','2026-06-09','Meenakshi Mam','Very Informative.'),('105','5','2026-06-09','Geeta Mam','Great Session.');
Query OK, 5 rows affected (0.02 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from feedback;,S
+------------+-----------+---------------------+----------------+------------------------------+
| FeedbackID | StudentID | Date                | InstructorName | Feedback                     |
+------------+-----------+---------------------+----------------+------------------------------+
| 101        | 1         | 2026-06-09 00:00:00 | Priyanka Mam   | Good Presentation.           |
| 102        | 2         | 2026-06-09 00:00:00 | Reshmi Mam     | Good Learning Experience.    |
| 103        | 3         | 2026-06-09 00:00:00 | Rajeshree Mam  | Explain the Topic Very Well. |
| 104        | 4         | 2026-06-09 00:00:00 | Meenakshi Mam  | Very Informative.            |
| 105        | 5         | 2026-06-09 00:00:00 | Geeta Mam      | Great Session.               |
+------------+-----------+---------------------+----------------+------------------------------+
5 rows in set (0.00 sec)