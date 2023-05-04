---connection for sql and python--
import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Aruna@1105")
print(mydb.connection_id)

----creating the database----
import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Aruna@1105")
print(mydb.connection_id)
cur=mydb.cursor()
cur.execute("create database DB")

-------creating the table------
import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Aruna@1105",database="DB")
cur=mydb.cursor()
t="create table Emp(emp_id integer(4),emp_name varchar(30),salary integer(30))"
cur.execute(t)

-------insert the data into the table-------
import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Aruna@1105",database="DB")
cur=mydb.cursor()
z="insert into emp(emp_id,emp_name,salary) values(%s,%s,%s)"
a=(101,"Aruna",90000)
cur.execute(z,a)
mydb.commit()
print("Data Inserted Successfully")

----inserting multiple data into the table-----
import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Aruna@1105",database="DB")
cur=mydb.cursor()
z="insert into emp(emp_id,emp_name,salary) values(%s,%s,%s)"
a=[(102,"Divya",80000),(102,"Sanjana",70000),(103,"kavya",50000)]
cur.executemany(z,a)
mydb.commit()
print("Multiple Data Inserted Successfully")

--------upating the table-----
import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Aruna@1105",database="DB")
cur=mydb.cursor()
x="update emp set salary=salary+100 where emp_id=101"
cur.execute(x)
mydb.commit()

-------fetching the data from table-----
import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Aruna@1105",database="DB")
cur=mydb.cursor()
f="select *from emp"
cur.execute(f)
display=cur.fetchall()
for i in display:
    print(i)
   
-------delete particular data from table-----
import mysql.connector
mydb=mysql.connector.connect(host="localhost",user="root",password="Aruna@1105",database="DB")
cur=mydb.cursor()
x="delete from emp where emp_id=103"
cur.execute(x)
mydb.commit()
