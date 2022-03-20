create database questionsDB;

use questionsDB;

create table subjects (
	id INT primary key,
	name VARCHAR(50) not null,
	code VARCHAR(10) not null,
	question_count INT DEFAULT 0
);
insert into subjects (id, name, code, question_count) values (1, 'Data Structures and Algorithms', 'CS283', 2);
insert into subjects (id, name, code, question_count) values (2, 'Database Management System', 'CS256', 0);
insert into subjects (id, name, code, question_count) values (3, 'Operating System', 'CS048', 0);
insert into subjects (id, name, code, question_count) values (4, 'Web Technology', 'CS112', 0);
insert into subjects (id, name, code, question_count) values (5, 'Computer Graphics', 'CS284', 0);
insert into subjects (id, name, code, question_count) values (6, 'Software Engineering', 'CS084', 0);


create table questions (
	id INT primary key,
	subject_id VARCHAR(10) references subjects(id),
	body VARCHAR(200) not null,
	correct_answer VARCHAR(50) not null,
	wrong1 VARCHAR(50),
	wrong2 VARCHAR(50),
	wrong3 VARCHAR(50),
	votes INT DEFAULT 0,
	approved enum ('yes', 'no') DEFAULT 'no',
	explanation VARCHAR(200),
	tags VARCHAR(50)
);
insert into questions (id, subject_id, body, correct_answer, wrong1, wrong2, wrong3, votes, approved, explanation, tags) values (1, 'CS283', 'A queue follows __________', 'FIFO', 'Ordered array', 'Linear tree', 'LIFO', 2, 'no', '', '');
insert into questions (id, subject_id, body, correct_answer, wrong1, wrong2, wrong3, votes, approved, explanation, tags) values (2, 'CS283', 'Process of removing an element from stack is called _______', 'Pop', 'Create', 'Push', 'Evaluation', 11, 'yes', '', '');


create table users (
	name VARCHAR(50),
	email VARCHAR(50),
	username VARCHAR(50) primary key,
	password VARCHAR(50),
	user_type enum('moderator', 'contributor') DEFAULT 'contributor',
);
insert into users (name, email, username, password, user_type) values ('Micheil Guinn', 'mguinn0@paypal.com', 'mguinn0', '1RbkPwOdBG', 'moderator');
insert into users (name, email, username, password, user_type) values ('Davidde Yitzovitz', 'dyitzovitz1@shop-pro.jp', 'dyitzovitz1', '0obelGPfKp', 'moderator');
insert into users (name, email, username, password, user_type) values ('Rhetta Alu', 'ralu2@freewebs.com', 'ralu2', 'Z0kNPogFN', 'moderator');
insert into users (name, email, username, password, user_type) values ('Had Tapton', 'htapton3@sciencedirect.com', 'htapton3', 'fFvxY0ii8', 'moderator');
insert into users (name, email, username, password, user_type) values ('Ferguson Grange', 'fgrange4@netvibes.com', 'fgrange4', 'shAkuAcsm', 'moderator');
insert into users (name, email, username, password, user_type) values ('Godfrey MacNeilage', 'gmacneilage5@google.com.br', 'gmacneilage5', 'LuFvTytmR22t', 'contributor');
insert into users (name, email, username, password, user_type) values ('Jane Marcq', 'jmarcq6@parallels.com', 'jmarcq6', 'B3POgassv', 'moderator');
insert into users (name, email, username, password, user_type) values ('Dexter Kees', 'dkees7@xinhuanet.com', 'dkees7', 'Oo56sU', 'contributor');
insert into users (name, email, username, password, user_type) values ('Pippo Cosley', 'pcosley8@myspace.com', 'pcosley8', 'lJGNtpQQ', 'moderator');
insert into users (name, email, username, password, user_type) values ('Otes Letcher', 'oletcher9@bravesites.com', 'oletcher9', '4jBfJVJ', 'contributor');
insert into users (name, email, username, password, user_type) values ('Ines Lucio', 'ilucioa@cyberchimps.com', 'ilucioa', 'IFJwSCnmT', 'contributor');
insert into users (name, email, username, password, user_type) values ('Brena Winchcum', 'bwinchcumb@phpbb.com', 'bwinchcumb', 'Bpn6du7Daw', 'moderator');
insert into users (name, email, username, password, user_type) values ('Brander Clemens', 'bclemensc@diigo.com', 'bclemensc', 'RzJrdmuMwq', 'contributor');
insert into users (name, email, username, password, user_type) values ('Penelopa Doreward', 'pdorewardd@gmpg.org', 'pdorewardd', 'Hfldev9u8', 'moderator');
insert into users (name, email, username, password, user_type) values ('Joli Berre', 'jberree@wsj.com', 'jberree', 'vnwm0t4AU', 'contributor');
insert into users (name, email, username, password, user_type) values ('Winfred Bridgewood', 'wbridgewoodf@engadget.com', 'wbridgewoodf', 'PMZmUv', 'moderator');
insert into users (name, email, username, password, user_type) values ('Daisey Brindley', 'dbrindleyg@businessweek.com', 'dbrindleyg', 'b2kO2K', 'moderator');
insert into users (name, email, username, password, user_type) values ('Charmane Antuk', 'cantukh@ebay.co.uk', 'cantukh', 'Mw3l56VbiG', 'moderator');
insert into users (name, email, username, password, user_type) values ('Brnaba Winckle', 'bwincklei@baidu.com', 'bwincklei', 'A4IUxt', 'contributor');
insert into users (name, email, username, password, user_type) values ('Cissy Sear', 'csearj@netvibes.com', 'csearj', 'aZScNuKzP', 'contributor');
