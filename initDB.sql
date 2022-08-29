create schema if not exists public;

create database homework_3 with owner postgres;

comment on schema public is 'standard public schema';

alter schema public owner to postgres;

create table developers
(
id_developer int PRIMARY key,
	name_developer VARCHAR(25),
	age int
);

alter table developers owner to postgres;

create table skills
(
id_skillint int primary key,
	programming_language VARCHAR(10),
	skill_level VARCHAR(10)
);

alter table skills owner to postgres;

create table companies
(
id_company int primary key,
	name_company VARCHAR(25),
	country VARCHAR(25)
);

alter table companies owner to postgres;

create table customers
(
id_coustomer int PRIMARY key,
	name_customer VARCHAR(25),
	country VARCHAR(25)
);

alter table customers owner to postgres;

create table projects
(
id_project int primary key,
	name_project VARCHAR(25),
	id_company int,
	id_customer int,
	FOREIGN key (id_company) REFERENCES companies,
	foreign key (id_customer) references customers
);

alter table projects owner to postgres;

create table developer_projects
(
id_project int,
	id_developer int,
	FOREIGN key (id_project) REFERENCES projects,
	foreign key (id_developer) references developers
);

alter table developer_projects owner to postgres;

create table developer_skills
(
id_skill int,
	id_developer int,
	FOREIGN key (id_skill) REFERENCES skills,
	foreign key (id_developer) references developers
);

alter table developer_skills owner to postgres;



