create table if not exists user_dtls(
	user_id serial primary key, 
	user_name varchar(50) unique not null,
	first_name varchar(50) not null,
	last_name varchar(50) not null,
	comments varchar(255),
	created_at timestamp not null
);

select * from user_dtls;