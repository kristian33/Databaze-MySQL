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

SELECT sch.date AS Datum, l.position AS 'Vyučovací hodina', su.shortcut AS 'Předmět', t.first_name 'Jméno', t.last_name'Příjmení', cl.number_spec 'Učebna' 
FROM schedule sch
JOIN teachers t ON sch.id_teacher = t.id_teachers
JOIN classes cls ON sch.id_class = cls.id_class
JOIN subjects su ON sch.id_subject = su.id_subject
JOIN classroom cl ON sch.id_classroom = cl.id_classroom
JOIN lessons l ON sch.id_lesson = l.id_lesson
;

CREATE TABLE authors(
id_author int(11) NOT NULL AUTO_INCREMENT,
firstname varchar(255) NOT NULL,
lastname varchar(255) NOT NULL,
birthdate int(11) NOT NULL,
date_of_death int(255) NOT NULL,
description TEXT,

PRIMARY KEY (id_author)
);
---------------------------------------
CREATE TABLE books(
id_book int(11) NOT NULL AUTO_INCREMENT,
id_author int(11) NOT NULL,
id_publisher int(11) NOT NULL,
id_gendre int(11) NOT NULL,
title varchar(255) NOT NULL,
year int(255) NOT NULL,
description TEXT,

PRIMARY KEY (id_book)
);
---------------------------------------
CREATE TABLE publishers(
id_publisher int(11) NOT NULL AUTO_INCREMENT,
name varchar(255) NOT NULL,
description TEXT,

PRIMARY KEY (id_publisher)
);
---------------------------------------
CREATE TABLE genres(
id_genre int(11) NOT NULL AUTO_INCREMENT,
name varchar(255) NOT NULL,
description TEXT,

PRIMARY KEY (id_genre)
);
---------------------------------------


INSERT INTO books (
                      id_author,
                      id_publisher,
                      id_gendre,	
                      title,
                      year,
                      description)
VALUES (
2,
2,
2,
"Jméno větru",
"2017-01-01",
"A jo ahojky."
);

PROPOJOVÁNÍ KNIHOVNY
SELECT boo.id_book AS "Číslo knihy", boo.title AS "Titul", CONCAT(a.firstname, " ", a.lastname) AS "Jméno a Příjmení" , pub.name AS "Vydavatel", gen.name AS "Žánr"
FROM books boo
JOIN authors a ON boo.id_author = a.id_author
JOIN genres gen ON boo.id_gendre = gen.id_genre
JOIN publishers pub ON boo.id_publisher = pub.id_publisher

PROPOJOVÁNÍ OSSP_WARS
SELECT u_t.name AS "Název jednotky", ch.name AS "Jméno charakteru", cl.name AS "Jméno classy", p.nickname AS "Přezdívka", g.name AS "Jméno guildy"
FROM units u
JOIN units_types u_t ON u_t.id_units_types = u.id_unit_type
LEFT JOIN characters ch ON ch.id_character = u.id_character
LEFT JOIN classes cl ON cl.id_class = ch.id_class
LEFT JOIN players p ON ch.id_player = p.id_player
LEFT JOIN guilds g ON g.id_guild = p.id_guild
;