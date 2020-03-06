-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 06, 2020 at 10:45 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment_4`
--

-- --------------------------------------------------------

--
-- Table structure for table `sushi`
--

CREATE TABLE `sushi` (
  `名称` varchar(10) DEFAULT NULL,
  `img` varchar(233) DEFAULT NULL,
  `食物类型` varchar(2) DEFAULT NULL,
  `地点` varchar(6) DEFAULT NULL,
  `人均消费` varchar(5) DEFAULT NULL,
  `综合评分` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sushi`
--

INSERT INTO `sushi` (`名称`, `img`, `食物类型`, `地点`, `人均消费`, `综合评分`) VALUES
('眷唐风', 'https://dl.airtable.com/.attachments/40a5ab571e96894c153821269b843577/cee26859.jpg', '寿司', '中山路/轮渡', '61/人', '4.89'),
('勝上| 海鲜丼饭', 'https://dl.airtable.com/.attachments/a103ac41e63f28a880741f8e7b37d71e/9706dc6d/g_b7JHDci4UQ464fyxcqd4Q3E1JfaVS2qe1ErVwWb6EMrwsCdlMrDD4UG1f5lZj_joJrvItByyS4HHaWdXyO_I7F0UeCRQYMHlogzbt7GHgNNiIYVnHvzugZCuBITtvjski7YaLlHpkrQUr5euoQrg.jpg', '寿司', '思北路口', '62/人', '4.86'),
('鳄梨先森-牛油果寿司', 'https://dl.airtable.com/.attachments/834895fe83f623cd57098f3207f19592/34d38c24.jpg', '寿司', '瑞景', '61/人', '4.85'),
('尚白水产', 'https://dl.airtable.com/.attachments/483bc5511433c56ec17c00c3ad771557/24af036c.jpg', '寿司', '厦门火车站', '83/人', '4.79'),
('J先生寿司', 'https://dl.airtable.com/.attachments/953fedff42af845aec00f8a76d62ba81/9471332e/J.jpg', '寿司', '新店', '62/人', '4.33'),
('今日寿司', 'https://dl.airtable.com/.attachments/78941c760d4fe95633ef396d2b148be7/b8931b90.jpg', '寿司', '新店', '54/人', '4.02'),
('牛寿司', 'https://dl.airtable.com/.attachments/58f0e69b18dc8e4ea2b17ecd495c17ee/725b1f22.jpg', '寿司', 'SM/江头', '911/人', '3.97'),
('鱼旨寿司', 'https://dl.airtable.com/.attachments/ba2e9bbf038e9aef6454369e88561047/9e4a31a3.jpg', '寿司', '同安乐海广场', '69/人', '3.89');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
