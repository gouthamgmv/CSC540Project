/*
 Navicat Oracle Data Transfer

 Source Server         : DB-NCSU
 Source Server Version : 112010
 Source Host           : ora.csc.ncsu.edu
 Source Schema         : SZHANG29

 Target Server Version : 112010
 File Encoding         : utf-8

 Date: 10/25/2015 15:22:56 PM
*/

-- ----------------------------
--  Table structure for TextBookReservation
-- ----------------------------
DROP TABLE "SZHANG29"."TextBookReservation";
CREATE TABLE "TextBookReservation" (   "Publication_id" NUMBER NOT NULL, "Patron_id" NUMBER NOT NULL, "Course_id" VARCHAR2(10BYTE) NOT NULL);

-- ----------------------------
--  Records of TextBookReservation
-- ----------------------------
INSERT INTO "SZHANG29"."TextBookReservation" VALUES ('1', '5', 'CH101');
INSERT INTO "SZHANG29"."TextBookReservation" VALUES ('3', '6', 'CH102');
INSERT INTO "SZHANG29"."TextBookReservation" VALUES ('5', '7', 'CH103');
INSERT INTO "SZHANG29"."TextBookReservation" VALUES ('7', '8', 'CH104');
COMMIT;

-- ----------------------------
--  Table structure for Teach
-- ----------------------------
DROP TABLE "SZHANG29"."Teach";
CREATE TABLE "Teach" (   "Patron_id" NUMBER NOT NULL, "Course_id" VARCHAR2(10BYTE) NOT NULL);

-- ----------------------------
--  Records of Teach
-- ----------------------------
INSERT INTO "SZHANG29"."Teach" VALUES ('5', 'CH101');
INSERT INTO "SZHANG29"."Teach" VALUES ('6', 'CH102');
INSERT INTO "SZHANG29"."Teach" VALUES ('7', 'CH103');
INSERT INTO "SZHANG29"."Teach" VALUES ('8', 'CH104');
COMMIT;

-- ----------------------------
--  Table structure for Student
-- ----------------------------
DROP TABLE "SZHANG29"."Student";
CREATE TABLE "Student" (   "Patron_id" NUMBER NOT NULL, "Student_fname" VARCHAR2(20BYTE) NOT NULL, "Student_lname" VARCHAR2(20BYTE) NOT NULL, "Student_pnumber" VARCHAR2(10BYTE), "Student_apnumber" VARCHAR2(10BYTE), "Student_street" VARCHAR2(20BYTE), "Student_city" VARCHAR2(20BYTE), "Student_postcode" VARCHAR2(10BYTE), "Student_birth" DATE NOT NULL, "Student_sex" VARCHAR2(10BYTE) NOT NULL, "Student_nationality" VARCHAR2(10BYTE) NOT NULL, "Department_id" NUMBER NOT NULL, "Student_classification" VARCHAR2(15BYTE) NOT NULL, "Student_program" VARCHAR2(10BYTE) NOT NULL, "Student_category" VARCHAR2(30BYTE) NOT NULL);

-- ----------------------------
--  Records of Student
-- ----------------------------
INSERT INTO "SZHANG29"."Student" VALUES ('2', 'Walt', 'Jr.', '123456780', '123456781', '1512 Graduate Lane', 'Raleigh, NC', '27606     ', TO_DATE('1988-11-03 11:53:01','YYYY-MM-DD HH24:MI:SS'), 'Male', 'AMerican  ', '1', 'Undergraduate  ', 'BS        ', 'Second Year                   ');
INSERT INTO "SZHANG29"."Student" VALUES ('3', 'Gale', 'Boetticher', '123456782', '123456783', '1513 Graduate Lane', 'Raleigh, NC', '27606     ', TO_DATE('1988-12-03 11:54:15','YYYY-MM-DD HH24:MI:SS'), 'Male', 'Chile     ', '1', 'Undergraduate  ', 'BS        ', 'Third Year                    ');
INSERT INTO "SZHANG29"."Student" VALUES ('1', 'Jesse', 'Pinkman', '123456789', '123456787', '1511 Graduate Lane', 'Raleigh, NC', '27606     ', TO_DATE('1988-10-03 11:50:20','YYYY-MM-DD HH24:MI:SS'), 'Male', 'American  ', '1', 'Undergraduate  ', 'BS        ', 'First Year                    ');
INSERT INTO "SZHANG29"."Student" VALUES ('4', 'Saul', 'Goodman', '123456784', '123456785', '1514 Graduate Lane', 'Raleigh, NC', '27606     ', TO_DATE('1988-01-03 11:55:22','YYYY-MM-DD HH24:MI:SS'), 'Male', 'American  ', '1', 'Graduate       ', 'MS        ', 'Second Year                   ');
COMMIT;

-- ----------------------------
--  Table structure for RoomReservation
-- ----------------------------
DROP TABLE "SZHANG29"."RoomReservation";
CREATE TABLE "RoomReservation" (   "Room_id" NUMBER NOT NULL, "Patron_id" NUMBER NOT NULL, "RoomReservation_start" DATE NOT NULL, "RoomReservation_due" DATE NOT NULL, "Lib_id" NUMBER NOT NULL);

