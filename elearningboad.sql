-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2017 at 06:39 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elearningboad`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question` int(11) NOT NULL,
  `answer` text CHARACTER SET utf8 NOT NULL,
  `correct` int(2) NOT NULL DEFAULT '0',
  `banned` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question`, `answer`, `correct`, `banned`) VALUES
(32, 16, 'hello world', 1, 0),
(31, 15, 'Answer 666666', 0, 1),
(30, 15, 'Answer 55555555', 0, 0),
(29, 15, 'Answer 4444444444', 0, 0),
(28, 15, 'Answer 33333333333', 0, 0),
(27, 15, 'Answer 22222222222', 1, 0),
(26, 15, 'Answer 1111111111', 1, 0),
(24, 13, '1', 1, 0),
(23, 12, 'Answer 444444444444', 0, 0),
(22, 12, 'Answer 33333333333333', 0, 0),
(21, 12, 'Answer 222222222222222', 1, 0),
(20, 12, 'Answer 1111111111111', 0, 0),
(33, 17, 'hec quyn', 1, 0),
(34, 17, 'tooi', 0, 0),
(35, 17, 'obama', 0, 0),
(36, 17, 'lambada', 0, 0),
(37, 18, 'Personal Hypertext Processor', 0, 0),
(38, 18, 'Private Home Page', 0, 0),
(39, 18, 'PHP: Hypertext Preprocessor', 1, 0),
(40, 18, 'No', 0, 0),
(41, 19, '&amp;lt;script&amp;gt;...&amp;lt;/script&amp;gt;', 0, 0),
(42, 19, '&amp;lt;?php...?&amp;gt;', 1, 0),
(43, 19, '&amp;lt;&amp;amp;&amp;gt;...&amp;lt;/&amp;amp;&amp;gt;', 1, 0),
(44, 19, '&amp;lt;?php&amp;gt;...&amp;lt;/?&amp;gt;', 0, 0),
(45, 20, 'echo &quot;Hello World&quot;;', 0, 0),
(46, 20, 'Document.Write(&quot;Hello World&quot;);', 1, 0),
(47, 20, '&quot;Hello World&quot;;', 1, 0),
(48, 20, 'No', 0, 0),
(49, 21, '!', 0, 0),
(50, 21, '$', 1, 0),
(51, 21, '&amp;amp;', 0, 0),
(52, 21, 'No', 0, 0),
(53, 22, '&lt;div align=&quot;left&quot;&gt;&amp;lt;/php&amp;gt;&amp;lt;/php&amp;gt;&lt;/div&gt;', 0, 0),
(54, 22, '.', 0, 0),
(55, 22, 'New line', 0, 0),
(56, 22, ';', 1, 0),
(57, 23, '&lt;div align=&quot;left&quot;&gt;JavaScript&lt;/div&gt;', 0, 0),
(58, 23, '.JavaScript', 0, 0),
(59, 23, 'Perl and C', 1, 0),
(60, 23, 'No', 0, 0),
(61, 24, '&lt;div align=&quot;left&quot;&gt;Request.QueryString;&lt;/div&gt;', 0, 0),
(62, 24, '$_GET[];', 1, 0),
(63, 24, 'Request.Form;', 0, 0),
(64, 24, 'No', 0, 0),
(65, 25, '0', 1, 0),
(66, 26, '1', 1, 0),
(67, 27, '1', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `title` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(10, 'Toan hoc', 'Demo resource category'),
(8, 'Tin hoc', 'Demo resource category'),
(9, 'Hoa hoc', 'Demo resource category');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `parent_id`, `name`) VALUES
(1, 0, 'Albania'),
(2, 0, 'Algeria'),
(3, 0, 'American Samoa'),
(4, 0, 'Andorra'),
(5, 0, 'Angola'),
(6, 0, 'Anguilla'),
(7, 0, 'Antigua'),
(8, 0, 'Antilles'),
(9, 0, 'Argentina'),
(10, 0, 'Armenia'),
(11, 0, 'Aruba'),
(12, 0, 'Australia'),
(13, 0, 'Austria'),
(14, 0, 'Azerbaijan'),
(15, 0, 'Azores'),
(16, 0, 'Bahamas'),
(17, 0, 'Bahrain'),
(18, 0, 'Bangladesh'),
(19, 0, 'Barbados'),
(20, 0, 'Barbuda'),
(21, 0, 'Belgium'),
(22, 0, 'Belize'),
(23, 0, 'Belorus'),
(24, 0, 'Benin'),
(25, 0, 'Bermuda'),
(26, 0, 'Bhutan'),
(27, 0, 'Bolivia'),
(28, 0, 'Bonaire'),
(29, 0, 'Bosnia &amp; Hercegovina'),
(30, 0, 'Botswana'),
(31, 0, 'Br. Virgin Islands'),
(32, 0, 'Brazil'),
(33, 0, 'Brunei'),
(34, 0, 'Bulgaria'),
(35, 0, 'Burkina Faso'),
(36, 0, 'Burundi'),
(37, 0, 'Caicos Island'),
(38, 0, 'Cameroon'),
(39, 0, 'Canada'),
(40, 0, 'Canary Islands'),
(41, 0, 'Cape Verde'),
(42, 0, 'Cayman Islands'),
(43, 0, 'Central African Republic'),
(44, 0, 'Chad'),
(45, 0, 'Channel Islands'),
(46, 0, 'Chile'),
(47, 0, 'China'),
(48, 0, 'Colombia'),
(50, 0, 'Congo'),
(51, 0, 'Cook Islands'),
(52, 0, 'Cooper Island'),
(53, 0, 'Costa Rica'),
(54, 0, 'Cote D&#39;Ivoire'),
(55, 0, 'Croatia'),
(56, 0, 'Curacao'),
(57, 0, 'Cyprus'),
(58, 0, 'Czech Republic'),
(59, 0, 'Denmark'),
(60, 0, 'Djibouti'),
(61, 0, 'Dominica'),
(62, 0, 'Dominican Republic'),
(63, 0, 'Ecuador'),
(64, 0, 'Egypt'),
(65, 0, 'El Salvador'),
(66, 0, 'England'),
(67, 0, 'Equatorial Guinea'),
(68, 0, 'Estonia'),
(69, 0, 'Ethiopia'),
(70, 0, 'Fiji'),
(71, 0, 'Finland'),
(72, 0, 'France'),
(73, 0, 'French Guiana'),
(74, 0, 'French Polynesia'),
(75, 0, 'Futuna Island'),
(76, 0, 'Gabon'),
(77, 0, 'Gambia'),
(78, 0, 'Georgia'),
(79, 0, 'Germany'),
(80, 0, 'Ghana'),
(81, 0, 'Gibraltar'),
(82, 0, 'Greece'),
(83, 0, 'Grenada'),
(84, 0, 'Grenland'),
(85, 0, 'Guadeloupe'),
(86, 0, 'Guam'),
(87, 0, 'Guatemala'),
(88, 0, 'Guinea'),
(89, 0, 'Guinea-Bissau'),
(90, 0, 'Guyana'),
(91, 0, 'Haiti'),
(92, 0, 'Holland'),
(93, 0, 'Honduras'),
(94, 0, 'Hong Kong'),
(95, 0, 'Hungary'),
(96, 0, 'Iceland'),
(97, 0, 'India'),
(98, 0, 'Indonesia'),
(99, 0, 'Iran'),
(100, 0, 'Iraq'),
(101, 0, 'Ireland, Northern'),
(102, 0, 'Ireland, Republic of'),
(103, 0, 'Isle of Man'),
(104, 0, 'Israel'),
(105, 0, 'Italy'),
(106, 0, 'Ivory Coast'),
(107, 0, 'Jamaica'),
(108, 0, 'Japan'),
(109, 0, 'Jordan'),
(110, 0, 'Jost Van Dyke Island'),
(111, 0, 'Kampuchea'),
(112, 0, 'Kazakhstan'),
(113, 0, 'Kenya'),
(114, 0, 'Kiribati'),
(115, 0, 'Korea'),
(116, 0, 'Korea, South'),
(117, 0, 'Kosrae'),
(118, 0, 'Kuwait'),
(119, 0, 'Kyrgyzstan'),
(120, 0, 'Laos'),
(121, 0, 'Latvia'),
(122, 0, 'Lebanon'),
(123, 0, 'Lesotho'),
(124, 0, 'Liberia'),
(125, 0, 'Liechtenstein'),
(126, 0, 'Lithuania'),
(127, 0, 'Luxembourg'),
(128, 0, 'Macau'),
(129, 0, 'Macedonia'),
(130, 0, 'Madagascar'),
(131, 0, 'Madeira Islands'),
(132, 0, 'Malagasy'),
(133, 0, 'Malawi'),
(134, 0, 'Malaysia'),
(135, 0, 'Maldives'),
(136, 0, 'Mali'),
(137, 0, 'Malta'),
(138, 0, 'Marshall Islands'),
(139, 0, 'Martinique'),
(140, 0, 'Mauritania'),
(141, 0, 'Mauritius'),
(142, 0, 'Mexico'),
(143, 0, 'Micronesia'),
(144, 0, 'Moldova'),
(145, 0, 'Monaco'),
(146, 0, 'Mongolia'),
(147, 0, 'Montenegro'),
(148, 0, 'Montserrat'),
(149, 0, 'Morocco'),
(150, 0, 'Mozambique'),
(151, 0, 'Myanmar'),
(152, 0, 'Namibia'),
(153, 0, 'Nauru'),
(154, 0, 'Nepal'),
(155, 0, 'Netherlands'),
(156, 0, 'Nevis'),
(157, 0, 'Nevis (St. Kitts)'),
(158, 0, 'New Caledonia'),
(159, 0, 'New Zealand'),
(160, 0, 'Nicaragua'),
(161, 0, 'Niger'),
(162, 0, 'Nigeria'),
(163, 0, 'Niue'),
(164, 0, 'Norfolk Island'),
(165, 0, 'Norman Island'),
(166, 0, 'Northern Mariana Island'),
(167, 0, 'Norway'),
(168, 0, 'Oman'),
(169, 0, 'Pakistan'),
(170, 0, 'Palau'),
(171, 0, 'Panama'),
(172, 0, 'Papua New Guinea'),
(173, 0, 'Paraguay'),
(174, 0, 'Peru'),
(175, 0, 'Philippines'),
(176, 0, 'Poland'),
(177, 0, 'Ponape'),
(178, 0, 'Portugal'),
(179, 0, 'Qatar'),
(180, 0, 'Reunion'),
(181, 0, 'Romania'),
(182, 0, 'Rota'),
(183, 0, 'Russia'),
(184, 0, 'Rwanda'),
(185, 0, 'Saba'),
(186, 0, 'Saipan'),
(187, 0, 'San Marino'),
(188, 0, 'Sao Tome'),
(189, 0, 'Saudi Arabia'),
(190, 0, 'Scotland'),
(191, 0, 'Senegal'),
(192, 0, 'Serbia'),
(193, 0, 'Seychelles'),
(194, 0, 'Sierra Leone'),
(195, 0, 'Singapore'),
(196, 0, 'Slovakia'),
(197, 0, 'Slovenia'),
(198, 0, 'Solomon Islands'),
(199, 0, 'Somalia'),
(200, 0, 'South Africa'),
(201, 0, 'Spain'),
(202, 0, 'Sri Lanka'),
(203, 0, 'St. Barthelemy'),
(204, 0, 'St. Christopher'),
(205, 0, 'St. Croix'),
(206, 0, 'St. Eustatius'),
(207, 0, 'St. John'),
(208, 0, 'St. Kitts'),
(209, 0, 'St. Lucia'),
(210, 0, 'St. Maarten'),
(211, 0, 'St. Martin'),
(212, 0, 'St. Thomas'),
(213, 0, 'St. Vincent'),
(214, 0, 'Sudan'),
(215, 0, 'Suriname'),
(216, 0, 'Swaziland'),
(217, 0, 'Sweden'),
(218, 0, 'Switzerland'),
(219, 0, 'Syria'),
(220, 0, 'Tahiti'),
(221, 0, 'Taiwan'),
(222, 0, 'Tajikistan'),
(223, 0, 'Tanzania'),
(224, 0, 'Thailand'),
(225, 0, 'Tinian'),
(226, 0, 'Togo'),
(227, 0, 'Tonaga'),
(228, 0, 'Tonga'),
(229, 0, 'Tortola'),
(230, 0, 'Trinidad and Tobago'),
(231, 0, 'Truk'),
(232, 0, 'Tunisia'),
(233, 0, 'Turkey'),
(234, 0, 'Turkmenistan'),
(235, 0, 'Turks and Caicos Island'),
(236, 0, 'Tuvalu'),
(237, 0, 'U.S. Virgin Islands'),
(238, 0, 'Uganda'),
(239, 0, 'Ukraine'),
(240, 0, 'Union Island'),
(241, 0, 'United Arab Emirates'),
(242, 0, 'United Kingdom'),
(243, 0, 'Uruguay'),
(244, 0, 'United States'),
(245, 0, 'Uzbekistan'),
(246, 0, 'Vanuatu'),
(247, 0, 'Vatican City'),
(248, 0, 'Venezuela'),
(249, 0, 'Vietnam'),
(250, 0, 'Virgin Islands (British)'),
(251, 0, 'Virgin Islands (U.S.)'),
(252, 0, 'Wake Island'),
(253, 0, 'Wales'),
(254, 0, 'Wallis Island'),
(255, 0, 'Western Samoa'),
(256, 0, 'Yap'),
(257, 0, 'Yemen, Republic of'),
(258, 0, 'Zaire'),
(259, 0, 'Zambia'),
(260, 0, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL,
  `title` varchar(120) DEFAULT NULL,
  `fsize` tinyint(1) NOT NULL DEFAULT '55',
  `section` varchar(3) DEFAULT NULL,
  `sorting` int(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `id` int(11) NOT NULL,
  `user` varchar(11) CHARACTER SET utf8 NOT NULL,
  `course` varchar(11) CHARACTER SET utf8 NOT NULL,
  `date` date NOT NULL,
  `banned` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`id`, `user`, `course`, `date`, `banned`) VALUES
(1, '3', '3', '2014-11-23', 0),
(2, '1', '3', '2016-11-17', 0),
(3, '1', '4', '2017-02-10', 0),
(4, '12', '3', '2017-02-13', 0),
(5, '1', '9', '2017-03-03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `course` int(5) DEFAULT NULL,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `syllabus` text CHARACTER SET utf8 NOT NULL,
  `duration` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `course`, `title`, `syllabus`, `duration`) VALUES
(1, 4, 'Demo Exam 1', 'Demo Exam 1', 60),
(2, 2, 'Demo Exam 2', 'Demo Exam 2', 56),
(3, 3, 'Demo Exam 3', 'Demo Exam 3', 5),
(4, 4, 'Học Laravel online', 'laravel', 60),
(5, 9, 'php cơ bản', '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `title` varchar(55) NOT NULL,
  `content` text NOT NULL,
  `order` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `content`, `order`) VALUES
(2, 'What is Exam Board?', 'Exam Board is a online academy for taking tests and getting certificate for passed courses.', 5),
(3, 'What can get from this site?', 'You can get lot&#039;s of courses and exams which is essential career development.', 3),
(4, 'How much I have to pay?', 'There are different course programs with different enrollment fees. You can get enrolled to anyone.', 2),
(5, 'Is there any free courses?', 'There are different free courses. You can take theme for free and get certified.', 0),
(6, 'How i get certified?', 'Take some tests. Now you can see your exam records in desired page and download a pdf certificate from there.', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` tinyint(2) NOT NULL,
  `name` varchar(200) NOT NULL,
  `displayname` varchar(200) NOT NULL,
  `dir` varchar(200) NOT NULL,
  `live` tinyint(1) NOT NULL DEFAULT '0',
  `extra_txt` varchar(200) NOT NULL,
  `extra_txt2` varchar(200) NOT NULL,
  `extra_txt3` varchar(200) DEFAULT NULL,
  `extra` varchar(200) NOT NULL,
  `extra2` varchar(200) NOT NULL,
  `extra3` varchar(200) DEFAULT NULL,
  `info` text,
  `active` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `name`, `displayname`, `dir`, `live`, `extra_txt`, `extra_txt2`, `extra_txt3`, `extra`, `extra2`, `extra3`, `info`, `active`) VALUES
