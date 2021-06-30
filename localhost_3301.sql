-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3301
-- 生成日時: 2021-06-30 07:25:09
-- サーバのバージョン： 10.4.18-MariaDB
-- PHP のバージョン: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `mydb1`
--
CREATE DATABASE IF NOT EXISTS `mydb1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mydb1`;

-- --------------------------------------------------------

--
-- テーブルの構造 `m_book`
--

CREATE TABLE `m_book` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(45) NOT NULL,
  `book_publisher` varchar(30) NOT NULL,
  `book_price` int(11) NOT NULL,
  `book_release_day` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `m_book`
--

INSERT INTO `m_book` (`book_id`, `book_name`, `book_publisher`, `book_price`, `book_release_day`) VALUES
(1, '週刊少年ジャンプ', '集英社', 300, '2021/06/07'),
(2, '週刊少年マガジン', '講談社', 300, '2021/06/09'),
(3, '週刊少年サンデー', '小学館', 300, '2021/06/09'),
(4, 'Mynah, common', 'Schuppe, Lockman and Mills', 264, '2021/08/24'),
(5, 'Groundhog', 'Lemke-Romaguera', 3551, '2021/07/04'),
(6, 'Skunk, western spotted', 'Yundt Inc', 1592, '2021/09/12'),
(7, 'Blue and gold macaw', 'Heidenreich Inc', 449, '2021/09/04'),
(8, 'Wallaby, whip-tailed', 'Crooks Inc', 2773, '2021/10/23'),
(9, 'Boat-billed heron', 'Quigley LLC', 3762, '2021/09/13'),
(10, 'Jackal, black-backed', 'Baumbach, Stracke and Weissnat', 3393, '2021/06/24'),
(11, 'Bison, american', 'Hoppe-Bode', 1758, '2021/09/28'),
(12, 'Mongoose, small indian', 'Schuster-McDermott', 4819, '2021/11/21'),
(13, 'European badger', 'Wilkinson LLC', 710, '2021/09/30'),
(14, 'Potoroo', 'Hagenes LLC', 4029, '2021/09/16'),
(15, 'Indian leopard', 'Barrows LLC', 3564, '2021/08/09'),
(16, 'Goat, mountain', 'Langosh-Homenick', 2003, '2021/09/29'),
(17, 'Red-tailed wambenger', 'Rath, Fisher and Torphy', 4314, '2021/07/20'),
(18, 'Snow goose', 'Stanton Group', 4330, '2021/10/12'),
(19, 'Madagascar hawk owl', 'Kuhlman, Cruickshank and Hodki', 736, '2021/06/29'),
(20, 'Impala', 'Smith Inc', 1343, '2021/06/15'),
(21, 'Baboon, gelada', 'Brown, Streich and Block', 3908, '2021/08/31'),
(22, 'Canadian tiger swallowtail butterfly', 'Simonis LLC', 4220, '2021/07/12'),
(23, 'Bunting, crested', 'Connelly-Marks', 4579, '2021/08/30'),
(24, 'Wagtail, african pied', 'Mohr LLC', 2390, '2021/12/07'),
(25, 'Flying fox (unidentified)', 'Harris, Oberbrunner and Kihn', 1081, '2021/07/18'),
(26, 'mbotterellp', 'Browsedrive', 31, '2020/8/20'),
(27, 'sachesonq', 'Gevee', 277, '2021/3/15'),
(28, 'erozr', 'Fivechat', 841, '2020/8/20'),
(29, 'wcrebos', 'Photobug', 259, '2020/12/13'),
(30, 'cpasbyt', 'Roombo', 85, '2020/12/16'),
(31, 'vjandelu', 'Centidel', 646, '2021/2/21'),
(32, 'vpeelv', 'Twimbo', 713, '2021/2/27'),
(33, 'rdavorenw', 'JumpXS', 29, '2020/12/25'),
(34, 'tcrosherx', 'Jabbertype', 136, '2020/12/4'),
(35, 'bcomettoy', 'Oodoo', 179, '2020/6/6'),
(36, 'epounderz', 'Skaboo', 77, '2020/10/9'),
(37, 'osutherland10', 'Gabtype', 102, '2020/9/7'),
(38, 'rclemenza11', 'Mynte', 292, '2021/1/14'),
(39, 'vbedingfield12', 'Tambee', 993, '2021/4/27'),
(40, 'jbrinded13', 'Eadel', 105, '20213/1/3'),
(41, 'mmuccino14', 'Yozio', 255, '2021/5/12'),
(42, 'baartsen15', 'Meejo', 493, '2021/2/14'),
(43, 'hlack16', 'Blogtag', 277, '2020/12/30'),
(44, 'bgowar17', 'Fiveclub', 752, '2020/12/29'),
(45, 'mwretham18', 'Youspan', 564, '2020/9/19'),
(46, 'dtomkin19', 'Buzzbean', 211, '2020/11/30'),
(47, 'deberdt1a', 'Blogspan', 632, '2020/6/18'),
(48, 'mkimbell1b', 'Divape', 633, '2021/5/8'),
(49, 'jhailes1c', 'Thoughtbridge', 855, '2021/4/15'),
(50, 'ekhomishin1d', 'Fiveclub', 831, '2020/8/10'),
(51, 'North American red fox', 'Schumm Group', 1460, '2021/09/30');

