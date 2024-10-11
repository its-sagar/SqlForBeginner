<!-- Add this ID at the top of your README -->
<a name="readme-top"></a>

# SQL Solutions Repository 

This repository contains solutions to various SQL questions, covering topics from **beginner** to **advanced** levels. Each solution is provided as a `.sql` file. You can find questions on topics like data selection, aggregation, joins, subqueries, and more. 



## SQL QUESTIONS
1.  [Find out the selling cost average for packages developed in PASCAL](#find-out-the-selling-cost-average-for-packages-developed-in-pascal)
2.  [Display the Names and Ages of all the Programmers](#display-the-names-and-ages-of-all-the-programmers)
3.  [Display the Names of those who have done the DAP Course](#display-the-names-of-those-who-have-done-the-dap-course)
4.  [What is the HIGHEST number of copies sold by a package](#what-is-the-highest-number-of-copies-sold-by-a-package)
5.  [Display the NAMES AND DATE OF BIRTH of all programmers born in JANUARY](#display-the-names-and-date-of-birth-of-all-programmers-born-in-january)
6.  [Display the LOWEST course fee](#display-the-lowest-course-fee)
7.  [HOW MANY programmers have done PGDCA Course](#how-many-programmers-have-done-pgdca-course)
8.  [How much revenue has been earned thru sale of packages developed in C](#how-much-revenue-has-been-earned-thru-sale-of-packages-developed-in-c)
9.  [Display the details of the software develpoed by RAMESH](#display-the-details-of-the-software-develpoed-by-ramesh)
10.  [HOW MANY programmers studied at SABHARI](#how-many-programmers-studied-at-sabhari)
11.  [Display the Details of PACKAGES whose sales CROSSED the 2000 mark](#display-the-details-of-packages-whose-sales-crossed-the-2000-mark)
12.  [Find out he NUMBER OF COPIES which should be sold in order to recover the DEVELOPMENT](#find-out-he-number-of-copies-which-should-be-sold-in-order-to-recover-the-development)
13.  [Display the details of packages for WHICH developments cost has been recovered](#display-the-details-of-packages-for-which-developments-cost-has-been-recovered)
14.  [What is the price of the costliest software developed in BASIC](#what-is-the-price-of-the-costliest-software-developed-in-basic)
15.  [HOW MANY packages were developed in DBASE](#how-many-packages-were-developed-in-dbase)
16.  [HOW MANY programmers studied at PRAGATHI](#how-many-programmers-studied-at-pragathi)
17.  [HOW MANY programmers paid 5000 to 10000 for their course](#how-many-programmers-paid-5000-to-10000-for-their-course)
18.  [What is the Average course fee](#what-is-the-average-course-fee)
19.  [Display the DETAILS of programmers knowing C](#display-the-details-of-programmers-knowing-c)
20.  [HOW  MANY programmers  know either COBOL or PASCAL](#how--many-programmers--know-either-cobol-or-pascal)
21.  [HOW  MANY programmers DO NOT know PASCAL and C](#how--many-programmers-do-not-know-pascal-and-c)
22.  [HOW old is the OLDEST male programmer](#how-old-is-the-oldest-male-programmer)
23.  [What is the AVERAGE age of female Programmers](#what-is-the-average-age-of-female-programmers)
24.  [CALCULATE the experience in Years for each programmers and display along with the names in DESCENDING  order](#calculate-the-experience-in-years-for-each-programmers-and-display-along-with-the-names-in-descending--order)
25.  [WHO are the Programmers who celebrate their BIRTHDAY during the CURRENT MONTH](#who-are-the-programmers-who-celebrate-their-birthday-during-the-current-month)
26.  [How many male programmers are there](#how-many-male-programmers-are-there)
27.  [WHAT are the languages known by the male programmers](#what-are-the-languages-known-by-the-male-programmers)
28.  [What is the average salary](#what-is-the-average-salary)
29.  [How many people draw 2000 to 4000](#how-many-people-draw-2000-to-4000)
30.  [Display the details of those who do not know clipper cobol and pascal](#display-the-details-of-those-who-do-not-know-clipper-cobol-and-pascal)





<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

## Section
- [Beginner](#beginner)
- [Intermediate](#intermediate)
- [Advanced](#advanced)

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>


## Beginner
Basic SQL questions covering topics like simple `SELECT` queries, `WHERE` clauses, `ORDER BY`, and basic aggregate functions.


### Find out the selling cost average for packages developed in PASCAL 

- [Question 1](./sql_solutions/Beginner/question1.sql): Find out the selling cost average for packages developed in PASCAL.

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select dev_in, avg(scost) from software
where dev_in = "pascal"
group by dev_in;
```

### Display the Names and Ages of all the Programmers

- [Question 2](./sql_solutions/Beginner/question2.sql): Display the Names and Ages of all the Programmers.
<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>
  
```sql
select pnmae, date_format(from_days(datediff(now(), dob)), '%d-%m-%y') as age from programmer;
```
### Display the Names of those who have done the DAP Course

- [Question 3](./sql_solutions/Beginner/question3.sql): Display the Names of those who have done the DAP Course
<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>
  
```sql
select pname from studies
where course = 'DAP';
```
### What is the HIGHEST number of copies sold by a package

- [Question 4](./sql_solutions/Beginner/question4.sql): What is the HIGHEST number of copies sold by a package

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select * from software
order by sold DESC
limit 1;
```
### Display the NAMES AND DATE OF BIRTH of all programmers born in JANUARY

- [Question 5](./sql_solutions/Beginner/question5.sql): Display the NAMES AND DATE OF BIRTH of all programmers born in JANUARY.

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql

select pnmae, dob from  programmer
where dob like '_____01___';
```

### Display the LOWEST course fee

- [Question 6](./sql_solutions/Beginner/question6.sql): Display the LOWEST course fee.

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select ccost as fee from studies
order by ccost
limit 1;
```

##  HOW MANY programmers have done PGDCA Course

- [Question 7](./sql_solutions/Beginner/question7.sql):  HOW MANY programmers have done PGDCA Course

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select count(*) as No_of_Programmer from studies
where course = "PGDCA";
```

## How much revenue has been earned thru sale of packages developed in C


- [Question 8](./sql_solutions/Beginner/question8.sql): How much revenue has been earned thru’ sale of packages developed in C

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
SELECT SUM(scost * sold) AS total_revenue
FROM software
WHERE dev_in = 'C';
```

##  Display the details of the software develpoed by RAMESH

- [Question 9](./sql_solutions/Beginner/question9.sql): Display the details of the software develpoed by RAMESH

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select title from software
where pname = 'RAMESH';
```

##  HOW MANY programmers studied at SABHARI

- [Question 10](./sql_solutions/Beginner/question10.sql):  HOW MANY programmers studied at SABHARI

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select count(*) as No_of_students from studies
 where splace = 'SABHARI';
```

## Display the Details of PACKAGES whose sales CROSSED the 2000 mark.

- [Question 11](./sql_solutions/Beginner/question11.sql): Display the Details of PACKAGES whose sales CROSSED the 2000 mark.

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
SELECT *
FROM software
WHERE (scost * sold) > 2000;
```

##  Find out he NUMBER OF COPIES which should be sold in order to recover the DEVELOPMENT

- [Question 12](./sql_solutions/Beginner/question12.sql):  Find out he NUMBER OF COPIES which should be sold in order to recover the DEVELOPMENT

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select *, ceil(dcost/scost) as No_of_copies 
from software;
```

## Display the details of packages for WHICH developments cost has been recovered

- [Question 13](./sql_solutions/Beginner/question13.sql): Display the details of packages for WHICH developments cost has been recovered

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select * from software
where (scost*sold) > dcost;
```

##  What is the price of the costliest software developed in BASIC.

- [Question 14](./sql_solutions/Beginner/question14.sql): What is the price of the costliest software developed in BASIC.

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select dcost
from software
where dev_in = "basic"
order by dcost desc
limit 1;
```

##  HOW MANY packages were developed in DBASE.

- [Question 15](./sql_solutions/Beginner/question15.sql): HOW MANY packages were developed in DBASE.


<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
SELECT COUNT(*) AS total_packages
FROM software
WHERE dev_in = 'DBASE';
```

##  HOW MANY programmers studied at PRAGATHI.

- [Question 16](./sql_solutions/Beginner/question16.sql): HOW MANY programmers studied at PRAGATHI.

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select count(*) as NO_of_Programs from studies
where splace = 'PRAGATHI';
```

##  HOW MANY programmers paid 5000 to 10000 for their course

- [Question 17](./sql_solutions/Beginner/question17.sql): HOW MANY programmers paid 5000 to 10000 for their course

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select count(*) as No_of_programmers from studies
where ccost between 5000 and 10000;
```

##  What is the Average course fee.

- [Question 18](./sql_solutions/Beginner/question18.sql): What is the Average course fee.

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select sum(ccost)/count(*) as Avg_course_fee from studies;
```


##  Display the DETAILS of programmers knowing C.

- [Question 19](./sql_solutions/Beginner/question19.sql): Display the DETAILS of programmers knowing C.

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select * from programmer
where prof1 = 'c' or prof2 = 'c';
```

## HOW  MANY programmers  know either COBOL or PASCAL

- [Question 20](./sql_solutions/Beginner/question20.sql): HOW  MANY programmers  know either COBOL or PASCAL

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select * from programmer
where prof1 = "PASCAL" or prof1 = "COBOL" or prof2 = "PASCAL" or prof2 = "COBOL";
```

##  HOW  MANY programmers DO NOT know PASCAL and C

- [Question 21](./sql_solutions/Beginner/question21.sql):  HOW  MANY programmers DON’T know PASCAL & C

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select count(*) as No_of_Programmer from programmer
where prof1 != "PASCAL" and prof1 != "C" and prof2 != "PASCAL" and prof2 != "C";
```

## HOW old is the OLDEST male programmer

- [Question 22](./sql_solutions/Beginner/question22.sql): HOW old is the OLDEST male programmer

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select date_format(from_days(datediff(now(), dob)), '%y') as Age_of_Oldest_Male_programmer from programmer
where sex = 'M'
order by Age_of_oldest_Male_programmer desc
limit 1;
```

##  What is the AVERAGE age of female Programmers.

</div>
- [Question 23](./sql_solutions/Beginner/question23.sql):  What is the AVERAGE age of female Programmers.

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select avg(date_format(from_days(datediff(now(), dob)), '%y')) as Avg_age from programmer
where sex = 'F';
```

##  CALCULATE the experience in Years for each programmers and display along with the names in DESCENDING  order.

- [Question 24](./sql_solutions/Beginner/question24.sql):  CALCULATE the experience in Years for each programmers and display along with the names, in DESCENDING  order.

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select pnmae, date_format(from_days(datediff(now(), doj)), '%y') as Experience from programmer
order by Experience desc;
```

##  WHO are the Programmers who celebrate their BIRTHDAY during the CURRENT MONTH.

- [Question 25](./sql_solutions/Beginner/question25.sql):  WHO are the Programmers who celebrate their BIRTHDAY’S during the CURRENT MONTH.

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select * from programmer
where month(dob) = month(curdate());
```

##  How many male programmers are there.

- [Question 26](./sql_solutions/Beginner/question26.sql): How many male programmers are there.

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select count(*) as No_of_male_programmers from programmer
where sex = 'M';
```

##  WHAT are the languages known by the male programmers

- [Question 27](./sql_solutions/Beginner/question27.sql):  WHAT are the languages known by the male programmers

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
SELECT DISTINCT prof1 AS language
FROM programmer
WHERE sex = 'M'
UNION
SELECT DISTINCT prof2 AS language
FROM programmer
WHERE sex = 'M';
```

##  What is the average salary.

- [Question 28](./sql_solutions/Beginner/question28.sql): What is the average salary.

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
 select avg(salary) as Avg_salary from programmer;
```

##  How many people draw 2000 to 4000.

- [Question 29](./sql_solutions/Beginner/question29.sql): How many people draw 2000 to 4000.

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select count(*) as No_of_Programmer from programmer
where salary between 2000 and 4000;
```
##  Display the details of those who do not know clipper cobol and pascal.

- [Question 30](./sql_solutions/Beginner/question30.sql): Display the details of those who don’t know clipper , cobol and pascal.

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

```sql
select * from programmer
where prof1 not in ("clipper", "cobol", "pascal") and prof2 not in ("clipper", "cobol", "pascal");
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

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

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

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

## Contributing

Feel free to contribute your own SQL solutions or improve the existing ones. Here's how:

1. Fork the repository.
2. Create a new branch for your feature or fix.
3. Submit a pull request with a description of the changes.

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>

## License

This repository is licensed under the MIT License. See the [LICENSE](./LICENSE) file for more details.

<div align="right">
    <a href="#readme-top">
        <img width="20" src="./circle-up.svg" alt="" />
    </a>
</div>