(1, 'paypal', 'PayPal', 'paypal', 1, 'Paypal Email Address', 'Currency Code', 'Not in Use', '', '', '', '&lt;p&gt;&lt;a href=&quot;http://www.paypal.com/&quot; title=&quot;PayPal&quot; rel=&quot;nofollow&quot; target=&quot;_blank&quot;&gt;Click here to setup an account with Paypal&lt;/a&gt; &lt;/p&gt;\r\n			&lt;p&gt;&lt;strong&gt;Gateway Name&lt;/strong&gt; - Enter the name of the payment provider here.&lt;/p&gt;\r\n			&lt;p&gt;&lt;strong&gt;Active&lt;/strong&gt; - Select Yes to make this payment provider active. &lt;br/&gt;\r\n			If this box is not checked, the payment provider will not show up in the payment provider list during checkout.&lt;/p&gt;\r\n			&lt;p&gt;&lt;strong&gt;Set Live Mode&lt;/strong&gt; - If you would like to test the payment provider settings, please select No. &lt;/p&gt;\r\n			&lt;p&gt;&lt;strong&gt;Paypal email address&lt;/strong&gt; - Enter your PayPal Business email address here. &lt;/p&gt;\r\n			&lt;p&gt;&lt;strong&gt;Currency Code&lt;/strong&gt; - Enter your currency code here. Valid choices are: &lt;/p&gt;\r\n				&lt;ul&gt;\r\n					&lt;li&gt; USD (U.S. Dollar)&lt;/li&gt;\r\n					&lt;li&gt; EUR (Euro) &lt;/li&gt;\r\n					&lt;li&gt; GBP (Pound Sterling) &lt;/li&gt;\r\n					&lt;li&gt; CAD (Canadian Dollar) &lt;/li&gt;\r\n					&lt;li&gt; JPY (Yen). &lt;/li&gt;\r\n					&lt;li&gt; If omitted, all monetary fields will use default system setting Currency Code. &lt;/li&gt;\r\n				&lt;/ul&gt;\r\n			&lt;p&gt;&lt;strong&gt;Not in Use&lt;/strong&gt; - This field it&#039;s not in use. Leave it empty. &lt;/p&gt;\r\n	        &lt;p&gt;&lt;strong&gt;IPN Url&lt;/strong&gt; - If using recurring payment method, you need to set up and activate the IPN Url in your account: &lt;/p&gt;', 1);

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `project_id` int(11) NOT NULL DEFAULT '0',
  `client_id` int(11) NOT NULL DEFAULT '0',
  `created` date NOT NULL,
  `duedate` date NOT NULL,
  `amount_total` decimal(13,2) NOT NULL DEFAULT '0.00',
  `amount_paid` decimal(13,2) NOT NULL DEFAULT '0.00',
  `method` varchar(20) NOT NULL,
  `tax` decimal(13,2) NOT NULL DEFAULT '0.00',
  `notes` text,
  `comment` varchar(200) DEFAULT NULL,
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `onhold` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `title`, `project_id`, `client_id`, `created`, `duedate`, `amount_total`, `amount_paid`, `method`, `tax`, `notes`, `comment`, `recurring`, `onhold`, `status`) VALUES
(1, 'New Invoice', 1, 3, '2012-06-07', '2011-11-12', '259.90', '259.90', 'Offline', '29.90', 'Qui in adhuc assueverit neglegentur, eu eam vidit maiestatis abhorreant. Ut vim porro mediocritatem, affert liberavisse instructior at sit, sea paulo tollit intellegam in. Usu in latine deterruisset, sed no viderer propriae accusamus. Eum molestiae complectitur ad. Viderer numquam te sed, no prima scribentur duo.', 'His illum inciderint te, velit constituto cu mea, cu sit tacimates accusata salutandi.', 0, 0, 'Paid'),
(2, 'Pending Invoice', 3, 3, '2011-12-04', '2011-12-02', '203.40', '123.40', 'Offline', '23.40', '', '', 0, 1, 'Unpaid'),
(3, 'Testing 345', 7, 3, '2012-01-29', '2012-06-23', '150.00', '0.00', 'PayPal', '0.00', NULL, NULL, 1, 0, 'Unpaid'),
(4, 'Testing 123', 2, 3, '2012-07-01', '2012-08-01', '25.00', '0.00', 'Offline', '0.00', NULL, NULL, 0, 0, 'Unpaid'),
(5, 'New Invoice II', 3, 4, '2012-06-08', '2012-06-23', '78.69', '0.00', 'PayPal', '0.00', NULL, NULL, 0, 0, 'Unpaid'),
(6, 'Web Development', 3, 3, '2013-02-23', '2013-06-25', '10.89', '0.00', 'Offline', '0.00', 'You can enter here your company &lt;strong&gt;policy&lt;/strong&gt; or any other info\nSome other info', 'This comment is NEVER displayed to client or included in the final Quote. It&#039;s for internal purpose only.', 0, 0, 'Unpaid'),
(7, 'Music @ FewPress.com', 8, 3, '2014-11-05', '2014-12-05', '67.00', '0.00', 'PayPal', '0.00', 'You can enter here your company policy or any other info', '', 0, 0, 'Unpaid'),
(8, 'Demo Invoice', 2, 3, '2014-11-18', '2014-12-18', '55.00', '0.00', 'PayPal', '0.00', 'You can ensfbdter here your company policy or any other info', 'dfgf', 0, 0, 'Unpaid'),
(9, 'Course Enrolment to Logo Design', 2, 3, '2014-11-19', '2014-11-19', '5.00', '0.00', 'MoneyBookers', '0.00', 'You can enter here your company policy or any other infdghdghdhbdthfgtho', 'This transaction was for course fee of Logo Design', 0, 0, 'Unpaid'),
(10, 'Course Enrolment to Logo Design', 2, 10, '2014-11-19', '2014-11-19', '5.00', '0.00', 'MoneyBookers', '0.00', 'sdafsdfds', 'This transaction was for course fee of Logo Design', 0, 0, 'Unpaid'),
(11, 'Course Enrolment to Logo Design', 2, 10, '2014-11-19', '2014-11-19', '5.00', '0.00', 'AuthorizeNet', '0.00', 'uigiukggihgui', 'This transaction was for course fee of Logo Design', 0, 0, 'Unpaid'),
(12, 'Course Enrolment to Logo Design', 2, 10, '2014-11-19', '2014-11-19', '5.00', '0.00', 'AuthorizeNet', '0.00', 'ergtdfgdfgfd', 'This transaction was for course fee of Logo Design', 0, 0, 'Unpaid'),
(13, 'Course Enrolment to Logo Design', 2, 3, '2014-11-23', '2014-11-23', '5.00', '0.00', 'AuthorizeNet', '0.00', 'You can enter here your company policy or any other jgkjb', 'This transaction was for course fee of Logo Design', 0, 0, 'Unpaid'),
(14, 'Course Enrolment to Logo Design', 2, 3, '2014-11-23', '2014-11-23', '5.00', '0.00', 'MoneyBookers', '0.00', 'fuyhjbjhjnkhhnjjjhb', 'This transaction was for course fee of Logo Design', 0, 0, 'Unpaid'),
(15, 'Course Enrolment to Logo Design', 2, 3, '2014-11-23', '2014-11-23', '5.00', '0.00', 'MoneyBookers', '0.00', 'jgujgbjgj', 'This transaction was for course fee of Logo Design', 0, 0, 'Unpaid'),
(16, 'Course Enrolment to Logo Design', 2, 3, '2014-11-23', '2014-11-23', '5.00', '0.00', 'MoneyBookers', '0.00', 'kldfhgvidfh', 'This transaction was for course fee of Logo Design', 0, 0, 'Unpaid'),
(17, 'Course Enrolment to Logo Design', 2, 3, '2014-11-23', '2014-11-23', '5.00', '0.00', 'AuthorizeNet', '0.00', 'You can enter here your company policy or any other h', 'This transaction was for course fee of Logo Design', 0, 0, 'Unpaid'),
(18, 'Course Enrolment to Logo Design', 2, 3, '2014-11-23', '2014-11-23', '5.00', '0.00', 'AuthorizeNet', '0.00', 'You can enter here your company policy or any other infogduigweu', 'This transaction was for course fee of Logo Design', 0, 0, 'Unpaid'),
(19, 'Course Enrolment to Demo Course Name 2', 4, 1, '2017-02-09', '2017-02-09', '15.00', '0.00', 'PayPal', '0.00', 'You can enter here your company policy or any other info', 'This transaction was for course fee of Demo Course Name 2', 0, 0, 'Unpaid'),
(20, 'Course Enrolment to Demo Course Name 2', 4, 1, '2017-02-10', '2017-02-10', '15.00', '0.00', 'Offline', '0.00', 'You can enter here your company policy or any other info', 'This transaction was for course fee of Demo Course Name 2', 0, 0, 'Unpaid'),
(21, 'Course Enrolment to Demo Course Name 2', 4, 1, '2017-02-10', '2017-02-10', '15.00', '0.00', 'PayPal', '0.00', 'hãy làm đúng', 'This transaction was for course fee of Demo Course Name 2', 0, 0, 'Unpaid');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_data`
--

CREATE TABLE `invoice_data` (
  `id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(80) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(13,2) NOT NULL DEFAULT '0.00',
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `days` int(2) NOT NULL DEFAULT '0',
  `period` varchar(1) NOT NULL DEFAULT 'D',
  `tax` decimal(13,2) NOT NULL DEFAULT '0.00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice_data`
--

INSERT INTO `invoice_data` (`id`, `project_id`, `invoice_id`, `title`, `description`, `amount`, `recurring`, `days`, `period`, `tax`) VALUES
(1, 1, 1, 'New Entry III', 'Some dscription 1', '120.00', 0, 0, 'D', '15.60'),
(2, 1, 1, 'New Entry II', 'Some dscription II', '110.00', 0, 0, 'D', '14.30'),
(3, 2, 2, 'New Entry I', 'Basic Troubleshooting', '180.00', 0, 0, 'D', '23.40'),
(6, 7, 3, 'Recurring Payment', 'PayPal Recurring payment.', '150.00', 1, 10, 'W', '0.00'),
(8, 3, 6, 'Initial Entry', 'It tamen decimalo tempolongo vic. AÃ…Â­ sori speco alikaÃ…Â­ze ts, kvanta', '10.89', 0, 0, 'D', '0.00'),
(9, 0, 7, 'rgdfdf', 'ghngfhfg', '67.00', 0, 0, 'Y', '0.00'),
(10, 0, 8, 'dbvdfbdf', 'rthbfd', '55.00', 0, 0, 'Y', '0.00'),
(11, 0, 9, 'Course Fee', 'Course Fee: Logo Design', '5.00', 0, 0, '&', '0.00'),
(12, 0, 10, 'Course Fee', 'Course Fee: Logo Design', '5.00', 0, 0, '&', '0.00'),
(13, 0, 11, 'Course Fee', 'Course Fee: Logo Design', '5.00', 0, 0, '&', '0.00'),
(14, 0, 12, 'Course Fee', 'Course Fee: Logo Design', '5.00', 0, 0, '&', '0.00'),
(15, 0, 13, 'Course Fee', 'Course Fee: Logo Design', '5.00', 0, 0, '&', '0.00'),
(16, 0, 14, 'Course Fee', 'Course Fee: Logo Design', '5.00', 0, 0, '&', '0.00'),
(17, 0, 15, 'Course Fee', 'Course Fee: Logo Design', '5.00', 0, 0, '&', '0.00'),
(18, 0, 16, 'Course Fee', 'Course Fee: Logo Design', '5.00', 0, 0, '&', '0.00'),
(19, 0, 17, 'Course Fee', 'Course Fee: Logo Design', '5.00', 0, 0, '&', '0.00'),
(20, 0, 18, 'Course Fee', 'Course Fee: Logo Design', '5.00', 0, 0, '&', '0.00'),
(21, 0, 19, 'Course Fee', 'Course Fee: Demo Course Name 2', '15.00', 0, 0, '&', '0.00'),
(22, 0, 20, 'Course Fee', 'Course Fee: Demo Course Name 2', '15.00', 0, 0, '&', '0.00'),
(23, 0, 21, 'Course Fee', 'Course Fee: Demo Course Name 2', '15.00', 0, 0, '&', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_payments`
--

CREATE TABLE `invoice_payments` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `project_id` int(11) NOT NULL,
  `method` varchar(20) NOT NULL,
  `amount` decimal(13,2) NOT NULL DEFAULT '0.00',
  `recurring` tinyint(1) NOT NULL DEFAULT '0',
  `created` date NOT NULL,
  `description` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `invoice_payments`
--

INSERT INTO `invoice_payments` (`id`, `invoice_id`, `project_id`, `method`, `amount`, `recurring`, `created`, `description`) VALUES
(2, 2, 3, 'Offline', '80.00', 0, '2013-07-05', 'Payment added by admin'),
(3, 2, 3, 'Offline', '25.00', 0, '2013-01-03', 'Payment added by admin');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `txn_id` varchar(100) DEFAULT NULL,
  `form_id` int(11) NOT NULL DEFAULT '0',
  `user` varchar(60) NOT NULL,
  `email` varchar(60) DEFAULT NULL,
  `price` decimal(9,2) NOT NULL DEFAULT '0.00',
  `currency` varchar(6) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pp` varchar(40) DEFAULT NULL,
  `ip` varchar(20) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `txn_id`, `form_id`, `user`, `email`, `price`, `currency`, `created`, `pp`, `ip`, `status`) VALUES
