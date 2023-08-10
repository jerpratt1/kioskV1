BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO categories (category_name, updated) VALUES ('Mental Health and Substance Abuse','2023-04-26');
INSERT INTO categories (category_name, updated) VALUES ('Healthcare','2023-04-26');
INSERT INTO categories (category_name, updated) VALUES ('Identification','2023-04-26');
INSERT INTO categories (category_name, updated) VALUES ('Employment Assistance','2023-04-26');
INSERT INTO categories (category_name, updated) VALUES ('Veteran Assistance','2023-04-26');
INSERT INTO categories (category_name, updated) VALUES ('Outreach and Drop-In','2023-04-26');
INSERT INTO categories (category_name, updated) VALUES ('Youth Assistance','2023-04-26');
INSERT INTO categories (category_name, updated) VALUES ('Legal Assistance','2023-04-26');
INSERT INTO categories (category_name, updated) VALUES ('Eviction Assistance','2023-04-26');
INSERT INTO categories (category_name, updated) VALUES ('Free Meals','2023-04-26');
INSERT INTO categories (category_name, updated) VALUES ('Clothing and Household','2023-04-26');
INSERT INTO categories (category_name, updated) VALUES ('Additional Resources','2023-04-26');


COMMIT TRANSACTION;