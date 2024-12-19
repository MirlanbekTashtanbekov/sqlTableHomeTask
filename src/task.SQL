--Вам нужно создать базу данных для отслеживания данных о компаниях и их
--сотрудниках. Каждая компания имеет несколько сотрудников.
--Требования:
--1. Создайте таблицы для компаний и сотрудников.
--2. У каждой компании должны быть следующие поля: название компании, отрасль.
--3. У каждого сотрудника должны быть следующие поля: имя, фамилия,
--должность, зарплата, компания, в которой работает.
--4. Установите связь между таблицами с использованием внешних ключей.
--5. Добавьте новый столбец "Дата основания" в таблицу компаний, чтобы
--отслеживать дату, когда каждая компания была основана.
--6. Переименуйте столбец "Отрасль" в таблице компаний в "Сфера
--деятельности".
--7. Добавьте новый столбец "Дата рождения" в таблицу сотрудников для
--отслеживания дня рождения каждого сотрудника.
--8. Переименуйте столбец "Должность" в таблице сотрудников в "Позиция".

create table companies (
                           id serial primary key,
                           name varchar not null,
                           industry VARCHAR not null
);

create table employees (
                           id serial primary key,
                           first_name VARCHAR not null,
                           last_name VARCHAR not null,
                           position VARCHAR not null,
                           salary decimal not null,
                           company_id INTEGER not null,
                           foreign key (company_id) references companies(id)
);

ALTER TABLE companies add column founded_date date;
ALTER table companies rename column industry to field_of_activity;
alter table employees add column date_of_birth DATE;
alter table employees rename column position to job_title;