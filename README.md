<!-- Add this ID at the top of your README -->
<a name="readme-top"></a>

# Your Project Title
Your content goes here...

<!-- Sticky Back to Top Button -->
<div id="top" style="position: fixed; bottom: 20px; right: 20px;">
    <a href="#readme-top">
        <img width="35" src="https://github.com/FortAwesome/Font-Awesome/blob/6.x/svgs/solid/circle-up.svg" alt="Back to Top" title="Back to Top">
    </a>
</div>

<!-- Rest of your README content -->

<!-- Add this ID at the top of your README -->
<a name="readme-top"></a>

# Your Project Title
Your content goes here...

<!-- Alternative Sticky Back to Top Button -->
<div id="top" style="position: fixed; bottom: 20px; right: 20px;">
    <a href="#readme-top">
        <img width="40" src="https://github.com/FortAwesome/Font-Awesome/blob/6.x/svgs/solid/arrow-circle-up.svg" alt="Back to Top" title="Back to Top">
    </a>
</div>

<div align="right">
    <a href="#readme-top">
        <img src="https://img.shields.io/badge/Back_to_top-⬆️-blue" alt="Back to top" />
    </a>
</div>

# SQL Solutions Repository

This repository contains solutions to various SQL questions, covering topics from **beginner** to **advanced** levels. Each solution is provided as a `.sql` file. You can find questions on topics like data selection, aggregation, joins, subqueries, and more.

