BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS services;
DROP TABLE IF EXISTS categories;

CREATE TABLE users (
	user_id SERIAL,
	username varchar(50) NOT NULL UNIQUE,
	password_hash varchar(200) NOT NULL,
	role varchar(50) NOT NULL,
	CONSTRAINT PK_user PRIMARY KEY (user_id)
);

CREATE TABLE categories (
	category_id SERIAL,
	category_name varchar(150) NOT NULL UNIQUE,
	updated DATE,
	url varchar(150),
	CONSTRAINT PK_categories PRIMARY KEY (category_id)
);

CREATE TABLE services (
	service_id SERIAL,
	service_name varchar(150) NOT NULL,
	service_description varchar(1000),
	service_address varchar(150),
	service_phone varchar(15),
	service_hours varchar(150),
	category_id int,
	CONSTRAINT PK_services PRIMARY KEY (service_id),
	CONSTRAINT FK_services FOREIGN KEY (category_id) REFERENCES categories (category_id)
);


COMMIT TRANSACTION;