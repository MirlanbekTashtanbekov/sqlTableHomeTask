CREATE TABLE publishers (
                            id serial primary key,
                            name VARCHAR
);

CREATE TABLE languages (
                           id serial primary key,
                           language VARCHAR
);

create type Gender as enum ('MALE', 'FEMALE');
drop type Gender;

create table authors (
                         id serial primary key,
                         first_name VARCHAR,
                         last_name VARCHAR,
                         email varchar,
                         date_of_birth date,
                         country varchar,
                         gender Gender
);

create type Genre as enum ('DETECTIVE','DRAMA','HISTORY','ROMANCE','BIOGRAPHY','FANTASY');

create table books (
                       id serial primary key,
                       name varchar,
                       country varchar,
                       published_year date,
                       price numeric,
                       genre Genre
);

alter table books add column language_id int references languages(id);
alter table books add column publisher_id int references publishers(id);
alter table books add column author_id int references authors(id);


insert into publishers(name)
values ('RELX Group'),
       ('Thomson Reuters'),
       ('Holtzbrinck Publishing Group'),
       ('Shanghai Jiao Tong University Press'),
       ('Wolters Kluwer'),
       ('Hachette Livre'),
       ('Aufbau-Verlag'),
       ('Macmillan'),
       ('Harper Collins'),
       ('China Publishing Group'),
       ('Springer Nature'),
       ('Grupo Planeta'),
       ('Books.Ru Ltd.St Petersburg'),
       ('The Moscow Times'),
       ('Zhonghua Book Company');

insert into authors(first_name, last_name, email, date_of_birth, country, gender)
values ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '1968-09-25', 'France', 'FEMALE'),
       ('Patti', 'Walster', 'pwalster1@addtoany.com', '1965-10-31', 'China', 'FEMALE'),
       ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '1980-05-16', 'Germany', 'MALE'),
       ('Brand', 'Burel', 'bburel3@ovh.net', '1964-04-24', 'United States', 'MALE'),
       ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '1967-07-03', 'France', 'MALE'),
       ('Alexey', 'Arnov', 'larnoldi5@writer.com', '1964-12-29', 'Russia', 'MALE'),
       ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '1983-12-14', 'China', 'FEMALE'),
       ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1960-01-29', 'United States', 'FEMALE'),
       ('Boigie', 'Etridge', 'betridge8@ed.gov', '1978-11-17', 'France', 'MALE'),
       ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '1962-09-08', 'Germany', 'MALE'),
       ('Margarita', 'Bartova', 'mbartova@example.com', '1984-12-03', 'Russia', 'FEMALE'),
       ('Innis', 'Hugh', 'ihughb@marriott.com', '1983-08-28', 'Germany', 'MALE'),
       ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '1980-03-28', 'Russia', 'FEMALE'),
       ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '1966-08-05', 'Spain', 'MALE'),
       ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '1962-10-17', 'United States', 'FEMALE');

