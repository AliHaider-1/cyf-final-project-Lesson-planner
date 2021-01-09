CREATE DATABASE class_planner;
drop table if exists Modules;
drop table if exists Lessons;
drop table if exists LessonRoleLink;
drop table if exists LessonRole;
drop table if exists UserLessonLink;


CREATE TABLE Modules (
  UniqueID  SERIAL PRIMARY KEY,
  Module_name      VARCHAR(30) NOT NULL,
  syllabusLink     VARCHAR(220) NOT NULL
  
);

CREATE TABLE Lessons (
  id        SERIAL PRIMARY KEY,
  Module_id      INT REFERENCES Modules(UniqueID),
  name      VARCHAR(30) NOT NULL,
  syllabusLink     VARCHAR(220) NOT NULL,
  Time VARCHAR,
  Date date
);

CREATE TABLE LessonRoleLink (
  LessonId        INT  REFERENCES Lessons (id),
  LessonRoleId    INT  REFERENCES LessonRole(UniqueID),
  Capacity INT NOT NULL,
  Vacancy INT NOT NULL,
   PRIMARY KEY (LessonId,LessonRoleId )
);

CREATE TABLE LessonRole (
  UniqueID      SERIAL PRIMARY KEY,
  Role          VARCHAR(50) NOT NULL
);

