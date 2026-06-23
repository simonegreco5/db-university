SELECT *
FROM `students`
WHERE `date_of_birth` LIKE '1990-%';

SELECT *
FROM `courses`
WHERE `cfu` > 10;

SELECT *
FROM `students`
WHERE TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATE()) > 30;

SELECT *
FROM `courses`
WHERE `period` LIKE 'I semestre' 
AND `year` LIKE 1;

SELECT *
FROM `exams`
WHERE `hour` > '14:00%'
AND `date` = '2020-06-20';

SELECT *
FROM `degrees`
WHERE `name` LIKE 'Corso di Laurea Magistrale%'; 

SELECT *
FROM `departments`;

SELECT * 
FROM `teachers`
WHERE `phone` IS NULL;

SELECT COUNT(id)
FROM `students`
GROUP BY `enrolment_date`;

SELECT COUNT(id) AS `teacher_same_office`, `office_address`
FROM `teachers`
GROUP BY `office_address`;