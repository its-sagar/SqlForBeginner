# SQL Solutions Repository

This repository contains solutions to various SQL questions, covering topics from **beginner** to **advanced** levels. Each solution is provided as a `.sql` file. You can find questions on topics like data selection, aggregation, joins, subqueries, and more.

## SQL QUESTIONS
1.  [IMDB Rating](#imdb-rating)

## QUERY SECTION
- [Beginner](#beginner)
- [Intermediate](#intermediate)
- [Advanced](#advanced)

## Beginner
Basic SQL questions covering topics like simple `SELECT` queries, `WHERE` clauses, `ORDER BY`, and basic aggregate functions.

- [Question 1](./sql_solutions/beginner/question1.sql): Write a query to select all records from the `employees` table.
- [Question 2](./sql_solutions/beginner/question2.sql): Write a query to find employees whose salary is above 5000.
  
## Intermediate
Intermediate-level SQL questions including `JOINs`, `GROUP BY`, `HAVING`, and more complex aggregates.

- [Question 1](./sql_solutions/intermediate/question1.sql): Write a query to find the total number of employees in each department.
- [Question 2](./sql_solutions/intermediate/question2.sql): Write a query to find the average salary of employees grouped by department.

## Advanced
Advanced SQL questions covering `subqueries`, `window functions`, `CTEs`, and performance optimizations.

- [Question 1](./sql_solutions/advanced/question1.sql): Write a query to find employees whose salary is in the top 10%.
- [Question 2](./sql_solutions/advanced/question2.sql): Write a query to rank employees by their performance score using window functions.

## Datasets

The datasets used for these SQL queries are provided in the [datasets](./datasets) directory. You can load them into your SQL environment to test the queries.

- `dataset1.csv`: Employee dataset
- `dataset2.csv`: Sales dataset

### Programmer

| PNAME     |	  DOB	    |	   DOJ   	| SEX	|   PROF1   |	   PROF2   |	 SALARY   |
|-----------|-----------|-----------|-----|-----------|------------|------------|
| ANAND   	|  04/21/66 |	 04/21/92	|  M	|  PASCAL	  |    BASIC	 |    3200    |
| ALIAF   	|  07/02/64 |	 11/13/90	|  M	|  CLIPPER	|    COBOL	 |    2800    |
| JULIANA	  |  07/02/64 |	 04/21/90	|  F	|  COBOL	  |    DBASE	 |    3000    |
| KAMALA	  |  10/30/68 |	 01/02/92	|  F	|  C	      |    DBASE	 |    2900    |
| MARY	    |  06/24/70 |	 02/01/91	|  F	|  C++	    |    ORACLE	 |    4500    |
| NELSON    |	 09/11/65	|  10/11/89 |	 M  |	 COBOL    |	   DBASE   |	  2500    |
| PARTICK   |	 11/10/65 |	 04/21/90 |	 M  |	 PASCAL   |	   CLIPPER |	  2800    |
| QADIR     |	 08/31/65 |	 04/21/91 |	 M	|  ASSEMBLY |	   C	     |    3000    |
| RAMESH	  |  05/03/67 |	 02/28/91	|  M  |	 PASCAL   |    DBASE   |	  3200    |
| REBECCA   |	 01/01/67 |	 12/01/90 |	 F  |  BASIC    |	   COBOL   |	  2500    |
| REMITHA   |	 12/02/69 |	 01/02/92 |	 F	|  PASCAL   |	   BASIC	 |    3600    |
| REVATHI   |	 12/02/69 |	 01/02/92 |	 F	|  PASCAL   |	   BASIC   |	  3700    |
| VIJAYA    |	 12/14/65 |	 05/02/92 |	 F	|  FOXPRO   |	   C       |	  3500    |



## How to Use

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/SQL-Solutions.git
    ```

2. Navigate to the directory:

    ```bash
    cd SQL-Solutions/sql_solutions
    ```

3. Load the datasets in your SQL database and run the `.sql` files as queries.

## Contributing

Feel free to contribute your own SQL solutions or improve the existing ones. Here's how:

1. Fork the repository.
2. Create a new branch for your feature or fix.
3. Submit a pull request with a description of the changes.

## License

This repository is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more details.
