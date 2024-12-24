create table groups (
                        id serial primary key,
                        group_name VARCHAR
);

create table courses (
                         id serial primary key,
                         course_name varchar,
                         start_date DATE,
                         group_id int references groups(id)
);

create table students (
                          id serial primary key,
                          first_name varchar,
                          last_name Varchar,
                          gender varchar,
                          email varchar,
                          date_of_birth date,
                          group_id int references  groups(id)
);

create table mentors (
                         id serial primary key,
                         first_name varchar,
                         last_name Varchar,
                         gender varchar,
                         specialization varchar,
                         experience int,
                         course_id int references courses(id)
);

create table lessons (
                         id serial primary key,
                         lesson_name varchar,
                         course_id int references courses(id)
);

ALTER TABLE mentors add column email varchar;

insert into groups(group_name)
values ('Java 9'),
       ('JS 9'),
       ('Java 12'),
       ('JS 12'),
       ('Java 13'),
       ('JS 13');
insert into courses (course_name, start_date, group_id)
values ('Java 9 core', '2023-01-03', 1),
       ('JS 9 core', '2023-01-03', 2),
       ('Java 12 core', '2023-10-03', 3),
       ('JS 12 core', '2023-10-03', 4),
       ('Java 13 core', '2024-01-08', 5),
       ('JS 13 core', '2024-01-08', 6),
       ('Technical English','2024-01-08', 1),
       ('Python','2024-01-08', 6);
insert into lessons(lesson_name, course_id)
values ('Loops', 1),
       ('HTML', 2),
       ('Methods', 3),
       ('CSS', 4),
       ('Collections', 5),
       ('React', 6);
insert into mentors (first_name, last_name, gender, email, specialization, experience, course_id)
values ('Datka', 'Mamatzhanova', 'Female', 'datka@gmail.com', 'java', 2, 1),
       ('Ulan', 'Kubanychbekov', 'Male', 'ulan@gmail.com', 'java', 3, 3),
       ('Aizat', 'Duisheeva', 'Female', 'aizat@gmail.com', 'java', 1, 5),
       ('Elizar', 'Aitbek uulu', 'Male', 'elizar@gmail.com', 'js', 1, 2),
       ('Aziat', 'Abdimalikov', 'Male', 'aziat@gmail.com', 'js', 1, 4),
       ('Alisher', 'Jumanov', 'Male', 'alisher@gmail.com', 'js', 1, 6);

insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (1, 'Knox', 'Jacquot', 'kjacquot0@addthis.com', 'Male', '2004-04-12', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (2, 'Dewain', 'Hunt', 'dhunt1@trellian.com', 'Male', '2003-04-13', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (3, 'Jarrett', 'Iianon', 'jiianon2@chronoengine.com', 'Male', '2005-05-05', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (4, 'Merry', 'Niezen', 'mniezen3@canalblog.com', 'Male', '1999-04-03', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (5, 'Nollie', 'Pellingar', 'npellingar4@usgs.gov', 'Female', '2003-05-06', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (6, 'Eveleen', 'Moukes', 'emoukes5@amazon.co.uk', 'Female', '1996-03-03', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (7, 'Nollie', 'Becker', 'nbecker6@is.gd', 'Male', '1994-02-04', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (8, 'Nadine', 'Robilart', 'nrobilart7@walmart.com', 'Female', '2000-06-06', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (9, 'Dex', 'Prugel', 'dprugel8@arizona.edu', 'Male', '2001-03-04', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (10, 'Phyllis', 'Baroche', 'pbaroche9@state.gov', 'Female', '2004-04-04', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (11, 'Bernadette', 'Dulson', 'bdulsona@altervista.org', 'Female', '2004-04-04', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (12, 'Earlie', 'Pledge', 'epledgeb@jimdo.com', 'Male', '1993-12-04', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (13, 'Luigi', 'Standish', 'lstandishc@army.mil', 'Male', '1998-11-13', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (14, 'Cody', 'McLeoid', 'cmcleoidd@yahoo.com', 'Male', '2000-10-10', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (15, 'Heall', 'Dolligon', 'hdolligone@squidoo.com', 'Male', '2003-09-09', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (16, 'Isiahi', 'Somerscales', 'isomerscalesf@eepurl.com', 'Male', '1995-05-03', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (17, 'Matthieu', 'Spolton', 'mspoltong@so-net.ne.jp', 'Male', '1995-03-30', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (18, 'Esme', 'Brockway', 'ebrockwayh@hexun.com', 'Female', '1997-08-08', 6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (19, 'Erroll', 'Cutforth', 'ecutforthi@wisc.edu', 'Male', '2002-03-30', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (20, 'Gordon', 'Thieme', 'gthiemej@japanpost.jp', 'Male', '1994-04-04', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (21, 'Dom', 'Arnecke', 'darneckek@google.fr', 'Male', '2000-03-03', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (22, 'Raven', 'Yarrall', 'ryarralll@vimeo.com', 'Female', '2009-05-05', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (23, 'Emery', 'McSporon', 'emcsporonm@reverbnation.com', 'Male', '1990-12-20', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (24, 'Der', 'Caville', 'dcavillen@csmonitor.com', 'Male',  '2003-03-20',6);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (25, 'Erich', 'Lorroway', 'elorrowayo@bizjournals.com', 'Male', '2000-08-07', 1);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (26, 'Edan', 'Brayne', 'ebraynep@prweb.com', 'Male', '2008-12-23', 2);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (27, 'Garald', 'Puddle', 'gpuddleq@taobao.com', 'Male', '1990-03-03', 3);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (28, 'Orelee', 'Hoggan', 'ohogganr@e-recht24.de', 'Female', '1999-03-29', 4);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (29, 'Dion', 'Kepp', 'dkepps@boston.com', 'Female', '2000-12-13', 5);
insert into students (id, first_name, last_name, email, gender, date_of_birth, group_id) values (30, 'Winna', 'Ganders', 'wganderst@artisteer.com', 'Female', '2001-11-11', 6);

--Tasks(Query) Groups
-- 1. Получите все записи таблицы groups;
select * from groups;
-- 2. Получите общее количество записей таблицы groups
select count(*) from groups;
-- 3. Выведите группы их курсы
select * from groups inner join courses c on groups.id = c.group_id;
-- 4. Выведите курсы групп у которых курс начался с 202011 по 202333
select * from courses join groups g on g.id = courses.group_id where start_date between '2020-01-01' and '2023-03-03';
-- 5. Выведите имена, дату рождения студентов , которые родились с 198011 по 20041212, и названиегруппы
select first_name, date_of_birth, group_name from students join groups g on students.group_id = g.id  where date_of_birth between '1980-01-01' and '2004-12-12';
-- 6. Вывести полное имя, возраст, почту студентов и название группы, где айди группы равен 3
select concat(first_name,last_name) as full_name, age (current_date, date_of_birth), email, group_name from students join groups on students.group_id = groups.id where groups.id=3;
-- 7. Вывести все курсы одной группы, где название группы 'Java-13'
select * from courses join groups on courses.group_id = groups.id where group_name = 'Java 13';
-- 8. Вывести название всех групп и количество студентов в группе
select group_name, count(students.id) from groups join students on groups.id = students.group_id group by group_name;
-- 9.Вывести название всех групп и количество студентов в группе, если в группе больше 4 студентов
select group_name, count(students.id) from groups join students on groups.id = students.group_id group by group_name having count(students.id)>4;
-- 10. Отсортируйте имена студентов группы по убыванию, где айди группы равна 4 и выведите айдистудента, имя, пол и название группы
select students.id, first_name, gender, group_name  from students join groups on students.group_id = groups.id where groups.id=4 order by first_name desc;

--Tasks(Query) Course
-- 1. Получите все записи таблицы groups;
select * from groups;
-- 2. Получите общее количество записей таблицы groups
select count(*) from groups;
-- 3. Выведите группы их курсы
select * from groups inner join courses c on groups.id = c.group_id;
-- 4. Выведите курсы групп у которых курс начался с 202011 по 202333
select * from courses join groups g on g.id = courses.group_id where start_date between '2020-01-01' and '2023-03-03';
-- 5. Выведите имена, дату рождения студентов , которые родились с 198011 по 20041212, и названиегруппы
select first_name, date_of_birth, group_name from students join groups g on students.group_id = g.id  where date_of_birth between '1980-01-01' and '2004-12-12';
-- 6. Вывести полное имя, возраст, почту студентов и название группы, где айди группы равен 3
select concat(first_name,last_name) as full_name, age (current_date, date_of_birth), email, group_name from students join groups on students.group_id = groups.id where groups.id=3;
-- 7. Вывести все курсы одной группы, где название группы 'Java-13'
select * from courses join groups on courses.group_id = groups.id where group_name = 'Java 13';
-- 8. Вывести название всех групп и количество студентов в группе
select group_name, count(students.id) from groups join students on groups.id = students.group_id group by group_name;
-- 9.Вывести название всех групп и количество студентов в группе, если в группе больше 4 студентов
select group_name, count(students.id) from groups join students on groups.id = students.group_id group by group_name having count(students.id)>4;
-- 10. Отсортируйте имена студентов группы по убыванию, где айди группы равна 4 и выведите айдистудента, имя, пол и название группы
select students.id, first_name, gender, group_name  from students join groups on students.group_id = groups.id where groups.id=4 order by first_name desc;

--Tasks(Query) Course
--1. Вывести все курсы
select * from courses;
--2. Вывести все уроки курса 'Technical English'
select * from courses where course_name= 'Technical English';
--3. Вывести количество всех студентов курса id = 4
select count(*) as count_students from students where group_id in (select group_id from courses where id =4);
--4. Вывести имя, почту, специализацию ментора и название курса где курс айди равен 2
select m.first_name, m.email, m.specialization, c.course_name from mentors m join courses c on m.course_id = c.id where c.id=2;
--5. Посчитaть сколько менторов в каждом курсе
select course_name, count(m.id) as count_of_mentors from courses left join mentors m on courses.id = m.course_id group by course_name;
--6. Сгруппируйте и посчитайте менторов в каждом курсе и выведите только те курсы, где в курсебольше 2 менторов
select course_name, count(m.id) as count_of_mentors from courses left join mentors m on courses.id = m.course_id group by course_name having count(m.id)>2;
--7. Вывести название, дату и полное имя ментора, все курсы которые начинаются с 202011 по 202333

--8. Вывести имя, почту, возраст студентов курса 'Java 13 core'
select first_name, email, from students;
--9. Вывести тот курс  где нет ментора
select course_name from courses left join mentors on courses.id = mentors.course_id where mentors.id is null;
--10.Вывести тот курс где нет уроков
select course_name from courses left join lessons on courses.id = lessons.course_id where lessons.id is null;
--11.Вывести тот курс  где нет студентов
select course_name from courses left join students on courses.id = students.group_id where students.id is null;

-- Tasks(Query) Students
-- 1. Вывести общее количество студентов
select count(*) as count_of_students from students;
-- 2. Вывести имя, почту и пол студента, айди группы которого равна 2
select first_name, email, gender from students where group_id=2;
-- 3. Вывести группу студента, айди которого равна 4
select groups.group_name from students join groups on students.group_id = groups.id where students.id=4;
-- 4. Сгруппируйте студентов по gender и выведите общее количество gender
select gender, count(*) as count_of_gender from students group by gender ;
-- 5. Найдите студента с айди 8 и обновите его данные
update students set first_name = 'Test', last_name = 'Testov', email = 'test@gmail.com', gender = 'Male', date_of_birth = '1997-07-09' where id = 8;
-- 6. Найдите самого старшего студента курса, айди курса которого равна 5

-- 7. Добавьте unique constraint email в столбец таблицы students
alter table students add constraint su unique (email);
-- 8. Добавьте check constraint gender в столбец таблицы mentors
alter table mentors add constraint check_gender check (gender in (gender in ('Male', 'Female')));
-- 9. Добавьте check constraint gender в столбец таблицы students
alter table students ADD CONSTRAINT check_gender CHECK (gender IN ('male', 'female'));



--Tasks(Query) Lessons
--1. Вывести все уроки
select * from lessons;
--2.Получить все уроки студента, айди которого равен 2
select * from lessons where id=2;
--3.Посчитать уроки каждой группы и вывести название группы и количество уроков, где количество уроков больше чем 2
select g.group_name, count(l.id) as lesson_count from groups g join students s on g.id = s.group_id join courses c ON s.group_id = c.group_id join
                                                      lessons l on c.id = l.course_id group by g.group_name having count(l.id) > 2;
--4.Отсортировать уроки студента по названию, где айди студента равна 7
select lesson_name from students s join courses on s.group_id= courses.group_id join
                        lessons l on courses.id = l.course_id where s.id = 7 order by l.lesson_name;
--5.Получить все уроки курса, где название курса 'Python kids'
select * from lessons join courses c on c.id = lessons.course_id where c.course_name='Python kids';
--6.Получить все уроки ментора, айди которого равен 5
select * from lessons join mentors m on lessons.course_id = m.course_id where m.id =5;

--Tasks(Query) Mentors
--1. Вывести средний возраст всех менторов
-- select avg(age) from mentors; -- запрос не работает или не смог потму что нет дата рождение менторов или возраст
--2. Вывести имя, почту и специализацию ментора группы 'Java-9'
select first_name, email, specialization from mentors join courses c on mentors.course_id = c.id
                                                      join groups g on c.group_id = g.id where g.group_name='Java 9';
--3. Вывести всех менторов, чей опыт превышает 1 год
select * from mentors where experience>1;
--4. Вывести ментора у которого нет курса
select * from mentors where course_id is null;
--5. Вывести айди, имя ментора и его студентов
--select id,first_name from mentors;
--6. Посчитать сколько студентов у каждого ментора, и вывести полное имя ментора и количество его студентов

--7. Вывести ментора у которого нет студентов
--select * from mentors join courses c on mentors.course_id = c.id join students s on c.group_id = s.group_id group by mentors.id having count(s.id)=0;
--8. Вывести ментора у которого студентов больше чем 2

--9. Вывести курсы ментора с айди 5
select c.course_name from mentors m join courses c on m.course_id = c.id where m.id = 5;
--10.Вывести все уроки ментора, айди которого равен 5
select lesson_name from mentors join courses c on c.id = mentors.course_id
                                join lessons l on c.id = l.course_id where mentors.id =5;