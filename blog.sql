-- Host: localhost
-- Generation Time: 2019-04-18 22:30:48
-- Server version: 5.5.29
-- PHP Version: 5.4.10


--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE DATABASE `blog`;
USE `blog`;

CREATE TABLE `categories` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(24) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(11, 'C++'),
(5, 'Coding'),
(8, 'Linux'),
(6, 'Git'),
(10, 'Javascript'),
(9, 'PHP'),
(7, 'Responsive Design'),
(1, 'Uncategorized');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `cat_id` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contents` text NOT NULL,
  `date_posted` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `title`, `contents`, `date_posted`) VALUES
(32, 9, 'This Blog is coded with PHP', 'This is a simple blog with not much to it. It can be extended... the sky is the limit!', '2019-04-17 16:05:51'),
(31, 8, 'Linux', 'Linus Torvlads startes Linux as university project!', '2019-02-23 18:20:03'),
(6, 2, 'Hello World', 'Hello World!!', '2019-02-01 10:54:52'),
(33, 5, 'What was used to make this Blog', 'This blog is put together with:\r\n\r\nPHP, CSS3, HTML5 and of course MySQL', '2019-03-18 23:39:45');
