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

INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Equitas Healthcare','HIV Services','750 East Long St','6143406777','M-F 9a-4p',2);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Equitas Healthcare','HIV Services','1033 N. High St','6143406777','M-F 9a-4p',2);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Physicians Care Connection','Medical and dental services. Located in back of building','240 Parsons Ave','6148842441','M 4:30p',2);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Columbus Free Clinic','Sign-up online at: ColumbusFreeClinic.com','2231 N. High St','6144048417','',2);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Helping Hands Free Clinic','Walk-ins only','5100 Karl Rd','','Thursdays 2-4:30p',2);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Health Center at Faith Mission','Ext. 2106','245 N. Grante Ave','6142246617','M-F 8:30a-5p & Th 6p-8p',2);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Lower Lights Christian Health','Additional locations available','1160 W. Broad St','6142741455','',2);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Mount Carmel Mobile Coach and Street Medicine','Call for locations','','6142741455','',2);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('New Life Community Outreach','','25 W. 5th Ave','6142940134','Sun 7a-8:30a',2);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Southeast Healthcare','Medical, Dental, and other services.','16 W. Long St','6142250990','M-F 8a-5p',2);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Southeast Healthcare','Medical, Dental, and other services.','524 #. Broad St','6142250990','M-F 8a-5p',2);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Stowe Mission of Central Ohio','Dental and Vision care by appointment.','888 Parsons Ave','614-445-8400','Every Monday and 3rd Thursday',2);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Vineyard Free Health Clinic','Visit: VineyeardCommunityCenter.org','171 E 5th Ave','6142595428','',2);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Vineyard Free Health Clinic','Visit: VineyeardCommunityCenter.org','6000 Cooper Rd','6142595428','',2);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Family Planning and Sexual Health','','240 Parsons Ave','6146541850','Hours Vary, call for details.',2);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Dwell Free Clinic','Ext. 1840','1934 N. Fourth St','6148236510','1st and 3rd Monday each month.',2);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('PrimayOne Health','Medical, Dental, Vision, OB-gyn, and transportation services','','6146450521','Call For details and locations.',2);

INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('J.O.I.N.','Birth certificate vouchers, utilities, clothing','578 E Main St','6142412530','M-F 10a-11:30p and 1p-2p',3);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Stone Village','State ID, birth certificate vouchers','139 E 2nd Ave','6145795493','Tues 8:30a-9:30a',3);

INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Ohio Means Jobs','','1111 East Broad St','6145595052','M-F 8a-5p',4);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('SouthEast Vocational','','3770 N High St.','6142947117','M-F 8a-5p',4);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Goodwill','','1331 Edgehill Road','6145830365','M-Th 8a-4p, F 8a-12p',4);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Jewish Family Services','','1070 College Ave','6142311890','',4);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Columbus Works, Inc','','775 W. Broad St','6145858346','9a-5p',4);

INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Franklin County Veteran Service Commision','Helps veterans obtain benefits','280 E Broad St','6145252500','M, W, Th, F 7:30a-4p, 12:30-4p',5);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Health Care for Homeless Veterans','Medical Care. References for shelter and housing','420 N. James Rd','6142575499','M-F 9-11a, 1-3p',5);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Crisis Line','National Veterans Suicide Prevention Line. Crisis assistance.','','800-273-8255','24/7',5);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Military Veterans Resource Center','Career services for Veterans','1395 E Dublin Granville Rd','6142300662','M-F 8a-4p',5);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Veteran Outreach Center','Mental health, sexual trauma, bereavement','855 Bethel Rd','6142575550','M-F 8a-4:30p',5);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Volunteers of America Veteran Resource Center','Residential Alcohol and Drug Treatment. Employment services. Emergency and transitional Housing. Ext 1603','624 Harmon Ave','6148490145','M-F 8a-5p',5);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Faith Mission Supportive Services for Vets Families','Rapid Rehousing','','6142246617','M-F 8a-5p',5);
INSERT INTO services(service_name, service_description, service_address, service_phone, service_hours, category_id) VALUES ('Veterans and Families First','Homeless Prevention and Rapid Rehousing','624 Harmon Ave','6146299960','M-F 8a-5p',5);





COMMIT TRANSACTION;




