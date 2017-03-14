drop table users;
drop table dogs;
drop table profilePicture;

create table users (id integer primary key, userName char(20), dogBreed char(20), owner boolean not null default 0);
create table dogs (name char(20), amount integer);
create table profilePicture (id integer references users(id), picturePath char(20));


