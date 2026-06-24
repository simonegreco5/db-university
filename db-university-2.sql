# 1. Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT `students`.`name` AS `studente`, `degrees`.`name` AS `degree`, `departments`.`name` AS `department`
FROM `students`
INNER JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
INNER JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`;


# 2. Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT `degrees`.`name` AS `degree`, `departments`.`name` AS `department`, `degrees`.`website`, `degrees`.`email`, `departments`.`address`
FROM `degrees`
INNER JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
WHERE `degrees`.`level` = "magistrale" AND `departments`.`name` = "Dipartimento di Neuroscienze";


# 3. Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT `courses`.`name` AS `course`, `courses`.`period`, `courses`.`year`, `teachers`.`id`, `teachers`.`name`, `teachers`.`surname`
FROM `courses`
INNER JOIN `course_teacher` ON `course_teacher`.`course_id` = `courses`.`id`
INNER JOIN `teachers` ON `course_teacher`.`teacher_id` = `teachers`.`id`
WHERE `teachers`.`name` = "Fulvio" AND `teachers`.`surname` = "Amato";


# 4. Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, 
# in ordine alfabetico per cognome e nome
SELECT `students`.`surname`, `students`.`name`, `students`.`email`, `degrees`.`name` AS `degree`, `degrees`.`level`, `departments`.`name` AS `department`
FROM `students`
INNER JOIN `degrees` ON `students`.`degree_id` = `degrees`.`id`
INNER JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
ORDER BY `students`.`surname` ASC, `students`.`name` ASC;


# 5. Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT `degrees`.`name` AS `degree`, `degrees`.`level`, `courses`.`name` AS `course`, `courses`.`period`,
`courses`.`year`, `courses`.`cfu`, `teachers`.`name` AS `teacher_name`, `teachers`.`surname` AS `teacher_surname`
FROM `course_teacher`
INNER JOIN `courses` ON `course_teacher`.`course_id` = `courses`.`id`
INNER JOIN `teachers` ON `course_teacher`.`teacher_id` = `teachers`.`id`
INNER JOIN `degrees` ON `courses`.`degree_id` = `degrees`.`id`;


# 6. Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT `teachers`.`name` AS `teacher_name`, `teachers`.`surname` AS `teacher_surname`, `departments`.`name` AS `departments`, `degrees`.`name` AS `degree`, `degrees`.`level`
FROM `course_teacher`
INNER JOIN `teachers` ON `course_teacher`.`teacher_id` = `teachers`.`id`
INNER JOIN `courses` ON `course_teacher`.`course_id` = `courses`.`id`
INNER JOIN `degrees` ON `courses`.`degree_id` = `degrees`.`id`
INNER JOIN `departments` ON `degrees`.`department_id` = `departments`.`id`
WHERE `departments`.`name` = "Dipartimento di Matematica";


# 7. BONUS: Selezionare per ogni studente il numero di tentativi sostenuti per ogni esame, stampando anche il voto massimo. Successivamente,
# filtrare i tentativi con voto minimo 18.