-- ----------------------------
--  Records of RoomReservation
-- ----------------------------
INSERT INTO "SZHANG29"."RoomReservation" VALUES ('3', '5', TO_DATE('2015-10-10 09:00:00','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-10-10 11:30:00','YYYY-MM-DD HH24:MI:SS'), '2');
INSERT INTO "SZHANG29"."RoomReservation" VALUES ('5', '1', TO_DATE('2015-10-12 15:00:00','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-10-12 17:00:00','YYYY-MM-DD HH24:MI:SS'), '1');
INSERT INTO "SZHANG29"."RoomReservation" VALUES ('6', '8', TO_DATE('2015-10-15 11:00:00','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-10-15 13:30:00','YYYY-MM-DD HH24:MI:SS'), '2');
INSERT INTO "SZHANG29"."RoomReservation" VALUES ('1', '6', TO_DATE('2015-10-20 09:00:00','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-10-20 10:30:00','YYYY-MM-DD HH24:MI:SS'), '1');
COMMIT;

-- ----------------------------
--  Table structure for Room
-- ----------------------------
DROP TABLE "SZHANG29"."Room";
CREATE TABLE "Room" (   "Room_id" NUMBER NOT NULL, "Lib_id" NUMBER NOT NULL, "Room_position" VARCHAR2(20BYTE) NOT NULL, "Room_capacity" NUMBER(10,0) NOT NULL, "Room_avail" VARCHAR2(10BYTE) DEFAULT 0     NOT NULL, "Room_type" VARCHAR2(10BYTE) NOT NULL, "Room_num" VARCHAR2(10BYTE) NOT NULL);

-- ----------------------------
--  Records of Room
-- ----------------------------
INSERT INTO "SZHANG29"."Room" VALUES ('3', '2', '2nd Floor', '4', 'avail', 'StudyRoom', 'R3');
INSERT INTO "SZHANG29"."Room" VALUES ('1', '1', '3rd Floor', '2', 'avail', 'Conference', 'R1');
INSERT INTO "SZHANG29"."Room" VALUES ('2', '1', '3rd Floor', '3', 'avail', 'StudyRoom', 'R2');
INSERT INTO "SZHANG29"."Room" VALUES ('4', '1', '3rd Floor', '3', 'avail', 'Conference', 'R4');
INSERT INTO "SZHANG29"."Room" VALUES ('5', '1', '3rd Floor', '4', 'avail', 'StudyRoom', 'R5');
INSERT INTO "SZHANG29"."Room" VALUES ('6', '2', '3rd Floor', '4', 'avail', 'StudyRoom', 'R6');
INSERT INTO "SZHANG29"."Room" VALUES ('7', '1', '2nd Floor', '2', 'avail', 'StudyRoom', 'R7');
COMMIT;

-- ----------------------------
--  Table structure for PublicationQ
-- ----------------------------
DROP TABLE "SZHANG29"."PublicationQ";
CREATE TABLE "PublicationQ" (   "Publication_id" NUMBER NOT NULL, "Patron_id" NUMBER NOT NULL, "PublicationQ_date" DATE NOT NULL);

-- ----------------------------
--  Table structure for Publication
-- ----------------------------
DROP TABLE "SZHANG29"."Publication";
CREATE TABLE "Publication" (   "Publication_id" NUMBER NOT NULL, "Publication_type" VARCHAR2(20BYTE) NOT NULL);

-- ----------------------------
--  Records of Publication
-- ----------------------------
INSERT INTO "SZHANG29"."Publication" VALUES ('13', 'Book');
INSERT INTO "SZHANG29"."Publication" VALUES ('14', 'Book');
INSERT INTO "SZHANG29"."Publication" VALUES ('1', 'Book');
INSERT INTO "SZHANG29"."Publication" VALUES ('2', 'Book');
INSERT INTO "SZHANG29"."Publication" VALUES ('3', 'Book');
INSERT INTO "SZHANG29"."Publication" VALUES ('4', 'Book');
INSERT INTO "SZHANG29"."Publication" VALUES ('5', 'Book');
INSERT INTO "SZHANG29"."Publication" VALUES ('6', 'Book');
INSERT INTO "SZHANG29"."Publication" VALUES ('7', 'Book');
INSERT INTO "SZHANG29"."Publication" VALUES ('8', 'Book');
INSERT INTO "SZHANG29"."Publication" VALUES ('9', 'Journal');
INSERT INTO "SZHANG29"."Publication" VALUES ('10', 'Journal');
INSERT INTO "SZHANG29"."Publication" VALUES ('11', 'Conf');
INSERT INTO "SZHANG29"."Publication" VALUES ('12', 'Conf');
COMMIT;

-- ----------------------------
--  Table structure for Patron
-- ----------------------------
DROP TABLE "SZHANG29"."Patron";
CREATE TABLE "Patron" (   "Patron_id" NUMBER NOT NULL, "Patron_username" VARCHAR2(30BYTE) NOT NULL, "Patron_password" VARCHAR2(30BYTE) NOT NULL, "Patron_type" VARCHAR2(30BYTE) NOT NULL);

-- ----------------------------
--  Records of Patron
-- ----------------------------
INSERT INTO "SZHANG29"."Patron" VALUES ('1', 'jpink', 'jpink', 'Student');
INSERT INTO "SZHANG29"."Patron" VALUES ('2', 'wjr', 'wjr', 'Student');
INSERT INTO "SZHANG29"."Patron" VALUES ('3', 'gboet', 'gboet', 'Student');
INSERT INTO "SZHANG29"."Patron" VALUES ('4', 'sgood', 'sgood', 'Student');
INSERT INTO "SZHANG29"."Patron" VALUES ('5', 'wwhite', 'wwhite', 'Faculty');
INSERT INTO "SZHANG29"."Patron" VALUES ('6', 'gfring', 'gfring', 'Faculty');
INSERT INTO "SZHANG29"."Patron" VALUES ('7', 'hschrad', 'hschrad', 'Faculty');
INSERT INTO "SZHANG29"."Patron" VALUES ('8', 'swhite', 'swhite', 'Faculty');
COMMIT;