## SQL QUESTIONS
1.  [Find out the selling cost average for packages developed in PASCAL](#find-out-the-selling-cost-average-for-packages-developed-in-pascal)
2.  [Display the Names and Ages of all the Programmers](#display-the-names-and-ages-of-all-the-programmers)
3.  [Display the Names of those who have done the DAP Course](#display-the-names-of-those-who-have-done-the-dap-course)
4.  [What is the HIGHEST number of copies sold by a package](#what-is-the-highest-number-of-copies-sold-by-a-package)
5.  [Display the NAMES AND DATE OF BIRTH of all programmers born in JANUARY](#display-the-names-and-date-of-birth-of-all-programmers-born-in-january)
6.  [Display the LOWEST course fee](#display-the-lowest-course-fee)


## Section
- [Beginner](#beginner)
- [Intermediate](#intermediate)
- [Advanced](#advanced)

## Beginner
Basic SQL questions covering topics like simple `SELECT` queries, `WHERE` clauses, `ORDER BY`, and basic aggregate functions.



### Find out the selling cost average for packages developed in PASCAL 
<div align="right">
    <a href="#readme-top">
        <img src="https://img.shields.io/badge/Back_to_top-⬆️-blue" alt="Back to top" />
    </a>
</div>

- [Question 1](./sql_solutions/Beginner/question1.sql): Find out the selling cost average for packages developed in PASCAL.
```sql
select dev_in, avg(scost) from software
where dev_in = "pascal"
group by dev_in;
```
### Display the Names and Ages of all the Programmers

- [Question 2](./sql_solutions/Beginner/question2.sql): Display the Names and Ages of all the Programmers.
  
```sql
select pnmae, date_format(from_days(datediff(now(), dob)), '%d-%m-%y') as age from programmer;
```
### Display the Names of those who have done the DAP Course

- [Question 3](./sql_solutions/Beginner/question3.sql): Display the Names of those who have done the DAP Course
  
```sql
select pname from studies
where course = 'DAP';
```
### What is the HIGHEST number of copies sold by a package

- [Question 4](./sql_solutions/Beginner/question4.sql): What is the HIGHEST number of copies sold by a package

```sql
select * from software
order by sold DESC
limit 1;
```
### Display the NAMES AND DATE OF BIRTH of all programmers born in JANUARY

- [Question 5](./sql_solutions/Beginner/question5.sql): Display the NAMES AND DATE OF BIRTH of all programmers born in JANUARY.

```sql

select pnmae, dob from  programmer
where dob like '_____01___';
```

### Display the LOWEST course fee

- [Question 6](./sql_solutions/Beginner/question6.sql): Display the LOWEST course fee.
```sql
select ccost as fee from studies
order by ccost
limit 1;
```



















  
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

### PROGRAMMER

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

### STUDIES

|  PNAME    |   SPLACE	 |    COURSE   |	 CCOST  |
|-----------|------------|-------------|----------|
| ANAND     |	SABHARI	   |  PGDCA	     |  4500    |
| ALIAF	    | COIT	     |  DCA	       |  7200    |
| JULIANA	  | BITS	     |  MCA      	 |  22000   |
| KAMALA    |	PRAGATHI	 |  DCP	       |  5000    |
| MARY	    | SABHARI    |	PGDCA      |  4500    |
| NELSON	  | PRAGATHI	 |  DAP	       |  6200    |
| PARTICK	  | PRAGATHI	 |  DCAP	     |  5200    |
| QADIR	    | APPLE	     |  HDCP	     |  14000   |
| RAMESH	  | SABHARI	   |  PGDCA	     |  4500    |
| REBECCA   |	BRILLIANT	 |  DCA&P	     |  11000   |
| REMITHA   | BDPS	     |  DCS	       |  6000    |
| REVATHI	  | SABHARI    |	DCP	       |  5000    |
| VIJAYA	  | BDPS	     |  DCA	       |  48000   |

### SOFTWARE

| PNAME	   | TITLE	            | 	DEV_IN	 | DCOST	  |  SCOST	 | 	SOLD  |
|----------|--------------------|------------|----------|----------|--------|
| ANAND	   | PHRACHUTES	        | 	BASIC    |	6000	  |  400		 |  43    |
| ANAND	   | VIDEO TITLING PACK	| 	PASCAL	 |  16000	  |  7500	   | 	9     |
| JULIANA	 | INVENTORY CONTROL	|   COBOL		 |  3500		|  3000		 |  0     |
| KAMALA	 | PAYROLL	PACKAGE	  | 	DBASE	   |  20000		|  9000		 |  7     |
| MARY	 	 | FINANCIAL ACCOUNT  | 	ORACLE	 | 	85000	  |  18000	 | 	4     |
| MARY		 | CODE GENERATOR		  |   C	       | 	20000		|  4500		 |  23    |
| PARTICK	 | READ ME		        |   C++		   |  1200		|  300		 |  84    |
| QADIR		 | BOMBS AWAY	        | 	ASSEMBLY |  5000		|  750		 |  11    | 
| QADIR		 | VACCINES		        |   C		     |  3400		|  1900		 |  21    |
| RAMESH	 | HOTEL MANAGEMENT	  | 	DBASE    |	35000 	|  12000	 | 	4     |
| RAMESH	 | DEAD LEE		        |   PASCAL	 | 	4500		|  600		 |  73    |
| REMITHA	 | PC UTILITIES		    |   C	       | 	5000		|  725		 |  51    |
| REMITHA	 | TRS HELP PACKAGE		| 	ASSEMBLY |  6000		|  2500		 |  6     |
| REVATHI	 | HOSPITAL MANAGEMENT| 	PASCAL	 |  75000	  |  1100.00 |  2     |
| REVATHI	 | QUIZ MASTER		    |  BASIC		 |  2100		|  3200.00 |  15    |


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


<!-- Back to top button -->
<div align="right">
    <a href="#readme-top"><img src="https://img.shields.io/badge/Back%20to%20Top-%E2%86%A9-blue" alt="Back to Top"/></a>
</div>

<!-- Add this ID at the top of your README -->
<a name="readme-top"></a>

# Your Project Title
Rest of your README content goes here...


<!-- Add this ID at the top of your README -->
<a name="readme-top"></a>

# Your Project Title
Your content goes here...

<!-- Sticky Back to Top Button -->
<div id="top" style="position: fixed; bottom: 20px; right: 20px;">
    <a href="#readme-top">
        <img width="35" src="https://github.com/FortAwesome/Font-Awesome/blob/6.x/svgs/solid/circle-up.svg" alt="Back to Top" title="Back to Top">
    </a>
</div>

<!-- Rest of your README content -->
