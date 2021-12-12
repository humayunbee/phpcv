-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2021 at 01:18 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_freelance`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `meta_field` text DEFAULT NULL,
  `meta_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`meta_field`, `meta_value`) VALUES
('mobile', '01852148425'),
('email', 'Humayunfarid1997@gmail.com'),
('facebook', 'https://facebook.com/Humayunbee'),
('twitter', 'https://twitter.com/HumayunB'),
('linkin', 'https://linkedin.com/in/HumayunBee'),
('address', '25/2 Lake Circus Rd, Dhaka 1205');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(30) NOT NULL,
  `school` text DEFAULT NULL,
  `degree` text DEFAULT NULL,
  `month` varchar(50) NOT NULL,
  `year` int(10) NOT NULL,
  `description` text DEFAULT NULL,
  `order_by` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `school`, `degree`, `month`, `year`, `description`, `order_by`) VALUES
(1, 'SHAHEEN ACADEMY SCHOOL AND COLLEGE', 'Primary School', 'January', 2005, '&lt;p&gt;The start of the school year can be both an exciting and stressful time.\r\n From shopping for supplies to filling out forms, \r\n                                            there&rsquo;s a lot for parents to\r\n accomplish before school is back in session. you&rsquo;ll want to do a little\r\n homework too. \r\n                                           your child hit the ground \r\nrunning..&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 0),
(2, 'SONAGAZI MD. SABER PILOT HIGH SCHOOL', 'School Of Science ', 'March', 2009, '&lt;p&gt;Good time come and go but the school memories will last forever. \r\n                                            School memories always live \r\nin heart. All the memories of school are filled with golden moments. \r\n                                            Best school memories always \r\nmake your heart happy.&lt;/p&gt;', 0),
(3, 'NOTRE DAME COLLEGE', 'School Of Science ', 'April', 2015, '&lt;p&gt;I am always trying to look upon a college life as a medium not an end. \r\nMemories remind us that nothing last forever, \r\n                                            you can be happy today and \r\nsad tomorrow, \r\n                                            time is precious and should \r\nnot be wasted, enjoy life and remember don\'t count your days, make your \r\ndays count&lt;/p&gt;', 0),
(4, 'DAFFODIL INTERNATIONAL UNIVERSITY', 'Computer Science', 'January', 2019, '&lt;p&gt;University Life is committed to student growth and success in \r\neverything students do. \r\n                                            University Life provides \r\nservices and resources to help students succeed and offers activities \r\nthat instill a sense of belonging and Mason pride. \r\n                                            To learn more about our \r\nwork, visit About Us.&lt;/p&gt;', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ido`
--

CREATE TABLE `ido` (
  `id` int(30) NOT NULL,
  `name` text DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `client` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ido`
--

INSERT INTO `ido` (`id`, `name`, `summary`, `description`, `banner`, `client`) VALUES
(20, 'App Development\r\n', 'App Development refers to the creation of computer applications for use on mobile devices such as tablets, smartphones and smart watches. ... Mobile applications are designed and built for different operating systems and developers will want to learn how to build for both the Android operating system and Apple\'s iOS.\r\n\r\n', '&lt;p&gt;wzfexgrtyuk&lt;/p&gt;', 'uploads/1639117020_smartphone.png', NULL),
(29, 'Web Development\r\n', 'A WordPress developer is a professional who works with the basic coding and infrastructure of the WordPress platform, to improve WordPress itself, or to create entirely new products. Typically, WordPress developers perform some or all of the following tasks: Creating and customizing plugins and themes...\r\n\r\n', '', 'uploads/1639116960_web-development.png', NULL),
(33, 'UI Design', 'UI focuses on the micro aspects of interface designs. The person who creates UI designs is called as UI designer and developer. In other words, UX design triggers customer motivation, perception, cognition, and response to develop a user experience about that particular product or service.\r\n\r\n', NULL, 'uploads/1639116900_ux.png', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(30) NOT NULL,
  `name` text DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `banner` text DEFAULT NULL,
  `client` text DEFAULT NULL,
  `link` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `name`, `summary`, `description`, `banner`, `client`, `link`) VALUES
(2, 'Hopeful Joyous Shouts', 'A New Musical Released', '&lt;p&gt;Hello, I&rsquo;m an Md. Humayun Farid (Born 01 Dec 1997) is a Bangladeshi Entrepreneur, Musical artist, Digital Marketer, and Social media cyber security specialist. I have rich experience in website design &amp; building and customization&lt;br&gt;&lt;/p&gt;', 'uploads/1636744380_Screenshot (185).png', 'Amazone', 'https://www.humayun.xyz/#'),
(3, 'Its Time to Purple', 'A New Musical Released', 'Hello, I&rsquo;m an Md. Humayun Farid (Born 01 Dec 1997) is a Bangladeshi Entrepreneur, Musical artist, Digital Marketer, and Social media cyber security specialist. I have rich experience in website design &amp; building and customization', 'uploads/1636744260_Screenshot (184).png', 'Amazone , Spotify', 'https://www.humayun.xyz/#'),
(5, 'That Warms Your Season', 'A New Musical Released', 'Hello, I&rsquo;m an Md. Humayun Farid (Born 01 Dec 1997) is a Bangladeshi Entrepreneur, Musical artist, Digital Marketer, and Social media cyber security specialist. I have rich experience in website design &amp; building and customization', 'uploads/1636744740_Screenshot (188).png', 'Amazone', 'https://www.humayun.xyz/#'),
(6, 'Brighter Than Horizon', 'A New Musical Released', 'Hello, I&rsquo;m an Md. Humayun Farid (Born 01 Dec 1997) is a Bangladeshi Entrepreneur, Musical artist, Digital Marketer, and Social media cyber security specialist. I have rich experience in website design &amp; building and customization', 'uploads/1636733640_Screenshot (186).png', 'Amazone', 'https://www.humayun.xyz/#');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Md. Humayun Farid '),
(2, 'address', 'Philippines'),
(3, 'contact', '+1234567890'),
(4, 'email', 'info@sample.com'),
(6, 'short_name', 'CV'),
(9, 'logo', 'uploads/1636731480_Md. Humayun Farid(8).jpg'),
(11, 'welcome_message', 'Hello, I’m an Md. Humayun Farid (Born 01 Dec 1997) is a Bangladeshi Entrepreneur, Musical artist, Digital Marketer, and Social media cyber security specialist. I have rich experience in website design & building and customization');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `possession` varchar(200) DEFAULT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `possession`, `username`, `password`, `avatar`, `last_login`, `date_added`, `date_updated`) VALUES
(1, 'Md. Humayun ', 'Farid', 'Entrepreneur।। Musical Artist।। Digital Marketer', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'uploads/1638784260_Md. Humayun Farid(37).jpg', NULL, '2021-01-20 14:02:37', '2021-12-06 15:51:47');

-- --------------------------------------------------------

--
-- Table structure for table `wido`
--

CREATE TABLE `wido` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `banner` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wido`
--

INSERT INTO `wido` (`id`, `title`, `description`, `banner`) VALUES
(1, 'eee', 'eeeee', 'uploads/1636733640_Screenshot (186).png');

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `id` int(30) NOT NULL,
  `company` text DEFAULT NULL,
  `position` text DEFAULT NULL,
  `started` varchar(250) NOT NULL,
  `ended` varchar(250) NOT NULL,
  `description` text DEFAULT NULL,
  `order_by` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`id`, `company`, `position`, `started`, `ended`, `description`, `order_by`) VALUES
(1, 'STITBD', 'Web Developer', 'January_2021', 'January_2021', '&lt;p&gt;I have rich experience in website design &amp;amp; building \r\n                            and customization. Also, I am good at\r\n                            &lt;/p&gt;&lt;p style=&quot;visibility: visible; animation-duration: 0.8s; animation-delay: 0.3s; animation-name: fadeInUp;&quot;&gt;\r\n                                &lt;/p&gt;&lt;p style=&quot;visibility: visible; animation-duration: 0.8s; animation-delay: 0.3s; animation-name: fadeInUp;&quot;&gt;&lt;ul&gt;&lt;ol&gt;&lt;/ol&gt;&lt;/ul&gt;\r\n                            &lt;/p&gt;&lt;p&gt;Java ,PHP&lt;span&gt;, Digital, Marketer ,Social ,media ,cyber ,security ,specialist ,WordPress ,React ,Javascript&lt;/span&gt;&lt;/p&gt;', 0),
(2, 'STITBD', 'UI/UX Designer', 'January_2019', 'January_2021', '&lt;p&gt;&lt;span&gt;Responsibility :&lt;/span&gt;\r\n                                        &lt;/p&gt;&lt;ul class=&quot;work-responsibility&quot;&gt;&lt;li&gt;Validate CSS&lt;/li&gt;&lt;li&gt;Project Management&lt;/li&gt;&lt;li&gt;Project Management&lt;/li&gt;&lt;li&gt;Validate CSS&lt;/li&gt;&lt;/ul&gt;', 0),
(3, 'Software Zone LTD', 'Project Manager', 'January_2018', 'January_2020', '&lt;p&gt;&lt;span&gt;Responsibility :&lt;/span&gt;\r\n                                        &lt;/p&gt;&lt;ul class=&quot;work-responsibility&quot;&gt;&lt;li&gt;Validate CSS&lt;/li&gt;&lt;li&gt;Project Management&lt;/li&gt;&lt;li&gt;develop Web CSS&lt;/li&gt;&lt;li&gt;Project website&lt;/li&gt;&lt;/ul&gt;', 0),
(4, 'Freelancer', 'web-Design & developer', 'January_2021', 'January_2021', '&lt;p&gt;&lt;span&gt;Responsibility :&lt;/span&gt;\r\n                                        &lt;/p&gt;&lt;ul class=&quot;work-responsibility&quot;&gt;&lt;li&gt;Validate CSS&lt;/li&gt;&lt;li&gt;Project Management&lt;/li&gt;&lt;li&gt;Validate CSS&lt;/li&gt;&lt;li&gt;Project Management&lt;/li&gt;&lt;/ul&gt;', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ido`
--
ALTER TABLE `ido`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wido`
--
ALTER TABLE `wido`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ido`
--
ALTER TABLE `ido`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wido`
--
ALTER TABLE `wido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