-- ----------------------------
--  Table structure for Library
-- ----------------------------
DROP TABLE "SZHANG29"."Library";
CREATE TABLE "Library" (   "Lib_id" NUMBER NOT NULL, "Lib_name" VARCHAR2(20BYTE) NOT NULL);

-- ----------------------------
--  Records of Library
-- ----------------------------
INSERT INTO "SZHANG29"."Library" VALUES ('1', 'J. B. Hunt');
INSERT INTO "SZHANG29"."Library" VALUES ('2', 'D. H. Hill          ');
COMMIT;

-- ----------------------------
--  Table structure for Journal
-- ----------------------------
DROP TABLE "SZHANG29"."Journal";
CREATE TABLE "Journal" (   "Journal_ISSN" VARCHAR2(10BYTE) NOT NULL, "Journal_author" VARCHAR2(30BYTE) NOT NULL, "Journal_year" NUMBER(10,0) NOT NULL, "Journal_avail" VARCHAR2(10BYTE) DEFAULT 0    NOT NULL, "Journal_title" VARCHAR2(80BYTE) NOT NULL, "Publication_id" NUMBER NOT NULL, "Journal_type" VARCHAR2(15BYTE));

-- ----------------------------
--  Records of Journal
-- ----------------------------
INSERT INTO "SZHANG29"."Journal" VALUES ('J1', 'Roberto Navigli', '2010', 'avail', 'Journal of Web Semantic', '9', 'hardcopy');
INSERT INTO "SZHANG29"."Journal" VALUES ('J2', 'Tim Berners Lee', '2011', 'avail', 'International Journal on Semantic Web and Information', '10', null);
COMMIT;

-- ----------------------------
--  Table structure for Faculty
-- ----------------------------
DROP TABLE "SZHANG29"."Faculty";
CREATE TABLE "Faculty" (   "Patron_id" NUMBER NOT NULL, "Faculty_fname" VARCHAR2(20BYTE) NOT NULL, "Faculty_lname" VARCHAR2(20BYTE) NOT NULL, "Faculty_category" VARCHAR2(30BYTE) NOT NULL, "Faculty_nationality" VARCHAR2(30BYTE) NOT NULL, "Department_id" NUMBER NOT NULL);

-- ----------------------------
--  Records of Faculty
-- ----------------------------
INSERT INTO "SZHANG29"."Faculty" VALUES ('5', 'Walter', 'White', 'Professor', 'American', '1');
INSERT INTO "SZHANG29"."Faculty" VALUES ('6', 'Gustavo', 'Fring', 'Assistant Professor', 'American', '1');
INSERT INTO "SZHANG29"."Faculty" VALUES ('7', 'Hank', 'Schrader', 'Associate Professor', 'American', '1');
INSERT INTO "SZHANG29"."Faculty" VALUES ('8', 'Skyler              ', 'White', 'Professor', 'American', '1');
COMMIT;

-- ----------------------------
--  Table structure for Enroll
-- ----------------------------
DROP TABLE "SZHANG29"."Enroll";
CREATE TABLE "Enroll" (   "Patron_id" NUMBER NOT NULL, "Course_id" VARCHAR2(10BYTE) NOT NULL);

-- ----------------------------
--  Records of Enroll
-- ----------------------------
INSERT INTO "SZHANG29"."Enroll" VALUES ('1', 'CH101');
INSERT INTO "SZHANG29"."Enroll" VALUES ('1', 'CH103');
INSERT INTO "SZHANG29"."Enroll" VALUES ('1', 'CH104');
INSERT INTO "SZHANG29"."Enroll" VALUES ('2', 'CH101');
INSERT INTO "SZHANG29"."Enroll" VALUES ('2', 'CH102');
INSERT INTO "SZHANG29"."Enroll" VALUES ('2', 'CH104');
INSERT INTO "SZHANG29"."Enroll" VALUES ('3', 'CH101');
INSERT INTO "SZHANG29"."Enroll" VALUES ('3', 'CH102');
INSERT INTO "SZHANG29"."Enroll" VALUES ('3', 'CH103');
INSERT INTO "SZHANG29"."Enroll" VALUES ('4', 'CH102');
INSERT INTO "SZHANG29"."Enroll" VALUES ('4', 'CH103');
INSERT INTO "SZHANG29"."Enroll" VALUES ('4', 'CH104');
COMMIT;

-- ----------------------------
--  Table structure for Department
-- ----------------------------
DROP TABLE "SZHANG29"."Department";
CREATE TABLE "Department" (   "Department_id" NUMBER NOT NULL, "Department_name" VARCHAR2(30BYTE) NOT NULL);

-- ----------------------------
--  Records of Department
-- ----------------------------
INSERT INTO "SZHANG29"."Department" VALUES ('1', 'Chemistry                     ');
COMMIT;

-- ----------------------------
--  Table structure for Course
-- ----------------------------
DROP TABLE "SZHANG29"."Course";
CREATE TABLE "Course" (   "Course_id" VARCHAR2(10BYTE) NOT NULL, "Course_name" VARCHAR2(30BYTE) NOT NULL);