-- --------------------------------------------------------

--
-- テーブルの構造 `m_customer`
--

CREATE TABLE `m_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(45) DEFAULT NULL,
  `customer_zipcode` varchar(9) DEFAULT NULL,
  `customer_address` varchar(100) DEFAULT NULL,
  `customer_phone_num` varchar(13) DEFAULT NULL,
  `customer_mail_address` varchar(45) NOT NULL,
  `customer_creditcard_num` varchar(45) NOT NULL,
  `customer_password` varchar(45) NOT NULL,
  `customer_password_check` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `m_customer`
--

INSERT INTO `m_customer` (`customer_id`, `customer_name`, `customer_zipcode`, `customer_address`, `customer_phone_num`, `customer_mail_address`, `customer_creditcard_num`, `customer_password`, `customer_password_check`) VALUES
(1, 'ohno atsuya', '150-0043', '東京都渋谷区道玄坂1-12-1　', '03-6416-3414', 'a.ohno@i-voice.co.jp', '1234567890123456', 'a', 'a'),
(2, 'a', 'あ', '', 'あ', 'a@gmail.com', 'a', 'a', 'a'),
(3, 'Wallache Dysert', '52125-933', '8-300 - Specialty Doors', '346-114-9250', 'wdysert2@gmpg.org', '4041590019243065', 'pHyqLz', ''),
(4, 'Sharlene Jeffress', '60927-117', '13-240 - Oxygenation Systems', '502-255-4407', 'sjeffress3@trellian.com', '5100147373307195', 'Iw5rJR9a', ''),
(5, 'Mitch Questier', '0409-4888', '11-900 - Exhibit Equipment', '985-788-6996', 'mquestier4@indiegogo.com', '5048370126749209', 'N0HDKb', ''),
(6, 'Estella Meadus', '52125-380', '1-580 - Project Identification', '134-247-7438', 'emeadus5@devhub.com', '3537699786599881', 'oNyaCr', ''),
(7, 'Lorianne Arnaudin', '35356-802', '14 - Conveying Systems', '683-233-3713', 'larnaudin6@cam.ac.uk', '4041598851947', 'vwUEI3A', ''),
(8, 'Yorgo Tomaszczyk', '62856-282', '8-700 - Hardware', '331-197-5148', 'ytomaszczyk7@flavors.me', '3550465624440643', 'nnjRvjViuNF', ''),
(9, 'Jenn Posselwhite', '0703-2804', '14-600 - Hoists and Cables', '147-884-6170', 'jposselwhite8@acquirethisname.com', '372301457914432', 'zZVCGnvMdGT', ''),
(10, 'Elenore Molineux', '62670-481', '13-090 - Radiation Protection', '853-726-6087', 'emolineux9@home.pl', '4041591137625', 'bvbGg8UA98', ''),
(11, 'Kelvin Alpe', '66116-487', '11-650 - Planetarium Equipment', '977-844-2635', 'kalpea@dion.ne.jp', '4964252492007763', '1rg1kzfYW', ''),
(12, 'Sidnee Danforth', '47593-458', '13-280 - Hazardous Material Remediation', '938-310-9459', 'sdanforthb@youtube.com', '4041374105567', '9xmvcmwHIsoO', ''),
(13, 'Mathian Burchfield', '55413-250', '7-900 - Joint Sealers', '908-414-1389', 'mburchfieldc@walmart.com', '343650160124358', 'bvCgKecQ', ''),
(14, 'Des Gouinlock', '50021-301', '7-600 - Flashing and Sheet Metal', '702-300-5562', 'dgouinlockd@paypal.com', '5458831177037912', 'ljelID', ''),
(15, 'Esra Benettini', '36987-106', '1-600 - Product Requirements (Scope of Work)', '575-326-6672', 'ebenettinie@cdc.gov', '5587334325814591', 'blYpzBO0R', ''),
(16, 'Cody Grimditch', '62032-513', '3-400 - Precast Concrete', '662-141-1143', 'cgrimditchf@abc.net.au', '4041594847051179', 'Inz2pZvS', ''),
(17, 'Artair Gruszczak', '16110-026', '7-700 - Roof Specialties and Accessories', '881-205-3710', 'agruszczakg@google.co.jp', '5238002395514499', 'nCeuy5', ''),
(18, 'Shawn Caldes', '0904-5018', '14-600 - Hoists and Cables', '370-705-6783', 'scaldesh@dyndns.org', '372301041595952', 'qhajM0ZJ', ''),
(19, 'Casandra Franchyonok', '0440-1350', '1-540 - Construction Aids', '633-697-4678', 'cfranchyonoki@army.mil', '4041376568371246', 'ZHwzRO', ''),
(20, 'Gabriello Gensavage', '0113-0368', '17-020 - Insurance', '706-668-5782', 'ggensavagej@latimes.com', '5100147502007542', 'aqGYrhs8U', ''),
(21, 'Queenie Grave', '64376-129', '6-100 - Rough Carpentry', '891-713-4304', 'qgravek@yale.edu', '337941239319469', 'upbw85Uh7gm', ''),
(22, 'Claudianus Ivashov', '0268-1116', '8-900 - Glazed Curtain Wall', '736-361-7925', 'civashovl@comcast.net', '5245935680546984', 'ycUXjvlPzADA', ''),
(23, 'Pryce Souley', '60512-803', '10-500 - Lockers', '364-524-1280', 'psouleym@exblog.jp', '4041370012940', 'CHOAqR', ''),
(24, 'Edythe Chetwynd', '54868-235', '12-100 - Art', '456-344-6524', 'echetwyndn@europa.eu', '3573012808113217', 'jS59sGBt', ''),
(25, 'Ashlen Lazar', '13537-515', '1-013 - Project Coordinator', '256-657-2260', 'alazaro@arizona.edu', '4017952259661', 'gqugjwToow4', ''),
(26, 'Hammad Trembey', '0615-1575', '2 - Site Construction', '729-221-8951', 'htrembeyp@bbb.org', '4041591660997280', 'zEfnjP9QEH8P', ''),
(27, 'Elga Binning', '63736-902', '11-470 - Darkroom Equipment', '808-353-6285', 'ebinningq@vk.com', '4041597023165283', '8WRtOrcI1', ''),
(28, 'Marlow Gounot', '0093-5504', '14-300 - Escalators and Moving Walks', '334-758-3542', 'mgounotr@thetimes.co.uk', '3580934429006366', '78sFpgQX4oD', ''),
(29, 'Bree Wratten', '0406-9960', '13-080 - Sound, Vibration, and Seismic Control', '543-244-1908', 'bwrattens@dropbox.com', '5010120640319987', 'VqTpi5j', ''),
(30, 'Jennilee Champneys', '68788-082', '1-500 - Temporary Facilities and Controls', '227-513-2949', 'jchampneyst@github.com', '372301402802245', 'BjKHWBIlIY3', ''),
(31, 'Ivie Mellings', '68180-220', '5-050 - Basic Metal Materials and Methods', '767-721-1630', 'imellingsu@bbc.co.uk', '5223730789118710', 'TMTg0auh', ''),
(32, 'Rorie Bosman', '46987-330', '13-170 - Tubs and Pools', '110-732-8815', 'rbosmanv@simplemachines.org', '3552895655079860', 'NKhNl9cnMd', ''),
(33, 'Wilona McMillian', '23155-018', '5-400 - Cold-Formed Metal Framing', '115-490-2326', 'wmcmillianw@g.co', '4041590763481911', 'bGxmYHHMJ', ''),
(34, 'Sarge Fane', '61957-147', '6 - Wood and Plastics', '544-860-2152', 'sfanex@hao123.com', '3580202419864412', 'nJpz1m24SoP', ''),
(35, 'Cleve Harman', '11489-083', '3-600 - Grouts', '600-348-3848', 'charmany@unicef.org', '4041375110384046', 'xr3VLyT77N', ''),
(36, 'Bailie Rarity', '43386-680', '2-870 - Sculpture/Ornamental', '701-670-2891', 'brarityz@networkadvertising.org', '5048379057807670', 'pyiKEdf', ''),
(37, 'Annalise MacCrosson', '63868-687', '10-500 - Lockers', '533-743-1955', 'amaccrosson10@cargocollective.com', '374288502310732', 'PDBwY0omv', ''),
(38, 'Paige Handy', '0591-5442', '1-012 - Superintendent', '459-998-2859', 'phandy11@google.nl', '374288692643496', 'EafNZAQ', ''),
(39, 'Karia Urling', '58668-151', '2-311 - Final Grading', '718-782-8582', 'kurling12@homestead.com', '344854855241209', 'klNkLtPj7gI3', ''),
(40, 'Chadwick Farrah', '43063-425', '13-160 - Aquariums', '765-503-2331', 'cfarrah13@tumblr.com', '374288130096638', 'WTV4eyM1', ''),
(41, 'Ashlan Byrkmyr', '0781-4003', '4-050 - Basic Masonry Materials and Methods', '824-149-8616', 'abyrkmyr14@mtv.com', '4041597272897', 'mSo0j9kQ', ''),
(42, 'Cozmo Kindon', '36987-166', '7-500 - Membrane Roofing', '980-874-6281', 'ckindon15@prnewswire.com', '3576679176700937', 'H82Swy2', ''),
(43, 'Fidole O\' Mahony', '64942-124', '2-000 - General', '148-820-8037', 'fo16@360.cn', '374288897770508', 'X8ZH5BQU', ''),
(44, 'Dennie Marlowe', '61543-617', '3-350 - Concrete Finishing', '920-141-7095', 'dmarlowe17@ibm.com', '5100141276461001', 'WVRTwpjHC', ''),
(45, 'Jeanie McBrady', '0591-2318', '16-500 - Lighting', '429-965-1176', 'jmcbrady18@wix.com', '3547565052164544', 'qC9YaaXKPw', ''),
(46, 'Cherlyn Narducci', '0067-8105', '4-600 - Corrosion-Resistant Masonry', '690-560-4911', 'cnarducci19@epa.gov', '4809430334961', 'R2qQWZxdRzH', ''),
(47, 'Caria Itscowics', '61657-096', '2-824 - Wire Fences and Gates', '801-530-3989', 'citscowics1a@vkontakte.ru', '4041379529822273', '4vUvbezZput', ''),
(48, 'Ulrica Camillo', '10237-740', '2-780 - Clay Unit Pavers', '295-427-3325', 'ucamillo1b@cbsnews.com', '5332795769852461', 'S5HSiWMNys', ''),
(49, 'Maxy Jarrette', '10096-521', '6-900 - Wood and Plastic Restoration and Cleaning', '239-674-9450', 'mjarrette1c@parallels.com', '4017959492232', 'Arw86DK', ''),
(50, 'Lucio Rosel', '54868-111', '2-740 - Flexible Pavement Asphalt Pavement', '961-347-3939', 'lrosel1d@timesonline.co.uk', '374283412873846', 'tMZbNiqiY', ''),
(51, 'Nikki Huett', '0135-0179', '8-400 - Entrances and Storefronts', '603-693-9629', 'nhuett1e@cargocollective.com', '374283838540284', 'mcKb62U9Zh', ''),
(53, 'b', 'b', 'b', 'b', 'b', 'b', 'b', 'b'),
(54, '111', '111', '111', '111', '111', '111', '111', '111'),
(55, '222', '222', '222', '222', '222@gmail.com', '222', '222', '222'),
(56, '222', '222', '222', '222', '222@gmail.com', '222', '222', '222'),
(63, 'r', 'r', 'r', 'r', 'rr@gmail.com', 'r', 'r', 'r'),
(83, '', '', '', '', 'a.ohno@i-voice.co.jp', '1234567890123456', 'asdfghjkl', 'asdfghjkl'),
(84, '', '', '', '', 'a.ohno@i-voice.co.jp', '1234567890123456', 'asdfghjkl', 'asdfghjkl'),
(85, '', '', '', '', 'a.ohno@i-voice.co.jp', '1234567890123456', 'asdfghjkl', 'asdfghjkl'),
(86, '', '', '', '', 'a.ohno@i-voice.co.jp', '1234567890123456', '1234567890', '1234567890'),
(87, '', '', '', '', 'a.ohno@i-voice.co.jp', '1234567890123456', '1234567890', '1234567890'),
(88, '', '', '', '', 'a.ohno@i-voice.co.jp', '1234567890123456', '1234567890', '1234567890'),
(89, '', '', '', '', 'a.ohno@i-voice.co.jp', '1234567890123456', 'a', 'a'),
(90, 'おおのあつや', '', '', '03-4360-5444', 'ohno@i-voice.co.jp', '1234567890123456', 'asdfghjkl', 'asdfghjkl'),
(91, 'ohno atsuya', '', '', '080-4360-5444', 'ohno@voice.co.jp', '1234567890123456', '1234567890', '1234567890'),
(92, 'おおのあつや', '150-0043', '', '03-4360-5444', 'ohno@i-voice.co.jp', '1234-5678-9012-3456', 'qwertyuiop', 'qwertyuiop');

-- --------------------------------------------------------

--
-- テーブルの構造 `t_customer_order`
--

CREATE TABLE `t_customer_order` (
  `m_customer_id` int(11) NOT NULL,
  `m_book_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `t_customer_order`
