-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 02, 2014 at 06:41 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gcm`
--

-- --------------------------------------------------------

--
-- Table structure for table `gcm_users`
--

CREATE TABLE IF NOT EXISTS `gcm_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gcm_regid` text,
  `name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `gcm_users`
--

INSERT INTO `gcm_users` (`id`, `gcm_regid`, `name`, `email`, `created_at`) VALUES
(2, 'APA91bHfe4hdyaL64wNdj5Jis4Y3LqBJLAdE144PCBgPFTStHLddWqVKN6S6ya-oQakmVVZnTB-PcXgtZTYzmY7BiHKES8JnB_uQtvkuFVQ5vZKC8NarWrT1Wu0S_muDO0d59Ftrz9pXBOF85LDXvOkT_PdVD0UDYA', 'anirban', 'ani@gmail.com', '2014-03-28 13:17:12'),
(3, 'APA91bHTE0FeiFfuhNlaBpzIyS07NMbqYnD1JVr4yWnM72Damx6PjfrB8epL7gAt99oKQV1VBrqo9lVYP8L4yKFkY6nU7nQELZviRN5MuzqCgSVdWcvdREWEJlmUCNIes5XH6BGusAR-5plmXPIbi8aTLFuJEXiZXrH15Vu5BjJ5abtDdI8ZEjI', 'john', 'lama', '2014-03-28 14:14:57'),
(19, 'APA91bF6ncqStlHp8c07RbFJewZ9B8_7xJXRqvaTn7dngmJ-szXkHLm51RMILHeRbZT36OSFuMJctgv8D4K_akjz_dz0NnKszVh9JsODNoRogaXMYN66CnIzGcykgWMFaqiqd5t3VLHOfyZF9AKmdJJl6aINBwxtNQ', 'Anirban', 'anirban.jana@gmail.com', '2014-04-02 18:24:39');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
