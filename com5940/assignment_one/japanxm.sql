-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 24, 2020 at 10:41 AM
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
-- Database: `japanxm`
--

-- --------------------------------------------------------

--
-- Table structure for table `all_restaurants`
--

CREATE TABLE `all_restaurants` (
  `餐厅名称` varchar(12) DEFAULT NULL,
  `图片` varchar(390) DEFAULT NULL,
  `食物类型` varchar(7) DEFAULT NULL,
  `地点` varchar(7) DEFAULT NULL,
  `人均消费` varchar(6) DEFAULT NULL,
  `综合评分` decimal(3,2) DEFAULT NULL,
  `口味评分` decimal(3,2) DEFAULT NULL,
  `环境评分` decimal(3,2) DEFAULT NULL,
  `服务评分` decimal(3,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `all_restaurants`
--

INSERT INTO `all_restaurants` (`餐厅名称`, `图片`, `食物类型`, `地点`, `人均消费`, `综合评分`, `口味评分`, `环境评分`, `服务评分`) VALUES
('六厘舍', '六.jpg (https://dl.airtable.com/.attachments/71eee86dff3e6675067a705a426b5d55/9087effd.jpg)', '日本料理', '厦门大学', '57/人', '4.91', '4.89', '4.88', '4.91'),
('菡SUSHI', '菡.jpg (https://dl.airtable.com/.attachments/66fa2ed6cda648f7ad478b4867f0539b/65fe6718.jpg)', '日本料理', '中山路/轮渡', '317/人', '4.88', '4.91', '4.90', '4.89'),
('鮨一日本料理', '之一.jpg (https://dl.airtable.com/.attachments/0b9f4a60c40d54b4be8e7cfb3340802f/d58a6605.jpg)', '日本料理', '禾祥西路', '1350/人', '4.89', '4.88', '4.85', '4.90'),
('森空和食', '森空.jpg (https://dl.airtable.com/.attachments/a828e3650142bb0ad624de0a15b84a62/da395518.jpg)', '日本料理', '中华城', '149/人', '4.88', '4.87', '4.94', '4.94'),
('食堂时尚料理', '菡3.jpg (https://dl.airtable.com/.attachments/6d3b2449849d1896c2e63e50743a831e/aa5eb624/3.jpg)', '日本料理', '白鹭洲公园', '58/人', '4.87', '4.87', '4.72', '4.84'),
('天和割烹料理', '天和.jpg (https://dl.airtable.com/.attachments/10ec606b0e6f63051e1c53420dda0608/f66830ee.jpg)', '日本料理', '环岛路沿线', '398/人', '4.85', '4.87', '4.87', '4.82'),
('酒洲日式料理', '酒洲.jpg (https://dl.airtable.com/.attachments/8e1d56b795f56fe2d759b1ba2641c3f0/06748fc3.jpg)', '日本料理', '厦门火车站', '105/人', '4.85', '4.87', '4.90', '4.88'),
('勝居酒屋', '胜居酒屋.jpg (https://dl.airtable.com/.attachments/9bab734a23148e6060b8bcd188e10041/5b47a41c.jpg)', '日本料理', '厦门火车站', '156/人', '4.86', '4.86', '4.85', '4.76'),
('聚龙川和食料理', '聚龙川.jpg (https://dl.airtable.com/.attachments/1691362fe76710e84366104da152a699/8325abec.jpg)', '日本料理', '禾祥西路', '108/人', '4.89', '4.84', '4.92', '4.95'),
('奈町', '奈町.jpg (https://dl.airtable.com/.attachments/3cf93714ce42cfa0d16fa090380bcc80/c12aa8e4.jpg)', '日本料理', '厦门大学', '46/人', '4.85', '4.82', '4.89', '4.84'),
('深夜食堂见世', '深夜食堂.jpg (https://dl.airtable.com/.attachments/e80b17e3352b19f98fc6b73d0378f294/835dcb64.jpg)', '日本料理', '厦门大学', '55/人', '4.85', '4.81', '4.85', '4.90'),
('鲶道居食屋-鹅肝寿司', '鲇道居食.jpg (https://dl.airtable.com/.attachments/98bd6603cac7332a8e38920113f3529d/8f109fcb.jpg)', '日本料理', '厦门大学', '87/人', '4.79', '4.81', '4.75', '4.82'),
('秋町屋寿司', '秋町屋寿司.jpg (https://dl.airtable.com/.attachments/db6db008521945dbc65cf0b07e194556/ec45c841.jpg)', '日本料理', '思明区', '65/人', '4.74', '4.64', '4.84', '4.86'),
('渡生茶泡饭', '茶泡饭.jpg (https://dl.airtable.com/.attachments/a640ee3a8a8a12330d4928bb202c754e/9f229fe5.jpg)', '日本料理', '莲坂', '47/人', '4.58', '4.67', '4.74', '4.60'),
('chimoto琦摩', '琦摩.jpg (https://dl.airtable.com/.attachments/f756fb7e67011783c43cc2df78a3f7d2/7d23c940.jpg)', '日本料理', '集美学村', '56/人', '4.75', '4.70', '4.85', '4.61'),
('鳗烟-日式鳗鱼创作酒厂', '鳗烟.jpg (https://dl.airtable.com/.attachments/356cceed7cc4b6356e1fea2f509021fe/5ce938bb.jpg)', '日本料理', '禾祥西路', '101/人', '4.78', '4.71', '4.88', '4.82'),
('竹亭居酒屋', '竹亭居酒屋.jpg (https://dl.airtable.com/.attachments/b34f40f134d086799b28cf5e54b398b4/5b73399d.jpg)', '日本料理', '仙岳路沿线', '127/人', '4.34', '4.18', '4.71', '4.14'),
('竹田和风料理', '竹田和风.jpg (https://dl.airtable.com/.attachments/3389fbd19bcc72a48488e72c9baac423/ccf20de3.jpg)', '日本料理', 'SM/江头', '749/人', '4.56', '4.56', '4.49', '4.38'),
('尚白水产', '尚白海沧.jpg (https://dl.airtable.com/.attachments/6b4f1dc0805a84b07b955ea3a7ebbe58/1e5b3e12.jpg)', '日本料理', '阿罗海城市广场', '88/人', '4.79', '4.83', '4.75', '4.75'),
('板前料理', '板前.jpg (https://dl.airtable.com/.attachments/c5221685d0866d1f782b5ff5dccfbb2a/b208041e.jpg)', '日本料理', '阿罗海城市广场', '145/人', '4.56', '4.62', '4.74', '4.53'),
('达摩食堂', '达摩.jpg (https://dl.airtable.com/.attachments/fbb24bb7bbef1c14f90eb1522d22d7e3/52f1e02c.jpg)', '日本料理', '集美万达广场', '61/人', '4.60', '4.59', '4.74', '4.86'),
('阿市居酒屋', '阿市.jpg (https://dl.airtable.com/.attachments/f4eb008d7e01fd71a552ff19d39a94f9/2fdb7007.jpg)', '日本料理', '万科里', '43/人 ', '3.87', '3.80', '4.06', '3.88'),
('速匙東東', '速食.jpg (https://dl.airtable.com/.attachments/5471cc3f3bd88fbcffd718d8af150244/e8c38903.jpg)', '日本料理', '新店', '45/人', '3.83', '3.74', '3.92', '4.02'),
('小条食堂', '小条.jpg (https://dl.airtable.com/.attachments/2025b36753723c93f8bd98e39b6646b7/18ef0321.jpg)', '日本料理', '同安乐海广场', '44/人', '3.95', '3.89', '4.27', '4.04'),
('眷唐风', '眷唐风.jpg (https://dl.airtable.com/.attachments/40a5ab571e96894c153821269b843577/cee26859.jpg)', '寿司', '中山路/轮渡', '61/人', '4.89', '4.90', '4.75', '4.87'),
('勝上| 海鲜丼饭', 'g_b7JHDci4UQ464fyxcqd4Q3E1JfaVS2qe1ErVwWb6EMrwsCdlMrDD4UG1f5lZj_joJrvItByyS4HHaWdXyO_I7F0UeCRQYMHlogzbt7GHgNNiIYVnHvzugZCuBITtvjski7YaLlHpkrQUr5euoQrg.jpg (https://dl.airtable.com/.attachments/a103ac41e63f28a880741f8e7b37d71e/9706dc6d/g_b7JHDci4UQ464fyxcqd4Q3E1JfaVS2qe1ErVwWb6EMrwsCdlMrDD4UG1f5lZj_joJrvItByyS4HHaWdXyO_I7F0UeCRQYMHlogzbt7GHgNNiIYVnHvzugZCuBITtvjski7YaLlHpkrQUr5euoQrg.jpg)', '寿司', '思北路口', '62/人', '4.86', '4.87', '4.69', '4.88'),
('鳄梨先森-牛油果寿司', '鳄梨.jpg (https://dl.airtable.com/.attachments/834895fe83f623cd57098f3207f19592/34d38c24.jpg)', '寿司', '瑞景', '61/人', '4.85', '4.86', '4.64', '4.85'),
('尚白水产', '尚白水产.jpg (https://dl.airtable.com/.attachments/483bc5511433c56ec17c00c3ad771557/24af036c.jpg)', '寿司', '厦门火车站', '83/人', '4.79', '4.83', '4.57', '4.84'),
('牛寿司', '牛寿司.jpg (https://dl.airtable.com/.attachments/58f0e69b18dc8e4ea2b17ecd495c17ee/725b1f22.jpg)', '寿司', 'SM/江头', '911/人', '3.97', '4.05', '4.15', '3.97'),
('J先生寿司', 'J.jpg (https://dl.airtable.com/.attachments/953fedff42af845aec00f8a76d62ba81/9471332e/J.jpg)', '寿司', '新店', '62/人', '4.33', '4.31', '4.27', '4.37'),
('今日寿司', '今日寿司.jpg (https://dl.airtable.com/.attachments/78941c760d4fe95633ef396d2b148be7/b8931b90.jpg)', '寿司', '新店', '54/人', '4.02', '4.02', '4.10', '3.94'),
('鱼旨寿司', '鱼旨.jpg (https://dl.airtable.com/.attachments/ba2e9bbf038e9aef6454369e88561047/9e4a31a3.jpg)', '寿司', '同安乐海广场', '69/人', '3.89', '3.86', '3.89', '3.83'),
('莺时TOKI', '莺时.jpg (https://dl.airtable.com/.attachments/1a56b61cabe53e5df1ed3ab681cdf256/56a172c4.jpg)', '日式铁板烧', '思明区', '516/人', '4.95', '4.94', '4.98', '4.98'),
('喜之秋养生铁板烧', '喜之秋.jpg (https://dl.airtable.com/.attachments/daa3dec2ebc09c35eeabab19d3c89996/802fd40f.jpg)', '日式铁板烧', '思明区', '771/人', '4.85', '4.85', '4.91', '4.90'),
('三巡- 酒与烧肉', '三巡.jpg (https://dl.airtable.com/.attachments/246ee12973a4123c0b448dff144fa81d/daee70dd.jpg)', '日式烧烤/烤肉', '禾祥西路', '333/人', '4.86', '4.88', '4.89', '4.91'),
('佐贺牛| 日式烧肉专门店', '佐贺牛.jpg (https://dl.airtable.com/.attachments/289ae3df098d5d5cd00f9ddf7023576c/4cf34d41.jpg)', '日式烧烤/烤肉', '厦门火车站', '130/人', '4.79', '4.84', '4.85', '4.81'),
('猫不吃渔烤肉', '猫不持.jpg (https://dl.airtable.com/.attachments/5eae5a0ced7c9b1e62d6f0a371b40ba5/29004e5a.jpg)', '日式烧烤/烤肉', '思明区', '74/人', '4.85', '4.82', '4.75', '4.87'),
('三魂烧肉', '三魂.jpg (https://dl.airtable.com/.attachments/e6a182b9d0518cb110a37387b1c4ba14/bafa1d81.jpg)', '日式烧烤/烤肉', '嘉禾路', '105/人', '4.79', '4.81', '4.80', '4.89'),
('四海晴焼肉専門店', '四海.jpg (https://dl.airtable.com/.attachments/9681bb0c85ac23d4ba6a3aee71f638b9/5fd85d7e.jpg)', '日式烧烤/烤肉', '思明区', '129/人', '4.77', '4.77', '4.80', '4.75'),
('極上黑牛烧肉', '海沧极上.jpg (https://dl.airtable.com/.attachments/37467b690849f2619f7ca6a4f2bea4a4/6575b332.jpg)', '日式烧烤/烤肉', '阿罗海城市广场', '130/人', '4.77', '4.71', '4.78', '4.73'),
('OK拉面', 'OK拉面.jpg (https://dl.airtable.com/.attachments/e1044a390a9e9156b4199636dd73508e/5f943270/OK.jpg)', '日式面条', '思明区', '34/人', '4.73', '4.80', '4.54', '4.64'),
('一町無二日式拉面', '一田丁无二.jpg (https://dl.airtable.com/.attachments/e436ad3d39cd6487c65c6c8e5fa6a0c6/7cf0d478.jpg)', '日式面条', '厦门火车站', '46/人', '4.72', '4.69', '4.87', '4.82'),
('味千拉面', '味千.jpg (https://dl.airtable.com/.attachments/c957e2bd6dc5d16053a21af955935070/388069b5.jpg)', '日式面条', '同安乐海广场', '39/人', '3.85', '3.86', '3.86', '3.83'),
('江左尚白| 日式放题料理', '江左尚白.jpg (https://dl.airtable.com/.attachments/0430af7a08d894d37fc400785a5854c9/6e36cf43.jpg)', '日式自助', '思明区', '108/人', '4.86', '4.84', '4.84', '4.86'),
('花潮', 'SM花潮.jpg (https://dl.airtable.com/.attachments/a99c214ad2b165f0666c98f3613e8283/e338f9be/SM.jpg)', '日式自助', 'SM广场', '326/人', '4.89', '4.90', '4.92', '4.87'),
('匠和风精致料理', '匠和风.jpg (https://dl.airtable.com/.attachments/cfa904addb28f3328104362ff3a8d611/66fbdb83.jpg)', '日式自助', '高林', '198/人', '4.86', '4.84', '4.86', '4.83'),
('匠旨', '匠旨.jpg (https://dl.airtable.com/.attachments/707b87f41adbca0392be5e0ef64e67ca/683cf06b.jpg)', '日式自助', '新店', '120/人', '4.59', '4.37', '4.75', '4.68');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