--

INSERT INTO `t_customer_order` (`m_customer_id`, `m_book_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(1, 48),
(1, 49),
(1, 50),
(1, 51),
(2, 1),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 11),
(2, 12),
(3, 1),
(4, 1),
(4, 2),
(4, 3),
(5, 1),
(5, 2),
(5, 3),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 11),
(9, 12),
(9, 13),
(9, 14),
(9, 25),
(9, 27),
(9, 28),
(9, 30),
(9, 31),
(9, 33),
(9, 39),
(9, 40),
(9, 41),
(9, 44),
(11, 11);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `m_book`
--
ALTER TABLE `m_book`
  ADD PRIMARY KEY (`book_id`);

--
-- テーブルのインデックス `m_customer`
--
ALTER TABLE `m_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- テーブルのインデックス `t_customer_order`
--
ALTER TABLE `t_customer_order`
  ADD PRIMARY KEY (`m_customer_id`,`m_book_id`),
  ADD KEY `fk_m_customer_has_m_book_m_book1_idx` (`m_book_id`),
  ADD KEY `fk_m_customer_has_m_book_m_customer_idx` (`m_customer_id`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `m_book`
--
ALTER TABLE `m_book`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- テーブルの AUTO_INCREMENT `m_customer`
--
ALTER TABLE `m_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- ダンプしたテーブルの制約
--

--
-- テーブルの制約 `t_customer_order`
--
ALTER TABLE `t_customer_order`
  ADD CONSTRAINT `fk_m_customer_has_m_book_m_book1` FOREIGN KEY (`m_book_id`) REFERENCES `m_book` (`book_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_m_customer_has_m_book_m_customer` FOREIGN KEY (`m_customer_id`) REFERENCES `m_customer` (`customer_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
--
-- データベース: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- テーブルのデータのダンプ `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'table', 'seikabutsu', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"allrows\":\"1\",\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@TABLE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"テーブル @TABLE@ の構造\",\"latex_structure_continued_caption\":\"テーブル @TABLE@ の構造 (続き)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"テーブル @TABLE@ の内容\",\"latex_data_continued_caption\":\"テーブル @TABLE@ の内容 (続き)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"knjenc\":\"\",\"\":null,\"lock_tables\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null,\"xkana\":null}'),
(2, 'root', 'database', 'seikaabutsu', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"structure_or_data_forced\":\"0\",\"table_select[]\":[\"m_book\",\"m_customer\",\"t_customer_order\"],\"table_structure[]\":[\"m_book\",\"m_customer\",\"t_customer_order\"],\"table_data[]\":[\"m_book\",\"m_customer\",\"t_customer_order\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@DATABASE@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"テーブル @TABLE@ の構造\",\"latex_structure_continued_caption\":\"テーブル @TABLE@ の構造 (続き)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"テーブル @TABLE@ の内容\",\"latex_data_continued_caption\":\"テーブル @TABLE@ の内容 (続き)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"structure_and_data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"structure_and_data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_procedure_function\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"xml_structure_or_data\":\"data\",\"xml_export_events\":\"something\",\"xml_export_functions\":\"something\",\"xml_export_procedures\":\"something\",\"xml_export_tables\":\"something\",\"xml_export_triggers\":\"something\",\"xml_export_views\":\"something\",\"xml_export_contents\":\"something\",\"yaml_structure_or_data\":\"data\",\"knjenc\":\"\",\"\":null,\"lock_tables\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_create_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null,\"xkana\":null}');

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- テーブルのデータのダンプ `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"mydb1\",\"table\":\"t_customer_order\"},{\"db\":\"mydb1\",\"table\":\"m_customer\"},{\"db\":\"mydb1\",\"table\":\"m_book\"}]');

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- テーブルのデータのダンプ `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-06-17 06:02:28', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"ja\"}');

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- テーブルのインデックス `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- テーブルのインデックス `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- テーブルのインデックス `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- テーブルのインデックス `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- テーブルのインデックス `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- テーブルのインデックス `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- テーブルのインデックス `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- テーブルのインデックス `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- テーブルのインデックス `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- テーブルのインデックス `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- テーブルのインデックス `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- テーブルのインデックス `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- テーブルのインデックス `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- テーブルのインデックス `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- テーブルのインデックス `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- テーブルのインデックス `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- テーブルのインデックス `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- テーブルの AUTO_INCREMENT `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルの AUTO_INCREMENT `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- データベース: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