insert into languages(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');

insert into books(name, country, published_year, price, genre, language_id, publisher_id, author_id)
values('Taina', 'Russia', '2021-11-12', '568','DETECTIVE', '5', '12', '6'),
      ('Zvezdopad', 'Russia', '2004-12-09', '446', 'ROMANCE', '5', '13', '11'),
      ('Homo Faber', 'Germany', '2022-04-10', '772','FANTASY', '3', '5', '3'),
      ('Der Richter und Sein Henker', 'Germany', '2011-02-01', '780','DETECTIVE', '3', '3', '10'),
      ('Lord of the Flies', 'United States', '2015-07-11', '900','FANTASY', '1', '2', '4'),
      ('Un soir au club', 'France', '2018-01-12', '480','DRAMA', '2', '1', '1'),
      ('Voina', 'Russia', '2004-12-06', '880',  'HISTORY', '5', '4', '13'),
      ('Sun Tzu', 'China', '2022-09-05', '349',  'HISTORY', '4', '4', '2'),


      ('Emil und die Detektive', 'Germany', '2010-06-11', '228','DETECTIVE','3', '5', '10'),
      ('Coule la Seine', 'France', '2015-03-01', '732','FANTASY', '2', '6', '1'),
      ('Love and hatred', 'Russia', '2012-02-03', '763', 'ROMANCE', '5', '14', '13'),
      ('Fantastic Mr Fox', 'United States', '2018-03-10', '309','FANTASY', '1', '9', '8'),
      ('Contes de la Bécasse', 'France', '2019-10-05', '378', 'ROMANCE', '2', '6', '9'),
      ('“The Death of Ivan Ilyich', 'Russia', '2000-09-24', '814','DRAMA', '5', '6', '6'),
      ('Bonjour Tristesse', 'France', '2015-08-02', '502', 'ROMANCE', '2', '8', '5'),
      ('Die Verwandlung', 'Germany', '2008-06-19', '305', 'DETECTIVE','3','7', '12'),
      ('The Inspector Barlach Mysteries', 'Germany', '2007-03-10', '566','DETECTIVE', '3', '3', '3'),
      ('LÉtranger', 'France', '2017-11-14', '422', 'ROMANCE', '2', '8', '5'),
      ('Lao Tse', 'China', '2005-07-16', '900','FANTASY', '4', '4', '2'),
      ('Semya', 'Russia', '2004-04-12', '194','DRAMA', '5', '13', '11'),
      ('Empty World', 'United States', '2008-01-04', '324','FANTASY', '1', '11', '15'),
      ('Domainer', 'Germany', '2020-01-06', '420', 'ROMANCE', '3', '5', '10'),
      ('The Fault in Our Stars', 'United States', '2008-02-13', '396', 'ROMANCE','1', '9', '4'),
      ('Die R uber', 'Germany', '2020-06-25', '300', 'ROMANCE', '3', '7', '12'),
      ('Jung Chang', 'China', '2021-05-14', '600',  'HISTORY', '4', '10', '7'),
      ('Les Aventures de Tintin', 'France', '2015-04-10', '582','DRAMA', '2', '1', '5'),
      ('Unvollendete Geschichte', 'Germany', '2010-12-12', '269','DETECTIVE', '3', '5', '10'),
      ('Amy Tan', 'China', '2023-01-09', '486','DRAMA', '4', '4', '7'),
      ('Krasnaya luna', 'Russia', '2020-02-07', '550','FANTASY', '5', '12', '11'),
      ('Emma', 'United States', '2021-10-11', '599', 'BIOGRAPHY','1', '2', '15');

-- 1.Китептердин атын, чыккан жылын, жанрын чыгарыныз.
select name, published_year, genre from books;

-- 2.Авторлордун мамлекеттери уникалдуу чыксын.
select distinct country from authors;

-- 3.2020-2023 жылдардын арасындагы китептер чыксын.
select * from books where published_year between '2020-01-01' and '2023-12-31';

-- 4.Детектив китептер жана алардын аттары чыксын.
select genre, name from books where genre = 'DETECTIVE';

-- 5.Автордун аты-жону author деген бир колонкага чыксын.
select concat(first_name, ' ', last_name) as author from authors;

-- 6.Германия жана Франциядан болгон авторлорду толук аты-жону менен сорттоп чыгарыныз.
select concat(first_name, ' ', last_name) as author from authors where country ='Germany' or country ='France' order by country;

-- 7.Романдан башка жана баасы 500 дон кичине болгон китептердин аты, олкосу, чыккан жылы, баасы жанры чыксын.
select name, country, published_year, price, genre from books where price<500 and genre not in ('ROMANCE');

-- 8.Бардык кыз авторлордун биринчи 3 ну чыгарыныз.
select * from authors where gender ='FEMALE' limit 3;

-- 9.Почтасы .com мн буткон, аты 4 тамгадан турган, кыз авторлорду чыгарыныз.
select * from authors where email like '%.com' and length (first_name)=4 and gender = 'FEMALE';

-- 10.Бардык олколорду жана ар бир олкодо канчадан автор бар экенин чыгаргыла.
select country, count(*) count_of_authors from authors group by country order by country;

-- 11.Уч автор бар болгон олколорду аты мн сорттоп чыгарыныз.
select country, count(*) count_of_author from authors group by country having count(*) =3 order by country asc;

-- 12. Ар бир жанрдагы китептердин жалпы суммасын чыгарыныз
select genre, sum(price) as total_price from books group by genre order by genre;

-- 13. Роман жана Детектив китептеринин эн арзан бааларын чыгарыныз
select genre, min(price) as minimun_price from books where genre in('ROMANCE','DETECTIVE') group by genre order by genre;

-- 14.История жана Биографиялык китептердин сандарын чыгарыныз
select genre, count(*) as total_books from books where genre in ('HISTORY','BIOGRAPHY') group by genre;

-- 15.Китептердин , издательстволордун аттары жана тили чыксын
SELECT b.name as book_name, p.name as publisher_name, l.language as language from books b
    join publishers p on b.publisher_id = p.id
    join languages l on b.language_id = l.id ORDER BY b.name;

-- 16. Авторлордун бардык маалыматтары жана издательстволору чыксын, издательство болбосо null чыксын
select * from authors left join publishers on authors.id = publishers.id;

-- 17. Авторлордун толук аты-жону жана китептери чыксын, китеби жок болсо null чыксын.
select concat(first_name, ' ', last_name) as full_name, books.author_id from authors left join books
                                                                                               on authors.id=books.author_id;

-- 18.Кайсы тилде канча китеп бар экендиги ылдыйдан ойдого сорттолуп чыксын.
select languages.language, count(*) as total_book_language from books join languages
                                                                           on books.language_id = languages.id group by languages.language order by total_book_language desc;

-- 19.Издательствонун аттары жана алардын тапкан акчасынын оточо суммасы тегеректелип чыгарылсын.
select publishers.name, round(avg(books.price)) as avg_price from publishers join books on publishers.id = books.publisher_id
group by publishers.name order by avg_price;

-- 20.2010-2015 жылдардын арасындагы китептер жана автордун аты-фамилиясы чыксын.
select first_name, last_name,books.name as book_name from authors join books
                                                                       on authors.id = books.author_id where published_year between '2010-01-01' and '2015-12-31';

-- 21.2010-2015 жылдардын арасындагы китептердин авторлорунун толук аты-жону жана алардын
-- тапкан акчаларынын жалпы суммасы чыксын.
select concat(first_name,' ',last_name) as  author_full_name, sum(books.price) as total_sale_money from books join authors                                                                                                          on books.author_id=authors.id where books.published_year between '2010-01-01' and '2015-12-31'
group by authors.id order by total_sale_money desc;
