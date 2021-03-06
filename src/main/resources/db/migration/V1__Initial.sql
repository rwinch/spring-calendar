create table git_hub_project (
	id serial not null primary key,
	name character varying(255) not null,
	owner character varying(255) not null,
	repo character varying(255) not null
);

create table ical_project (
	id serial not null primary key,
	name character varying(255) not null,
	calendar_url character varying(255) not null,
);

create table release (
	id serial not null primary key,
	project character varying(255) not null,
	name character varying(255) not null,
	date character(10) not null
);

insert into git_hub_project(name, owner, repo) values('Spring Boot', 'spring-projects', 'spring-boot');
insert into git_hub_project(name, owner, repo) values('Spring LDAP', 'spring-projects', 'spring-ldap');
insert into git_hub_project(name, owner, repo) values('Spring REST Docs', 'spring-projects', 'spring-restdocs');
insert into git_hub_project(name, owner, repo) values('Spring Security', 'spring-projects', 'spring-security');
insert into git_hub_project(name, owner, repo) values('Spring Session', 'spring-projects', 'spring-session');

insert into ical_project(name, calendar_url) values('Spring Data', 'https://calendar.google.com/calendar/ical/pivotal.io_r0vuldu3ka36th4dqvldpetcqs%40group.calendar.google.com/public/basic.ics');