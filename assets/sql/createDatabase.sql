DROP DATABASE IF EXISTS dab_chat;
CREATE DATABASE dab_chat;
use dab_chat;

create table user(
	id int not null AUTO_INCREMENT,
	email varchar(100) not null,
	pseudo varchar(100),
	pass varchar(2000) not null,
	constraint PK_ID PRIMARY KEY(id)
);

create table message(
	id int not null AUTO_INCREMENT,
	content text not null,
	datePost DATETIME not null,
	user_id int not null,
	CONSTRAINT PK_ID PRIMARY KEY(id),
	CONSTRAINT FK_USER_ID FOREIGN KEY(user_id) REFERENCES user(id)
);
