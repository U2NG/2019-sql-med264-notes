select web1, web2, web3, web4
from SN7577;

select w*
from sn7577;

select *
from SN7577
limit 10;

select q1, q2, q3, q4, numage
from SN7577
limit 5;

select q1, q3, q4
from SN7577
where q1 > 2;

select q1, q3, q4
from SN7577
where q1 IN (7, 5, 6, 8)

select web1, web2, web3, numage
from SN7577
where web1 >= 0 and web2 in (0, 1) and web3 <> -1 and numage between 30 and 40;

select * 
from SN7577_nulls
Where numage is NULL;

SELECT * 
FROM SN7577_nulls
WHERE Q2 = 11;

select *
from SN7577_nulls
WHERE Q2 = -1;

SELECT * 
FROM SN7577_nulls
WHERE numage is NULL;

SELECT * 
FROM SN7577_nulls
WHERE numage IS NOT NULL;

SELECT daily1, daily2, daily3, daily4, daily5, daily6, daily7, daily8, daily9, daily10, 
daily11, daily12, daily13, daily14, daily15, daily16, daily17, daily18, daily19, daily20
daily21, daily22, daily23, daily24, daily25
FROM sn7577;

SELECT (daily1 + daily2 + daily3 + daily4 + daily5 + daily6 + daily7 + daily8 +
        daily9 + daily10 + daily11 + daily12 + daily13 + daily14 + daily15 +
        daily16 + daily17 + daily18 + daily19 + daily20 + daily21 + daily22 +
        daily23 + daily24 + daily25)
FROM SN7577;

SELECT (daily1 + daily2 + daily3 + daily4 + daily5 + daily6 + daily7 + daily8 +
        daily9 + daily10 + daily11 + daily12 + daily13 + daily14 + daily15 +
        daily16 + daily17 + daily18 + daily19 + daily20 + daily21 + daily22 +
        daily23 + daily24 + daily25) AS Total_dailies
FROM SN7577;

/* creating new columns  */
select numage,
	cast(numage as Integer)
from SN7577_Text;

select q5axv,
	NOT (substr(Q5axv, 1,2) = "no") as Q5axv_value
from SN7577_Text;

/* Exericise */
select q5axv,
	NOT (instr(Q5axv, 1,2) = "no") as Q5axv_value
from SN7577_Text;

select Q5axv,
			case Q5axv
					when "no null" then 0
					when "null" then 1
			end as Q5axv_bool
from sn7577_text;

SELECT numage ,
               case 
                   when numage between 18 and 24 then "18 - 24"
                   when numage between 25 and 34 then "25 - 34"
                   when numage between 35 and 44 then "35 - 44"
                   when numage between 45 and 54 then "45 - 54"
                   when numage between 55 and 59 then "55 - 59"
                   when numage between 60 and 64 then "60 - 64"
                   when numage          >= 65              then "65+"
                else
                    "Under age"
               end as numage_range
FROM SN7577;


/* aggregation built-in*/

select	
	min(numage),
	avg(numage),
	max(numage)
FROM sn7577;

/* distinct */
SELECT DISTINCT Q1,
	count(*) as Num_potential_voters
FROM SN7577_Text
GROUP BY Q1
ORDER by Q1;

/* having */
SELECT Q1, 
	sum(daily3) as Telegraph_reader
FROM SN7577
GROUP BY Q1
HAVING Telegraph_reader > 5;

SELECT Q1,
	sum(daily12) as mirror
from SN7577
GROUP bY Q1
HAVING mirror > 5;

/* creating tables */
CREATE TABLE Animials_ro
(		 Id_A Integer, 
		Name text
);

Create TABLE Animals_Eat
( 			Id_E Integer,
			Eats
);

INSERT INTO Animals (Id_A, Name)
 VALUES   (1, "Elephant"),
          (2, "Monkey"),
          (3, "Cat"),
          (4, "Dog"),
          (8, "Goat"),
          (10, "Pig"),
          (11, "Mouse")


INSERT INTO Animals_Eat 
 VALUES   (1, "Hay"),
          (3, "Fish"),
          (4, "Meat"),
          (6, "Goldfish Food"),
          (7, "Lettuse"),
          (8, "Flowers"),
          (10, "Anything")
	/* creating tables from other tables */	  
SELECT Q1,
       Q2,
       Q3,
       Sex,
       Age,
       Class
	   
Create Table SN7577_reduced AS
SELECT Q1,
       Q2,
       Q3,
       Sex,
       Age,
       Class
From SN7577;
	   
/* views */
Create view sn7577_reduced_2 AS
SELECT q1,
			q2,
			q3,
			Sex,
			Age,
			Class
FROM SN7577
	   
/* joins */

SELECT Q1,
       count(*) as how_many
FROM SN7577
GROUP BY Q1;

/* inner join */
SELECT quick.value,
			count(*) AS how_many
FROM SN7577 sal
JOIN Question1 quick
on quick.key = sal.Q1
GROUP BY sal.Q1;




/* Exercise */