CREATE TABLE UserLessonLink (
  LessonId        INT  REFERENCES Lessons (id),
  VolunteerEmail   VARCHAR (60) NOT NULL,
  RoleId   INT REFERENCES LessonRole(UniqueID),
  VolunteerName   VARCHAR (60) NOT NULL,
   PRIMARY KEY (LessonId,VolunteerEmail )

);
   
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (1, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (1, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (1, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (1, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (1, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (1, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (1, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (2, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (2, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (2, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (2, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (2, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (2, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (2, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (3, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (3, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (3, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (3, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (3, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (3, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (3, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (4, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (4, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (4, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (4, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (4, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (4, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (4, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (5, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (5, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (5, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (5, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (5, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (5, 6, 5,5);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (5, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (6, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (6, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (6, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (6, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (6, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (6, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (6, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (7, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (7, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (7, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (7, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (7, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (7, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (7, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (8, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (8, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (8, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (8, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (8, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (8, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (8, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (9, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (9, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (9, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (9, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (9, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (9, 6, 5,5);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (9, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (10, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (10, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (10, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (10, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (10, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (10, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (10, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (11, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (11, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (11, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (11, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (11, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (11, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (11, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (12, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (12, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (12, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (12, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (12, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (12, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (12, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (13, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (13, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (13, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (13, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (13, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (13, 6, 5,5);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (13, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (14, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (14, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (14, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (14, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (14, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (14, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (14, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (15, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (15, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (15, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (15, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (15, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (15, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (15, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (16, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (16, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (16, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (16, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (16, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (16, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (16, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (17, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (17, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (17, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (17, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (17, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (17, 6, 5,5);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (17, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (18, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (18, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (18, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (18, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (18, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (18, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (18, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (19, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (19, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (19, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (19, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (19, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (19, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (19, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (20, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (20, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (20, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (20, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (20, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (20, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (20, 7, 1,1);


insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (21, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (21, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (21, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (21, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (21, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (21, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (21, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (22, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (22, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (22, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (22, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (22, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (22, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (22, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (23, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (23, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (23, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (23, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (23, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (23, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (23, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (24, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (24, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (24, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (24, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (24, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (24, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (24, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (25, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (25, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (25, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (25, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (25, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (25, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (25, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (26, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (26, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (26, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (26, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (26, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (26, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (26, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (27, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (27, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (27, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (27, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (27, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (27, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (27, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (28, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (28, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (28, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (28, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (28, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (28, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (28, 7, 1,1);

insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (29, 1, 2,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (29, 2, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (29, 3, 1,1);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (29, 4, 7,7);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (29, 5, 3,3);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (29, 6, 0,0);
insert into LessonRoleLink (LessonId, LessonRoleId, Capacity, Vacancy) values (29, 7, 1,1);





insert into LessonRole  (Role) values ( 'Regional Manager');
insert into LessonRole  (Role) values ( 'Lead Teacher');
insert into LessonRole  (Role) values ( 'Assistant Lead Teacher');
insert into LessonRole  (Role) values ( 'Teaching Assistant');
insert into LessonRole  (Role) values ( 'Co-ordinator');
insert into LessonRole  (Role) values ( 'Personal Development Rep');
insert into LessonRole  (Role) values ( 'Zoom Admin');




insert into UserLessonLink (LessonId, VolunteerEmail, RoleId, VolunteerName) values (1, 'clair0@gmail.com', 1, 'Claire Bickley');
insert into UserLessonLink (LessonId, VolunteerEmail, RoleId, VolunteerName) values (1, 'Aaishah0@gmail.com', 1, 'Aaishah Ali');
insert into UserLessonLink (LessonId, VolunteerEmail, RoleId, VolunteerName) values (1, 'emailepaffardwary@gmail.com', 2, 'Emaile Paffard-Wary');
insert into UserLessonLink (LessonId, VolunteerEmail, RoleId, VolunteerName) values (1, 'nadir@gmail.com', 1, 'Nadir');
insert into UserLessonLink (LessonId, VolunteerEmail, RoleId, VolunteerName) values (1, 'nick@gmail.com', 4, 'Nick Holdsworth');
insert into UserLessonLink (LessonId, VolunteerEmail, RoleId, VolunteerName) values (1, 'wahab@gmail.com', 4, 'Wahab Rahman');
insert into UserLessonLink (LessonId, VolunteerEmail, RoleId, VolunteerName) values (1, 'edgar@gmail.com', 7, 'Edgar Endriulis');
insert into UserLessonLink (LessonId, VolunteerEmail, RoleId, VolunteerName) values (1, 'shukri@gmail.com', 5, 'Shukri');
insert into UserLessonLink (LessonId, VolunteerEmail, RoleId, VolunteerName) values (1, 'athanas@gmail.com', 4, 'Athanas Kozarev');
insert into UserLessonLink (LessonId, VolunteerEmail, RoleId, VolunteerName) values (1, 'tom@gmail.com', 4, 'Tom Pain');
insert into UserLessonLink (LessonId, VolunteerEmail, RoleId, VolunteerName) values (1, 'simon@gmail.com', 3, 'Simon Whitehouse');




insert into Modules (Module_name, syllabusLink) values ('Git and Github', 'https://syllabus.codeyourfuture.io/git/index');
insert into Modules (Module_name, syllabusLink) values ('HTML-CSS', 'https://syllabus.codeyourfuture.io/html-css/index');
insert into Modules (Module_name, syllabusLink) values ('JavaScript Core 1', 'https://syllabus.codeyourfuture.io/js-core-1/index');
insert into Modules (Module_name, syllabusLink) values ('JavaScript Core 2', 'https://syllabus.codeyourfuture.io/js-core-2/index');
insert into Modules (Module_name, syllabusLink) values ('JavaScript Core 3', 'https://syllabus.codeyourfuture.io/js-core-3/index');
insert into Modules (Module_name, syllabusLink) values ('React', ' https://syllabus.codeyourfuture.io/react/index');
insert into Modules (Module_name, syllabusLink) values ('Node', 'https://syllabus.codeyourfuture.io/node/index');
insert into Modules (Module_name, syllabusLink) values ('SQL', 'https://syllabus.codeyourfuture.io/db/index');
insert into Modules (Module_name, syllabusLink) values ('MongoDB', 'https://syllabus.codeyourfuture.io/mongodb/index');
insert into Modules (Module_name, syllabusLink) values ('Personal Development', 'https://syllabus.codeyourfuture.io/git/index');



insert into Lessons (Module_id, name, syllabusLink , Time, Date) values (1, 'week1', 'https://syllabus.codeyourfuture.io/git/index', '11:00-17:00','06.02.2021');

insert into Lessons (Module_id, name, syllabusLink , Time, Date) values (2, 'week1', 'https://syllabus.codeyourfuture.io/html-css/week-1/lesson', '11:00-17:00','13.02.2021');
insert into Lessons (Module_id, name, syllabusLink , Time, Date) values (2, 'week1', 'https://syllabus.codeyourfuture.io/html-css/week-2/lesson', '11:00-17:00','20.02.2021');
insert into Lessons (Module_id, name, syllabusLink , Time, Date) values (2, 'week1', 'https://syllabus.codeyourfuture.io/html-css/week-3/lesson', '11:00-17:00','27.02.2021');

insert into Lessons (Module_id, name, syllabusLink , Time,Date) values (20, 'Working Together Remotely' ,'https://classroom.google.com/u/0/c/Nzc2MTg0MjQzMDla/a/ODU3ODQ0MDI1NjZa/details','11:00-17:00', '06.03.2020', );


insert into Lessons (Module_id, name, syllabusLink , Time, Date) values (3, 'week1', 'https://syllabus.codeyourfuture.io/js-core-1/week-1/lesson', '11:00-17:00','13.03.2021');
insert into Lessons (Module_id, name, syllabusLink , Time,Date) values (3, 'week2', 'https://syllabus.codeyourfuture.io/js-core-1/week-2/lesson', '11:00-17:00', '20.03.2020' );
insert into Lessons (Module_id, name, syllabusLink , Time,Date ) values (3, 'week3', 'https://syllabus.codeyourfuture.io/js-core-1/week-3 /lesson','11:00-17:00', '27.03.2020' );


insert into Lessons (Module_id, name, syllabusLink , Time,Date) values (20, 'Getting things done' ,'https://classroom.google.com/u/0/c/Nzc2MTg0MjQzMDla/a/Nzc2NTE2ODQ1MDla/details','11:00-17:00', '03.04.2020' );

insert into Lessons (Module_id, name, syllabusLink ,Time, Date) values (4, 'week1', 'https://syllabus.codeyourfuture.io/js-core-2/week-1/lesson','11:00-17:00','10.04.2021');
insert into Lessons (Module_id, name, syllabusLink , Time,Date) values (4, 'week2', 'https://syllabus.codeyourfuture.io/js-core-2/week-2/lesson','11:00-17:00', '17.04.2021');
insert into Lessons (Module_id, name, syllabusLink , Time, Date) values (4, 'week3', 'https://syllabus.codeyourfuture.io/js-core-2/week-3/lesson', '11:00-17:00','24.04.2021');

insert into Lessons (Module_id, name, syllabusLink , Time,Date) values (20, 'Brag Diaries' ,'https://classroom.google.com/u/0/c/Nzc2MTg0MjQzMDla/a/MjA1MDQ2OTI2MTgw/details','11:00-17:00', '01.05.2020' );

insert into Lessons (Module_id, name, syllabusLink , Time,Date) values (5, 'week1', 'https://syllabus.codeyourfuture.io/js-core-3/week-1/lesson', '11:00-17:00', '08.05.2021');
insert into Lessons (Module_id, name, syllabusLink , Time,Date) values (5, 'week2', 'https://syllabus.codeyourfuture.io/js-core-3/week-2/lesson','11:00-17:00', '15.05.2021');
insert into Lessons (Module_id, name, syllabusLink ,Time, Date) values (5, 'week3', 'https://syllabus.codeyourfuture.io/js-core-3/week-3/lesson','11:00-17:00','22.05.2021');

insert into Lessons (Module_id, name, syllabusLink , Time,Date) values (20, 'Mock interviews' ,'https://classroom.google.com/u/0/c/Nzc2MTg0MjQzMDla/a/MTkyNzA0MTIyNDQw/details','11:00-17:00', '29.05.2020' );

insert into Lessons (Module_id, name, syllabusLink , Time,Date) values (6, 'week1', 'https://syllabus.codeyourfuture.io/react/week-1/lesson','11:00-17:00', '05.06.2021');
insert into Lessons (Module_id, name, syllabusLink , Time, Date) values(6, 'week2', 'https://syllabus.codeyourfuture.io/react/week-2/lesson', '11:00-17:00','12.06.2021');
insert into Lessons (Module_id, name, syllabusLink , Time,Date) values (6, 'week3', 'https://syllabus.codeyourfuture.io/react/week-3/lesson', '11:00-17:00', '19.06.2021');

insert into Lessons (Module_id, name, syllabusLink , Time,Date) values (7, 'week1  ', 'https://syllabus.codeyourfuture.io/node/week-1/lesson','11:00-17:00', '26.06.2021');
insert into Lessons (Module_id, name, syllabusLink ,Time, Date) values (7, 'week2', 'https://syllabus.codeyourfuture.io/node/week-2/lesson','11:00-17:00','03.07.2021');
insert into Lessons (Module_id, name, syllabusLink , Time,Date) values (7, 'week3', 'https://syllabus.codeyourfuture.io/node/week-3/lesson','11:00-17:00', '10.07.2021');

insert into Lessons (Module_id, name, syllabusLink , Time, Date) values (8, 'week1', 'https://syllabus.codeyourfuture.io/db/week-1/lesson', '11:00-17:00','17.07.2021');
insert into Lessons (Module_id, name, syllabusLink , Time,Date) values (8, 'week2', 'https://syllabus.codeyourfuture.io/db/week-1/lesson', '11:00-17:00', '24.07.2021');
insert into Lessons (Module_id, name, syllabusLink , Time,Date) values (8, 'week3', 'https://syllabus.codeyourfuture.io/db/week-1/lesson','11:00-17:00', '31.07.2021');

insert into Lessons (Module_id, name, syllabusLink ,Time, Date) values (9, 'week1', 'https://syllabus.codeyourfuture.io/mongodb/week-1/lesson','11:00-17:00','04.09.2021');
insert into Lessons (Module_id, name, syllabusLink , Time,Date) values (9, 'week2', 'https://syllabus.codeyourfuture.io/mongodb/week-1/lesson','11:00-17:00', '11.09.2021');
insert into Lessons (Module_id, name, syllabusLink , Time,Date) values (9, 'week3', 'https://syllabus.codeyourfuture.io/mongodb/week-1/lesson','11:00-17:00', '18.09.2021');

