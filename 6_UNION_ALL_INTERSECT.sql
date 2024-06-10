CREATE TABLE company (
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  address VARCHAR(100),
  salary DECIMAL(10,2)
);

INSERT INTO company (id, name, age, address, salary)
VALUES (1, 'Paul', 32, 'California', 2000.00),
       (2, 'Allen', 25, 'Texas', 1500.00),
       (3, 'Teddy', 23, 'Norway', 2000.00),
       (4, 'Mark', 25, 'Rich-Mond', 6500.00),
       (5, 'David', 27, 'Texas', 8500.00),
       (6, 'Kim', 22, 'South-Hall', 4500.00),
       (7, 'James', 24, 'Houston', 1000.00);
       
      
select * from company c;
select * from departments;

create table departments (
  ID INT primary key,
  dept varchar(50),
  emp_id int
)

INSERT INTO departments (id, dept, emp_id)
VALUES (1, 'IT Billing', 1),
       (2, 'Engineering', 2),
       (3, 'Finance', 7),
       (4, 'Engineering', 3),
       (5, 'Finance', 4),
       (6, 'Engineering', 5),
       (7, 'Finance', 6);

select * from company c
      
      
SELECT EMP_ID, NAME, DEPT FROM COMPANY INNER JOIN departments
   ON COMPANY.ID = departments.EMP_ID
   UNION
      SELECT EMP_ID, NAME, DEPT FROM COMPANY LEFT OUTER JOIN departments
         ON COMPANY.ID = departments.EMP_ID;
         
        

SELECT EMP_ID, NAME, DEPT FROM COMPANY INNER JOIN departments
   ON COMPANY.ID = departments.EMP_ID
   UNION ALL
      SELECT EMP_ID, NAME, DEPT FROM COMPANY LEFT OUTER JOIN departments
         ON COMPANY.ID = departments.EMP_ID;