-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- 생성 시간: 20-02-07 01:16
-- 서버 버전: 10.1.37-MariaDB
-- PHP 버전: 7.0.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `s94gccodec_liu_F2019`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `tblAppContacts`
--

CREATE TABLE `tblAppContacts` (
  `ContactID` int(11) NOT NULL,
  `fkPersonID` int(11) NOT NULL,
  `ContactInfo` varchar(48) DEFAULT NULL,
  `Ext` int(8) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `ContactType` varchar(24) NOT NULL,
  `IsPreferred` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tblAppContacts`
--

INSERT INTO `tblAppContacts` (`ContactID`, `fkPersonID`, `ContactInfo`, `Ext`, `Description`, `ContactType`, `IsPreferred`) VALUES
(1, 2245, 'jackandjill@mail.com', NULL, 'Test', 'phone-home', 1),
(5, 2263, 'phelps@mail.com', NULL, 'email', 'email-home', 0),
(6, 2249, 'gregson@mail.com', NULL, 'email', 'email-home', 1),
(7, 2250, 'donald@mail.com', NULL, 'email', 'email-home', 1),
(8, 2251, 'bertha@mail.com', NULL, 'email', 'email-home', 1),
(9, 2252, 'porker@mail.com', NULL, 'email', 'email-home', 1),
(10, 2253, 'wermhat@mail.com', NULL, 'email', 'email-home', 1),
(11, 2254, 'johnson@mail.com', NULL, 'email', 'email-home', 1),
(12, 2255, 'private@mail.com', NULL, 'email', 'email-home', 1),
(13, 2256, 'james@mail.com', NULL, 'email', 'email-home', 1),
(14, 2264, 'harvey@mail.com', NULL, 'email', 'email-home', 1),
(15, 2258, 'vonson@mail.com', NULL, 'email', 'email-home', 1),
(16, 2259, 'porter@mail.com', NULL, 'email', 'email-home', 1),
(17, 2248, 'roald@mail.com', NULL, 'email', 'email-home', 1),
(18, 2261, 'status@mail.com', NULL, 'email', 'email-home', 1),
(19, 2262, 'app@mail.com', NULL, 'email', 'email-home', 1),
(20, 2265, 'gita.phelps@gmail.com', NULL, 'email', 'email-home', 1),
(21, 2267, '4445556666', NULL, 'fred-phone', 'phone-home', 1),
(22, 2267, 'fredcontact@email.com', NULL, 'fred-email', 'email-home', 0),
(23, 2268, '1238888888', NULL, 'janesphone', 'phone-home', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `tblAppDocs`
--

CREATE TABLE `tblAppDocs` (
  `DocumentID` int(255) NOT NULL,
  `DateUploaded` date NOT NULL,
  `fkApplicantID` int(255) NOT NULL,
  `DocType` varchar(255) CHARACTER SET utf8 NOT NULL,
  `SourceFileName` varchar(50) NOT NULL,
  `Note` varchar(255) CHARACTER SET utf8 NOT NULL,
  `FilePath` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tblAppDocs`
--

INSERT INTO `tblAppDocs` (`DocumentID`, `DateUploaded`, `fkApplicantID`, `DocType`, `SourceFileName`, `Note`, `FilePath`) VALUES
(0, '2019-04-24', 12, 'Education_Plan_Documentation', 'test.pdf', 'Testing123', 'applicationFiles/test.pdf'),
(2, '2019-04-24', 12, 'Medical_Insurance_Forms', 'test.pdf', 'Testing123', 'applicationFiles/test.pdf'),
(3, '2019-04-24', 12, 'Medical_History_Forms', 'test.pdf', 'Testing123', 'applicationFiles/test.pdf'),
(7, '2019-05-06', 3, 'Education_Plan_Documentation', 'test.pdf', 'Screenshot from 2017-03-15 10-35-46.png', 'applicationFiles/test.pdf'),
(9, '2019-04-24', 12, 'Mentor_Application', 'test.pdf', 'Testing123', 'applicationFiles/test.pdf'),
(11, '2019-05-06', 1, 'Education_Plan_Documentation', 'test.pdf', '4320_ScrenMockups.docx', 'applicationFiles/test.pdf'),
(12, '2019-05-07', 5, 'School_Behavioral_&_Attendance_Records', 'test.pdf', '20190220_145223(0).jpg', 'applicationFiles/test.pdf'),
(13, '2019-05-07', 3, 'Medical_Insurance_Forms', 'test.pdf', '20190220_145223(0).jpg', 'applicationFiles/test.pdf'),
(14, '2019-05-07', 1, 'Medical_Insurance_Forms', 'test.pdf', '20190220_145223(0).jpg', 'applicationFiles/test.pdf'),
(15, '2019-05-07', 4, 'Medical_Insurance_Forms', 'test.pdf', '20190220_145223(0).jpg', 'applicationFiles/test.pdf'),
(16, '2019-05-07', 5, 'Medical_Insurance_Forms', 'test.pdf', '20190220_145223(0).jpg', 'applicationFiles/test.pdf'),
(17, '2019-05-08', 1, 'Government_Issued_ID', 'test.pdf', '', 'applicationFiles/test.pdf'),
(18, '2019-05-08', 5, 'Government_Issued_ID', 'test.pdf', '', 'applicationFiles/test.pdf'),
(19, '2019-05-08', 3, 'Government_Issued_ID', 'test.pdf', '', 'applicationFiles/test.pdf'),
(20, '2019-05-08', 4, 'Government_Issued_ID', 'test.pdf', '', 'applicationFiles/test.pdf'),
(22, '2019-05-08', 6, 'Government_Issued_ID', 'test.pdf', '', 'applicationFiles/test.pdf'),
(23, '2019-05-08', 7, 'Government_Issued_ID', 'test.pdf', '', 'applicationFiles/test.pdf'),
(24, '2019-05-08', 8, 'Government_Issued_ID', 'test.pdf', '', 'applicationFiles/test.pdf'),
(25, '2019-05-08', 9, 'Government_Issued_ID', 'test.pdf', '', 'applicationFiles/test.pdf'),
(26, '2019-05-08', 10, 'Government_Issued_ID', 'test.pdf', '', 'applicationFiles/test.pdf'),
(27, '2019-05-08', 11, 'Government_Issued_ID', 'test.pdf', '', 'applicationFiles/test.pdf'),
(28, '2019-05-08', 12, 'Government_Issued_ID', 'test.pdf', '', 'applicationFiles/test.pdf'),
(30, '2019-05-08', 3, 'Unofficial_Academic_Transcript', 'test.pdf', '', 'applicationFiles/test.pdf'),
(31, '2019-05-08', 3, 'Medical_History_Forms', 'test.pdf', '', 'applicationFiles/test.pdf'),
(34, '2019-05-08', 3, 'Mental_Health_Information_Form', 'test.pdf', '', 'applicationFiles/test.pdf'),
(35, '2019-05-08', 12, 'Immunization_Record', 'test.pdf', '', 'applicationFiles/test.pdf'),
(36, '2019-05-08', 1, 'Copy_of_Social_Security_Card', 'test.pdf', '', 'applicationFiles/test.pdf'),
(37, '2019-05-08', 1, 'Copy_of_Birth_Certificate', 'test.pdf', '', 'applicationFiles/test.pdf'),
(38, '2019-05-08', 3, 'Mentor_Application', 'test.pdf', '', 'applicationFiles/test.pdf'),
(39, '2019-05-09', 21, 'Education_Plan_Documentation', 'test.pdf', '44320_ScrenMockups.docx', 'applicationFiles/test.pdf'),
(40, '2019-05-09', 21, 'Copy_of_Birth_Certificate', 'test.pdf', 'Birth certificate.docx', 'applicationFiles/test.pdf'),
(41, '2019-05-13', 6, 'Education_Plan_Documentation', 'test.pdf', 'hello.ada', 'applicationFiles/test.pdf'),
(42, '2019-05-13', 22, 'Education_Plan_Documentation', 'test.pdf', 'hw_apr3.docx', 'applicationFiles/test.pdf'),
(43, '2019-07-23', 1, 'Mental_Health_Information_Form', 'test.pdf', 'IMG_7131.jpg', 'applicationFiles/test.pdf'),
(44, '2019-08-17', 6, 'Education_Plan_Documentation', 'test.pdf', '', 'applicationFiles/test.pdf'),
(45, '2019-08-17', 6, 'Medical_Insurance_Forms', 'test.pdf', '', 'applicationFiles/test.pdf'),
(46, '2019-08-17', 6, 'Medical_Insurance_Forms', 'test.pdf', 'TheSamaritanAugust2019.pdf', 'applicationFiles/test.pdf'),
(47, '2019-08-17', 24, 'Education_Plan_Documentation', 'test.pdf', 'recruit2.txt', 'applicationFiles/test.pdf'),
(48, '2019-08-17', 24, 'Education_Plan_Documentation', 'test.pdf', 'recruit2.txt', 'applicationFiles/test.pdf');

-- --------------------------------------------------------

--
-- 테이블 구조 `tblAppGuardianContacts`
--

CREATE TABLE `tblAppGuardianContacts` (
  `ContactID` int(11) NOT NULL,
  `fkGuardianID` int(11) NOT NULL,
  `ContactInfo` varchar(48) DEFAULT NULL,
  `Ext` int(8) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `ContactType` varchar(24) NOT NULL,
  `IsPreferred` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tblAppGuardianContacts`
--

INSERT INTO `tblAppGuardianContacts` (`ContactID`, `fkGuardianID`, `ContactInfo`, `Ext`, `Description`, `ContactType`, `IsPreferred`) VALUES
(1, 8, '555-1234', NULL, 'call after 5pm', 'phone-home', 1),
(2, 9, 'home@mail.com', NULL, 'email', 'email-home', 0),
(3, 8, 'work@mail.com', NULL, 'email', 'email-work', 1),
(4, 8, 'nilla@wafers.com', NULL, 'email this on weekends', 'emails', NULL),
(5, 8, 'chicken@yahoo.com', NULL, 'kfc home office', 'work email', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `tblAppGuardians`
--

CREATE TABLE `tblAppGuardians` (
  `GuardianID` int(11) NOT NULL,
  `fkApplicantID` int(11) NOT NULL,
  `GuardianSalutation` varchar(10) NOT NULL,
  `GuardianFN` varchar(255) DEFAULT NULL,
  `GuardianLN` varchar(255) DEFAULT NULL,
  `Relationship` varchar(48) DEFAULT NULL,
  `IsLegalGuard` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `tblAppGuardians`
--

INSERT INTO `tblAppGuardians` (`GuardianID`, `fkApplicantID`, `GuardianSalutation`, `GuardianFN`, `GuardianLN`, `Relationship`, `IsLegalGuard`) VALUES
(4, 19, 'Mr.', 'Cody', 'Nash', 'Brother', 1),
(5, 19, 'Mrs', 'Charlia', 'Williams', 'Mother', 0),
(6, 20, 'Mr', 'George', 'Williams', 'Dad', 0),
(7, 20, 'Dr.', 'Samantah', 'Fox', 'Aunt', 0),
(8, 23, 'Ms.', 'Betty', 'Rubble', 'Sister', 1),
(9, 23, 'Mr.', 'Barney', 'Rubble', 'Brother', 0),
(10, 24, 'Mr.', 'Lewis', 'Masters', 'Uncle', 1);

-- --------------------------------------------------------

--
-- 테이블 구조 `tblApplicantForms`
--

CREATE TABLE `tblApplicantForms` (
  `FormID` int(99) NOT NULL,
  `FormName` varchar(255) NOT NULL,
  `FormText` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tblApplicantForms`
--

INSERT INTO `tblApplicantForms` (`FormID`, `FormName`, `FormText`) VALUES
(2, 'Rejected', 'We regret to inform you that you have not been accepted, {lastname}.'),
(18, 'CallBack', 'Please call back, {lastname}.\n        \n        \n        '),
(22, 'Accepted', 'Dear {firstname} {lastname},\r\nCongratulations! You made it!\r\n\r\nYour email is {email}.\r\nThis is an update.'),
(30, 'liuform', '{firstname} hello {lastname} {email}'),
(36, 'parkform', 'Thank you.'),
(37, 'minseungform', 'My Email {mail_address}');

-- --------------------------------------------------------

--
-- 테이블 구조 `tblApplicants`
--

CREATE TABLE `tblApplicants` (
  `ApplicantID` int(11) NOT NULL,
  `ApplicantStatus` int(4) NOT NULL,
  `fkPersonID` int(11) NOT NULL,
  `Income` int(11) DEFAULT NULL,
  `ReferralSource` varchar(48) NOT NULL,
  `PrevSchool` varchar(48) NOT NULL,
  `PrevSchoolCity` varchar(48) NOT NULL,
  `PrevSchoolState` varchar(48) NOT NULL,
  `StudentClassification` varchar(48) NOT NULL,
  `AcademicCredits` int(4) NOT NULL,
  `Withdrawl` tinyint(1) NOT NULL,
  `HighestEducation` varchar(48) NOT NULL,
  `EmploymentStatus` varchar(48) NOT NULL,
  `LegalStatus` tinyint(1) NOT NULL,
  `LivingWith` varchar(48) NOT NULL,
  `Status` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `tblApplicants`
--

INSERT INTO `tblApplicants` (`ApplicantID`, `ApplicantStatus`, `fkPersonID`, `Income`, `ReferralSource`, `PrevSchool`, `PrevSchoolCity`, `PrevSchoolState`, `StudentClassification`, `AcademicCredits`, `Withdrawl`, `HighestEducation`, `EmploymentStatus`, `LegalStatus`, `LivingWith`, `Status`) VALUES
(2, 0, 2264, 0, '', '', '', '', '', 0, 0, '', '', 0, '', 'Submitted'),
(3, 0, 2262, 0, 'Testing', '', '', '', '', 0, 0, '', '', 0, '', 'Submitted'),
(4, 1, 2248, 455555, 'source', 'baldwin high', '', '', '', 15, 0, '12th grade', 'Employed', 1, '', 'InReview'),
(5, 1, 2249, NULL, '', '', '', '', '', 0, 0, '', '', 0, '', ''),
(6, 3, 2250, NULL, '', '', '', '', '', 0, 0, '', '', 0, '', ''),
(7, 1, 2251, NULL, '', '', '', '', '', 0, 0, '', '', 0, '', ''),
(8, 1, 2252, NULL, '', '', '', '', '', 0, 0, '', '', 0, '', ''),
(9, 2, 2253, NULL, '', '', '', '', '', 0, 0, '', '', 0, '', ''),
(10, 2, 2254, NULL, '', '', '', '', '', 0, 0, '', '', 0, '', ''),
(11, 3, 2255, NULL, '', '', '', '', '', 0, 0, '', '', 0, '', ''),
(12, 2, 2263, 45, 'Me', 'GCSU', 'Atlanta', 'GA', '45', 45, 0, 'Some', 'Yes', 1, 'Father', 'Submitted'),
(21, 3, 2265, 0, '', '', '', '', '', 0, 0, '', '', 0, '', 'Submitted'),
(22, 0, 2266, 1000000, '', '', '', '', '', 0, 0, '', '', 0, '', 'Submitted'),
(23, 0, 2267, 555, 'Fred Referral', 'FredSchool', 'FredSchoolCity', 'GA', 'FredSchoolClass', 3, 0, 'HighEd', 'EmpStatus', 1, 'LivingWith', ''),
(24, 0, 2268, 12345, 'referral', 'peach county high schoo', 'Fort valle', 'Ga', 'Sophomore', 12, 1, '12', 'burgerking', 1, 'aunt susie', 'Submitted');

-- --------------------------------------------------------

--
-- 테이블 구조 `tblAppPeople`
--

CREATE TABLE `tblAppPeople` (
  `PersonID` int(11) NOT NULL,
  `PSalutation` varchar(10) DEFAULT NULL,
  `PersonFN` varchar(25) DEFAULT NULL,
  `PersonMN` varchar(25) DEFAULT NULL,
  `PersonLN` varchar(40) DEFAULT NULL,
  `PersonGenQual` varchar(5) DEFAULT NULL,
  `PersonAddedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PersonNotes` longtext,
  `PAddress` varchar(100) DEFAULT NULL,
  `PAddress2` varchar(100) DEFAULT NULL,
  `PCity` varchar(35) DEFAULT NULL,
  `PState` varchar(2) DEFAULT NULL,
  `PZip` varchar(5) DEFAULT NULL,
  `PMailAddress` varchar(100) DEFAULT NULL,
  `PMailAddress2` varchar(100) DEFAULT NULL,
  `PMailCity` varchar(35) DEFAULT NULL,
  `PMailState` varchar(2) DEFAULT NULL,
  `PMailZip` varchar(5) DEFAULT NULL,
  `PCounty` varchar(25) DEFAULT NULL,
  `PUrbanization` varchar(255) DEFAULT NULL,
  `PEmail` varchar(255) DEFAULT NULL,
  `PDOB` datetime DEFAULT NULL,
  `PSSN` varchar(9) NOT NULL DEFAULT '',
  `PGender` varchar(1) NOT NULL DEFAULT '',
  `PEthnicityIsHispanic` tinyint(1) DEFAULT '0',
  `EXISTING_PersonID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `tblAppPeople`
--

INSERT INTO `tblAppPeople` (`PersonID`, `PSalutation`, `PersonFN`, `PersonMN`, `PersonLN`, `PersonGenQual`, `PersonAddedDate`, `PersonNotes`, `PAddress`, `PAddress2`, `PCity`, `PState`, `PZip`, `PMailAddress`, `PMailAddress2`, `PMailCity`, `PMailState`, `PMailZip`, `PCounty`, `PUrbanization`, `PEmail`, `PDOB`, `PSSN`, `PGender`, `PEthnicityIsHispanic`, `EXISTING_PersonID`) VALUES
(2247, '\n         ', 'Duncan', NULL, 'Williams', '\n    ', '2019-05-06 14:07:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '', '', 0, NULL),
(2249, NULL, 'Greg', NULL, 'Gregson', NULL, '2019-05-06 19:52:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '', '', 0, NULL),
(2250, NULL, 'Charlie', NULL, 'Donald', NULL, '2019-05-06 19:53:33', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '', '', 0, NULL),
(2251, NULL, 'Beth', NULL, 'Bertha', NULL, '2019-05-06 20:04:36', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '', '', 0, NULL),
(2252, NULL, 'Peter', NULL, 'Porker', NULL, '2019-05-06 20:06:09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '', '', 0, NULL),
(2253, NULL, 'Hans', NULL, 'Wermhat', NULL, '2019-05-06 20:13:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '', '', 0, NULL),
(2254, NULL, 'Samuel', NULL, 'Johnson', NULL, '2019-05-06 20:16:02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '', '', 0, NULL),
(2255, NULL, 'Marlo', NULL, 'Private', NULL, '2019-05-06 20:16:18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '', '', 0, NULL),
(2256, NULL, 'Rick', NULL, 'James', NULL, '2019-05-06 20:18:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '', '', 0, NULL),
(2257, NULL, 'Harold', NULL, 'Harvey', NULL, '2019-05-06 20:26:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '', '', 0, NULL),
(2258, NULL, 'Daniel', NULL, 'Vonson', NULL, '2019-05-06 20:28:41', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '', '', 0, NULL),
(2259, NULL, 'Eric', NULL, 'Porter', NULL, '2019-05-06 20:31:17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '', '', 0, NULL),
(2260, NULL, 'Quinn', NULL, 'Roald', NULL, '2019-05-06 20:33:03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '', '', 0, NULL),
(2261, NULL, 'Test', NULL, 'Status', NULL, '2019-05-06 20:48:15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '', '', 0, NULL),
(2263, NULL, 'For Dr', NULL, 'Phelps', NULL, '2019-05-06 21:00:17', NULL, 'Test Treet', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Something', '\n                        Metro\n                        ', NULL, '2019-05-01 04:00:00', '444444444', 'F', 0, NULL),
(2265, '\n         ', 'George', NULL, 'Zellner', NULL, '2019-05-09 14:38:51', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '', '', 0, NULL),
(2266, NULL, 'Brian', NULL, 'Williams', NULL, '2019-05-13 02:44:52', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0000-00-00 00:00:00', '', '', 0, NULL),
(2267, NULL, 'Fred', 'G', 'Flintstone', NULL, '2019-08-15 11:27:57', 'THis is fred flintstone note', '123 Main Street', 'Apt 123', 'Bedrock', 'GA', '11111', '123 PO Box', 'UPS A', 'Slaters ', 'FL', '22222', 'Dinosaur', NULL, 'fred.flintstoren@bedrock.uga', '0000-00-00 00:00:00', '111222333', 'M', 0, NULL),
(2268, '\n         ', 'Jane', 'Jerica', 'Jones', '\n    ', '2019-08-16 23:32:47', NULL, '200 Main Street', 'Apt 1', 'Honolulu', 'HI', '99999', '200 Pobox', 'Apt2', 'Hickam', 'HI', '88888', 'peach', '\n                        City\n                        ', NULL, '2003-01-02 05:00:00', '11223333', 'F', 1, NULL);

-- --------------------------------------------------------

--
-- 테이블 구조 `tblUsers`
--

CREATE TABLE `tblUsers` (
  `UserID` int(11) NOT NULL,
  `Login` varchar(50) NOT NULL,
  `fkPersonID` int(11) NOT NULL,
  `fkSiteID` int(11) NOT NULL,
  `Password` varchar(40) NOT NULL,
  `EndDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tblUsers`
--

INSERT INTO `tblUsers` (`UserID`, `Login`, `fkPersonID`, `fkSiteID`, `Password`, `EndDate`) VALUES
(44, 'frank@gordon', 2180, 2, 'f7ff9e8b7bb2e09b70935a5d785e0cc5d9d0abf0', '0000-00-00'),
(45, 'janet@gordon', 2181, 2, 'f7ff9e8b7bb2e09b70935a5d785e0cc5d9d0abf0', '0000-00-00'),
(46, 'walter@gordon', 2179, 2, 'f7ff9e8b7bb2e09b70935a5d785e0cc5d9d0abf0', '0000-00-00'),
(47, 'candy@mville', 2178, 1, 'f7ff9e8b7bb2e09b70935a5d785e0cc5d9d0abf0', '0000-00-00'),
(48, 'andy@mville', 2177, 1, 'f7ff9e8b7bb2e09b70935a5d785e0cc5d9d0abf0', '0000-00-00'),
(49, 'cody@mville', 2176, 1, 'f7ff9e8b7bb2e09b70935a5d785e0cc5d9d0abf0', '0000-00-00');

-- --------------------------------------------------------

--
-- 테이블 구조 `tlkpApplicationFiles`
--

CREATE TABLE `tlkpApplicationFiles` (
  `AutoID` int(11) NOT NULL,
  `IsRequired` tinyint(4) NOT NULL,
  `Description` varchar(50) NOT NULL,
  `Notes` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tlkpApplicationFiles`
--

INSERT INTO `tlkpApplicationFiles` (`AutoID`, `IsRequired`, `Description`, `Notes`) VALUES
(1, 0, 'Education_Plan_Documentation', ''),
(2, 0, 'School_Behavioral_&_Attendance_Records', ''),
(3, 0, 'Medical_Insurance_Forms', 'provide medical history'),
(4, 0, 'Immunization_Record', 'new plan'),
(5, 0, 'Unofficial_Academic_Transcript', 'newer plan'),
(6, 0, 'Candidate_Application_Document_Form', ''),
(7, 0, 'Medical_History_Forms', ''),
(8, 1, 'Copy_of_Birth_Certificate', ''),
(9, 0, 'Legal_History_Form', ''),
(10, 0, 'Mentor_Application', ''),
(11, 1, 'Copy_of_Social_Security_Card', ''),
(12, 0, 'Government_Issued_ID', ''),
(13, 0, 'Mental_Health_Information_Form', ''),
(14, 1, 'new type', 'this is  ademo');

-- --------------------------------------------------------

--
-- 테이블 구조 `tlkpFormFields`
--

CREATE TABLE `tlkpFormFields` (
  `FormFieldID` int(11) NOT NULL,
  `TableName` varchar(25) NOT NULL,
  `ColumnName` varchar(25) NOT NULL,
  `MergeField` varchar(25) NOT NULL,
  `Description` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 테이블의 덤프 데이터 `tlkpFormFields`
--

INSERT INTO `tlkpFormFields` (`FormFieldID`, `TableName`, `ColumnName`, `MergeField`, `Description`) VALUES
(1, 'tblAppPeople', 'PSalutation', '{salutation}', 'Salutation'),
(2, 'tblAppPeople', 'PersonFN', '{firstname}', 'First Name'),
(3, 'tblAppPeople', 'PGenQualifier', '{gen_qualifier}', 'Generation Qualifier'),
(4, 'tblAppPeople', 'PersonLN', '{lastname}', 'Last Name'),
(5, 'tblAppPeople', 'PMailAddress', '{mail_address}', 'Mailing Address'),
(6, 'tblAppPeople', 'PMailAddress2', '{mail_address2}', 'Mailing Address 2'),
(7, 'tblAppPeople', 'PMailCity', '{mail_city}', 'City'),
(8, 'tblAppPeople', 'PState', '{mail_state}', ' State'),
(9, 'tblAppPeople', 'PZip', '{mail_zip}', 'Zip'),
(10, 'tblAppGuardians', 'Guardian', '{guardian_name}', 'Guardian'),
(11, 'tblAppContacts', 'ContactInfo', '{guardian_contact}', 'Guardian Contact Info'),
(12, 'tblAppContacts', 'ContactInfo', '{email}', 'Email'),
(13, 'tblAppContacts', 'ContactInfo', '{guardian_email}', 'Guardian Email'),
(14, 'tblAppContacts', 'ContactInfo', '{contact}', 'Contact Info');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `tblAppContacts`
--
ALTER TABLE `tblAppContacts`
  ADD PRIMARY KEY (`ContactID`);

--
-- 테이블의 인덱스 `tblAppDocs`
--
ALTER TABLE `tblAppDocs`
  ADD PRIMARY KEY (`DocumentID`);

--
-- 테이블의 인덱스 `tblAppGuardianContacts`
--
ALTER TABLE `tblAppGuardianContacts`
  ADD PRIMARY KEY (`ContactID`);

--
-- 테이블의 인덱스 `tblAppGuardians`
--
ALTER TABLE `tblAppGuardians`
  ADD PRIMARY KEY (`GuardianID`);

--
-- 테이블의 인덱스 `tblApplicantForms`
--
ALTER TABLE `tblApplicantForms`
  ADD PRIMARY KEY (`FormID`);

--
-- 테이블의 인덱스 `tblApplicants`
--
ALTER TABLE `tblApplicants`
  ADD PRIMARY KEY (`ApplicantID`);

--
-- 테이블의 인덱스 `tblAppPeople`
--
ALTER TABLE `tblAppPeople`
  ADD PRIMARY KEY (`PersonID`),
  ADD UNIQUE KEY `PersonID` (`PersonID`),
  ADD KEY `EXISTING_PersonID` (`EXISTING_PersonID`),
  ADD KEY `PDOB` (`PDOB`),
  ADD KEY `PersonLN` (`PersonLN`),
  ADD KEY `PSSN` (`PSSN`);

--
-- 테이블의 인덱스 `tblUsers`
--
ALTER TABLE `tblUsers`
  ADD PRIMARY KEY (`UserID`);

--
-- 테이블의 인덱스 `tlkpApplicationFiles`
--
ALTER TABLE `tlkpApplicationFiles`
  ADD PRIMARY KEY (`AutoID`);

--
-- 테이블의 인덱스 `tlkpFormFields`
--
ALTER TABLE `tlkpFormFields`
  ADD PRIMARY KEY (`FormFieldID`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `tblAppContacts`
--
ALTER TABLE `tblAppContacts`
  MODIFY `ContactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- 테이블의 AUTO_INCREMENT `tblAppDocs`
--
ALTER TABLE `tblAppDocs`
  MODIFY `DocumentID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- 테이블의 AUTO_INCREMENT `tblAppGuardianContacts`
--
ALTER TABLE `tblAppGuardianContacts`
  MODIFY `ContactID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- 테이블의 AUTO_INCREMENT `tblAppGuardians`
--
ALTER TABLE `tblAppGuardians`
  MODIFY `GuardianID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 테이블의 AUTO_INCREMENT `tblApplicantForms`
--
ALTER TABLE `tblApplicantForms`
  MODIFY `FormID` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- 테이블의 AUTO_INCREMENT `tblApplicants`
--
ALTER TABLE `tblApplicants`
  MODIFY `ApplicantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- 테이블의 AUTO_INCREMENT `tblAppPeople`
--
ALTER TABLE `tblAppPeople`
  MODIFY `PersonID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2269;

--
-- 테이블의 AUTO_INCREMENT `tblUsers`
--
ALTER TABLE `tblUsers`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- 테이블의 AUTO_INCREMENT `tlkpApplicationFiles`
--
ALTER TABLE `tlkpApplicationFiles`
  MODIFY `AutoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- 테이블의 AUTO_INCREMENT `tlkpFormFields`
--
ALTER TABLE `tlkpFormFields`
  MODIFY `FormFieldID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
