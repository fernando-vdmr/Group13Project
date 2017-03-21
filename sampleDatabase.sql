drop table users;
drop table dogs;
drop table profilePicture;

create table users (username char(20) primary key, password char(20), dogBreed char(20), owner boolean not null default 0);
create table dogs (name char(20), amount integer);
create table profilePicture (username references users(username), picturePath char(20), dogImage BLOB);

insert into users values (1,'Chad', 'password', 'Siberian Husky', true);

insert into dogs values ('Alaskan Malamute',7);
insert into dogs values ('Australian Shepherd',5);
insert into dogs values ('Beagle',12);
insert into dogs values ('Collie',1);
insert into dogs values ('Labrador Retriever',8);
insert into dogs values ('Mastiff',2);
insert into dogs values ('Pomeranian',5);
insert into dogs values ('Poodle',1);
insert into dogs values ('Pug',20);
insert into dogs values ('Siberian Husky',6);
insert into dogs values ('St. Bernard',4);
insert into dogs values ('Yorkshire Terrier',1);