-- ----------------------------
--  Records of Course
-- ----------------------------
INSERT INTO "SZHANG29"."Course" VALUES ('CH101', 'Chemistry');
INSERT INTO "SZHANG29"."Course" VALUES ('CH102', 'Oeganic Chemistry');
INSERT INTO "SZHANG29"."Course" VALUES ('CH103', 'Physical Chemistry');
INSERT INTO "SZHANG29"."Course" VALUES ('CH104', 'Inorganic Chemistry');
COMMIT;

-- ----------------------------
--  Table structure for ConfProceeding
-- ----------------------------
DROP TABLE "SZHANG29"."ConfProceeding";
CREATE TABLE "ConfProceeding" (   "Publication_id" NUMBER NOT NULL, "Conf_title" VARCHAR2(100BYTE) NOT NULL, "Conf_author" VARCHAR2(20BYTE) NOT NULL, "Conf_year" NUMBER NOT NULL, "Conf_name" VARCHAR2(20BYTE) NOT NULL, "Conf_num" VARCHAR2(10BYTE) NOT NULL, "Conf_type" VARCHAR2(15BYTE) NOT NULL);

-- ----------------------------
--  Records of ConfProceeding
-- ----------------------------
INSERT INTO "SZHANG29"."ConfProceeding" VALUES ('11', 'Optimization Techniques for Large Scale Graph Analytics on Map Reduce', 'HyeongSik Kim', '2013', 'WWW', 'C1', 'hardcopy');
INSERT INTO "SZHANG29"."ConfProceeding" VALUES ('12', 'An agglomerative query model for discovery in linked data: semantics and approach', 'Sidan Gao', '2014', 'SIGMOD', 'C2', 'hardcopy');
COMMIT;

-- ----------------------------
--  Table structure for CameraReservation
-- ----------------------------
DROP TABLE "SZHANG29"."CameraReservation";
CREATE TABLE "CameraReservation" (   "Camera_id" NUMBER NOT NULL, "Patron_id" NUMBER NOT NULL, "CameraReservation_start" DATE NOT NULL, "CameraReservation_due" DATE NOT NULL, "CameraReservation_fee" NUMBER DEFAULT 0  NOT NULL);

-- ----------------------------
--  Records of CameraReservation
-- ----------------------------
INSERT INTO "SZHANG29"."CameraReservation" VALUES ('2', '3', TO_DATE('2015-10-30 14:52:43','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-11-05 14:52:59','YYYY-MM-DD HH24:MI:SS'), '0');
INSERT INTO "SZHANG29"."CameraReservation" VALUES ('1', '1', TO_DATE('2015-11-06 14:53:24','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-11-12 14:53:30','YYYY-MM-DD HH24:MI:SS'), '0');
INSERT INTO "SZHANG29"."CameraReservation" VALUES ('3', '2', TO_DATE('2015-10-16 14:53:51','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-10-22 14:53:57','YYYY-MM-DD HH24:MI:SS'), '0');
COMMIT;

-- ----------------------------
--  Table structure for CameraQ
-- ----------------------------
DROP TABLE "SZHANG29"."CameraQ";
CREATE TABLE "CameraQ" (   "Camera_id" NUMBER NOT NULL, "Patron_id" NUMBER NOT NULL, "CameraQ_date" DATE NOT NULL);

-- ----------------------------
--  Table structure for Camera
-- ----------------------------
DROP TABLE "SZHANG29"."Camera";
CREATE TABLE "Camera" (   "Camera_id" NUMBER NOT NULL, "Camera_make" VARCHAR2(20BYTE) NOT NULL, "Camera_model" VARCHAR2(20BYTE) NOT NULL, "Camera_lens" VARCHAR2(30BYTE) NOT NULL, "Camera_mem" VARCHAR2(10BYTE) NOT NULL, "Lib_id" NUMBER NOT NULL);

-- ----------------------------
--  Records of Camera
-- ----------------------------
INSERT INTO "SZHANG29"."Camera" VALUES ('1', 'Olympus', 'E-620', '14-42mm lens 1:3.5-5.6', '16G', '1');
INSERT INTO "SZHANG29"."Camera" VALUES ('2', 'Cannon', 'EOS Rebal T4i', '18-135mm EF-S IS STM Lens', '32G', '1');
INSERT INTO "SZHANG29"."Camera" VALUES ('3', 'Cannon', 'EOS Rebal T4i', '18-135mm EF-S IS STM Lens', '32G', '1');
COMMIT;

-- ----------------------------
--  Table structure for BookReservation
-- ----------------------------
DROP TABLE "SZHANG29"."BookReservation";
CREATE TABLE "BookReservation" (   "Patron_id" NUMBER NOT NULL, "Publication_id" NUMBER NOT NULL, "BookReservation_start" DATE NOT NULL, "BookReservation_due" DATE NOT NULL, "BookReservation_fee" NUMBER);

-- ----------------------------
--  Records of BookReservation
-- ----------------------------
INSERT INTO "SZHANG29"."BookReservation" VALUES ('1', '3', TO_DATE('2015-11-23 17:39:31','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-11-08 17:39:35','YYYY-MM-DD HH24:MI:SS'), null);
INSERT INTO "SZHANG29"."BookReservation" VALUES ('4', '7', TO_DATE('2015-11-01 17:40:12','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-11-06 17:40:19','YYYY-MM-DD HH24:MI:SS'), null);
INSERT INTO "SZHANG29"."BookReservation" VALUES ('2', '4', TO_DATE('2015-07-01 17:40:31','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-08-08 17:40:40','YYYY-MM-DD HH24:MI:SS'), null);
INSERT INTO "SZHANG29"."BookReservation" VALUES ('3', '3', TO_DATE('2015-10-23 17:41:59','YYYY-MM-DD HH24:MI:SS'), TO_DATE('2015-10-10 17:42:06','YYYY-MM-DD HH24:MI:SS'), null);
COMMIT;

