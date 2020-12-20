-- CREATE TYPE posts AS ENUM ('Доцент','Профессор','Ассистент');

CREATE TABLE teachers
(
    personal_number TEXT PRIMARY KEY,
    second_name     TEXT   NOT NULL,
    post            posts  NOT NULL,
    department      TEXT   NOT NULL,
    speciality      TEXT[] NOT NULL,
    home_phone      TEXT   NOT NULL
);

-- CREATE DOMAIN uint as int
--     CHECK ( VALUE > 0);

CREATE TABLE subject
(
    number       text primary key,
    name         text NOT NULL,
    num_of_hours uint NOT NULL,
    speciality   text NOT NULL,
    semestr      uint NOT NULL

);

CREATE TABLE student_group
(
    number              text primary key,
    name                text NOT NULL,
    num_of_people       uint NOT NULL,
    speciality          text NOT NULL,
    headman_second_name text NOT NULL
);

CREATE TABLE teacher_subject_groups
(
    student_group_number    text NOT NULL REFERENCES student_group (number),
    subject_number          text not null REFERENCES subject (number),
    teacher_personal_number text NOT NULL REFERENCES teachers (personal_number),
    audience_number         uint NOT NULL,
    PRIMARY KEY (student_group_number, subject_number, teacher_personal_number)
);


-- DROP TABLE teachers;
-- DROP TABLE student_group;
-- DROP TABLE subject;
-- DROP TABLE teacher_subject_groups;