BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO categories (category_name, updated, url) VALUES ('Mental Health and Substance Abuse','2023-04-26','/mental_substance');
INSERT INTO categories (category_name, updated, url) VALUES ('Healthcare','2023-04-26','/healthcare');
INSERT INTO categories (category_name, updated, url) VALUES ('Identification','2023-04-26','/identification');
INSERT INTO categories (category_name, updated, url) VALUES ('Employment Assistance','2023-04-26','/employment');
INSERT INTO categories (category_name, updated, url) VALUES ('Veteran Assistance','2023-04-26','/veteran');
INSERT INTO categories (category_name, updated, url) VALUES ('Outreach and Drop-In','2023-04-26','/outreach');
INSERT INTO categories (category_name, updated, url) VALUES ('Youth Assistance','2023-04-26','/youth');
INSERT INTO categories (category_name, updated, url) VALUES ('Legal Assistance','2023-04-26','/legal');
INSERT INTO categories (category_name, updated, url) VALUES ('Eviction Assistance','2023-04-26','/eviction');
INSERT INTO categories (category_name, updated, url) VALUES ('Free Meals','2023-04-26','/meals');
INSERT INTO categories (category_name, updated, url) VALUES ('Clothing and Household','2023-04-26','/clothing_household');
INSERT INTO categories (category_name, updated, url) VALUES ('Additional Resources','2023-04-26','/additional_resources');

INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Community for New Directions','Substance use and metal health','1000 Atcheson St','6142524941','',1);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Alcoholics Anonymous','','651 W. Broad','6142538501','24/7',1);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('AL-ANON','','','6145471550','',1);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Cocaine Anonymous','','','6142511122','',1);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Narcotics Anonymous','Refer to support group','','6142521700','24/7',1);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Amethyst, INC.','Recovery services for women and their children','455 E Mound St','6142421284','M-F 8:30a-4:30p',1);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Compdrug, INC.','Substance abuse counseling and treatment. Call for appointment','547 E 11th Ave','6142444506','M-Th 8a-6p, F 8a-1p',1);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('House of Hope','Drug and alchohol treatment for men','825 Dennison Ave','6142914691','',1);

COMMIT TRANSACTION;


