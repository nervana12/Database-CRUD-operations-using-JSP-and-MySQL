# Database-CRUD-operations-using-JSP-and-MySQL.
A JSP application based on Java that accepts data from users and stores it in a local database where we will communicate and call to do some Aggregate Functions.

* The final project is to generate a JSP application based on Java:
  
![image](https://github.com/nervana12/Database-CRUD-operations-using-JSP-and-MySQL/assets/87612394/40fb1a36-db55-4df6-8c12-cc31f7902895)


Which accepts data from users and stores it in a local database, the following EER Diagram shows the structure of the relationships and the whole fields required:

![image](https://github.com/nervana12/Database-CRUD-operations-using-JSP-and-MySQL/assets/87612394/cc1ec395-e398-420e-b9b6-dc3b9aada7ca)


where I will communicate and call to do some Aggregate Functions:

![image](https://github.com/nervana12/Database-CRUD-operations-using-JSP-and-MySQL/assets/87612394/1c28258a-21d5-46e2-9862-8b2ff7c338e1)



* Some examples from MySQL Workbench after entering some data:

![image](https://github.com/nervana12/Database-CRUD-operations-using-JSP-and-MySQL/assets/87612394/cf13b673-0b42-495d-b9f4-b6bbb8797a0f)


## The project workflow
After the user enters the data and hits submit, an alert appears that redirects to the aggregates page:

![image](https://github.com/nervana12/Database-CRUD-operations-using-JSP-and-MySQL/assets/87612394/c9bc7c62-a5eb-416c-899e-26871a92e36b)


This redirects to aggregateFunctions.jsp where I make a connection with the database and do the function to display the result to the user:

For example:
To display the most common 3 courses, I used the SQL Statements:

![image](https://github.com/nervana12/Database-CRUD-operations-using-JSP-and-MySQL/assets/87612394/e803d5c8-00b2-494e-a3b7-99056b51c18b)


I included all the statements in the aggregateFunctions.jsp:

![image](https://github.com/nervana12/Database-CRUD-operations-using-JSP-and-MySQL/assets/87612394/bf2a5f8c-166d-4cad-97d6-575c0f75e0b0)

