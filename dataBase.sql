-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Apr 22, 2016 at 12:32 PM
-- Server version: 5.5.42
-- PHP Version: 7.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ajobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(100) DEFAULT NULL,
  `sortInd` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `sortInd`, `created_at`, `updated_at`) VALUES
(1, 'Software Engineering', 1, NULL, NULL),
(2, 'Accounting', 2, NULL, '2016-03-21 14:05:19');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int(11) NOT NULL,
  `companyName` varchar(100) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `postcode` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `coverletters`
--

CREATE TABLE `coverletters` (
  `id` int(11) NOT NULL,
  `profileID` int(11) DEFAULT NULL,
  `coverLetterTitle` varchar(45) DEFAULT NULL,
  `actualText` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `degrees`
--

CREATE TABLE `degrees` (
  `id` int(11) NOT NULL,
  `degreeName` varchar(45) DEFAULT NULL,
  `sortInd` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `degrees`
--

INSERT INTO `degrees` (`id`, `degreeName`, `sortInd`, `created_at`, `updated_at`) VALUES
(1, 'Bachelor''s Degrees', 1, NULL, NULL),
(2, 'Undergraduate Degrees', 2, NULL, NULL),
(3, 'Graduate Degrees', 3, NULL, NULL),
(4, 'Associate''s Degrees', 4, NULL, NULL),
(5, 'Master''s Degrees', 5, NULL, NULL),
(6, 'Doctoral Degrees', 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employers`
--

CREATE TABLE `employers` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `companyID` int(11) DEFAULT NULL,
  `companySumamry` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `institutes`
--

CREATE TABLE `institutes` (
  `id` int(11) NOT NULL,
  `instituteName` varchar(100) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `district` varchar(45) DEFAULT NULL,
  `postcode` varchar(45) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `logo` varchar(45) DEFAULT 'institute_icon.PNG',
  `instituteCode` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `institutes`
--

INSERT INTO `institutes` (`id`, `instituteName`, `city`, `district`, `postcode`, `address`, `phone`, `email`, `website`, `logo`, `instituteCode`, `created_at`, `updated_at`) VALUES
(1, 'feni computer institute', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3900', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(2, 'feni computer institute 1', 'Feni', 'Feni', '474754', ' Mei ad adhuc summo cetero. Qui assum habemus signiferumque cu, per idque evertitur cu, doming corpo', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3901', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(3, 'feni computer institute 2', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3902', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(4, 'feni computer institute 3', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3903', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(5, 'feni computer institute 4', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3904', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(6, 'feni computer institute 5', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3905', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(7, 'feni computer institute 6', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3906', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(8, 'feni computer institute 7', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3907', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(9, 'feni computer institute 8', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3908', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(10, 'feni computer institute 9', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3909', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(11, 'feni computer institute 10', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3910', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(12, 'feni computer institute 11', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3911', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(13, 'feni computer institute 12', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3912', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(14, 'feni computer institute 13', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3913', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(15, 'feni computer institute 14', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3914', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(16, 'feni computer institute 15', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3915', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(17, 'feni computer institute 16', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3916', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(18, 'feni computer institute 17', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3917', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(19, 'feni computer institute 18', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3918', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(20, 'feni computer institute 19', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3919', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(21, 'feni computer institute 20', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3920', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(22, 'feni computer institute 21', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3921', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(23, 'feni computer institute 22', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3922', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(24, 'feni computer institute 23', 'Feni', 'Feni', '474754', 'ranir hat, feni, chitagong , bangladesh', '47747745', 'fci@mail.com', 'fcibd.net', '5067FlU1454588100-img.jpg', '3923', '2016-04-18 18:00:00', '2016-04-18 18:00:00'),
(26, 'feni computer institute 30', 'Feni', 'Feni', '536346', 'Feni', '47747745', 'shamim258038@gmail.com', 'fcibd.net', 'feni computer institute 30', '3930', '2016-04-21 03:13:26', '2016-04-21 03:13:26'),
(32, 'feni computer institute 31', 'Feni', 'Feni', '474754', 'Feni', '7345735734', 'mobarok@gmail.com', 'fcibd.net', '4bb07a7ac87b215f6023b8babf862124.jpg', '3931', '2016-04-21 20:13:51', '2016-04-21 20:13:51'),
(33, 'feni computer institute 32', 'Feni', 'Feni', '474754', 'Feni', '7345735734', 'mobarok@gmail.com', 'fcibd.net', '29960c5c508f76f5cc5bd07acc79e3bc.jpg', '3932', '2016-04-21 20:14:13', '2016-04-21 20:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `interviews`
--

CREATE TABLE `interviews` (
  `id` int(11) NOT NULL,
  `jobID` int(11) DEFAULT NULL,
  `applicantID` int(11) DEFAULT NULL,
  `interviewDate` date DEFAULT NULL,
  `interviewTime` time DEFAULT NULL,
  `interviewType` enum('Call','Email','OnlineTest','InPerson') DEFAULT NULL,
  `notified` bit(1) DEFAULT NULL,
  `seenByApplicant` bit(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `employerID` int(11) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `jobSummary` varchar(1000) DEFAULT NULL,
  `jobDescription` mediumtext,
  `jobType` enum('FullTime','ParTime','Internship','Contractual') DEFAULT NULL,
  `jobLocation` varchar(45) DEFAULT NULL,
  `applicationEndDate` date DEFAULT NULL,
  `salary` varchar(45) DEFAULT NULL,
  `jobCategory` int(11) DEFAULT NULL,
  `applicationInstruction` varchar(1000) DEFAULT NULL,
  `featuredJob` bit(1) DEFAULT NULL,
  `numberOfPosition` tinyint(4) DEFAULT NULL,
  `minimumExperience` varchar(45) DEFAULT NULL,
  `minimumAge` int(11) DEFAULT NULL,
  `others` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `job_applicants`
--

CREATE TABLE `job_applicants` (
  `id` int(11) NOT NULL,
  `jobID` int(11) DEFAULT NULL,
  `profileID` int(11) DEFAULT NULL,
  `coverLetterID` int(11) DEFAULT NULL,
  `attachedResume` varchar(45) DEFAULT NULL,
  `status` enum('Applied','Viewed','ShortListed','Rejected','Deleted','Blocked') DEFAULT 'Applied',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mail_verification`
--

CREATE TABLE `mail_verification` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `activeCode1` int(5) NOT NULL,
  `activeCode2` int(5) NOT NULL,
  `activeLink1` varchar(32) NOT NULL,
  `activeLink2` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `toWhome` int(11) DEFAULT NULL,
  `jobID` int(11) DEFAULT NULL,
  `messageTitle` varchar(200) DEFAULT NULL,
  `messageBody` text,
  `hasSeen` bit(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `attachedFiles` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `routesID` int(11) NOT NULL,
  `userTypeID` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `routesID`, `userTypeID`, `created_at`, `updated_at`) VALUES
(46, 332, 8, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(47, 333, 8, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(48, 344, 8, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(53, 346, 1, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(54, 346, 2, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(55, 348, 1, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(56, 348, 2, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(57, 354, 1, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(58, 354, 2, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(59, 355, 1, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(60, 353, 1, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(61, 353, 2, '2016-04-05 16:31:50', '2016-04-05 16:31:50'),
(68, 304, 1, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(69, 304, 2, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(70, 305, 1, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(71, 305, 2, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(72, 303, 1, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(73, 303, 2, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(92, 315, 1, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(94, 314, 1, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(95, 314, 2, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(96, 316, 1, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(97, 316, 2, '2016-04-05 16:38:45', '2016-04-05 16:38:45'),
(98, 301, 1, '2016-04-06 05:31:00', '2016-04-06 05:31:00'),
(99, 301, 2, '2016-04-06 05:31:00', '2016-04-06 05:31:00'),
(100, 352, 1, '2016-04-06 05:31:00', '2016-04-06 05:31:00'),
(101, 352, 2, '2016-04-06 05:31:00', '2016-04-06 05:31:00'),
(102, 300, 1, '2016-04-06 05:31:00', '2016-04-06 05:31:00'),
(103, 300, 2, '2016-04-06 05:31:00', '2016-04-06 05:31:00'),
(104, 302, 1, '2016-04-06 05:31:00', '2016-04-06 05:31:00'),
(105, 302, 2, '2016-04-06 05:31:00', '2016-04-06 05:31:00'),
(106, 318, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(107, 319, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(108, 317, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(109, 320, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(110, 322, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(111, 321, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(112, 364, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(113, 323, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(114, 325, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(115, 326, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(116, 324, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(117, 336, 8, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(118, 337, 8, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(119, 287, 1, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(120, 287, 2, '2016-04-06 05:31:37', '2016-04-06 05:31:37'),
(121, 343, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(122, 343, 2, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(123, 286, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(124, 286, 2, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(125, 288, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(126, 288, 2, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(127, 290, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(128, 290, 2, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(129, 341, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(130, 341, 2, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(131, 289, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(132, 289, 2, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(133, 285, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(134, 285, 2, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(135, 340, 8, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(136, 365, 8, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(138, 308, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(139, 356, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(140, 358, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(141, 307, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(142, 357, 1, '2016-04-06 05:32:11', '2016-04-06 05:32:11'),
(143, 363, 1, '2016-04-06 05:32:29', '2016-04-06 05:32:29'),
(144, 309, 1, '2016-04-06 05:32:29', '2016-04-06 05:32:29'),
(145, 311, 1, '2016-04-06 05:32:29', '2016-04-06 05:32:29'),
(146, 312, 1, '2016-04-06 05:32:29', '2016-04-06 05:32:29'),
(147, 359, 1, '2016-04-06 05:32:29', '2016-04-06 05:32:29'),
(148, 361, 1, '2016-04-06 05:32:29', '2016-04-06 05:32:29'),
(149, 362, 1, '2016-04-06 05:32:29', '2016-04-06 05:32:29'),
(150, 310, 1, '2016-04-06 05:32:29', '2016-04-06 05:32:29'),
(151, 360, 1, '2016-04-06 05:32:29', '2016-04-06 05:32:29'),
(156, 284, 8, '2016-04-06 17:54:22', '2016-04-06 17:54:22'),
(157, 331, 8, '2016-04-06 17:54:32', '2016-04-06 17:54:32'),
(158, 338, 8, '2016-04-06 17:54:32', '2016-04-06 17:54:32'),
(159, 335, 8, '2016-04-06 17:55:00', '2016-04-06 17:55:00'),
(160, 327, 8, '2016-04-06 17:55:00', '2016-04-06 17:55:00'),
(161, 328, 8, '2016-04-06 17:55:00', '2016-04-06 17:55:00'),
(162, 330, 8, '2016-04-06 17:55:00', '2016-04-06 17:55:00'),
(163, 329, 8, '2016-04-06 17:55:00', '2016-04-06 17:55:00'),
(164, 283, 8, '2016-04-06 17:55:34', '2016-04-06 17:55:34'),
(165, 369, 5, '2016-04-07 14:43:32', '2016-04-07 14:43:32'),
(168, 369, 1, '2016-04-07 19:48:01', '2016-04-07 19:48:01'),
(170, 347, 1, '2016-04-08 07:58:46', '2016-04-08 07:58:46'),
(171, 347, 2, '2016-04-08 07:58:46', '2016-04-08 07:58:46'),
(174, 345, 1, '2016-04-08 07:59:10', '2016-04-08 07:59:10'),
(175, 345, 2, '2016-04-08 07:59:10', '2016-04-08 07:59:10'),
(177, 313, 1, '2016-04-08 08:02:10', '2016-04-08 08:02:10'),
(179, 306, 6, '2016-04-11 09:59:59', '2016-04-11 09:59:59'),
(185, 367, 8, '2016-04-14 04:59:40', '2016-04-14 04:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `firstName` varchar(45) DEFAULT NULL,
  `lastName` varchar(45) DEFAULT NULL,
  `middleName` varchar(45) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `gender` enum('M','F','Other') DEFAULT NULL,
  `featuredProfile` enum('Y','N') DEFAULT 'N',
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `summary` varchar(500) DEFAULT NULL,
  `profilePic` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profiles`
--

INSERT INTO `profiles` (`id`, `userID`, `firstName`, `lastName`, `middleName`, `DOB`, `gender`, `featuredProfile`, `email`, `phone`, `summary`, `profilePic`, `created_at`, `updated_at`) VALUES
(5, 5, 'Nurun Nobi Shamim', '', '', '1970-01-01', 'M', 'N', 'admin@gmail.com', '', 'Mei ad adhuc summo cetero. Qui assum habemus signiferumque cu, per idque evertitur cu, doming corpora deserunt te vis. Melius oporteat ea usu. Timeam tincidunt cum et. Eam justo utroque no. Enim aliquando abhorreant ea sea, vis ex efficiendi referrentur, ei pro tacimates sadipscing.\r\n', 'f35ca8dadf017bae058892d5d72bc041.jpg', NULL, '2016-04-19 04:41:53'),
(6, 4, 'Nurun Nobi', 'Shamim', 'Nobi', '2014-11-01', 'M', 'N', 'shamim2580@gmail.com', '093805830', 'first name-that part of your name that comes first\r\nlast name-it''s your caste\r\nmiddle name -if you have a three letter word then that part which comes in the middle is the middle name\r\ngiven name-the name that is given\r\nfamily name -probably that name which your family has given you[pet name]\r\nsurname-your caste[maybe]', 'profilePic', NULL, '2016-04-08 20:17:52'),
(7, 6, 'Nurun', 'Shamim', 'Nobi', '1994-07-08', 'M', 'Y', 'shamim2580@gmail.com', '0938058', 'first name-that part of your name that comes first\r\nlast name-it''s your caste\r\nmiddle name -if you have a three letter word then that part which comes in the middle is the middle name\r\ngiven name-the name that is given\r\nfamily name -probably that name which your family has given you[pet name]\r\nsurname-your caste[maybe]', 'b585cc9970926adfc20cdcd77f9a4ca7.jpg', '2016-04-06 18:00:00', '2016-04-14 04:57:04'),
(10, 9, NULL, NULL, NULL, NULL, NULL, 'N', 'shamim258038@gmail.com', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `profile_education`
--

CREATE TABLE `profile_education` (
  `id` int(11) NOT NULL,
  `profileID` int(11) DEFAULT NULL,
  `institutionID` int(11) DEFAULT NULL,
  `degreeID` int(11) DEFAULT NULL,
  `subjectName` varchar(45) DEFAULT NULL,
  `startedOn` date DEFAULT NULL,
  `endedOn` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_education`
--

INSERT INTO `profile_education` (`id`, `profileID`, `institutionID`, `degreeID`, `subjectName`, `startedOn`, `endedOn`, `created_at`, `updated_at`) VALUES
(1, 5, 4, 1, 'Computer science & engineering', '0000-00-00', '0000-00-00', '2016-04-20 05:16:19', '2016-04-20 05:16:19'),
(2, 5, 4, 1, 'Computer science & engineering', '1970-01-01', '1970-01-01', '2016-04-20 05:17:08', '2016-04-20 05:17:08'),
(4, 5, 3, 2, 'Computer science & engineering', '1970-01-01', '1970-01-01', '2016-04-20 05:18:07', '2016-04-20 05:18:07'),
(5, 5, 4, 2, 'Computer science & engineering', '2016-04-20', '2016-04-20', '2016-04-20 05:21:26', '2016-04-20 05:21:26'),
(6, 5, 4, 2, 'Computer science & engineering', '2016-04-20', '2016-04-20', '2016-04-20 05:25:07', '2016-04-20 05:25:07'),
(7, 5, 26, 1, 'Computer science & engineering', '2016-04-20', '2016-04-21', '2016-04-21 03:13:26', '2016-04-21 03:13:26'),
(9, 5, 8, 5, 'Computer science & engineering', '2016-04-21', '2016-04-21', '2016-04-21 03:17:49', '2016-04-21 03:17:49'),
(12, 5, 32, 2, 'Computer science & engineering', '2011-04-29', '2016-04-22', '2016-04-21 20:13:51', '2016-04-21 20:13:51'),
(13, 5, 33, 2, 'Computer science & engineering', '2011-04-29', '2016-04-22', '2016-04-21 20:14:13', '2016-04-21 20:14:13');

-- --------------------------------------------------------

--
-- Table structure for table `profile_experiences`
--

CREATE TABLE `profile_experiences` (
  `id` int(11) NOT NULL,
  `profileID` int(11) DEFAULT NULL,
  `companyID` int(11) DEFAULT NULL,
  `startedOn` date DEFAULT NULL,
  `endedOn` date DEFAULT NULL,
  `jobSummary` varchar(1000) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `profile_recommendations`
--

CREATE TABLE `profile_recommendations` (
  `id` int(11) NOT NULL,
  `profileID` int(11) DEFAULT NULL,
  `recommendationBy` int(11) DEFAULT NULL,
  `recommendationText` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `profile_skills`
--

CREATE TABLE `profile_skills` (
  `id` int(11) NOT NULL,
  `profileID` int(11) DEFAULT NULL,
  `skillID` int(11) DEFAULT NULL,
  `skillRange` int(3) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `profile_skills`
--

INSERT INTO `profile_skills` (`id`, `profileID`, `skillID`, `skillRange`, `created_at`, `updated_at`) VALUES
(1, 5, 1, 80, NULL, '2016-04-13 00:39:23'),
(2, 5, 9, 91, NULL, '2016-04-13 19:02:03'),
(9, 5, 10, 85, '2016-04-11 17:50:00', '2016-04-13 19:02:11'),
(10, 5, 13, 60, '2016-04-11 18:16:56', '2016-04-11 20:47:13'),
(11, 5, 11, 60, '2016-04-11 18:17:12', '2016-04-11 20:46:39'),
(14, 5, 2, 40, '2016-04-11 19:04:55', '2016-04-11 20:52:19'),
(15, 5, 14, 65, '2016-04-11 19:05:09', '2016-04-11 20:52:33'),
(16, 7, 12, 3, '2016-04-14 04:55:44', '2016-04-14 04:55:58');

-- --------------------------------------------------------

--
-- Table structure for table `reset_password`
--

CREATE TABLE `reset_password` (
  `id` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `resetLink1` varchar(32) NOT NULL,
  `resetLink2` varchar(32) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `reset_password`
--

INSERT INTO `reset_password` (`id`, `userID`, `resetLink1`, `resetLink2`, `created_at`, `updated_at`) VALUES
(7, 9, '386c1f72cce8d4d4e21c6a481509eb59', 'b2028c5e4871feff5c3e58ae288932f2', '2016-04-06 14:20:06', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `routeName` varchar(200) NOT NULL,
  `method` varchar(10) NOT NULL,
  `controller` varchar(150) NOT NULL,
  `status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=373 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `routeName`, `method`, `controller`, `status`, `created_at`, `updated_at`) VALUES
(283, 'profile', 'GET', 'App\\Http\\Controllers\\profile@index', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(284, 'logout', 'GET', 'App\\Http\\Controllers\\loginController@logout', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(286, 'skills/create', 'GET', 'App\\Http\\Controllers\\skillsController@create', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(287, 'skills', 'POST', 'App\\Http\\Controllers\\skillsController@store', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(288, 'skills/{id}', 'GET', 'App\\Http\\Controllers\\skillsController@show', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(289, 'skills/{id}/edit', 'GET', 'App\\Http\\Controllers\\skillsController@edit', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(290, 'skills/{id}', 'PUT', 'App\\Http\\Controllers\\skillsController@update', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(300, 'degrees/create', 'GET', 'App\\Http\\Controllers\\degreesController@create', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(301, 'degrees', 'POST', 'App\\Http\\Controllers\\degreesController@store', 'enable', '2016-04-04 21:45:58', '2016-04-04 20:49:39'),
(302, 'degrees/{id}', 'GET', 'App\\Http\\Controllers\\degreesController@show', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(303, 'degrees/{id}/edit', 'GET', 'App\\Http\\Controllers\\degreesController@edit', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(304, 'degrees/{id}', 'PUT', 'App\\Http\\Controllers\\degreesController@update', 'enable', '2016-04-04 21:45:58', '2016-04-04 20:49:40'),
(305, 'degrees/{id}', 'DELETE', 'App\\Http\\Controllers\\degreesController@destroy', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(306, 'user/type', 'GET', 'App\\Http\\Controllers\\userType@index', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(307, 'user/type/create', 'GET', 'App\\Http\\Controllers\\userType@create', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(308, 'user/type', 'POST', 'App\\Http\\Controllers\\userType@store', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(309, 'user/type/{id}', 'GET', 'App\\Http\\Controllers\\userType@show', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(310, 'user/type/{id}/edit', 'GET', 'App\\Http\\Controllers\\userType@edit', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(311, 'user/type/{id}', 'PUT', 'App\\Http\\Controllers\\userType@update', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(312, 'user/type/{id}', 'DELETE', 'App\\Http\\Controllers\\userType@destroy', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(313, 'permission', 'GET', 'App\\Http\\Controllers\\PermissionController@index', 'enable', '2016-04-04 21:45:58', '2016-04-11 10:19:36'),
(314, 'permission/create', 'GET', 'App\\Http\\Controllers\\PermissionController@create', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(315, 'permission', 'POST', 'App\\Http\\Controllers\\PermissionController@store', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(316, 'permission/{id}', 'GET', 'App\\Http\\Controllers\\PermissionController@show', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(317, 'permission/{id}/edit', 'GET', 'App\\Http\\Controllers\\PermissionController@edit', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(318, 'permission/{id}', 'PUT', 'App\\Http\\Controllers\\PermissionController@update', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(319, 'permission/{id}', 'DELETE', 'App\\Http\\Controllers\\PermissionController@destroy', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(320, 'route', 'GET', 'App\\Http\\Controllers\\routeController@index', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(321, 'route/create', 'GET', 'App\\Http\\Controllers\\routeController@create', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(322, 'route', 'POST', 'App\\Http\\Controllers\\routeController@store', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(323, 'route/{id}', 'GET', 'App\\Http\\Controllers\\routeController@show', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(324, 'route/{id}/edit', 'GET', 'App\\Http\\Controllers\\routeController@edit', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(325, 'route/{id}', 'PUT', 'App\\Http\\Controllers\\routeController@update', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(326, 'route/{id}', 'DELETE', 'App\\Http\\Controllers\\routeController@destroy', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(327, 'password/forgot', 'GET', 'App\\Http\\Controllers\\forgotController@index', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(328, 'password/forgot', 'POST', 'App\\Http\\Controllers\\forgotController@reset', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(329, 'password/reset/{resetLink}', 'GET', 'App\\Http\\Controllers\\forgotController@resetConfirmation', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(330, 'password/reset', 'POST', 'App\\Http\\Controllers\\forgotController@resetAction', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(331, 'login', 'POST', 'App\\Http\\Controllers\\loginController@auth', 'enable', '2016-04-04 21:45:58', '0000-00-00 00:00:00'),
(332, 'activation/code', 'GET', 'App\\Http\\Controllers\\loginController@activationForm', 'enable', '2016-04-04 22:53:33', '2016-04-04 21:25:27'),
(333, 'activation/code', 'POST', 'App\\Http\\Controllers\\loginController@activationCode', 'enable', '2016-04-04 21:45:58', '2016-04-04 20:58:55'),
(335, 'mail/resend', 'POST', 'App\\Http\\Controllers\\resendActivationController@resend', 'enable', '2016-04-04 21:45:59', '0000-00-00 00:00:00'),
(336, 'signup', 'GET', 'App\\Http\\Controllers\\SignUpController@index', 'enable', '2016-04-04 21:45:59', '0000-00-00 00:00:00'),
(337, 'signup', 'POST', 'App\\Http\\Controllers\\SignUpController@store', 'enable', '2016-04-04 21:45:59', '0000-00-00 00:00:00'),
(338, 'login', 'GET', 'App\\Http\\Controllers\\loginController@index', 'enable', '2016-04-04 21:45:59', '0000-00-00 00:00:00'),
(340, 'test', 'GET', 'App\\Http\\Controllers\\test@index', 'enable', '2016-04-04 21:45:59', '0000-00-00 00:00:00'),
(341, 'skills/{id}', 'DELETE', 'App\\Http\\Controllers\\skillsController@destroy', 'enable', '2016-04-04 21:50:52', '0000-00-00 00:00:00'),
(343, 'skills', 'GET', 'App\\Http\\Controllers\\skillsController@index', 'enable', '2016-04-04 22:45:41', '0000-00-00 00:00:00'),
(344, 'activation/link/{link}', 'GET', 'App\\Http\\Controllers\\loginController@activationLink', 'enable', '2016-04-04 22:56:28', '2016-04-04 20:58:54'),
(345, 'categories', 'GET', 'App\\Http\\Controllers\\categoriesController@index', 'enable', '2016-04-04 22:56:43', '2016-04-08 07:59:43'),
(346, 'categories/create', 'GET', 'App\\Http\\Controllers\\categoriesController@create', 'enable', '2016-04-04 22:56:43', '0000-00-00 00:00:00'),
(347, 'categories', 'POST', 'App\\Http\\Controllers\\categoriesController@store', 'enable', '2016-04-04 22:56:43', '0000-00-00 00:00:00'),
(348, 'categories/{id}', 'GET', 'App\\Http\\Controllers\\categoriesController@show', 'enable', '2016-04-04 22:56:43', '0000-00-00 00:00:00'),
(352, 'degrees', 'GET', 'App\\Http\\Controllers\\degreesController@index', 'enable', '2016-04-04 22:56:43', '0000-00-00 00:00:00'),
(353, 'categories/{id}/edit', 'GET', 'App\\Http\\Controllers\\categoriesController@edit', 'enable', '2016-04-04 22:58:57', '0000-00-00 00:00:00'),
(354, 'categories/{id}', 'PUT', 'App\\Http\\Controllers\\categoriesController@update', 'enable', '2016-04-04 22:58:57', '0000-00-00 00:00:00'),
(355, 'categories/{id}', 'DELETE', 'App\\Http\\Controllers\\categoriesController@destroy', 'enable', '2016-04-04 22:58:57', '0000-00-00 00:00:00'),
(356, 'user/type', 'GET', 'App\\Http\\Controllers\\userTypeController@index', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(357, 'user/type/create', 'GET', 'App\\Http\\Controllers\\userTypeController@create', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(358, 'user/type', 'POST', 'App\\Http\\Controllers\\userTypeController@store', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(359, 'user/type/{id}', 'GET', 'App\\Http\\Controllers\\userTypeController@show', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(360, 'user/type/{id}/edit', 'GET', 'App\\Http\\Controllers\\userTypeController@edit', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(361, 'user/type/{id}', 'PUT', 'App\\Http\\Controllers\\userTypeController@update', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(362, 'user/type/{id}', 'DELETE', 'App\\Http\\Controllers\\userTypeController@destroy', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(363, 'user/type/status/{id}/{status}', 'GET', 'App\\Http\\Controllers\\userTypeController@status', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(364, 'route/status/{id}/{status}', 'GET', 'App\\Http\\Controllers\\routeController@status', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(365, 'test/{id}', 'GET', 'App\\Http\\Controllers\\test@index', 'enable', '2016-04-05 02:58:59', '0000-00-00 00:00:00'),
(367, '/', 'GET', 'App\\Http\\Controllers\\homeController@index', 'enable', '2016-04-05 13:45:10', '2016-04-14 05:00:04'),
(368, 'profile', 'GET', 'App\\Http\\Controllers\\profileController@index', 'enable', '2016-04-07 19:57:07', '0000-00-00 00:00:00'),
(369, 'dashboard', 'GET', 'App\\Http\\Controllers\\dashboardController@index', 'enable', '2016-04-07 19:57:07', '0000-00-00 00:00:00'),
(370, 'profile', 'PUT', 'App\\Http\\Controllers\\profileController@update', 'enable', '2016-04-11 16:18:59', '0000-00-00 00:00:00'),
(371, 'profile/skills', 'GET', 'App\\Http\\Controllers\\profileSkillsController@index', 'enable', '2016-04-11 16:18:59', '0000-00-00 00:00:00'),
(372, 'choncolVai', 'GET', 'App\\Http\\Controllers\\test@index', 'enable', '2016-04-11 16:18:59', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skillName` varchar(45) NOT NULL,
  `sortInd` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skillName`, `sortInd`, `created_at`, `updated_at`) VALUES
(1, 'PHP', 1, '2016-04-09 05:26:08', '2016-04-08 23:26:08'),
(2, 'JS', 2, '2016-03-20 21:02:08', '0000-00-00 00:00:00'),
(3, 'Node.JS', 3, '2016-03-20 20:04:04', '0000-00-00 00:00:00'),
(8, 'Java', 4, '2016-03-29 16:18:35', '2016-03-29 10:18:35'),
(9, 'HTML', 5, '2016-04-09 05:25:13', '2016-04-08 23:25:13'),
(10, 'CSS', 6, '2016-04-08 23:25:23', '2016-04-08 23:25:23'),
(11, 'Laravel', 7, '2016-04-09 05:26:41', '2016-04-08 23:26:41'),
(12, 'Codeigniter', 8, '2016-04-08 23:27:35', '2016-04-08 23:27:35'),
(13, 'Mysql', 9, '2016-04-08 23:27:53', '2016-04-08 23:27:53'),
(14, 'jQuery', 10, '2016-04-09 05:28:41', '2016-04-08 23:28:41'),
(15, 'Angular JS', 11, '2016-04-08 23:29:41', '2016-04-08 23:29:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userName` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `userType` enum('Root','Admin','Company','JobSeeker') DEFAULT 'JobSeeker',
  `userStatus` enum('Active','Blocked','InActive') DEFAULT 'InActive',
  `joinedOn` datetime DEFAULT NULL,
  `lastLoggedIn` datetime DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userName`, `password`, `userType`, `userStatus`, `joinedOn`, `lastLoggedIn`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'nurun.nobi.shamim', '$2y$10$Qh.O5QkRvxCwC3bKxS1u4uMoFX.X32rZrJugcnb8hXNIptZGapAem', 'JobSeeker', 'Active', NULL, NULL, 'oCbuu2Wvosrt6iSAz0kXcCXa2aTeXxYuKgA5VDP4rMSriB4owkTkqj9UQoPQ', NULL, '2016-03-26 15:43:29'),
(5, 'nurun_nobi_shamim', '$2y$10$Qh.O5QkRvxCwC3bKxS1u4uMoFX.X32rZrJugcnb8hXNIptZGapAem', 'Root', 'Active', NULL, NULL, 'Nlvu6QqjdhJqvrgws6lXvsYt8KxY04ugmLYxh9u5rNYF5dgOSr5kj7jl3te4', NULL, '2016-04-20 01:46:48'),
(6, 'nurunNobiShamim', '$2y$10$lPhzFZItlXu15ftZ4B3a.OdyQX.bU7CVURpqLzUTQbTEd0bPJ0vyi', 'Root', 'Active', NULL, NULL, 'n6HqnVcpufltco9KyHISzEXsK5dNji9kZlubWFWqH4DfsAiVbsv2BhUz0Kxf', NULL, '2016-04-14 04:56:06'),
(9, 'shamimBd', '$2y$10$toREgQF8GwvwSq5t6FId3eT5Q1IMYVBBICpuXOeYq28ltHVnIIjIS', 'JobSeeker', 'Active', NULL, NULL, 'VYEZQCpAPCOR3kZEwxKVJj8CGDY7BMTKeTCEJJ9qt4AHIrJJubyIECrmlM5r', NULL, '2016-04-05 07:35:55');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `id` int(11) NOT NULL,
  `userType` varchar(50) NOT NULL,
  `status` enum('enable','disable') NOT NULL DEFAULT 'enable',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`id`, `userType`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Root', 'enable', '2016-03-29 17:32:53', '2016-04-05 06:47:23'),
(2, 'Admin', 'enable', '2016-03-29 18:17:44', '2016-04-04 21:30:39'),
(5, 'Company', 'enable', '2016-03-29 18:24:10', '2016-04-05 06:47:27'),
(6, 'JobSeeker', 'enable', '2016-03-30 22:02:45', '2016-04-06 17:51:21'),
(8, 'Any', 'enable', '2016-03-31 00:25:17', '2016-04-06 17:49:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coverletters`
--
ALTER TABLE `coverletters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkCoverLetterProfileID_idx` (`profileID`);

--
-- Indexes for table `degrees`
--
ALTER TABLE `degrees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employers`
--
ALTER TABLE `employers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkEmployersUserID_idx` (`userID`),
  ADD KEY `fkEmployersCompanyID_idx` (`companyID`);

--
-- Indexes for table `institutes`
--
ALTER TABLE `institutes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `instituteCode_UNIQUE` (`instituteCode`);

--
-- Indexes for table `interviews`
--
ALTER TABLE `interviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkInterviewsApplicantID_idx` (`applicantID`),
  ADD KEY `fkInterviewsJobID_idx` (`jobID`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkJobsEmployerID_idx` (`employerID`),
  ADD KEY `fkJobsCategoryID_idx` (`jobCategory`);

--
-- Indexes for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkApplicantsJobID_idx` (`jobID`),
  ADD KEY `fkApplicantsProfileID_idx` (`profileID`),
  ADD KEY `fkApplicantsCoverLetterID_idx` (`coverLetterID`);

--
-- Indexes for table `mail_verification`
--
ALTER TABLE `mail_verification`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userID` (`userID`),
  ADD KEY `userID_2` (`userID`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkMessagesUserID_idx` (`userID`),
  ADD KEY `fkMessagesToWhom_idx` (`toWhome`),
  ADD KEY `fkMessagesJobID_idx` (`jobID`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkProfilesUserID_idx` (`userID`);

--
-- Indexes for table `profile_education`
--
ALTER TABLE `profile_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkEducationProfileID_idx` (`profileID`),
  ADD KEY `fkEducationInstitutionID_idx` (`institutionID`),
  ADD KEY `fkEducationDegreeID_idx` (`degreeID`);

--
-- Indexes for table `profile_experiences`
--
ALTER TABLE `profile_experiences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkExperiencesProfileID_idx` (`profileID`),
  ADD KEY `fkExperiencesCompanyID_idx` (`companyID`);

--
-- Indexes for table `profile_recommendations`
--
ALTER TABLE `profile_recommendations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fkRecommendationProfileID_idx` (`profileID`);

--
-- Indexes for table `profile_skills`
--
ALTER TABLE `profile_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skillID` (`skillID`),
  ADD KEY `profileID` (`profileID`);

--
-- Indexes for table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userName_UNIQUE` (`userName`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `coverletters`
--
ALTER TABLE `coverletters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `degrees`
--
ALTER TABLE `degrees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `employers`
--
ALTER TABLE `employers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `institutes`
--
ALTER TABLE `institutes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `interviews`
--
ALTER TABLE `interviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `job_applicants`
--
ALTER TABLE `job_applicants`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `mail_verification`
--
ALTER TABLE `mail_verification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=186;
--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `profile_education`
--
ALTER TABLE `profile_education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `profile_experiences`
--
ALTER TABLE `profile_experiences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profile_recommendations`
--
ALTER TABLE `profile_recommendations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profile_skills`
--
ALTER TABLE `profile_skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=373;
--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `coverletters`
--
ALTER TABLE `coverletters`
  ADD CONSTRAINT `fkCoverLetterProfileID` FOREIGN KEY (`profileID`) REFERENCES `profiles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `employers`
--
ALTER TABLE `employers`
  ADD CONSTRAINT `fkEmployersCompanyID` FOREIGN KEY (`companyID`) REFERENCES `companies` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkEmployersUserID` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `interviews`
--
ALTER TABLE `interviews`
  ADD CONSTRAINT `fkInterviewsApplicantID` FOREIGN KEY (`applicantID`) REFERENCES `job_applicants` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkInterviewsJobID` FOREIGN KEY (`jobID`) REFERENCES `jobs` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `jobs`
--
ALTER TABLE `jobs`
  ADD CONSTRAINT `fkJobsCategoryID` FOREIGN KEY (`jobCategory`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkJobsEmployerID` FOREIGN KEY (`employerID`) REFERENCES `employers` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD CONSTRAINT `fkApplicantsCoverLetterID` FOREIGN KEY (`coverLetterID`) REFERENCES `coverletters` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkApplicantsJobID` FOREIGN KEY (`jobID`) REFERENCES `jobs` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkApplicantsProfileID` FOREIGN KEY (`profileID`) REFERENCES `profiles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `fkMessagesJobID` FOREIGN KEY (`jobID`) REFERENCES `jobs` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkMessagesToWhom` FOREIGN KEY (`toWhome`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fkMessagesUserID` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `profiles`
--
ALTER TABLE `profiles`
  ADD CONSTRAINT `fkProfilesUserID` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `profile_education`
--
ALTER TABLE `profile_education`
  ADD CONSTRAINT `fkEducationDegreeID` FOREIGN KEY (`degreeID`) REFERENCES `degrees` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkEducationInstitutionID` FOREIGN KEY (`institutionID`) REFERENCES `institutes` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkEducationProfileID` FOREIGN KEY (`profileID`) REFERENCES `profiles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `profile_experiences`
--
ALTER TABLE `profile_experiences`
  ADD CONSTRAINT `fkExperiencesCompanyID` FOREIGN KEY (`companyID`) REFERENCES `companies` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fkExperiencesProfileID` FOREIGN KEY (`profileID`) REFERENCES `profiles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `profile_recommendations`
--
ALTER TABLE `profile_recommendations`
  ADD CONSTRAINT `fkRecommendationProfileID` FOREIGN KEY (`profileID`) REFERENCES `profiles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `profile_skills`
--
ALTER TABLE `profile_skills`
  ADD CONSTRAINT `profile_skills_ibfk_1` FOREIGN KEY (`skillID`) REFERENCES `skills` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `profile_skills_ibfk_2` FOREIGN KEY (`profileID`) REFERENCES `profiles` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `reset_password`
--
ALTER TABLE `reset_password`
  ADD CONSTRAINT `reset_password_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
