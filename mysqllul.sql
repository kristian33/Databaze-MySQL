Informace pro tabulku pro studenty
INSERT INTO students (id_student,
                      firstname,
                      lastname,
                      adress,
                      city,
                      birthdate,
                      description)
VALUES (
 "Matěj",
 "Kneifl",
 "Křečhoř 33",
 "Kolín",
 "31.1.2002",
 "Student OSSPM"
);
---------------------------------------
Informace pro tabulku pro učitele
INSERT INTO teachers (id_teacher,
                      firstname,
                      lastname,
                      adress,
                      city,
                      birthdate,
                      description)
VALUES (
 "Martin",
 "Kokeš",
 "Komenského 340",
 "Kolín",
 "14.7.1989",
 "učitel DB."
);
---------------------------------------
informace pro tabulku pro předměty
INSERT INTO subjects (id_subject,
                      name,
                      description,
                      shortcut)
VALUES (
 "Algoritmizace",
 "Učí se o algoritmech.",
 "Ag",
);
---------------------------------------
Informace pro tabulku pro třídy
INSERT INTO classrooms (number,
                        seats_count,
                        location)
VALUES (
 "10",
 "30",
 "2. Budova"
);
---------------------------------------
Informace pro tabulku pro rozvrh
INSERT INTO schedule(
id_teacher,
id_subject,
id_lesson,
id_classroom,
id_class,
description)

VALUES (
1,
5,
5,
1,
3,
"Toto je hodina Značkovacích jazyků"
);
---------------------------------------
Vypočítání všech dostupných sedacích míst na každé budově zvlášť. 
SELECT SUM(seats_count) AS pocet_mist
FROM classrooms
GROUP BY location;
---------------------------------------
Vypočítání kolik má daný učitel celkem předmětů
SELECT guarantor, COUNT(*) AS Celkem_predmetu
FROM subjects
GROUP BY guarantor;
---------------------------------------
Vybrání předmětu podle abecedy
SELECT *
FROM subjects
ORDER BY name ASC(vzestupně)/DESC(Sestupně ;
---------------------------------------
Kdyz se zmeni ucitel
UPDATE subjects
SET id_gurantor = 4
WHERE id_gurantor = 99
---------------------------------------
Vybrání všech studentů s narozením 2000-01-01
SELECT * FROM students
WHERE birthdate >= "2000-01-01"
---------------------------------------
Mazání vse co ma firstname = Matej
DELETE FROM students
WHERE firstname LIKE "Matej";
---------------------------------------
Tvorba tabulky obecně...
CREATE TABLE tablename (
  name varchar(255),
  birthdate date
);
---------------------------------------
Tvorba tabulky pro třídy
CREATE TABLE classrooms (
id_classroom int AUTO_INCREMENT,
number varchar(255),
seats_count int,
location varchar(255)
);
---------------------------------------
CREATE TABLE schedule(
id_schedule int(11) NOT NULL AUTO_INCREMENT,
id_teacher int(11) NOT NULL,
id_class int(11) NOT NULL,
id_classroom int(11) NOT NULL,
id_subject int(11) NOT NULL,
id_lesson int(11) NOT NULL,
description TEXT,

PRIMARY KEY (id_schedule)
);
---------------------------------------
CREATE TABLE lessons (id_lesson int(11) NOT NULL AUTO_INCREMENT,
                      position int(11) NOT NULL,
                      start_time TIME(0) NOT NULL,
                      end_time TIME(0) NOT NULL,
                      PRIMARY KEY (id_lesson)
); 
---------------------------------------
Propojení tabulek
SELECT * 
FROM schedule sch
JOIN teachers t ON sch.id_teacher = t.id_teacher
JOIN classes cls ON sch.id_class = cls.id_class
JOIN classroom clsr ON sch.id_classroom = clsr.id_classroom
JOIN subject su ON sch.id_subject = su.id_subject
JOIN lesson le ON sch.id_lesson = le.id_lesson
---------------------------------------
Konečné propojení tabulek
#      2019-01-01                2                                    Da                   Lenka Sklenářová            19
SELECT  sch.date AS datum, le.position AS Vyučovcí_hodina, su.shortcut AS Předmět,  t.firstname, t.lastname, clsr.number AS Místnost
FROM schedule sch
JOIN teachers t ON sch.id_teacher = t.id_teacher
JOIN classes cls ON sch.id_class = cls.id_class
JOIN classrooms clsr ON sch.id_classroom = clsr.id_classroom
JOIN subjects su ON sch.id_subject = su.id_subjects
JOIN lessons le ON sch.id_lesson = le.id_lesson
;
---------------------------------------
-- VKLÁDÁNÍ HODIN DO LESSONS --
INSERT INTO lessons (
                      position,
                      start_time,
                      end_time)
VALUES (
0,
"7:00",
"7:45"
);

INSERT INTO lessons (
                      position,
                      start_time,
                      end_time)
VALUES (
1,
"7:50",
"8:35"
);

INSERT INTO lessons (
                      position,
                      start_time,
                      end_time)
VALUES (
2,
"8:45",
"9:30"
);

INSERT INTO lessons (
                      position,
                      start_time,
                      end_time)
VALUES (
3,
"9:40",
"10:25"
);

INSERT INTO lessons (
                      position,
                      start_time,
                      end_time)
VALUES (
4,
"10:45",
"11:30"
);

INSERT INTO lessons (
                      position,
                      start_time,
                      end_time)
VALUES (
5,
"11:40",
"12:25"
);

INSERT INTO lessons (
                      position,
                      start_time,
                      end_time)
VALUES (
6,
"12:55",
"13:40"
);

INSERT INTO lessons (
                      position,
                      start_time,
                      end_time)
VALUES (
7,
"13:50",
"14:35"
);

INSERT INTO lessons (
                      position,
                      start_time,
                      end_time)
VALUES (
8,
"14:45",
"15:30"
);

INSERT INTO lessons (
                      position,
                      start_time,
                      end_time)
VALUES (
9,
"15:35",
"16:20"
);

INSERT INTO lessons (
                      position,
                      start_time,
                      end_time)
VALUES (
10,
"16:25",
"17:10"
);