-- ----------------------------
--  Table structure for Book
-- ----------------------------
DROP TABLE "SZHANG29"."Book";
CREATE TABLE "Book" (   "Book_ISBN" VARCHAR2(30BYTE) NOT NULL, "Book_title" VARCHAR2(50BYTE) NOT NULL, "Book_edition" NUMBER(10,0) NOT NULL, "Book_author" VARCHAR2(30BYTE) NOT NULL, "Book_year" NUMBER NOT NULL, "Book_publisher" VARCHAR2(30BYTE) NOT NULL, "Publication_id" NUMBER NOT NULL, "Book_avail" VARCHAR2(10BYTE) DEFAULT 0    NOT NULL, "Book_reserve" VARCHAR2(5BYTE) NOT NULL, "Book_type" VARCHAR2(15BYTE) NOT NULL);

-- ----------------------------
--  Records of Book
-- ----------------------------
INSERT INTO "SZHANG29"."Book" VALUES ('B1', 'Introduction to Chemistry', '1', 'SK Goyal', '2005', 'Pub1', '13', 'avail', 'No', 'electronic');
INSERT INTO "SZHANG29"."Book" VALUES ('B2                            ', 'Introduction to Organic Chemistry                 ', '2', 'HC Verma', '2006', 'Pub2', '14', 'avail', 'No', 'electronic');
INSERT INTO "SZHANG29"."Book" VALUES ('B3', 'Introduction to Physical Chemistry                ', '3', 'Resnick Halliday Walker', '2000', 'Pub3', '6', 'avail', 'No', 'hardcopy');
INSERT INTO "SZHANG29"."Book" VALUES ('B4', 'Introduction to Inorganic Chemistry', '4', 'RC Mukherjee', '2005', 'Pub4', '7', 'avail', 'No', 'hardcopy');
INSERT INTO "SZHANG29"."Book" VALUES ('B4', 'Introduction to Inorganic Chemistry', '4', 'RC Mukherjee', '2005', 'Pub4', '8', 'avail', 'No', 'hardcopy');
INSERT INTO "SZHANG29"."Book" VALUES ('B1                            ', 'Introduction to Chemistry                         ', '1', 'SK Goyal', '2005', 'Pub1', '1', 'avail', 'No', 'hardcopy');
INSERT INTO "SZHANG29"."Book" VALUES ('B1                            ', 'Introduction to Chemistry                         ', '1', 'SK Goyal', '2005', 'Pub1', '2', 'avail', 'No', 'hardcopy');
INSERT INTO "SZHANG29"."Book" VALUES ('B2                            ', 'Introduction to Organic Chemistry                 ', '2', 'HC Verma', '2006', 'Pub2', '3', 'avail', 'No', 'hardcopy');
INSERT INTO "SZHANG29"."Book" VALUES ('B2                            ', 'Introduction to Organic Chemistry                 ', '2', 'HC Verma', '2006', 'Pub2', '4', 'avail', 'No', 'hardcopy');
INSERT INTO "SZHANG29"."Book" VALUES ('B3                            ', 'Introduction to Physical Chemistry                ', '3', 'Resnick Halliday Walker', '2000', 'Pub3', '5', 'avail', 'No', 'hardcopy');
COMMIT;

-- ----------------------------
--  Primary key structure for table TextBookReservation
-- ----------------------------
ALTER TABLE "SZHANG29"."TextBookReservation" ADD CONSTRAINT "SYS_C00836869" PRIMARY KEY("Publication_id","Patron_id","Course_id");

