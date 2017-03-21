create table if not exists `users` (
	`username` char(20),
	`password` char(20),
	`dogBreed` char(20), 
	`owner` boolean not null default 0,
	primary key (`username`)
	);
create table if not exists `DogPicture` (
	`username` char(20), 
	`picturePath` char(20),
	`location` int,
	foreign key (`username`) references users(`username`)
	);

insert into users values ('Chad89', 'password', 'Siberian Husky', true);
insert into users values ('John223', 'doglover22', 'Golden Retriever', true);
insert into users values ('Fernando332', 'dogs4Life6969', 'Chihuahua', true);
insert into users values ('Xi554', 'OOODOGS123', 'Beagle', true);
insert into users values ('Mahalia223', 'yayanimals2239', 'Collie', true);
insert into users values ('Lucas557', 'BOXER$andGoldens337', 'Boxer', true);
insert into users values ('Jane3Doe', 'pompom443luv', 'Pomeranian', true);

insert into DogPicture values ('John223', 'users/pics/mydog', 2823942.209385);
insert into DogPicture values ('Chad89', 'users/pics/mydog', 2823942.209385);
insert into DogPicture values ('Fernando332', 'users/pics/mydog', 2823942.209385);
insert into DogPicture values ('Xi554', 'users/pics/mydog', 2823942.209385);
insert into DogPicture values ('Mahalia223', 'users/pics/mydog', 2823942.209385);
insert into DogPicture values ('Lucas557', 'users/pics/mydog', 2823942.209385);
insert into DogPicture values ('Jane3Doe', 'users/pics/mydog', 2823942.209385);	