(1, 'ORP098r5', 1, 'John Doe', 'user@gmail.com', '700.00', 'CAD', '2013-07-14 20:29:06', 'PayPal', '127.0.0.1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_types`
--

CREATE TABLE `project_types` (
  `id` int(11) NOT NULL,
  `title` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `fees` float NOT NULL,
  `image` varchar(1024) NOT NULL,
  `description` text NOT NULL,
  `recurring` int(11) NOT NULL,
  `period` varchar(11) NOT NULL,
  `days` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `project_types`
--

INSERT INTO `project_types` (`id`, `title`, `fees`, `image`, `description`, `recurring`, `period`, `days`) VALUES
(3, 'Toeic Starter', 0, 'THUMB_DAEF59-0FA90C-D54BAF-63B722-8589BC-2D05B0.jpg', 'Demo Course Name', 0, 'D', 0),
(4, 'Kỹ năng thuyết trình', 0, 'THUMB_8F19BF-7452FA-33E191-DAA558-245368-92B8CA.jpg', 'Demo Course Name 2', 1, 'W', 2),
(6, 'Kỹ năng làm việc nhóm', 44.5, '', 'Demo Course Name 3', 0, 'D', 0),
(8, 'Thiết kế mỹ thuật', 100, 'THUMB_DB2923-1EF940-414497-47D992-D2FAD4-FEA9BC.jpg', 'Khoa hoc huu ich', 0, '', 0),
(9, 'Lập trình PHP MySQL', 0, 'THUMB_4B42D2-C6D5B5-050CF5-28C7B4-9591DF-B88E06.png', '', 0, 'D', 0);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `exam` int(11) NOT NULL,
  `type` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `marks` int(11) NOT NULL,
  `banned` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `exam`, `type`, `description`, `marks`, `banned`) VALUES
(12, 3, '2', 'This is a MCQ Question (Single Answer) dsfsdfsd', 5, 0),
(15, 3, '3', 'This is MCQ (Multi Answer) fdsss', 10, 0),
(16, 3, '4', 'This is a writing question ihdfilsdbflsil', 10, 0),
(13, 3, '1', 'This is True / False Question 1sefsfsdfsd &amp;nbsp; sadsafdddddd', 5, 0),
(17, 1, '2', 'Ai là người khỏe nhất thế giới?', 10, 0),
(18, 5, '2', '1. What does PHP stand for?', 1, 0),
(19, 5, '2', '2. PHP server scripts are surrounded by delimiters, which?', 1, 0),
(20, 5, '2', '3. How do you write &quot;Hello World&quot; in PHP', 1, 0),
(21, 5, '2', '4. All variables in PHP start with which symbol?', 1, 0),
(22, 5, '2', '5. What is the correct way to end a PHP statement?', 1, 0),
(23, 5, '2', '6. The PHP syntax is most similar to:', 1, 0),
(24, 5, '2', '7. How do you get information from a form that is submitted using the &quot;get&quot; method?', 1, 0),
(25, 5, '1', '8. When using the POST method, variables are displayed in the URL:', 1, 0),
(26, 5, '1', '9. In PHP you can use both single quotes ( &#039; &#039; ) and double quotes ( &quot; &quot; ) for strings:', 1, 0),
(27, 5, '1', '10. Include files must have the file extension &quot;.inc&quot;', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `id` int(11) NOT NULL,
  `category` int(5) DEFAULT NULL,
  `title` varchar(30) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `documents` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`id`, `category`, `title`, `content`, `documents`) VALUES
(1, 8, 'How Secure Is My Password?', 'It has been said that astronomy is a humbling and character-building experience. There is perhaps no better demonstration of the folly of human conceits than this distant image of our tiny world. To me, it underscores our responsibility to deal more kindly with one another, and to preserve and cherish the pale blue dot, the only home we’ve ever known.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;font color=&quot;#383838&quot; face=&quot;Open Sans, Helvetica, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 15px; line-height: 24px;&quot;&gt;&amp;nbsp;Think of the rivers of blood spilled by all those generals and emperors so that, in glory and triumph, they could become the momentary masters of a fraction of a dot.It has been said that astronomy is a humbling and character-building experience. There is perhaps no better demonstration of the folly of human conceits than this distant image of our tiny world. To me, it underscores our responsibility to deal more kindly with one another, and to preserve and cherish the pale blue dot, the only home we’ve ever known. The Earth is a very small stage in a vast cosmic arena. Think of the rivers of blood spilled by all those generals and emperors so that, in glory and triumph, they could become the momentary masters of a fraction of a dot.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;font color=&quot;#383838&quot; face=&quot;Open Sans, Helvetica, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 15px; line-height: 24px;&quot;&gt;&lt;b&gt;It has been said that astronomy is a humbling and character-building experience.&amp;nbsp;&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;font color=&quot;#383838&quot; face=&quot;Open Sans, Helvetica, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 15px; line-height: 24px;&quot;&gt;There is perhaps no better demonstration of the folly of human conceits than this distant image of our tiny world. To me, it underscores our responsibility to deal more kindly with one another, and to preserve and cherish the pale blue dot, the only home we’ve ever known. The Earth is a very small stage in a vast cosmic arena. Think of the rivers of blood spilled by all those generals and emperors so that, in glory and triumph, they could become the momentary masters of a fraction of a dot.&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;font color=&quot;#383838&quot; face=&quot;Open Sans, Helvetica, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 15px; line-height: 24px;&quot;&gt;It has been said that astronomy is a humbling and character-building experience. There is perhaps no better demonstration of the folly of human conceits than this distant image of our tiny world. To me, it underscores our responsibility to deal more kindly with one another, and to preserve and cherish the pale blue dot, the only home we’ve ever known. The Earth is a very small stage in a vast cosmic arena. Think of the rivers of blood spilled by all those generals and emperors so that, in glory and triumph, they could become the momentary masters of a fraction of a dot.&lt;/span&gt;', ''),
(2, 8, 'Recommended Plugins', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;It has been said that astronomy is a humbling and character-building experience. There is perhaps no better demonstration of the folly of human conceits than this distant image of our tiny world. To me, it underscores our responsibility to deal more kindly with one another, and to preserve and cherish the pale blue dot, the only home we’ve ever known. The Earth is a very small stage in a vast cosmic arena. Think of the rivers of blood spilled by all those generals and emperors so that, in glory and triumph, they could become the momentary masters of a fraction of a dot. Think of the endless cruelties visited by the inhabitants of one corner of this pixel on the scarcely distinguishable inhabitants of some other corner, how frequent their misunderstandings, how eager they are to kill one another, how fervent their hatreds.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Earth&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;Look again at that dot. That’s here. That’s home. That’s us. On it everyone you love, everyone you know, everyone you ever heard of,&lt;strong style=&quot;box-sizing: border-box;&quot;&gt;&amp;nbsp;every human being&lt;/strong&gt;&amp;nbsp;who ever was, lived out their lives. The aggregate of our joy and suffering, thousands of confident religions, ideologies, and economic doctrines, every hunter and forager, every hero and coward, every creator and destroyer of civilization, every king and peasant, every young couple in love, every mother and father, hopeful child, inventor and explorer, every teacher of morals, every corrupt politician, every “superstar,” every “supreme leader,” every saint and sinner in the history of our species lived there–on a mote of dust suspended in a sunbeam.&lt;/p&gt;', ''),
(5, 9, 'What Technologies Are Used?', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;It has been said that astronomy is a humbling and character-building experience. There is perhaps no better demonstration of the folly of human conceits than this distant image of our tiny world. To me, it underscores our responsibility to deal more kindly with one another, and to preserve and cherish the pale blue dot, the only home we’ve ever known. The Earth is a very small stage in a vast cosmic arena. Think of the rivers of blood spilled by all those generals and emperors so that, in glory and triumph, they could become the momentary masters of a fraction of a dot. Think of the endless cruelties visited by the inhabitants of one corner of this pixel on the scarcely distinguishable inhabitants of some other corner, how frequent their misunderstandings, how eager they are to kill one another, how fervent their hatreds.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Earth&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;Look again at that dot. That’s here. That’s home. That’s us. On it everyone you love, everyone you know, everyone you ever heard of,&lt;strong style=&quot;box-sizing: border-box;&quot;&gt;&amp;nbsp;every human being&lt;/strong&gt;&amp;nbsp;who ever was, lived out their lives. The aggregate of our joy and suffering, thousands of confident religions, ideologies, and economic doctrines, every hunter and forager, every hero and coward, every creator and destroyer of civilization, every king and peasant, every young couple in love, every mother and father, hopeful child, inventor and explorer, every teacher of morals, every corrupt politician, every “superstar,” every “supreme leader,” every saint and sinner in the history of our species lived there–on a mote of dust suspended in a sunbeam.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Houston&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;that may have seemed like a very long final phase. The autotargeting was taking us right into a … crater, with a large number of big boulders and rocks … and it required … flying manually over the rock field to find a reasonably good area.&lt;/p&gt;&lt;ul style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;A good rule for rocket experimenters to follow is this: always assume that it will explode.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;Let’s light this fire one more time, Mike, and witness this great nation at its best.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The view of the Earth from the Moon fascinated me—a small disk, 240,000 miles away. It was hard to think that that little thing held so many problems, so many frustrations. Raging nationalistic interests, famines, wars, pestilence don’t show from that distance.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Flight Control&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;From this day forward, Flight Control will be known by two words: ‘Tough’ and ‘Competent.’ Tough means we are forever accountable for what we do or what we fail to do. We will never again compromise our responsibilities. Every time we walk into Mission Control we will know what we stand for. Competent means we will never take anything for granted. We will never be found short in our knowledge and in our skills. Mission Control will be perfect. When you leave this meeting today you will go to your office and the first thing you will do there is to write ‘Tough and Competent’ on your blackboards. It will never be erased. Each day when you enter the room these words will remind you of the price paid by Grissom, White, and Chaffee. These words are the price of admission to the ranks of Mission Control.&lt;/p&gt;&lt;ol style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The surface is fine and powdery. I can kick it up loosely with my toe.&lt;/li&gt;&lt;/ol&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Future&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/p&gt;', ''),
(4, 9, 'Chaning The KnowHow Header', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;It has been said that astronomy is a humbling and character-building experience. There is perhaps no better demonstration of the folly of human conceits than this distant image of our tiny world. To me, it underscores our responsibility to deal more kindly with one another, and to preserve and cherish the pale blue dot, the only home we’ve ever known. The Earth is a very small stage in a vast cosmic arena. Think of the rivers of blood spilled by all those generals and emperors so that, in glory and triumph, they could become the momentary masters of a fraction of a dot. Think of the endless cruelties visited by the inhabitants of one corner of this pixel on the scarcely distinguishable inhabitants of some other corner, how frequent their misunderstandings, how eager they are to kill one another, how fervent their hatreds.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Earth&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;Look again at that dot. That’s here. That’s home. That’s us. On it everyone you love, everyone you know, everyone you ever heard of,&lt;strong style=&quot;box-sizing: border-box;&quot;&gt;&amp;nbsp;every human being&lt;/strong&gt;&amp;nbsp;who ever was, lived out their lives. The aggregate of our joy and suffering, thousands of confident religions, ideologies, and economic doctrines, every hunter and forager, every hero and coward, every creator and destroyer of civilization, every king and peasant, every young couple in love, every mother and father, hopeful child, inventor and explorer, every teacher of morals, every corrupt politician, every “superstar,” every “supreme leader,” every saint and sinner in the history of our species lived there–on a mote of dust suspended in a sunbeam.&lt;/p&gt;', ''),
(6, 8, 'Customizing The Theme Colors', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;It has been said that astronomy is a humbling and character-building experience. There is perhaps no better demonstration of the folly of human conceits than this distant image of our tiny world. To me, it underscores our responsibility to deal more kindly with one another, and to preserve and cherish the pale blue dot, the only home we’ve ever known. The Earth is a very small stage in a vast cosmic arena. Think of the rivers of blood spilled by all those generals and emperors so that, in glory and triumph, they could become the momentary masters of a fraction of a dot. Think of the endless cruelties visited by the inhabitants of one corner of this pixel on the scarcely distinguishable inhabitants of some other corner, how frequent their misunderstandings, how eager they are to kill one another, how fervent their hatreds.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Earth&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;Look again at that dot. That’s here. That’s home. That’s us. On it everyone you love, everyone you know, everyone you ever heard of,&lt;strong style=&quot;box-sizing: border-box;&quot;&gt;&amp;nbsp;every human being&lt;/strong&gt;&amp;nbsp;who ever was, lived out their lives. The aggregate of our joy and suffering, thousands of confident religions, ideologies, and economic doctrines, every hunter and forager, every hero and coward, every creator and destroyer of civilization, every king and peasant, every young couple in love, every mother and father, hopeful child, inventor and explorer, every teacher of morals, every corrupt politician, every “superstar,” every “supreme leader,” every saint and sinner in the history of our species lived there–on a mote of dust suspended in a sunbeam.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Houston&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;that may have seemed like a very long final phase. The autotargeting was taking us right into a … crater, with a large number of big boulders and rocks … and it required … flying manually over the rock field to find a reasonably good area.&lt;/p&gt;&lt;ul style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;A good rule for rocket experimenters to follow is this: always assume that it will explode.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;Let’s light this fire one more time, Mike, and witness this great nation at its best.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The view of the Earth from the Moon fascinated me—a small disk, 240,000 miles away. It was hard to think that that little thing held so many problems, so many frustrations. Raging nationalistic interests, famines, wars, pestilence don’t show from that distance.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Flight Control&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;From this day forward, Flight Control will be known by two words: ‘Tough’ and ‘Competent.’ Tough means we are forever accountable for what we do or what we fail to do. We will never again compromise our responsibilities. Every time we walk into Mission Control we will know what we stand for. Competent means we will never take anything for granted. We will never be found short in our knowledge and in our skills. Mission Control will be perfect. When you leave this meeting today you will go to your office and the first thing you will do there is to write ‘Tough and Competent’ on your blackboards. It will never be erased. Each day when you enter the room these words will remind you of the price paid by Grissom, White, and Chaffee. These words are the price of admission to the ranks of Mission Control.&lt;/p&gt;&lt;ol style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The surface is fine and powdery. I can kick it up loosely with my toe.&lt;/li&gt;&lt;/ol&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Future&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/p&gt;', ''),
(7, 9, 'Recommended Plugins', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;It has been said that astronomy is a humbling and character-building experience. There is perhaps no better demonstration of the folly of human conceits than this distant image of our tiny world. To me, it underscores our responsibility to deal more kindly with one another, and to preserve and cherish the pale blue dot, the only home we’ve ever known. The Earth is a very small stage in a vast cosmic arena. Think of the rivers of blood spilled by all those generals and emperors so that, in glory and triumph, they could become the momentary masters of a fraction of a dot. Think of the endless cruelties visited by the inhabitants of one corner of this pixel on the scarcely distinguishable inhabitants of some other corner, how frequent their misunderstandings, how eager they are to kill one another, how fervent their hatreds.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Earth&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;Look again at that dot. That’s here. That’s home. That’s us. On it everyone you love, everyone you know, everyone you ever heard of,&lt;strong style=&quot;box-sizing: border-box;&quot;&gt;&amp;nbsp;every human being&lt;/strong&gt;&amp;nbsp;who ever was, lived out their lives. The aggregate of our joy and suffering, thousands of confident religions, ideologies, and economic doctrines, every hunter and forager, every hero and coward, every creator and destroyer of civilization, every king and peasant, every young couple in love, every mother and father, hopeful child, inventor and explorer, every teacher of morals, every corrupt politician, every “superstar,” every “supreme leader,” every saint and sinner in the history of our species lived there–on a mote of dust suspended in a sunbeam.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Houston&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;that may have seemed like a very long final phase. The autotargeting was taking us right into a … crater, with a large number of big boulders and rocks … and it required … flying manually over the rock field to find a reasonably good area.&lt;/p&gt;&lt;ul style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;A good rule for rocket experimenters to follow is this: always assume that it will explode.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;Let’s light this fire one more time, Mike, and witness this great nation at its best.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The view of the Earth from the Moon fascinated me—a small disk, 240,000 miles away. It was hard to think that that little thing held so many problems, so many frustrations. Raging nationalistic interests, famines, wars, pestilence don’t show from that distance.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Flight Control&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;From this day forward, Flight Control will be known by two words: ‘Tough’ and ‘Competent.’ Tough means we are forever accountable for what we do or what we fail to do. We will never again compromise our responsibilities. Every time we walk into Mission Control we will know what we stand for. Competent means we will never take anything for granted. We will never be found short in our knowledge and in our skills. Mission Control will be perfect. When you leave this meeting today you will go to your office and the first thing you will do there is to write ‘Tough and Competent’ on your blackboards. It will never be erased. Each day when you enter the room these words will remind you of the price paid by Grissom, White, and Chaffee. These words are the price of admission to the ranks of Mission Control.&lt;/p&gt;&lt;ol style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The surface is fine and powdery. I can kick it up loosely with my toe.&lt;/li&gt;&lt;/ol&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Future&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/p&gt;', ''),
(8, 10, 'Modifying The Background Image', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;It has been said that astronomy is a humbling and character-building experience. There is perhaps no better demonstration of the folly of human conceits than this distant image of our tiny world. To me, it underscores our responsibility to deal more kindly with one another, and to preserve and cherish the pale blue dot, the only home we’ve ever known. The Earth is a very small stage in a vast cosmic arena. Think of the rivers of blood spilled by all those generals and emperors so that, in glory and triumph, they could become the momentary masters of a fraction of a dot. Think of the endless cruelties visited by the inhabitants of one corner of this pixel on the scarcely distinguishable inhabitants of some other corner, how frequent their misunderstandings, how eager they are to kill one another, how fervent their hatreds.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Earth&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;Look again at that dot. That’s here. That’s home. That’s us. On it everyone you love, everyone you know, everyone you ever heard of,&lt;strong style=&quot;box-sizing: border-box;&quot;&gt;&amp;nbsp;every human being&lt;/strong&gt;&amp;nbsp;who ever was, lived out their lives. The aggregate of our joy and suffering, thousands of confident religions, ideologies, and economic doctrines, every hunter and forager, every hero and coward, every creator and destroyer of civilization, every king and peasant, every young couple in love, every mother and father, hopeful child, inventor and explorer, every teacher of morals, every corrupt politician, every “superstar,” every “supreme leader,” every saint and sinner in the history of our species lived there–on a mote of dust suspended in a sunbeam.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Houston&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;that may have seemed like a very long final phase. The autotargeting was taking us right into a … crater, with a large number of big boulders and rocks … and it required … flying manually over the rock field to find a reasonably good area.&lt;/p&gt;&lt;ul style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;A good rule for rocket experimenters to follow is this: always assume that it will explode.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;Let’s light this fire one more time, Mike, and witness this great nation at its best.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The view of the Earth from the Moon fascinated me—a small disk, 240,000 miles away. It was hard to think that that little thing held so many problems, so many frustrations. Raging nationalistic interests, famines, wars, pestilence don’t show from that distance.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Flight Control&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;From this day forward, Flight Control will be known by two words: ‘Tough’ and ‘Competent.’ Tough means we are forever accountable for what we do or what we fail to do. We will never again compromise our responsibilities. Every time we walk into Mission Control we will know what we stand for. Competent means we will never take anything for granted. We will never be found short in our knowledge and in our skills. Mission Control will be perfect. When you leave this meeting today you will go to your office and the first thing you will do there is to write ‘Tough and Competent’ on your blackboards. It will never be erased. Each day when you enter the room these words will remind you of the price paid by Grissom, White, and Chaffee. These words are the price of admission to the ranks of Mission Control.&lt;/p&gt;&lt;ol style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The surface is fine and powdery. I can kick it up loosely with my toe.&lt;/li&gt;&lt;/ol&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Future&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/p&gt;', ''),
(9, 8, 'Chaning The KnowHow Header', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;It has been said that astronomy is a humbling and character-building experience. There is perhaps no better demonstration of the folly of human conceits than this distant image of our tiny world. To me, it underscores our responsibility to deal more kindly with one another, and to preserve and cherish the pale blue dot, the only home we’ve ever known. The Earth is a very small stage in a vast cosmic arena. Think of the rivers of blood spilled by all those generals and emperors so that, in glory and triumph, they could become the momentary masters of a fraction of a dot. Think of the endless cruelties visited by the inhabitants of one corner of this pixel on the scarcely distinguishable inhabitants of some other corner, how frequent their misunderstandings, how eager they are to kill one another, how fervent their hatreds.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Earth&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;Look again at that dot. That’s here. That’s home. That’s us. On it everyone you love, everyone you know, everyone you ever heard of,&lt;strong style=&quot;box-sizing: border-box;&quot;&gt;&amp;nbsp;every human being&lt;/strong&gt;&amp;nbsp;who ever was, lived out their lives. The aggregate of our joy and suffering, thousands of confident religions, ideologies, and economic doctrines, every hunter and forager, every hero and coward, every creator and destroyer of civilization, every king and peasant, every young couple in love, every mother and father, hopeful child, inventor and explorer, every teacher of morals, every corrupt politician, every “superstar,” every “supreme leader,” every saint and sinner in the history of our species lived there–on a mote of dust suspended in a sunbeam.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Houston&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;that may have seemed like a very long final phase. The autotargeting was taking us right into a … crater, with a large number of big boulders and rocks … and it required … flying manually over the rock field to find a reasonably good area.&lt;/p&gt;&lt;ul style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;A good rule for rocket experimenters to follow is this: always assume that it will explode.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;Let’s light this fire one more time, Mike, and witness this great nation at its best.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The view of the Earth from the Moon fascinated me—a small disk, 240,000 miles away. It was hard to think that that little thing held so many problems, so many frustrations. Raging nationalistic interests, famines, wars, pestilence don’t show from that distance.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Flight Control&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;From this day forward, Flight Control will be known by two words: ‘Tough’ and ‘Competent.’ Tough means we are forever accountable for what we do or what we fail to do. We will never again compromise our responsibilities. Every time we walk into Mission Control we will know what we stand for. Competent means we will never take anything for granted. We will never be found short in our knowledge and in our skills. Mission Control will be perfect. When you leave this meeting today you will go to your office and the first thing you will do there is to write ‘Tough and Competent’ on your blackboards. It will never be erased. Each day when you enter the room these words will remind you of the price paid by Grissom, White, and Chaffee. These words are the price of admission to the ranks of Mission Control.&lt;/p&gt;&lt;ol style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The surface is fine and powdery. I can kick it up loosely with my toe.&lt;/li&gt;&lt;/ol&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Future&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/p&gt;', '');
INSERT INTO `resources` (`id`, `category`, `title`, `content`, `documents`) VALUES
(10, 8, 'How Do I Contact Legals?', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;It&#039;s has been said that astronomy is a humbling and character-building experience. There is perhaps no better demonstration of the folly of human c&#039;sonceits than this distant image of our tiny world. To me, it underscores our responsibility to deal more kindly with one another, and to preserve and cherish the pale blue dot, the only home we’ve ever known. The Earth is a very small stage in a vast cosmic arena. Think of the rivers of blood spilled by all those generals and emperors so that, in glory and triumph, they could become the momentary masters of a fraction of a dot. Think of the endless cruelties visited by the inhabitants of one corner of this pixel on the scarcely distinguishable inhabitants of some other corner, how frequent their misunderstandings, how eager they are to kill one another, how fervent their hatreds.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Earth&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;Look again at that dot. That’s here. That’s home. That’s us. On it everyone you love, everyone you know, everyone you ever heard of,&lt;strong style=&quot;box-sizing: border-box;&quot;&gt;&amp;nbsp;every human being&lt;/strong&gt;&amp;nbsp;who ever was, lived out their lives. The aggregate of our joy and suffering, thousands of confident religions, ideologies, and economic doctrines, every hunter and forager, every hero and coward, every creator and destroyer of civilization, every king and peasant, every young couple in love, every mother and father, hopeful child, inventor and explorer, every teacher of morals, every corrupt politician, every “superstar,” every “supreme leader,” every saint and sinner in the history of our species lived there–on a mote of dust suspended in a sunbeam.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Houston&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;that may have seemed like a very long final phase. The autotargeting was taking us right into a … crater, with a large number of big boulders and rocks … and it required … flying manually over the rock field to find a reasonably good area.&lt;/p&gt;&lt;ul style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;A good rule for rocket experimenters to follow is this: always assume that it will explode.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;Let’s light this fire one more time, Mike, and witness this great nation at its best.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The view of the Earth from the Moon fascinated me—a small disk, 240,000 miles away. It was hard to think that that little thing held so many problems, so many frustrations. Raging nationalistic interests, famines, wars, pestilence don’t show from that distance.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Flight Control&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;From this day forward, Flight Control will be known by two words: ‘Tough’ and ‘Competent.’ Tough means we are forever accountable for what we do or what we fail to do. We will never again compromise our responsibilities. Every time we walk into Mission Control we will know what we stand for. Competent means we will never take anything for granted. We will never be found short in our knowledge and in our skills. Mission Control will be perfect. When you leave this meeting today you will go to your office and the first thing you will do there is to write ‘Tough and Competent’ on your blackboards. It will never be erased. Each day when you enter the room these words will remind you of the price paid by Grissom, White, and Chaffee. These words are the price of admission to the ranks of Mission Control.&lt;/p&gt;&lt;ol style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The surface is fine and powdery. I can kick it up loosely with my toe.&lt;/li&gt;&lt;/ol&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Future&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/p&gt;', ''),
(11, 10, 'Where Are Your Offices Located', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;It has been said that astronomy is a humbling and character-building experience. There is perhaps no better demonstration of the folly of human conceits than this distant image of our tiny world. To me, it underscores our responsibility to deal more kindly with one another, and to preserve and cherish the pale blue dot, the only home we’ve ever known. The Earth is a very small stage in a vast cosmic arena. Think of the rivers of blood spilled by all those generals and emperors so that, in glory and triumph, they could become the momentary masters of a fraction of a dot. Think of the endless cruelties visited by the inhabitants of one corner of this pixel on the scarcely distinguishable inhabitants of some other corner, how frequent their misunderstandings, how eager they are to kill one another, how fervent their hatreds.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Earth&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;Look again at that dot. That’s here. That’s home. That’s us. On it everyone you love, everyone you know, everyone you ever heard of,&lt;strong style=&quot;box-sizing: border-box;&quot;&gt;&amp;nbsp;every human being&lt;/strong&gt;&amp;nbsp;who ever was, lived out their lives. The aggregate of our joy and suffering, thousands of confident religions, ideologies, and economic doctrines, every hunter and forager, every hero and coward, every creator and destroyer of civilization, every king and peasant, every young couple in love, every mother and father, hopeful child, inventor and explorer, every teacher of morals, every corrupt politician, every “superstar,” every “supreme leader,” every saint and sinner in the history of our species lived there–on a mote of dust suspended in a sunbeam.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Houston&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;that may have seemed like a very long final phase. The autotargeting was taking us right into a … crater, with a large number of big boulders and rocks … and it required … flying manually over the rock field to find a reasonably good area.&lt;/p&gt;&lt;ul style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;A good rule for rocket experimenters to follow is this: always assume that it will explode.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;Let’s light this fire one more time, Mike, and witness this great nation at its best.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The view of the Earth from the Moon fascinated me—a small disk, 240,000 miles away. It was hard to think that that little thing held so many problems, so many frustrations. Raging nationalistic interests, famines, wars, pestilence don’t show from that distance.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Flight Control&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;From this day forward, Flight Control will be known by two words: ‘Tough’ and ‘Competent.’ Tough means we are forever accountable for what we do or what we fail to do. We will never again compromise our responsibilities. Every time we walk into Mission Control we will know what we stand for. Competent means we will never take anything for granted. We will never be found short in our knowledge and in our skills. Mission Control will be perfect. When you leave this meeting today you will go to your office and the first thing you will do there is to write ‘Tough and Competent’ on your blackboards. It will never be erased. Each day when you enter the room these words will remind you of the price paid by Grissom, White, and Chaffee. These words are the price of admission to the ranks of Mission Control.&lt;/p&gt;&lt;ol style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The surface is fine and powdery. I can kick it up loosely with my toe.&lt;/li&gt;&lt;/ol&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Future&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/p&gt;', ''),
(12, 8, 'Who Owns The Copyright On Uplo', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;It has been said that astronomy is a humbling and character-building experience. There is perhaps no better demonstration of the folly of human conceits than this distant image of our tiny world. To me, it underscores our responsibility to deal more kindly with one another, and to preserve and cherish the pale blue dot, the only home we’ve ever known. The Earth is a very small stage in a vast cosmic arena. Think of the rivers of blood spilled by all those generals and emperors so that, in glory and triumph, they could become the momentary masters of a fraction of a dot. Think of the endless cruelties visited by the inhabitants of one corner of this pixel on the scarcely distinguishable inhabitants of some other corner, how frequent their misunderstandings, how eager they are to kill one another, how fervent their hatreds.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Earth&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;Look again at that dot. That’s here. That’s home. That’s us. On it everyone you love, everyone you know, everyone you ever heard of,&lt;strong style=&quot;box-sizing: border-box;&quot;&gt;&amp;nbsp;every human being&lt;/strong&gt;&amp;nbsp;who ever was, lived out their lives. The aggregate of our joy and suffering, thousands of confident religions, ideologies, and economic doctrines, every hunter and forager, every hero and coward, every creator and destroyer of civilization, every king and peasant, every young couple in love, every mother and father, hopeful child, inventor and explorer, every teacher of morals, every corrupt politician, every “superstar,” every “supreme leader,” every saint and sinner in the history of our species lived there–on a mote of dust suspended in a sunbeam.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Houston&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;that may have seemed like a very long final phase. The autotargeting was taking us right into a … crater, with a large number of big boulders and rocks … and it required … flying manually over the rock field to find a reasonably good area.&lt;/p&gt;&lt;ul style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;A good rule for rocket experimenters to follow is this: always assume that it will explode.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;Let’s light this fire one more time, Mike, and witness this great nation at its best.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The view of the Earth from the Moon fascinated me—a small disk, 240,000 miles away. It was hard to think that that little thing held so many problems, so many frustrations. Raging nationalistic interests, famines, wars, pestilence don’t show from that distance.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Flight Control&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;From this day forward, Flight Control will be known by two words: ‘Tough’ and ‘Competent.’ Tough means we are forever accountable for what we do or what we fail to do. We will never again compromise our responsibilities. Every time we walk into Mission Control we will know what we stand for. Competent means we will never take anything for granted. We will never be found short in our knowledge and in our skills. Mission Control will be perfect. When you leave this meeting today you will go to your office and the first thing you will do there is to write ‘Tough and Competent’ on your blackboards. It will never be erased. Each day when you enter the room these words will remind you of the price paid by Grissom, White, and Chaffee. These words are the price of admission to the ranks of Mission Control.&lt;/p&gt;&lt;ol style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The surface is fine and powdery. I can kick it up loosely with my toe.&lt;/li&gt;&lt;/ol&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Future&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/p&gt;', ''),
(13, 9, 'Our Content Policy', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;It has been said that astronomy is a humbling and character-building experience. There is perhaps no better demonstration of the folly of human conceits than this distant image of our tiny world. To me, it underscores our responsibility to deal more kindly with one another, and to preserve and cherish the pale blue dot, the only home we’ve ever known. The Earth is a very small stage in a vast cosmic arena. Think of the rivers of blood spilled by all those generals and emperors so that, in glory and triumph, they could become the momentary masters of a fraction of a dot. Think of the endless cruelties visited by the inhabitants of one corner of this pixel on the scarcely distinguishable inhabitants of some other corner, how frequent their misunderstandings, how eager they are to kill one another, how fervent their hatreds.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Earth&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;Look again at that dot. That’s here. That’s home. That’s us. On it everyone you love, everyone you know, everyone you ever heard of,&lt;strong style=&quot;box-sizing: border-box;&quot;&gt;&amp;nbsp;every human being&lt;/strong&gt;&amp;nbsp;who ever was, lived out their lives. The aggregate of our joy and suffering, thousands of confident religions, ideologies, and economic doctrines, every hunter and forager, every hero and coward, every creator and destroyer of civilization, every king and peasant, every young couple in love, every mother and father, hopeful child, inventor and explorer, every teacher of morals, every corrupt politician, every “superstar,” every “supreme leader,” every saint and sinner in the history of our species lived there–on a mote of dust suspended in a sunbeam.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Houston&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;that may have seemed like a very long final phase. The autotargeting was taking us right into a … crater, with a large number of big boulders and rocks … and it required … flying manually over the rock field to find a reasonably good area.&lt;/p&gt;&lt;ul style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;A good rule for rocket experimenters to follow is this: always assume that it will explode.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;Let’s light this fire one more time, Mike, and witness this great nation at its best.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The view of the Earth from the Moon fascinated me—a small disk, 240,000 miles away. It was hard to think that that little thing held so many problems, so many frustrations. Raging nationalistic interests, famines, wars, pestilence don’t show from that distance.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Flight Control&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;From this day forward, Flight Control will be known by two words: ‘Tough’ and ‘Competent.’ Tough means we are forever accountable for what we do or what we fail to do. We will never again compromise our responsibilities. Every time we walk into Mission Control we will know what we stand for. Competent means we will never take anything for granted. We will never be found short in our knowledge and in our skills. Mission Control will be perfect. When you leave this meeting today you will go to your office and the first thing you will do there is to write ‘Tough and Competent’ on your blackboards. It will never be erased. Each day when you enter the room these words will remind you of the price paid by Grissom, White, and Chaffee. These words are the price of admission to the ranks of Mission Control.&lt;/p&gt;&lt;ol style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The surface is fine and powdery. I can kick it up loosely with my toe.&lt;/li&gt;&lt;/ol&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Future&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/p&gt;', ''),
(14, 10, 'How Do I File A DMCA?', '&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;It has been said that astronomy is a humbling and character-building experience. There is perhaps no better demonstration of the folly of human conceits than this distant image of our tiny world. To me, it underscores our responsibility to deal more kindly with one another, and to preserve and cherish the pale blue dot, the only home we’ve ever known. The Earth is a very small stage in a vast cosmic arena. Think of the rivers of blood spilled by all those generals and emperors so that, in glory and triumph, they could become the momentary masters of a fraction of a dot. Think of the endless cruelties visited by the inhabitants of one corner of this pixel on the scarcely distinguishable inhabitants of some other corner, how frequent their misunderstandings, how eager they are to kill one another, how fervent their hatreds.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Earth&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;Look again at that dot. That’s here. That’s home. That’s us. On it everyone you love, everyone you know, everyone you ever heard of,&lt;strong style=&quot;box-sizing: border-box;&quot;&gt;&amp;nbsp;every human being&lt;/strong&gt;&amp;nbsp;who ever was, lived out their lives. The aggregate of our joy and suffering, thousands of confident religions, ideologies, and economic doctrines, every hunter and forager, every hero and coward, every creator and destroyer of civilization, every king and peasant, every young couple in love, every mother and father, hopeful child, inventor and explorer, every teacher of morals, every corrupt politician, every “superstar,” every “supreme leader,” every saint and sinner in the history of our species lived there–on a mote of dust suspended in a sunbeam.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Houston&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;that may have seemed like a very long final phase. The autotargeting was taking us right into a … crater, with a large number of big boulders and rocks … and it required … flying manually over the rock field to find a reasonably good area.&lt;/p&gt;&lt;ul style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;A good rule for rocket experimenters to follow is this: always assume that it will explode.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;Let’s light this fire one more time, Mike, and witness this great nation at its best.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The view of the Earth from the Moon fascinated me—a small disk, 240,000 miles away. It was hard to think that that little thing held so many problems, so many frustrations. Raging nationalistic interests, famines, wars, pestilence don’t show from that distance.&lt;/p&gt;&lt;h3 style=&quot;box-sizing: border-box; font-size: 24px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 30px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;Flight Control&lt;/h3&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;From this day forward, Flight Control will be known by two words: ‘Tough’ and ‘Competent.’ Tough means we are forever accountable for what we do or what we fail to do. We will never again compromise our responsibilities. Every time we walk into Mission Control we will know what we stand for. Competent means we will never take anything for granted. We will never be found short in our knowledge and in our skills. Mission Control will be perfect. When you leave this meeting today you will go to your office and the first thing you will do there is to write ‘Tough and Competent’ on your blackboards. It will never be erased. Each day when you enter the room these words will remind you of the price paid by Grissom, White, and Chaffee. These words are the price of admission to the ranks of Mission Control.&lt;/p&gt;&lt;ol style=&quot;box-sizing: border-box; margin: 0px 0px 24px 48px; padding: 0px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;It’s just mind-blowingly awesome. I apologize, and I wish I was more articulate, but it’s hard to be articulate when your mind’s blown—but in a very good way.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/li&gt;&lt;li style=&quot;box-sizing: border-box; padding-left: 6px; margin-bottom: 12px;&quot;&gt;The surface is fine and powdery. I can kick it up loosely with my toe.&lt;/li&gt;&lt;/ol&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;The vehicle explodes, literally explodes, off the pad. The simulator shakes you a little bit, but the actual liftoff shakes your entire body and soul.&lt;/p&gt;&lt;h2 style=&quot;box-sizing: border-box; font-size: 26px; margin: 36px 0px 24px; color: rgb(26, 26, 26); line-height: 32px; font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);&quot;&gt;The Future&lt;/h2&gt;&lt;p style=&quot;box-sizing: border-box; margin: 0px 0px 24px; color: rgb(56, 56, 56); font-family: &#039;Open Sans&#039;, Helvetica, Arial, sans-serif; font-size: 15px; line-height: 24px; background-color: rgb(255, 255, 255);&quot;&gt;I am a stranger. I come in peace. Take me to your leader and there will be a massive reward for you in eternity.&lt;/p&gt;', ''),
(15, 10, 'tesst1', 'How are you?\n&lt;iframe width=&quot;560&quot; height=&quot;315&quot; src=&quot;https://www.youtube.com/embed/1OBDBgp21eI&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;', '');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `user` varchar(11) CHARACTER SET utf8 NOT NULL,
  `exam` varchar(11) CHARACTER SET utf8 NOT NULL,
  `token` varchar(20) CHARACTER SET utf8 NOT NULL,
  `fullmarks` float(5,2) NOT NULL,
  `duration` float(5,2) NOT NULL,
  `marks` float(5,2) NOT NULL,
  `score` int(11) NOT NULL,
  `remarks` int(2) NOT NULL,
  `date` date NOT NULL,
  `banned` int(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `user`, `exam`, `token`, `fullmarks`, `duration`, `marks`, `score`, `remarks`, `date`, `banned`) VALUES
(2, '3', '3', 'etyiueryufyerui', 30.00, 5.00, 30.00, 100, 1, '2014-12-01', 0),
(3, '3', '2', 'etyiueryufyerui', 30.00, 5.00, 30.00, 100, 1, '2014-12-01', 0),
(4, '1', '3', '7763171787316371', 30.00, 5.00, 25.00, 83, 1, '2017-02-17', 0),
(5, '1', '1', '9114961366911118', 10.00, 60.00, 10.00, 100, 1, '2017-02-10', 0),
(6, '12', '3', '0874477711111794', 30.00, 5.00, 25.00, 83, 1, '2017-02-17', 0),
(7, '1', '4', '4281194428711144', 0.00, 60.00, 0.00, 0, 0, '2017-02-15', 0),
(8, '1', '5', '2288845488451514', 10.00, 10.00, 5.50, 55, 0, '2017-03-03', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `company` varchar(75) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `site_url` varchar(75) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `site_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `address` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `city` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `state` varchar(150) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `zip` varchar(16) NOT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `logo` varchar(60) NOT NULL,
  `short_date` varchar(20) NOT NULL,
  `long_date` varchar(20) NOT NULL,
  `dtz` varchar(200) NOT NULL,
  `lang` varchar(2) NOT NULL DEFAULT 'en',
  `weekstart` tinyint(1) NOT NULL DEFAULT '1',
  `theme` varchar(30) DEFAULT NULL,
  `enable_reg` tinyint(1) NOT NULL DEFAULT '1',
  `enable_tax` tinyint(1) NOT NULL DEFAULT '0',
  `tax_name` varchar(55) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `tax_rate` varchar(8) NOT NULL DEFAULT '0',
  `tax_number` varchar(100) DEFAULT NULL,
  `enable_offline` tinyint(1) NOT NULL DEFAULT '1',
  `offline_info` text,
  `invoice_note` text,
  `invoice_number` varchar(40) DEFAULT NULL,
  `quote_number` varchar(40) DEFAULT NULL,
  `enable_uploads` tinyint(1) NOT NULL DEFAULT '1',
  `file_types` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `file_max` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `perpage` varchar(3) NOT NULL DEFAULT '10',
  `sbackup` varchar(50) DEFAULT NULL,
  `currency` varchar(4) DEFAULT NULL,
  `cur_symbol` varchar(6) DEFAULT NULL,
  `tsep` varchar(1) NOT NULL DEFAULT ',',
  `dsep` varchar(1) NOT NULL DEFAULT '.',
  `pp_email` varchar(50) DEFAULT NULL,
  `pp_pass` varchar(30) DEFAULT NULL,
  `pp_api` varchar(100) DEFAULT NULL,
  `pp_mode` tinyint(1) NOT NULL DEFAULT '0',
  `invdays` tinyint(1) NOT NULL DEFAULT '7',
  `mailer` enum('PHP','SMTP','SMAIL') NOT NULL DEFAULT 'PHP',
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_user` varchar(50) DEFAULT NULL,
  `smtp_pass` varchar(50) DEFAULT NULL,
  `smtp_port` smallint(3) DEFAULT NULL,
  `sendmail` varchar(60) DEFAULT NULL,
  `is_ssl` tinyint(1) NOT NULL DEFAULT '0',
  `crmv` varchar(5) DEFAULT NULL,
  `passing_score` int(2) NOT NULL,
  `google_analytics` text NOT NULL,
  `social_gplus` varchar(75) NOT NULL,
  `social_twitter` varchar(75) NOT NULL,
  `social_facebook` varchar(75) NOT NULL,
  `social_pinterest` varchar(75) NOT NULL,
  `social_linkedin` varchar(75) NOT NULL,
  `social_rss` varchar(75) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`company`, `site_url`, `site_email`, `address`, `city`, `state`, `zip`, `phone`, `fax`, `logo`, `short_date`, `long_date`, `dtz`, `lang`, `weekstart`, `theme`, `enable_reg`, `enable_tax`, `tax_name`, `tax_rate`, `tax_number`, `enable_offline`, `offline_info`, `invoice_note`, `invoice_number`, `quote_number`, `enable_uploads`, `file_types`, `file_max`, `perpage`, `sbackup`, `currency`, `cur_symbol`, `tsep`, `dsep`, `pp_email`, `pp_pass`, `pp_api`, `pp_mode`, `invdays`, `mailer`, `smtp_host`, `smtp_user`, `smtp_pass`, `smtp_port`, `sendmail`, `is_ssl`, `crmv`, `passing_score`, `google_analytics`, `social_gplus`, `social_twitter`, `social_facebook`, `social_pinterest`, `social_linkedin`, `social_rss`) VALUES
('KVH', 'http://localhost:8089/examonline', 'hungkv1201@gmail.com', 'Thanh Xuân', 'Hà Nội', 'Hà Nội', 'M2J 1K5', '09123456789', '444-444-4444', 'Vinaphone_Logo.svg.png', '%e-%m-%Y', '%d %B %Y %H:%M', 'Asia/Ho_Chi_Minh', 'vi', 1, 'master', 1, 1, 'HST', '0.13', '123456789-WOJO-321', 1, 'Instructions for offline payments\r\nSuch as bank info, address etc...', 'You can enter here your company policy or any other info', 'RTB-ST5', 'QUO-1010', 1, 'gif,png,jpg,jpeg,pdf,zip,rar', '10485760', '10', '17-Feb-2017_17-36-44.sql', 'VNĐ', 'đ', '.', ',', '', '', '', 1, 10, 'SMTP', 'smtp.gmail.com', 'app.supervisor.help@gmail.com', 'qwerty!@#', 465, '/usr/sbin/sendmail -t -i', 1, '3.0.0', 60, 'dfsvjfdsj', 'defcsd', 'dsfsd', 'dsf', 'dsfs', 'sdf', 'dsfsd');

-- --------------------------------------------------------

--
-- Table structure for table `tanswers`
--

CREATE TABLE `tanswers` (
  `id` int(11) NOT NULL,
  `tquestion` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `answer` text CHARACTER SET utf8 NOT NULL,
  `correct` text CHARACTER SET utf8 NOT NULL,
  `marked` text CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tanswers`
--

INSERT INTO `tanswers` (`id`, `tquestion`, `uid`, `answer`, `correct`, `marked`) VALUES
(339, 251, 1, 'Answer 444444444444', '4', '0'),
(340, 252, 1, 'Answer 4444444444', '0', '1'),
(341, 253, 1, 'hello world', 'hello world', 'fsefsfsffw'),
(342, 254, 1, '1', '1', '1'),
(343, 255, 1, 'Answer 222222222222222', '1', '1'),
(344, 256, 1, 'Answer 4444444444', '0', '1'),
(345, 256, 1, 'Answer 33333333333', '0', '1'),
(346, 257, 1, 'hello world', 'hello world', 'dsffffffffffffffffffffffffffffffffffffffff'),
(347, 258, 1, '1', '1', '0'),
(348, 259, 1, 'hec quyn', '1', '1'),
(349, 260, 1, 'hec quyn', '1', '1'),
(350, 261, 12, 'Answer 222222222222222', '1', '1'),
(351, 262, 12, 'Answer 22222222222', '1', '1'),
(352, 262, 12, 'Answer 1111111111', '1', '1'),
(353, 263, 12, 'hello world', 'hello world', 'hello world'),
(354, 264, 12, '1', '1', '1'),
(355, 265, 1, 'Answer 444444444444', '4', '0'),
(356, 267, 1, 'hello world', 'hello world', ''),
(357, 269, 1, 'Answer 222222222222222', '1', '1'),
(358, 270, 1, 'Answer 22222222222', '1', '1'),
(359, 270, 1, 'Answer 1111111111', '1', '1'),
(360, 271, 1, 'hello world', 'hello world', 'hello world'),
(361, 272, 1, '1', '1', '0'),
(362, 273, 12, 'Answer 222222222222222', '1', '1'),
(363, 274, 12, 'Answer 22222222222', '1', '1'),
(364, 274, 12, 'Answer 1111111111', '1', '1'),
(365, 275, 12, 'hello world', 'hello world', 'hello world'),
(366, 276, 12, '1', '1', '0'),
(367, 277, 1, 'Personal Hypertext Processor', '4', '0'),
(368, 278, 1, '&amp;lt;?php...?&amp;gt;', '1', '1'),
(369, 279, 1, 'echo &quot;Hello World&quot;;', '4', '0'),
(370, 280, 1, '$', '1', '1'),
(371, 281, 1, ';', '1', '1'),
(372, 282, 1, 'Perl and C', '1', '1'),
(373, 283, 1, '$_GET[];', '1', '1'),
(374, 284, 1, '0', '1', '0'),
(375, 285, 1, '1', '1', '1'),
(376, 286, 1, '1', '1', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tquestions`
--

CREATE TABLE `tquestions` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `token` varchar(20) CHARACTER SET utf8 NOT NULL,
  `qid` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `exam` int(11) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `marks` float(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tquestions`
--

INSERT INTO `tquestions` (`id`, `uid`, `token`, `qid`, `type`, `exam`, `description`, `marks`) VALUES
(251, 1, '9491028974477844', 12, 2, 3, 'This is a MCQ Question (Single Answer) dsfsdfsd', 5.00),
(252, 1, '9491028974477844', 15, 3, 3, 'This is MCQ (Multi Answer) fdsss', 10.00),
(253, 1, '9491028974477844', 16, 4, 3, 'This is a writing question ihdfilsdbflsil', 10.00),
(254, 1, '9491028974477844', 13, 1, 3, 'This is True / False Question 1sefsfsdfsd &amp;nbsp; sadsafdddddd', 5.00),
(255, 1, '1081061846816856', 12, 2, 3, 'This is a MCQ Question (Single Answer) dsfsdfsd', 5.00),
(256, 1, '1081061846816856', 15, 3, 3, 'This is MCQ (Multi Answer) fdsss', 10.00),
(257, 1, '1081061846816856', 16, 4, 3, 'This is a writing question ihdfilsdbflsil', 10.00),
(258, 1, '1081061846816856', 13, 1, 3, 'This is True / False Question 1sefsfsdfsd &amp;nbsp; sadsafdddddd', 5.00),
(259, 1, '1421696669896481', 17, 2, 1, 'Ai l? ng??i kh?e nh?t th? gi?i?', 10.00),
(260, 1, '9114961366911118', 17, 2, 1, 'Ai l? ng??i kh?e nh?t th? gi?i?', 10.00),
(261, 12, '9966699991666991', 12, 2, 3, 'This is a MCQ Question (Single Answer) dsfsdfsd', 5.00),
(262, 12, '9966699991666991', 15, 3, 3, 'This is MCQ (Multi Answer) fdsss', 10.00),
(263, 12, '9966699991666991', 16, 4, 3, 'This is a writing question ihdfilsdbflsil', 10.00),
(264, 12, '9966699991666991', 13, 1, 3, 'This is True / False Question 1sefsfsdfsd &amp;nbsp; sadsafdddddd', 5.00),
(265, 1, '7222472127772178', 12, 2, 3, 'This is a MCQ Question (Single Answer) dsfsdfsd', 5.00),
(266, 1, '7222472127772178', 15, 3, 3, 'This is MCQ (Multi Answer) fdsss', 10.00),
(267, 1, '7222472127772178', 16, 4, 3, 'This is a writing question ihdfilsdbflsil', 10.00),
(268, 1, '7222472127772178', 13, 1, 3, 'This is True / False Question 1sefsfsdfsd &amp;nbsp; sadsafdddddd', 5.00),
(269, 1, '7763171787316371', 12, 2, 3, 'This is a MCQ Question (Single Answer) dsfsdfsd', 5.00),
(270, 1, '7763171787316371', 15, 3, 3, 'This is MCQ (Multi Answer) fdsss', 10.00),
(271, 1, '7763171787316371', 16, 4, 3, 'This is a writing question ihdfilsdbflsil', 10.00),
(272, 1, '7763171787316371', 13, 1, 3, 'This is True / False Question 1sefsfsdfsd &amp;nbsp; sadsafdddddd', 5.00),
(273, 12, '0874477711111794', 12, 2, 3, 'This is a MCQ Question (Single Answer) dsfsdfsd', 5.00),
(274, 12, '0874477711111794', 15, 3, 3, 'This is MCQ (Multi Answer) fdsss', 10.00),
(275, 12, '0874477711111794', 16, 4, 3, 'This is a writing question ihdfilsdbflsil', 10.00),
(276, 12, '0874477711111794', 13, 1, 3, 'This is True / False Question 1sefsfsdfsd &amp;nbsp; sadsafdddddd', 5.00),
(277, 1, '2288845488451514', 18, 2, 5, '1. What does PHP stand for?', 1.00),
(278, 1, '2288845488451514', 19, 2, 5, '2. PHP server scripts are surrounded by delimiters, which?', 1.00),
(279, 1, '2288845488451514', 20, 2, 5, '3. How do you write &quot;Hello World&quot; in PHP', 1.00),
(280, 1, '2288845488451514', 21, 2, 5, '4. All variables in PHP start with which symbol?', 1.00),
(281, 1, '2288845488451514', 22, 2, 5, '5. What is the correct way to end a PHP statement?', 1.00),
(282, 1, '2288845488451514', 23, 2, 5, '6. The PHP syntax is most similar to:', 1.00),
(283, 1, '2288845488451514', 24, 2, 5, '7. How do you get information from a form that is submitted using the &quot;get&quot; method?', 1.00),
(284, 1, '2288845488451514', 25, 1, 5, '8. When using the POST method, variables are displayed in the URL:', 1.00),
(285, 1, '2288845488451514', 26, 1, 5, '9. In PHP you can use both single quotes ( &#039; &#039; ) and double quotes ( &quot; &quot; ) for strings:', 1.00),
(286, 1, '2288845488451514', 27, 1, 5, '10. Include files must have the file extension &quot;.inc&quot;', 1.00);

-- --------------------------------------------------------

--
-- Table structure for table `tracker`
--

CREATE TABLE `tracker` (
  `id` int(11) NOT NULL,
  `created` date NOT NULL,
  `time` time NOT NULL,
  `ip` text NOT NULL,
  `country` text NOT NULL,
  `city` text NOT NULL,
  `query_string` text NOT NULL,
  `http_referer` text NOT NULL,
  `http_user_agent` text NOT NULL,
  `isbot` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tracker`
--

INSERT INTO `tracker` (`id`, `created`, `time`, `ip`, `country`, `city`, `query_string`, `http_referer`, `http_user_agent`, `isbot`) VALUES
(1, '2014-12-04', '08:12:43', '::1', '', '', '', 'http://localhost/eb/admin/login.php', 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/39.0.2171.71 Safari/537.36', 0),
(561, '2016-11-17', '23:04:46', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/admin/login.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(562, '2016-11-17', '23:04:56', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(563, '2016-11-17', '23:05:00', '::1', '', '', 'sort=3', 'http://localhost:8089/elearningboard/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(564, '2016-11-17', '23:05:04', '::1', '', '', 'pg=1&amp;ipp=10&amp;sort=3', 'http://localhost:8089/elearningboard/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(565, '2016-11-17', '23:05:07', '::1', '', '', 'sort=3', 'http://localhost:8089/elearningboard/exams.php?pg=1&amp;ipp=10&amp;sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(566, '2016-11-17', '23:05:09', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/elearningboard/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(567, '2016-11-17', '23:05:13', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(568, '2016-11-17', '23:05:15', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(569, '2016-11-17', '23:05:18', '::1', '', '', 'sort=4', 'http://localhost:8089/elearningboard/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(570, '2016-11-17', '23:05:25', '::1', '', '', 'do=details&amp;id=1', 'http://localhost:8089/elearningboard/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(571, '2016-11-17', '23:05:29', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/exams.php?do=details&amp;id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(572, '2016-11-17', '23:05:31', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/contact.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(573, '2016-11-17', '23:05:56', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(574, '2016-11-17', '23:06:53', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(575, '2016-11-17', '23:07:04', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(576, '2016-11-17', '23:07:51', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(577, '2016-11-17', '23:07:59', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(578, '2016-11-17', '23:08:03', '::1', '', '', 'do=enrolment&amp;id=3', 'http://localhost:8089/elearningboard/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(579, '2016-11-17', '23:08:09', '::1', '', '', 'sort=3', 'http://localhost:8089/elearningboard/account.php?do=enrolment&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(580, '2016-11-17', '23:08:16', '::1', '', '', 'pg=1&amp;ipp=10&amp;sort=3', 'http://localhost:8089/elearningboard/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(581, '2016-11-17', '23:08:18', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/elearningboard/exams.php?pg=1&amp;ipp=10&amp;sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(582, '2016-11-17', '23:08:20', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(583, '2016-11-17', '23:08:26', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(584, '2016-11-21', '03:46:48', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(585, '2016-11-21', '03:46:51', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(586, '2016-11-21', '03:46:58', '::1', '', '', 'sort=3', 'http://localhost:8089/elearningboard/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(587, '2016-11-21', '03:47:02', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/elearningboard/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(588, '2016-11-21', '03:47:04', '::1', '', '', 'do=quize', 'http://localhost:8089/elearningboard/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(589, '2016-11-21', '03:47:09', '::1', '', '', 'do=quize', 'http://localhost:8089/elearningboard/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(590, '2016-11-21', '03:47:12', '::1', '', '', 'do=quize', 'http://localhost:8089/elearningboard/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(591, '2016-11-21', '03:47:18', '::1', '', '', 'do=quize', 'http://localhost:8089/elearningboard/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(592, '2016-11-21', '03:47:21', '::1', '', '', 'do=result', 'http://localhost:8089/elearningboard/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(593, '2016-11-21', '03:49:37', '::1', '', '', 'do=review', 'http://localhost:8089/elearningboard/account.php?do=result', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(594, '2016-11-21', '03:49:44', '::1', '', '', 'do=review', 'http://localhost:8089/elearningboard/account.php?do=review', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(595, '2016-11-21', '03:49:49', '::1', '', '', 'do=review', 'http://localhost:8089/elearningboard/account.php?do=review', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(596, '2016-11-21', '03:49:59', '::1', '', '', 'do=review', 'http://localhost:8089/elearningboard/account.php?do=review', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(597, '2016-11-21', '03:50:04', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/account.php?do=review', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(598, '2016-11-21', '03:50:35', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:49.0) Gecko/20100101 Firefox/49.0', 0),
(599, '2017-02-08', '22:42:08', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(600, '2017-02-08', '22:42:12', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(601, '2017-02-08', '22:42:16', '::1', '', '', 'sort=3', 'http://localhost:8089/elearningboard/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(602, '2017-02-08', '22:42:20', '::1', '', '', 'sort=3', 'http://localhost:8089/elearningboard/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(603, '2017-02-08', '22:42:23', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/elearningboard/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(604, '2017-02-08', '22:42:27', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(605, '2017-02-08', '22:42:34', '::1', '', '', 'do=details&amp;id=1', 'http://localhost:8089/elearningboard/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(606, '2017-02-08', '22:42:36', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/exams.php?do=details&amp;id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(607, '2017-02-08', '22:42:41', '::1', '', '', 'sort=3', 'http://localhost:8089/elearningboard/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(608, '2017-02-08', '22:42:43', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/elearningboard/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(609, '2017-02-08', '22:42:46', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(610, '2017-02-08', '22:43:03', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(611, '2017-02-08', '22:43:06', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/contact.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(612, '2017-02-08', '23:37:48', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(613, '2017-02-08', '23:38:03', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(614, '2017-02-08', '23:38:07', '::1', '', '', 'sort=6', 'http://localhost:8089/elearningboard/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(615, '2017-02-08', '23:38:19', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/exams.php?sort=6', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(616, '2017-02-08', '23:38:22', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/contact.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(617, '2017-02-08', '23:38:28', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(618, '2017-02-08', '23:38:33', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(619, '2017-02-08', '23:38:36', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(620, '2017-02-08', '23:38:46', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/faqs.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(621, '2017-02-09', '01:01:51', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(622, '2017-02-09', '01:01:55', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(623, '2017-02-09', '01:01:59', '::1', '', '', 'do=details&amp;id=1', 'http://localhost:8089/elearningboard/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(624, '2017-02-09', '01:02:03', '::1', '', '', 'do=start&amp;id=1', 'http://localhost:8089/elearningboard/exams.php?do=details&amp;id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(625, '2017-02-09', '01:02:09', '::1', '', '', 'do=enrolment&amp;id=4', 'http://localhost:8089/elearningboard/account.php?do=start&amp;id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(626, '2017-02-09', '01:02:30', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/account.php?do=billing&amp;action=invoice&amp;id=19', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(627, '2017-02-09', '01:02:32', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(628, '2017-02-09', '01:02:37', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/elearningboard/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(629, '2017-02-09', '01:02:38', '::1', '', '', 'do=quize', 'http://localhost:8089/elearningboard/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(630, '2017-02-09', '01:02:43', '::1', '', '', 'do=quize', 'http://localhost:8089/elearningboard/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(631, '2017-02-09', '01:02:48', '::1', '', '', 'do=quize', 'http://localhost:8089/elearningboard/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(632, '2017-02-09', '01:02:54', '::1', '', '', 'do=quize', 'http://localhost:8089/elearningboard/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(633, '2017-02-09', '01:02:57', '::1', '', '', 'do=result', 'http://localhost:8089/elearningboard/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(634, '2017-02-09', '01:03:03', '::1', '', '', 'do=review', 'http://localhost:8089/elearningboard/account.php?do=result', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(635, '2017-02-09', '01:03:15', '::1', '', '', 'do=review', 'http://localhost:8089/elearningboard/account.php?do=review', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(636, '2017-02-09', '01:03:21', '::1', '', '', 'do=review', 'http://localhost:8089/elearningboard/account.php?do=review', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(637, '2017-02-09', '01:03:28', '::1', '', '', 'do=review', 'http://localhost:8089/elearningboard/account.php?do=review', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(638, '2017-02-09', '01:03:32', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/account.php?do=review', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(639, '2017-02-09', '01:03:43', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(640, '2017-02-09', '02:38:54', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(641, '2017-02-09', '02:39:01', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(642, '2017-02-09', '02:39:05', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(643, '2017-02-09', '03:52:03', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(644, '2017-02-09', '03:52:08', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(645, '2017-02-09', '03:52:09', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(646, '2017-02-09', '03:52:11', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(647, '2017-02-09', '03:52:12', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(648, '2017-02-09', '03:52:13', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/faqs.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(649, '2017-02-09', '03:52:14', '::1', '', '', 'undefined', 'http://localhost:8089/elearningboard/contact.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(650, '2017-02-09', '08:29:15', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(651, '2017-02-09', '08:30:54', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(652, '2017-02-09', '22:35:28', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(653, '2017-02-09', '22:35:33', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(654, '2017-02-09', '22:35:37', '::1', '', '', 'action=details&amp;id=15', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(655, '2017-02-09', '22:35:43', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php?action=details&amp;id=15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(656, '2017-02-09', '22:35:58', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(657, '2017-02-09', '22:36:07', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(658, '2017-02-09', '22:36:11', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(659, '2017-02-09', '22:36:24', '::1', '', '', 'action=category&amp;sort=8', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(660, '2017-02-09', '22:36:29', '::1', '', '', 'action=category&amp;sort=9', 'http://localhost:8089/examonline/resources.php?action=category&amp;sort=8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(661, '2017-02-09', '22:36:38', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php?action=category&amp;sort=9', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(662, '2017-02-09', '22:36:42', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/faqs.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(663, '2017-02-09', '22:36:58', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/contact.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(664, '2017-02-09', '22:39:37', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(665, '2017-02-09', '22:39:41', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(666, '2017-02-09', '22:40:05', '::1', '', '', 'action=details&amp;id=15', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(667, '2017-02-10', '08:07:02', '::1', '', '', 'action=category&amp;sort=10', 'http://localhost:8089/examonline/resources.php?action=details&amp;id=15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(668, '2017-02-10', '08:07:06', '::1', '', '', 'action=category&amp;sort=8', 'http://localhost:8089/examonline/resources.php?action=category&amp;sort=10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(669, '2017-02-10', '08:07:19', '::1', '', '', 'action=category&amp;sort=9', 'http://localhost:8089/examonline/resources.php?action=category&amp;sort=8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(670, '2017-02-10', '08:07:23', '::1', '', '', 'action=category&amp;sort=10', 'http://localhost:8089/examonline/resources.php?action=category&amp;sort=9', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(671, '2017-02-10', '08:07:32', '::1', '', '', 'action=category&amp;sort=9', 'http://localhost:8089/examonline/resources.php?action=category&amp;sort=10', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(672, '2017-02-10', '08:07:33', '::1', '', '', 'action=details&amp;id=13', 'http://localhost:8089/examonline/resources.php?action=category&amp;sort=9', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(673, '2017-02-10', '08:07:53', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php?action=details&amp;id=13', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(674, '2017-02-10', '08:07:54', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(675, '2017-02-10', '08:07:58', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(676, '2017-02-10', '08:08:01', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(677, '2017-02-10', '08:08:15', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(678, '2017-02-10', '08:08:23', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(679, '2017-02-10', '08:08:28', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/contact.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(680, '2017-02-10', '08:47:21', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(681, '2017-02-10', '08:47:24', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(682, '2017-02-10', '08:47:26', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(683, '2017-02-10', '08:47:31', '::1', '', '', 'action=category&amp;sort=9', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(684, '2017-02-10', '08:47:34', '::1', '', '', 'action=category&amp;sort=8', 'http://localhost:8089/examonline/resources.php?action=category&amp;sort=9', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(685, '2017-02-10', '08:47:40', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php?action=category&amp;sort=8', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(686, '2017-02-10', '08:47:48', '::1', '', '', 'do=enrolment&amp;id=4', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(687, '2017-02-10', '08:48:02', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php?do=billing&amp;action=invoice&amp;id=20', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(688, '2017-02-10', '08:48:04', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(689, '2017-02-10', '08:48:04', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(690, '2017-02-10', '08:50:13', '::1', '', '', 'sort=4', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(691, '2017-02-10', '08:50:16', '::1', '', '', 'do=details&amp;id=1', 'http://localhost:8089/examonline/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(692, '2017-02-10', '08:50:19', '::1', '', '', 'do=start&amp;id=1', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(693, '2017-02-10', '08:50:22', '::1', '', '', 'do=enrolment&amp;id=4', 'http://localhost:8089/examonline/account.php?do=start&amp;id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(694, '2017-02-10', '08:50:53', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php?do=billing&amp;action=invoice&amp;id=21', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(695, '2017-02-10', '11:00:47', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php?do=billing&amp;action=invoice&amp;id=21', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(696, '2017-02-10', '11:00:51', '::1', '', '', 'sort=4', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(697, '2017-02-10', '11:00:53', '::1', '', '', 'do=details&amp;id=1', 'http://localhost:8089/examonline/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(698, '2017-02-10', '11:00:55', '::1', '', '', 'do=start&amp;id=1', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(699, '2017-02-10', '11:00:58', '::1', '', '', 'do=enrolment&amp;id=4', 'http://localhost:8089/examonline/account.php?do=start&amp;id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(700, '2017-02-10', '11:01:03', '::1', '', '', 'sort=4', 'http://localhost:8089/examonline/account.php?do=enrolment&amp;id=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(701, '2017-02-10', '11:01:05', '::1', '', '', 'do=details&amp;id=1', 'http://localhost:8089/examonline/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(702, '2017-02-10', '11:01:06', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(703, '2017-02-10', '11:01:14', '::1', '', '', 'do=result', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(704, '2017-02-10', '11:01:25', '::1', '', '', 'do=review', 'http://localhost:8089/examonline/account.php?do=result', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(705, '2017-02-10', '11:01:37', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(706, '2017-02-10', '11:01:41', '::1', '', '', 'sort=4', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(707, '2017-02-10', '11:01:44', '::1', '', '', 'sort=4', 'http://localhost:8089/examonline/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(708, '2017-02-10', '11:01:46', '::1', '', '', 'do=details&amp;id=1', 'http://localhost:8089/examonline/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(709, '2017-02-10', '11:01:51', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(710, '2017-02-10', '11:01:54', '::1', '', '', 'do=result', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(711, '2017-02-10', '11:01:59', '::1', '', '', 'do=review', 'http://localhost:8089/examonline/account.php?do=result', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(712, '2017-02-10', '11:02:13', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php?do=review', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(713, '2017-02-13', '08:25:04', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(714, '2017-02-13', '08:25:16', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(715, '2017-02-13', '08:25:20', '::1', '', '', 'do=details&amp;id=1', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(716, '2017-02-13', '08:25:26', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(717, '2017-02-13', '08:30:36', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/faqs.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(718, '2017-02-13', '08:30:38', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/contact.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(719, '2017-02-13', '08:30:54', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(720, '2017-02-13', '08:30:59', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(721, '2017-02-13', '08:31:04', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(722, '2017-02-13', '08:31:09', '::1', '', '', 'sort=4', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(723, '2017-02-13', '08:31:12', '::1', '', '', 'do=details&amp;id=1', 'http://localhost:8089/examonline/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(724, '2017-02-13', '08:31:15', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(725, '2017-02-13', '09:05:12', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(726, '2017-02-13', '09:05:15', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(727, '2017-02-13', '09:05:17', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(728, '2017-02-13', '09:07:39', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/register.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(729, '2017-02-13', '09:07:52', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(730, '2017-02-13', '09:08:03', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(731, '2017-02-13', '09:08:06', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(732, '2017-02-13', '09:08:08', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(733, '2017-02-13', '09:08:09', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(734, '2017-02-13', '09:08:11', '::1', '', '', 'do=start&amp;id=3', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(735, '2017-02-13', '09:08:12', '::1', '', '', 'do=enrolment&amp;id=3', 'http://localhost:8089/examonline/account.php?do=start&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(736, '2017-02-13', '09:08:16', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/account.php?do=enrolment&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(737, '2017-02-13', '09:08:17', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(738, '2017-02-13', '09:08:19', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(739, '2017-02-13', '09:08:25', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(740, '2017-02-13', '09:08:29', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(741, '2017-02-13', '09:08:35', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(742, '2017-02-13', '09:08:39', '::1', '', '', 'do=result', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(743, '2017-02-13', '09:08:42', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php?do=result', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(744, '2017-02-13', '09:08:45', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(745, '2017-02-13', '09:08:47', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(746, '2017-02-13', '09:09:55', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(747, '2017-02-13', '13:46:07', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(748, '2017-02-13', '13:48:27', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(749, '2017-02-13', '13:49:44', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(750, '2017-02-13', '13:50:08', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(751, '2017-02-13', '13:50:09', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(752, '2017-02-13', '13:50:10', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(753, '2017-02-13', '13:50:11', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(754, '2017-02-13', '13:50:13', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/faqs.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(755, '2017-02-13', '13:50:15', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/contact.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(756, '2017-02-13', '13:50:20', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(757, '2017-02-13', '13:50:23', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(758, '2017-02-13', '13:51:00', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(759, '2017-02-13', '13:51:17', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(760, '2017-02-13', '13:51:24', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(761, '2017-02-13', '13:51:26', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(762, '2017-02-13', '13:51:27', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(763, '2017-02-13', '13:51:28', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(764, '2017-02-13', '13:51:30', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/faqs.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(765, '2017-02-13', '13:51:35', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/contact.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(766, '2017-02-13', '13:58:57', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(767, '2017-02-13', '13:59:03', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(768, '2017-02-13', '14:00:52', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(769, '2017-02-13', '14:34:28', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(770, '2017-02-13', '14:35:43', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(771, '2017-02-13', '14:36:24', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/register.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(772, '2017-02-13', '14:36:26', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(773, '2017-02-13', '14:36:46', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(774, '2017-02-13', '14:36:48', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(775, '2017-02-13', '14:36:54', '::1', '', '', 'action=details&amp;id=15', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(776, '2017-02-13', '14:37:04', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php?action=details&amp;id=15', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(777, '2017-02-13', '14:37:14', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(778, '2017-02-13', '15:02:42', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/admin/login.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(779, '2017-02-13', '21:32:48', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(780, '2017-02-13', '21:33:00', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(781, '2017-02-13', '21:33:11', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(782, '2017-02-13', '21:33:15', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/faqs.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(783, '2017-02-13', '21:33:47', '::1', '', '', 'action=details&amp;id=13', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(784, '2017-02-13', '21:40:19', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php?action=details&amp;id=13', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(785, '2017-02-13', '21:45:21', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php?action=details&amp;id=13', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(786, '2017-02-13', '21:45:27', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/faqs.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(787, '2017-02-13', '21:45:30', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(788, '2017-02-13', '21:47:23', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(789, '2017-02-13', '21:59:56', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(790, '2017-02-13', '22:00:06', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(791, '2017-02-13', '22:00:10', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(792, '2017-02-13', '22:00:13', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(793, '2017-02-13', '22:00:16', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(794, '2017-02-13', '22:09:55', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(795, '2017-02-13', '22:10:18', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/register.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(796, '2017-02-13', '22:10:21', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(797, '2017-02-13', '22:10:23', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(798, '2017-02-15', '14:28:40', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(799, '2017-02-15', '14:28:44', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(800, '2017-02-15', '14:28:46', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(801, '2017-02-15', '14:28:47', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(802, '2017-02-15', '14:28:49', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(803, '2017-02-15', '14:28:50', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/faqs.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(804, '2017-02-15', '14:28:56', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/contact.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(805, '2017-02-15', '14:29:04', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(806, '2017-02-15', '14:29:18', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(807, '2017-02-15', '14:30:19', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(808, '2017-02-15', '14:30:27', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(809, '2017-02-15', '14:31:40', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(810, '2017-02-15', '14:31:58', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(811, '2017-02-15', '14:32:20', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0);
INSERT INTO `tracker` (`id`, `created`, `time`, `ip`, `country`, `city`, `query_string`, `http_referer`, `http_user_agent`, `isbot`) VALUES
(812, '2017-02-15', '14:32:27', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(813, '2017-02-15', '14:38:21', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(814, '2017-02-15', '14:57:59', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(815, '2017-02-15', '14:58:01', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(816, '2017-02-15', '14:59:29', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(817, '2017-02-15', '15:01:20', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(818, '2017-02-15', '15:10:05', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(819, '2017-02-15', '15:14:54', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(820, '2017-02-15', '15:15:48', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(821, '2017-02-15', '15:16:34', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(822, '2017-02-15', '15:16:37', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(823, '2017-02-15', '15:17:21', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(824, '2017-02-15', '15:18:53', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(825, '2017-02-15', '15:19:40', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(826, '2017-02-15', '15:21:07', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(827, '2017-02-15', '15:21:33', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(828, '2017-02-15', '15:21:36', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(829, '2017-02-15', '15:27:14', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(830, '2017-02-15', '15:27:31', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(831, '2017-02-15', '15:27:34', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(832, '2017-02-15', '15:28:14', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(833, '2017-02-15', '15:28:39', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(834, '2017-02-15', '15:31:25', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(835, '2017-02-15', '15:32:43', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(836, '2017-02-15', '15:33:50', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(837, '2017-02-15', '15:34:34', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(838, '2017-02-15', '15:35:22', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(839, '2017-02-15', '15:35:30', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(840, '2017-02-15', '15:35:35', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(841, '2017-02-15', '15:36:41', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(842, '2017-02-15', '15:39:35', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(843, '2017-02-15', '15:40:38', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(844, '2017-02-15', '15:43:21', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(845, '2017-02-15', '15:43:22', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(846, '2017-02-15', '15:43:36', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(847, '2017-02-15', '15:43:38', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(848, '2017-02-15', '15:43:40', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(849, '2017-02-15', '15:43:44', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(850, '2017-02-15', '15:43:46', '::1', '', '', 'sort=4', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(851, '2017-02-15', '15:45:45', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(852, '2017-02-15', '15:51:06', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(853, '2017-02-15', '15:51:52', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(854, '2017-02-15', '15:52:03', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(855, '2017-02-15', '15:52:07', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(856, '2017-02-15', '15:52:12', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(857, '2017-02-15', '15:52:14', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(858, '2017-02-15', '15:55:15', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(859, '2017-02-15', '15:58:29', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(860, '2017-02-15', '15:58:33', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(861, '2017-02-15', '15:58:35', '::1', '', '', 'sort=4', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(862, '2017-02-15', '15:58:42', '::1', '', '', 'do=details&amp;id=4', 'http://localhost:8089/examonline/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(863, '2017-02-15', '15:58:45', '::1', '', '', 'do=result', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(864, '2017-02-15', '15:58:50', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php?do=result', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(865, '2017-02-15', '15:58:53', '::1', '', '', 'sort=4', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(866, '2017-02-15', '15:58:58', '::1', '', '', 'do=details&amp;id=4', 'http://localhost:8089/examonline/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(867, '2017-02-15', '15:59:10', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(868, '2017-02-15', '15:59:13', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(869, '2017-02-15', '15:59:23', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(870, '2017-02-15', '15:59:29', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(871, '2017-02-15', '15:59:51', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(872, '2017-02-15', '15:59:54', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(873, '2017-02-15', '15:59:57', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(874, '2017-02-15', '16:00:17', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(875, '2017-02-15', '16:00:18', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(876, '2017-02-15', '16:00:23', '::1', '', '', 'do=details&amp;id=4', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(877, '2017-02-15', '16:00:26', '::1', '', '', 'do=start&amp;id=4', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(878, '2017-02-15', '16:00:29', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php?do=start&amp;id=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(879, '2017-02-15', '16:00:30', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(880, '2017-02-15', '16:00:31', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(881, '2017-02-15', '16:00:33', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(882, '2017-02-15', '16:00:35', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(883, '2017-02-16', '08:55:06', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(884, '2017-02-16', '09:13:25', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(885, '2017-02-16', '09:13:27', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(886, '2017-02-16', '09:13:52', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(887, '2017-02-16', '09:13:56', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(888, '2017-02-16', '09:14:04', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(889, '2017-02-16', '09:14:05', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(890, '2017-02-16', '13:12:36', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(891, '2017-02-16', '13:12:39', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(892, '2017-02-16', '13:19:05', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(893, '2017-02-16', '13:19:54', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(894, '2017-02-16', '13:20:36', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(895, '2017-02-16', '13:22:19', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(896, '2017-02-16', '13:23:50', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(897, '2017-02-16', '13:26:52', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(898, '2017-02-16', '17:32:17', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(899, '2017-02-16', '17:32:20', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(900, '2017-02-16', '17:33:42', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(901, '2017-02-16', '17:39:01', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(902, '2017-02-16', '17:42:12', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(903, '2017-02-17', '09:04:45', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(904, '2017-02-17', '09:04:47', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(905, '2017-02-17', '09:09:07', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(906, '2017-02-17', '09:10:07', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(907, '2017-02-17', '09:10:17', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(908, '2017-02-17', '09:15:40', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(909, '2017-02-17', '09:16:58', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(910, '2017-02-17', '09:18:13', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(911, '2017-02-17', '09:19:26', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(912, '2017-02-17', '09:19:51', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(913, '2017-02-17', '09:22:19', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(914, '2017-02-17', '09:23:40', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(915, '2017-02-17', '09:24:36', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(916, '2017-02-17', '09:25:20', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(917, '2017-02-17', '09:26:46', '::1', '', '', 'sort=4', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(918, '2017-02-17', '09:26:49', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(919, '2017-02-17', '09:28:34', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(920, '2017-02-17', '09:29:25', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(921, '2017-02-17', '09:29:49', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(922, '2017-02-17', '09:29:53', '::1', '', '', 'sort=4', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(923, '2017-02-17', '09:29:55', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(924, '2017-02-17', '09:31:11', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(925, '2017-02-17', '09:31:37', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(926, '2017-02-17', '09:31:52', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(927, '2017-02-17', '09:31:58', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(928, '2017-02-17', '09:32:01', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(929, '2017-02-17', '09:32:02', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(930, '2017-02-17', '09:32:06', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(931, '2017-02-17', '09:32:09', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(932, '2017-02-17', '09:32:11', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(933, '2017-02-17', '09:32:14', '::1', '', '', 'do=result', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(934, '2017-02-17', '09:32:21', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php?do=result', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(935, '2017-02-17', '09:33:19', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php?do=result', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(936, '2017-02-17', '09:36:47', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php?do=result', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(937, '2017-02-17', '09:37:04', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php?do=result', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(938, '2017-02-17', '09:40:18', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(939, '2017-02-17', '11:39:17', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(940, '2017-02-17', '14:48:59', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(941, '2017-02-17', '14:49:01', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(942, '2017-02-17', '14:49:16', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(943, '2017-02-17', '14:49:18', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(944, '2017-02-17', '14:49:23', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(945, '2017-02-17', '14:49:26', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(946, '2017-02-17', '14:49:27', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(947, '2017-02-17', '14:49:31', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(948, '2017-02-17', '14:49:38', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(949, '2017-02-17', '14:49:46', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(950, '2017-02-17', '14:49:50', '::1', '', '', 'do=result', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(951, '2017-02-17', '14:50:04', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php?do=result', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(952, '2017-02-17', '14:50:09', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(953, '2017-02-17', '14:50:13', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(954, '2017-02-17', '14:50:17', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(955, '2017-02-17', '14:50:22', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(956, '2017-02-17', '14:50:24', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(957, '2017-02-17', '14:50:28', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(958, '2017-02-17', '14:50:38', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/faqs.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(959, '2017-02-17', '14:50:44', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/contact.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(960, '2017-02-17', '14:50:48', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(961, '2017-02-17', '14:50:53', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(962, '2017-02-17', '14:51:01', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(963, '2017-02-17', '14:51:08', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(964, '2017-02-17', '14:51:10', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(965, '2017-02-17', '14:51:14', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(966, '2017-02-17', '14:51:21', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(967, '2017-02-17', '14:51:31', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(968, '2017-02-17', '14:51:41', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(969, '2017-02-17', '14:51:43', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(970, '2017-02-17', '14:51:44', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(971, '2017-02-17', '14:51:53', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(972, '2017-02-17', '14:51:56', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(973, '2017-02-17', '14:52:00', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(974, '2017-02-17', '14:52:03', '::1', '', '', 'do=result', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(975, '2017-02-17', '14:52:07', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php?do=result', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(976, '2017-02-17', '14:52:11', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(977, '2017-02-17', '14:52:13', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/examonline/exams.php?sort=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(978, '2017-02-17', '14:52:20', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(979, '2017-02-17', '14:52:24', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(980, '2017-02-17', '14:52:28', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=3', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(981, '2017-02-17', '14:52:30', '::1', '', '', 'do=details&amp;id=1', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(982, '2017-02-17', '14:52:32', '::1', '', '', 'do=start&amp;id=1', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(983, '2017-02-17', '14:52:33', '::1', '', '', 'do=enrolment&amp;id=4', 'http://localhost:8089/examonline/account.php?do=start&amp;id=1', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(984, '2017-02-17', '14:52:37', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php?do=enrolment&amp;id=4', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(985, '2017-02-17', '14:53:25', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(986, '2017-02-17', '16:05:26', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(987, '2017-02-17', '16:05:30', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(988, '2017-02-17', '16:08:46', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(989, '2017-02-17', '16:09:31', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(990, '2017-02-17', '16:09:46', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(991, '2017-02-17', '16:09:49', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(992, '2017-02-17', '17:15:06', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(993, '2017-02-17', '17:15:10', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(994, '2017-02-17', '17:16:39', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(995, '2017-02-17', '17:16:43', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/contact.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(996, '2017-02-17', '17:16:53', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(997, '2017-02-17', '17:17:03', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/register.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(998, '2017-02-17', '17:20:03', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(999, '2017-02-17', '17:20:07', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1000, '2017-02-20', '14:39:32', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1001, '2017-02-20', '14:39:40', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1002, '2017-02-20', '14:39:47', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1003, '2017-02-20', '14:39:51', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1004, '2017-02-20', '14:45:13', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1005, '2017-02-20', '14:45:15', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1006, '2017-02-20', '14:45:36', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1007, '2017-02-20', '14:45:38', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/faqs.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1008, '2017-02-20', '14:49:07', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/contact.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1009, '2017-02-20', '14:49:08', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1010, '2017-02-20', '14:49:11', '::1', '', '', 'sort=3', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1011, '2017-02-20', '14:49:25', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1012, '2017-02-20', '14:50:55', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1013, '2017-02-20', '14:56:05', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1014, '2017-02-20', '14:56:38', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/contact.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1015, '2017-02-20', '14:57:04', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1016, '2017-02-20', '15:06:54', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1017, '2017-02-20', '15:07:23', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1018, '2017-02-22', '11:44:42', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1019, '2017-02-22', '14:27:07', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1020, '2017-02-22', '14:27:10', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1021, '2017-02-22', '14:31:01', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1022, '2017-02-22', '14:36:20', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1023, '2017-02-22', '14:36:22', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1024, '2017-02-22', '14:36:24', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1025, '2017-02-22', '14:36:36', '::1', '', '', 'action=details&amp;id=15', 'http://localhost:8089/examonline/contact.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1026, '2017-02-22', '14:36:42', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1027, '2017-02-22', '14:36:44', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/contact.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1028, '2017-02-22', '14:36:46', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/faqs.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1029, '2017-02-22', '14:36:47', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1030, '2017-02-22', '14:36:48', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1031, '2017-02-22', '14:36:50', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1032, '2017-02-23', '09:57:00', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1033, '2017-02-23', '09:57:02', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1034, '2017-02-23', '09:57:11', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1035, '2017-02-23', '09:57:24', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1036, '2017-02-23', '10:00:49', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1037, '2017-02-23', '10:02:32', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1038, '2017-02-23', '10:04:55', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1039, '2017-02-23', '10:11:17', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1040, '2017-02-23', '10:12:18', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1041, '2017-02-23', '10:15:30', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1042, '2017-03-03', '10:35:27', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1043, '2017-03-03', '10:35:32', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1044, '2017-03-03', '11:02:10', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1045, '2017-03-03', '11:02:13', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1046, '2017-03-03', '11:02:15', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1047, '2017-03-03', '11:02:16', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1048, '2017-03-03', '11:02:19', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1049, '2017-03-03', '11:15:45', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1050, '2017-03-03', '14:37:59', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1051, '2017-03-03', '14:38:01', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1052, '2017-03-03', '14:38:11', '::1', '', '', 'sort=9', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1053, '2017-03-03', '14:38:26', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?sort=9', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1054, '2017-03-03', '14:38:28', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/resources.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1055, '2017-03-03', '14:38:28', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1056, '2017-03-03', '14:44:23', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1057, '2017-03-03', '14:44:27', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1058, '2017-03-03', '14:45:28', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1059, '2017-03-03', '14:46:16', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/register.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1060, '2017-03-03', '14:46:30', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/index.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1061, '2017-03-03', '14:46:32', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1062, '2017-03-03', '14:46:37', '::1', '', '', 'do=details&amp;id=3', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1063, '2017-03-03', '14:46:39', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1064, '2017-03-03', '14:46:41', '::1', '', '', 'do=details&amp;id=1', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1065, '2017-03-03', '14:46:42', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1066, '2017-03-03', '14:46:43', '::1', '', '', 'do=details&amp;id=4', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1067, '2017-03-03', '14:46:47', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1068, '2017-03-03', '14:58:36', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1069, '2017-03-03', '14:58:48', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1070, '2017-03-03', '14:58:50', '::1', '', '', 'sort=9', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1071, '2017-03-03', '14:58:53', '::1', '', '', 'do=details&amp;id=5', 'http://localhost:8089/examonline/exams.php?sort=9', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1072, '2017-03-03', '14:58:55', '::1', '', '', 'do=start&amp;id=5', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0);
INSERT INTO `tracker` (`id`, `created`, `time`, `ip`, `country`, `city`, `query_string`, `http_referer`, `http_user_agent`, `isbot`) VALUES
(1073, '2017-03-03', '14:58:57', '::1', '', '', 'do=enrolment&amp;id=9', 'http://localhost:8089/examonline/account.php?do=start&amp;id=5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1074, '2017-03-03', '14:59:01', '::1', '', '', 'sort=9', 'http://localhost:8089/examonline/account.php?do=enrolment&amp;id=9', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1075, '2017-03-03', '14:59:03', '::1', '', '', 'do=details&amp;id=5', 'http://localhost:8089/examonline/exams.php?sort=9', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1076, '2017-03-03', '14:59:04', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=5', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1077, '2017-03-03', '14:59:10', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1078, '2017-03-03', '14:59:19', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1079, '2017-03-03', '14:59:28', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1080, '2017-03-03', '14:59:33', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1081, '2017-03-03', '15:00:05', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1082, '2017-03-03', '15:00:11', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1083, '2017-03-03', '15:00:14', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1084, '2017-03-03', '15:00:17', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1085, '2017-03-03', '15:00:19', '::1', '', '', 'do=quize', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1086, '2017-03-03', '15:00:22', '::1', '', '', 'do=result', 'http://localhost:8089/examonline/account.php?do=quize', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1087, '2017-03-03', '15:00:33', '::1', '', '', 'do=review', 'http://localhost:8089/examonline/account.php?do=result', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1088, '2017-03-03', '15:00:36', '::1', '', '', 'do=review', 'http://localhost:8089/examonline/account.php?do=review', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1089, '2017-03-03', '15:00:59', '::1', '', '', 'do=review', 'http://localhost:8089/examonline/account.php?do=review', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1090, '2017-03-03', '15:01:02', '::1', '', '', 'do=review', 'http://localhost:8089/examonline/account.php?do=review', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1091, '2017-03-03', '15:01:05', '::1', '', '', 'do=review', 'http://localhost:8089/examonline/account.php?do=review', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1092, '2017-03-03', '15:01:07', '::1', '', '', 'do=review', 'http://localhost:8089/examonline/account.php?do=review', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1093, '2017-03-03', '15:01:09', '::1', '', '', 'do=review', 'http://localhost:8089/examonline/account.php?do=review', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1094, '2017-03-03', '15:01:11', '::1', '', '', 'do=review', 'http://localhost:8089/examonline/account.php?do=review', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1095, '2017-03-03', '15:01:12', '::1', '', '', 'do=review', 'http://localhost:8089/examonline/account.php?do=review', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:51.0) Gecko/20100101 Firefox/51.0', 0),
(1096, '2017-04-20', '14:58:34', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/account.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 0),
(1097, '2017-07-08', '23:20:54', '::1', '', '', 'undefined', 'undefined', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 0),
(1098, '2017-07-08', '23:21:20', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 0),
(1099, '2017-07-08', '23:25:58', '::1', '', '', 'sort=4', 'http://localhost:8089/examonline/courses.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 0),
(1100, '2017-07-08', '23:26:05', '::1', '', '', 'do=details&amp;id=1', 'http://localhost:8089/examonline/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 0),
(1101, '2017-07-08', '23:26:13', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?do=details&amp;id=1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 0),
(1102, '2017-07-08', '23:26:17', '::1', '', '', 'sort=4', 'http://localhost:8089/examonline/exams.php', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 0),
(1103, '2017-07-08', '23:26:20', '::1', '', '', 'sort=4', 'http://localhost:8089/examonline/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 0),
(1104, '2017-07-08', '23:26:28', '::1', '', '', 'undefined', 'http://localhost:8089/examonline/exams.php?sort=4', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pp_email` varchar(50) DEFAULT NULL,
  `fname` varchar(32) NOT NULL,
  `lname` varchar(32) NOT NULL,
  `company` varbinary(150) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `country` int(3) NOT NULL DEFAULT '0',
  `currency` varchar(10) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `vat` varchar(60) DEFAULT NULL,
  `avatar` varchar(60) DEFAULT NULL,
  `userlevel` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime DEFAULT '0000-00-00 00:00:00',
  `notes` text,
  `custom_fields` text,
  `credit` decimal(10,2) NOT NULL DEFAULT '0.00',
  `lastlogin` datetime DEFAULT '0000-00-00 00:00:00',
  `lastip` varchar(16) DEFAULT '0',
  `active` enum('y','n','t','b') NOT NULL DEFAULT 'n'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `pp_email`, `fname`, `lname`, `company`, `address`, `city`, `state`, `zip`, `country`, `currency`, `phone`, `vat`, `avatar`, `userlevel`, `created`, `notes`, `custom_fields`, `credit`, `lastlogin`, `lastip`, `active`) VALUES
(3, 'demo', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'hungnt.hanoi@gmail.com', NULL, 'Tran Manh', 'Dat', 0xc4904b54, 'Thien Truong, Nam Dinh', 'Nam DInh', 'Nam Dinh', '123456', 249, '', '555-555-5555', '12345678', NULL, 1, '2011-05-02 18:10:14', 'ulla aliquam pulvinar congue. Morbi quis nisl orci, vel sollicitudin erat. In hac habitasse platea dictumst. Vestibulum congue blandit odio, a pulvinar massa porttitor in. In hac habitasse platea dictumst.', '::::', '35.00', '2014-12-23 16:50:21', '::1', 'y'),
(1, 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'viethungtq91@gmail.com', '', 'Super', 'Admin', NULL, '', '', '', '', 0, NULL, '', NULL, 'AVT_1A5B04-366C04-277646-983028-EB5C50-DD498C.png', 9, '2014-08-26 20:21:08', '', NULL, '0.00', '2017-07-08 23:35:56', '::1', 'y'),
(11, 'hungkv', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'viethungtqno1@gmail.com', '', 'Jack', 'Ma', NULL, 'Thanh Xuân', 'Ha noi', 'Ha noi', '123456', 249, NULL, '09123456789', NULL, 'AVT_571522-C932A7-539F7D-18925B-A0C828-7CFFAD.jpg', 5, '2017-02-09 22:13:31', '', NULL, '0.00', '2017-02-15 14:30:18', '::1', 'y'),
(12, 'hungdemo', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'hungkieuptit2010@gmail.com', NULL, 'Nguyen Van', 'Hung', 0x445454, 'ngo quyen', 'da nang', 'da nang', '123', 249, '', '', '', NULL, 1, '2017-02-13 09:07:32', '', NULL, '0.00', '2017-02-23 10:00:49', '::1', 'y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `countries` ADD FULLTEXT KEY `name` (`name`);

--
-- Indexes for table `custom_fields`
--
ALTER TABLE `custom_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_data`
--
ALTER TABLE `invoice_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project_types`
--
ALTER TABLE `project_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);
ALTER TABLE `questions` ADD FULLTEXT KEY `type` (`type`,`description`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`id`),
  ADD KEY `docu` (`documents`(333));

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tanswers`
--
ALTER TABLE `tanswers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tquestions`
--
ALTER TABLE `tquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tracker`
--
ALTER TABLE `tracker`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=261;
--
-- AUTO_INCREMENT for table `custom_fields`
--
ALTER TABLE `custom_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `enrollment`
--
ALTER TABLE `enrollment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `invoice_data`
--
ALTER TABLE `invoice_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `invoice_payments`
--
ALTER TABLE `invoice_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `project_types`
--
ALTER TABLE `project_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `resources`
--
ALTER TABLE `resources`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tanswers`
--
ALTER TABLE `tanswers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=377;
--
-- AUTO_INCREMENT for table `tquestions`
--
ALTER TABLE `tquestions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=287;
--
-- AUTO_INCREMENT for table `tracker`
--
ALTER TABLE `tracker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1105;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