-- ----------------------------
--  Checks structure for table TextBookReservation
-- ----------------------------
ALTER TABLE "SZHANG29"."TextBookReservation" ADD CONSTRAINT "SYS_C00836865" CHECK ("Publication_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836866" CHECK ("Patron_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836868" CHECK ("Course_id" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table Teach
-- ----------------------------
ALTER TABLE "SZHANG29"."Teach" ADD CONSTRAINT "SYS_C00836327" PRIMARY KEY("Patron_id","Course_id");

-- ----------------------------
--  Checks structure for table Teach
-- ----------------------------
ALTER TABLE "SZHANG29"."Teach" ADD CONSTRAINT "SYS_C00816662" CHECK ("Patron_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816663" CHECK ("Course_id" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table Student
-- ----------------------------
ALTER TABLE "SZHANG29"."Student" ADD CONSTRAINT "SYS_C00828481" PRIMARY KEY("Patron_id");

-- ----------------------------
--  Checks structure for table Student
-- ----------------------------
ALTER TABLE "SZHANG29"."Student" ADD CONSTRAINT "SYS_C00816644" CHECK ("Patron_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816645" CHECK ("Student_fname" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816646" CHECK ("Student_lname" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816647" CHECK ("Student_birth" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816648" CHECK ("Student_sex" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816649" CHECK ("Student_nationality" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816650" CHECK ("Department_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816651" CHECK ("Student_classification" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816652" CHECK ("Student_program" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816653" CHECK ("Student_category" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table RoomReservation
-- ----------------------------
ALTER TABLE "SZHANG29"."RoomReservation" ADD CONSTRAINT "SYS_C00836355" PRIMARY KEY("Room_id","Patron_id","Lib_id");

-- ----------------------------
--  Checks structure for table RoomReservation
-- ----------------------------
ALTER TABLE "SZHANG29"."RoomReservation" ADD CONSTRAINT "SYS_C00836348" CHECK ("Room_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836349" CHECK ("Patron_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836350" CHECK ("RoomReservation_start" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836353" CHECK ("RoomReservation_due" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836354" CHECK ("Lib_id" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table Room
-- ----------------------------
ALTER TABLE "SZHANG29"."Room" ADD CONSTRAINT "SYS_C00836345" PRIMARY KEY("Room_id","Lib_id");

-- ----------------------------
--  Checks structure for table Room
-- ----------------------------
ALTER TABLE "SZHANG29"."Room" ADD CONSTRAINT "SYS_C00816673" CHECK ("Room_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816674" CHECK ("Lib_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816675" CHECK ("Room_position" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816676" CHECK ("Room_capacity" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00826961" CHECK ("Room_avail" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836344" CHECK ("Room_type" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836352" CHECK ("Room_num" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table PublicationQ
-- ----------------------------
ALTER TABLE "SZHANG29"."PublicationQ" ADD CONSTRAINT "SYS_C00842293" PRIMARY KEY("Publication_id","Patron_id");

-- ----------------------------
--  Checks structure for table PublicationQ
-- ----------------------------
ALTER TABLE "SZHANG29"."PublicationQ" ADD CONSTRAINT "SYS_C00842271" CHECK ("Publication_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00842272" CHECK ("Patron_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00842273" CHECK ("PublicationQ_date" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table Publication
-- ----------------------------
ALTER TABLE "SZHANG29"."Publication" ADD CONSTRAINT "SYS_C00828489" PRIMARY KEY("Publication_id");

-- ----------------------------
--  Checks structure for table Publication
-- ----------------------------
ALTER TABLE "SZHANG29"."Publication" ADD CONSTRAINT "SYS_C00828487" CHECK ("Publication_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00828488" CHECK ("Publication_type" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table Patron
-- ----------------------------
ALTER TABLE "SZHANG29"."Patron" ADD CONSTRAINT "SYS_C00828478" PRIMARY KEY("Patron_id");

-- ----------------------------
--  Checks structure for table Patron
-- ----------------------------
ALTER TABLE "SZHANG29"."Patron" ADD CONSTRAINT "SYS_C00828475" CHECK ("Patron_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00828476" CHECK ("Patron_username" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00828477" CHECK ("Patron_password" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00828479" CHECK ("Patron_type" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table Library
-- ----------------------------
ALTER TABLE "SZHANG29"."Library" ADD CONSTRAINT "SYS_C00827761" PRIMARY KEY("Lib_id");

-- ----------------------------
--  Checks structure for table Library
-- ----------------------------
ALTER TABLE "SZHANG29"."Library" ADD CONSTRAINT "SYS_C00816684" CHECK ("Lib_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816685" CHECK ("Lib_name" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table Journal
-- ----------------------------
ALTER TABLE "SZHANG29"."Journal" ADD CONSTRAINT "SYS_C00828492" PRIMARY KEY("Publication_id");

-- ----------------------------
--  Checks structure for table Journal
-- ----------------------------
ALTER TABLE "SZHANG29"."Journal" ADD CONSTRAINT "SYS_C00827521" CHECK ("Journal_ISSN" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00827522" CHECK ("Journal_author" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00827523" CHECK ("Journal_year" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00827524" CHECK ("Journal_avail" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00827525" CHECK ("Journal_title" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00827759" CHECK ("Publication_id" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table Faculty
-- ----------------------------
ALTER TABLE "SZHANG29"."Faculty" ADD CONSTRAINT "SYS_C00828480" PRIMARY KEY("Patron_id");

-- ----------------------------
--  Checks structure for table Faculty
-- ----------------------------
ALTER TABLE "SZHANG29"."Faculty" ADD CONSTRAINT "SYS_C00816655" CHECK ("Patron_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816656" CHECK ("Faculty_fname" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816657" CHECK ("Faculty_lname" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816659" CHECK ("Faculty_category" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816660" CHECK ("Faculty_nationality" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00816661" CHECK ("Department_id" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table Enroll
-- ----------------------------
ALTER TABLE "SZHANG29"."Enroll" ADD CONSTRAINT "SYS_C00836864" PRIMARY KEY("Patron_id","Course_id");

-- ----------------------------
--  Checks structure for table Enroll
-- ----------------------------
ALTER TABLE "SZHANG29"."Enroll" ADD CONSTRAINT "SYS_C00828561" CHECK ("Patron_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00828562" CHECK ("Course_id" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table Department
-- ----------------------------
ALTER TABLE "SZHANG29"."Department" ADD CONSTRAINT "SYS_C00827756" PRIMARY KEY("Department_id");

-- ----------------------------
--  Checks structure for table Department
-- ----------------------------
ALTER TABLE "SZHANG29"."Department" ADD CONSTRAINT "SYS_C00826958" CHECK ("Department_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00826959" CHECK ("Department_name" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table Course
-- ----------------------------
ALTER TABLE "SZHANG29"."Course" ADD CONSTRAINT "SYS_C00816668" PRIMARY KEY("Course_id");

-- ----------------------------
--  Checks structure for table Course
-- ----------------------------
ALTER TABLE "SZHANG29"."Course" ADD CONSTRAINT "SYS_C00828558" CHECK ("Course_name" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table ConfProceeding
-- ----------------------------
ALTER TABLE "SZHANG29"."ConfProceeding" ADD CONSTRAINT "SYS_C00828491" PRIMARY KEY("Publication_id");

-- ----------------------------
--  Checks structure for table ConfProceeding
-- ----------------------------
ALTER TABLE "SZHANG29"."ConfProceeding" ADD CONSTRAINT "SYS_C00827515" CHECK ("Publication_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00827516" CHECK ("Conf_title" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00827517" CHECK ("Conf_author" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00827518" CHECK ("Conf_year" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00827519" CHECK ("Conf_name" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836655" CHECK ("Conf_num" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00842281" CHECK ("Conf_type" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table CameraReservation
-- ----------------------------
ALTER TABLE "SZHANG29"."CameraReservation" ADD CONSTRAINT "SYS_C00836362" PRIMARY KEY("Camera_id","Patron_id");

-- ----------------------------
--  Checks structure for table CameraReservation
-- ----------------------------
ALTER TABLE "SZHANG29"."CameraReservation" ADD CONSTRAINT "SYS_C00836358" CHECK ("Camera_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836359" CHECK ("Patron_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836360" CHECK ("CameraReservation_start" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836361" CHECK ("CameraReservation_due" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00842286" CHECK ("CameraReservation_fee" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table CameraQ
-- ----------------------------
ALTER TABLE "SZHANG29"."CameraQ" ADD CONSTRAINT "SYS_C00842290" PRIMARY KEY("Camera_id","Patron_id");

-- ----------------------------
--  Checks structure for table CameraQ
-- ----------------------------
ALTER TABLE "SZHANG29"."CameraQ" ADD CONSTRAINT "SYS_C00842287" CHECK ("Camera_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00842288" CHECK ("Patron_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00842289" CHECK ("CameraQ_date" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table Camera
-- ----------------------------
ALTER TABLE "SZHANG29"."Camera" ADD CONSTRAINT "SYS_C00836363" PRIMARY KEY("Camera_id");

-- ----------------------------
--  Checks structure for table Camera
-- ----------------------------
ALTER TABLE "SZHANG29"."Camera" ADD CONSTRAINT "SYS_C00836337" CHECK ("Camera_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836338" CHECK ("Camera_make" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836339" CHECK ("Camera_model" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836340" CHECK ("Camera_lens" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836341" CHECK ("Camera_mem" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836342" CHECK ("Lib_id" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table BookReservation
-- ----------------------------
ALTER TABLE "SZHANG29"."BookReservation" ADD CONSTRAINT "SYS_C00836874" PRIMARY KEY("Patron_id","Publication_id");

-- ----------------------------
--  Checks structure for table BookReservation
-- ----------------------------
ALTER TABLE "SZHANG29"."BookReservation" ADD CONSTRAINT "SYS_C00836870" CHECK ("Patron_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836871" CHECK ("Publication_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836872" CHECK ("BookReservation_start" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836875" CHECK ("BookReservation_due" IS NOT NULL) ENABLE;

-- ----------------------------
--  Primary key structure for table Book
-- ----------------------------
ALTER TABLE "SZHANG29"."Book" ADD CONSTRAINT "SYS_C00842277" PRIMARY KEY("Publication_id");

-- ----------------------------
--  Checks structure for table Book
-- ----------------------------
ALTER TABLE "SZHANG29"."Book" ADD CONSTRAINT "SYS_C00827527" CHECK ("Book_ISBN" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00827528" CHECK ("Book_title" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00827530" CHECK ("Book_author" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00827531" CHECK ("Book_year" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00827532" CHECK ("Book_publisher" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00827535" CHECK ("Publication_id" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00828570" CHECK ("Book_avail" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00836881" CHECK ("Book_edition" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00842279" CHECK ("Book_reserve" IS NOT NULL) ENABLE ADD CONSTRAINT "SYS_C00842280" CHECK ("Book_type" IS NOT NULL) ENABLE;

-- ----------------------------
--  Foreign keys structure for table TextBookReservation
-- ----------------------------
ALTER TABLE "SZHANG29"."TextBookReservation" ADD CONSTRAINT "TBR_Course" FOREIGN KEY ("Course_id") REFERENCES "SZHANG29"."Course" ("Course_id") ENABLE ADD CONSTRAINT "TBR_Patron" FOREIGN KEY ("Patron_id") REFERENCES "SZHANG29"."Patron" ("Patron_id") ENABLE ADD CONSTRAINT "TBR_Publication" FOREIGN KEY ("Publication_id") REFERENCES "SZHANG29"."Publication" ("Publication_id") ENABLE;

-- ----------------------------
--  Foreign keys structure for table Teach
-- ----------------------------
ALTER TABLE "SZHANG29"."Teach" ADD CONSTRAINT "Teach_Course" FOREIGN KEY ("Course_id") REFERENCES "SZHANG29"."Course" ("Course_id") ENABLE ADD CONSTRAINT "Teach_Patron" FOREIGN KEY ("Patron_id") REFERENCES "SZHANG29"."Patron" ("Patron_id") ENABLE;

-- ----------------------------
--  Foreign keys structure for table Student
-- ----------------------------
ALTER TABLE "SZHANG29"."Student" ADD CONSTRAINT "Student_Department" FOREIGN KEY ("Department_id") REFERENCES "SZHANG29"."Department" ("Department_id") ON DELETE CASCADE ENABLE ADD CONSTRAINT "Student_Patron" FOREIGN KEY ("Patron_id") REFERENCES "SZHANG29"."Patron" ("Patron_id") ON DELETE CASCADE ENABLE;

-- ----------------------------
--  Foreign keys structure for table RoomReservation
-- ----------------------------
ALTER TABLE "SZHANG29"."RoomReservation" ADD CONSTRAINT "RoomReservation_Patron" FOREIGN KEY ("Patron_id") REFERENCES "SZHANG29"."Patron" ("Patron_id") ON DELETE CASCADE ENABLE ADD CONSTRAINT "RoomReservation_Room" FOREIGN KEY ("Room_id", "Lib_id") REFERENCES "SZHANG29"."Room" ("Room_id", "Lib_id") ON DELETE CASCADE ENABLE;

-- ----------------------------
--  Foreign keys structure for table Room
-- ----------------------------
ALTER TABLE "SZHANG29"."Room" ADD CONSTRAINT "Room_Lib" FOREIGN KEY ("Lib_id") REFERENCES "SZHANG29"."Library" ("Lib_id") ON DELETE CASCADE ENABLE;

-- ----------------------------
--  Foreign keys structure for table PublicationQ
-- ----------------------------
ALTER TABLE "SZHANG29"."PublicationQ" ADD CONSTRAINT "PublicationQ_Patron" FOREIGN KEY ("Patron_id") REFERENCES "SZHANG29"."Patron" ("Patron_id") ENABLE ADD CONSTRAINT "PublicationQ_Publication" FOREIGN KEY ("Publication_id") REFERENCES "SZHANG29"."Publication" ("Publication_id") ENABLE;

-- ----------------------------
--  Foreign keys structure for table Journal
-- ----------------------------
ALTER TABLE "SZHANG29"."Journal" ADD CONSTRAINT "Journal_Publication" FOREIGN KEY ("Publication_id") REFERENCES "SZHANG29"."Publication" ("Publication_id") ON DELETE CASCADE ENABLE;

-- ----------------------------
--  Foreign keys structure for table Faculty
-- ----------------------------
ALTER TABLE "SZHANG29"."Faculty" ADD CONSTRAINT "Faculty_Patron" FOREIGN KEY ("Patron_id") REFERENCES "SZHANG29"."Patron" ("Patron_id") ON DELETE CASCADE ENABLE;

-- ----------------------------
--  Foreign keys structure for table Enroll
-- ----------------------------
ALTER TABLE "SZHANG29"."Enroll" ADD CONSTRAINT "Enroll_Course" FOREIGN KEY ("Course_id") REFERENCES "SZHANG29"."Course" ("Course_id") ENABLE ADD CONSTRAINT "Enroll_Patron" FOREIGN KEY ("Patron_id") REFERENCES "SZHANG29"."Patron" ("Patron_id") ENABLE;

-- ----------------------------
--  Foreign keys structure for table ConfProceeding
-- ----------------------------
ALTER TABLE "SZHANG29"."ConfProceeding" ADD CONSTRAINT "ConfProceeding_Publication" FOREIGN KEY ("Publication_id") REFERENCES "SZHANG29"."Publication" ("Publication_id") ON DELETE CASCADE ENABLE;

-- ----------------------------
--  Foreign keys structure for table CameraReservation
-- ----------------------------
ALTER TABLE "SZHANG29"."CameraReservation" ADD CONSTRAINT "CameraReservation_Camera" FOREIGN KEY ("Camera_id") REFERENCES "SZHANG29"."Camera" ("Camera_id") ON DELETE CASCADE ENABLE ADD CONSTRAINT "CameraReservation_Patron" FOREIGN KEY ("Patron_id") REFERENCES "SZHANG29"."Patron" ("Patron_id") ON DELETE CASCADE ENABLE;

-- ----------------------------
--  Foreign keys structure for table CameraQ
-- ----------------------------
ALTER TABLE "SZHANG29"."CameraQ" ADD CONSTRAINT "CameraQ_Camera" FOREIGN KEY ("Camera_id") REFERENCES "SZHANG29"."Camera" ("Camera_id") ENABLE ADD CONSTRAINT "CameraQ_Patron" FOREIGN KEY ("Patron_id") REFERENCES "SZHANG29"."Patron" ("Patron_id") ENABLE;

-- ----------------------------
--  Foreign keys structure for table Camera
-- ----------------------------
ALTER TABLE "SZHANG29"."Camera" ADD CONSTRAINT "Camera_Lib" FOREIGN KEY ("Lib_id") REFERENCES "SZHANG29"."Library" ("Lib_id") ENABLE;

-- ----------------------------
--  Foreign keys structure for table BookReservation
-- ----------------------------
ALTER TABLE "SZHANG29"."BookReservation" ADD CONSTRAINT "BookReservation_Patron" FOREIGN KEY ("Patron_id") REFERENCES "SZHANG29"."Patron" ("Patron_id") ENABLE ADD CONSTRAINT "BookReservation_Publication" FOREIGN KEY ("Publication_id") REFERENCES "SZHANG29"."Publication" ("Publication_id") ENABLE;

-- ----------------------------
--  Foreign keys structure for table Book
-- ----------------------------
ALTER TABLE "SZHANG29"."Book" ADD CONSTRAINT "Book_Publication" FOREIGN KEY ("Publication_id") REFERENCES "SZHANG29"."Publication" ("Publication_id") ON DELETE CASCADE ENABLE;

