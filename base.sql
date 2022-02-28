DROP DATABASE IF EXISTS `COMFORT_TRAVEL`;
CREATE DATABASE `COMFORT_TRAVEL`;
USE COMFORT_TRAVEL;

show tables ;
--
-- Table structure for table `permission_role`
--
CREATE TABLE `PERMISSION` (
    `PERMISSION_ID` 		INT(11) NOT NULL,
    `NAME` 					VARCHAR(30),
    `DESCRIPTION`			VARCHAR(255),
    `STATUS` 				VARCHAR(20) NOT NULL,
    `CREATED_BY` 			VARCHAR(30),
    `UPDATED_BY` 			VARCHAR(30),
    `CREATED_ON` 			DATETIME,
    `UPDATED_ON` 			DATETIME
);
----------------------------------------------------------
--
-- Table structure for table `permission_role`
--
CREATE TABLE `PERMISSION_ROLE` (
    `PERMISSION_ROLE_ID` 	INT(11) NOT NULL,
    `ROLE_ID` 				INT(11) DEFAULT NULL,
    `PERMISSION_ID` 		INT(11) DEFAULT NULL,
    `STATUS` 				VARCHAR(20) NOT NULL,
    `CREATED_BY` 			VARCHAR(30),
    `UPDATED_BY` 			VARCHAR(30),
    `CREATED_ON` 			DATETIME,
    `UPDATED_ON` 			DATETIME
);
----------------------------------------------------------
--
-- Table structure for table `role`
--
CREATE TABLE `ROLE` (
    `ROLE_ID` 				INT(11) NOT NULL,
    `ROLE_NAME` 			VARCHAR(30) NOT NULL,
    `DESCRIPTION` 			VARCHAR(300) NOT NULL,
    `STATUS` 				VARCHAR(20) NOT NULL,
	`CREATED_BY` 			VARCHAR(30),
    `UPDATED_BY` 			VARCHAR(30),
    `CREATED_ON` 			DATETIME,
    `UPDATED_ON` 			DATETIME
);
----------------------------------------------------------
--
-- Table structure for table `person`
--
CREATE TABLE `PERSON` (
	`PERSON_ID`				INT(11) NOT NULL,
    `FIRST_NAME`			VARCHAR(40) NOT NULL,
    `LAST_NAME`				VARCHAR(40) NOT NULL,
    `STATUS` 				VARCHAR(20) NOT NULL,
	`CREATED_BY` 			VARCHAR(30),
    `UPDATED_BY` 			VARCHAR(30),
    `CREATED_ON` 			DATETIME,
    `UPDATED_ON` 			DATETIME
);
----------------------------------------------------------
--
-- Table structure for table `user`
--
CREATE TABLE `USER` (
	`USER_ID`				INT(11) NOT NULL,
    `PERSON_ID`				INT(11) NOT NULL,
    `PERMISSION_ID`			INT(11) NOT NULL,
    `NAME`					VARCHAR(40) NOT NULL,
    `EMAIL`					VARCHAR(40) NOT NULL,
    `PASSWORD`				VARCHAR(40) NOT NULL,
    `STATUS` 				VARCHAR(20) NOT NULL,
	`CREATED_BY` 			VARCHAR(30),
    `UPDATED_BY` 			VARCHAR(30),
    `CREATED_ON` 			DATETIME,
    `UPDATED_ON` 			DATETIME
);
----------------------------------------------------------
--
-- Table structure for table `hotel`
--
CREATE TABLE `HOTEL` (
	`HOTEL_ID`				INT(11) NOT NULL,
    `NAME`					VARCHAR(40) NOT NULL,
    `COUNTRY_CODE`			VARCHAR(3) NOT NULL,
    `STATUS` 				VARCHAR(20) NOT NULL,
	`CREATED_BY` 			VARCHAR(30),
    `UPDATED_BY` 			VARCHAR(30),
    `CREATED_ON` 			DATETIME,
    `UPDATED_ON` 			DATETIME
);
----------------------------------------------------------
--
-- Table structure for table `room`
--
CREATE TABLE `ROOM` (
	`ROOM_ID`				INT(11) NOT NULL,
	`HOTEL_ID`				INT(11) NOT NULL,
    `CODE`				VARCHAR(10) NOT NULL,
    `NAME`					VARCHAR(40) NOT NULL,
    `DESCRIPTION`			VARCHAR(3) NOT NULL,
    `STATUS` 				VARCHAR(20) NOT NULL,
	`CREATED_BY` 			VARCHAR(30),
    `UPDATED_BY` 			VARCHAR(30),
    `CREATED_ON` 			DATETIME,
    `UPDATED_ON` 			DATETIME
);
----------------------------------------------------------
--
-- Table structure for table `TRANSACTION`
--
CREATE TABLE `TRANSACTION` (
	`TRANSACTION_ID`		INT(11) NOT NULL,
	`COMMENTS`				VARCHAR(255),
    `STATUS` 				VARCHAR(20) NOT NULL,
	`CREATED_BY` 			VARCHAR(30),
    `UPDATED_BY` 			VARCHAR(30),
    `CREATED_ON` 			DATETIME,
    `UPDATED_ON` 			DATETIME
);
----------------------------------------------------------
-- 
-- Table structure for table `TRANSACTION_DET`
--
CREATE TABLE `TRANSACTION_DET` (
	`TRANSACTION_DET_ID`	INT(11) NOT NULL,
	`ROOM_ID`				VARCHAR(255),
    `STATUS` 				VARCHAR(20) NOT NULL,
	`CREATED_BY` 			VARCHAR(30),
    `UPDATED_BY` 			VARCHAR(30),
    `CREATED_ON` 			DATETIME,
    `UPDATED_ON` 			DATETIME
);
----------------------------------------------------------
-- Table structure for table `reservation`
--
CREATE TABLE `RESERVATION` (
	`RESERVATION_ID`		INT(11) NOT NULL,
	`USER_ID`				INT(11) NOT NULL,
    `TRANSACTION_ID`		INT(11) NOT NULL,
    `AMOUNT`				FLOAT(11) NOT NULL,
    `INIT_DT`				DATETIME NOT NULL,
    `END_DT`				DATETIME NOT NULL,
    `STATUS` 				VARCHAR(20) NOT NULL,
	`CREATED_BY` 			VARCHAR(30),
    `UPDATED_BY` 			VARCHAR(30),
    `CREATED_ON` 			DATETIME,
    `UPDATED_ON` 			DATETIME
);
----------------------------------------------------------
COMMIT;