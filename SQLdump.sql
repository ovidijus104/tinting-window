-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.19 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table nfqproject.orders
DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cliant_name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cliant_surname` varchar(100) CHARACTER SET latin1 NOT NULL,
  `cliant_email` varchar(250) CHARACTER SET latin1 NOT NULL,
  `cliant_phone` varchar(16) CHARACTER SET latin1 NOT NULL,
  `car_model` varchar(250) CHARACTER SET latin1 DEFAULT NULL,
  `arrival_date` date DEFAULT NULL,
  `arrival_reason` text COLLATE utf8_lithuanian_ci,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_lithuanian_ci;

-- Dumping data for table nfqproject.orders: ~52 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
REPLACE INTO `orders` (`id`, `cliant_name`, `cliant_surname`, `cliant_email`, `cliant_phone`, `car_model`, `arrival_date`, `arrival_reason`, `timestamp`) VALUES
	(1, 'ovidijus', 'ovizz', 'ovidijus104@live.com', '+37065275269', 'astra j ', '2018-10-01', 'paslauga asdasd asd asd asd asd ', '2018-09-16 07:49:02'),
	(2, 'sit', 'sed', 'batz.aiden@example.com', '(479)702-8655', NULL, '2007-03-20', 'Fugit accusantium aliquid quae sit neque eos. Ducimus aperiam voluptas commodi nihil. Et modi repellat qui rerum molestiae id quaerat quis.', '1997-04-20 07:08:27'),
	(3, 'ab', 'ut', 'kemmer.rocio@example.com', '1-478-084-1418x9', NULL, '2017-09-27', 'Ipsum doloremque ut sapiente autem molestias aut sapiente voluptas. Aut alias quibusdam iure sunt velit. Veritatis velit earum dolor asperiores qui.', '1992-07-01 12:37:55'),
	(4, 'ovidijus', 'kamalis', 'keaton.gleichner@example.net', '+3705224445', 'passat 2008, universalas', '2016-12-30', 'Apsauginės plėvelės klijavimas ant langų', '2018-09-18 15:23:28'),
	(5, 'aut', 'libero', 'mwuckert@example.org', '349.042.3137', NULL, '1987-06-29', 'Culpa est aut unde aspernatur. Repellendus tempora sint voluptatibus quia asperiores sed quia. Quaerat quia est qui rem.', '2000-01-20 20:51:07'),
	(6, 'ovidijus', 'nobis', 'jason.aufderhar@example.net', '(618)826-1290x74', NULL, '2012-08-24', 'Iure neque voluptate exercitationem cupiditate et quos. Quisquam nihil mollitia quas reprehenderit. Veniam maxime distinctio optio.', '2018-09-16 17:58:00'),
	(7, 'est', 'minima', 'furman.hilpert@example.com', '345.954.2870x973', NULL, '2002-11-03', 'Quod delectus quis voluptatem consequuntur. Debitis dolorem commodi consequatur qui. Eos ex asperiores sequi aspernatur quia ut assumenda.', '1976-11-26 05:45:40'),
	(8, 'ovidijus', 'dicta', 'noah.ledner@example.com', '1-127-239-1487', NULL, '2011-06-17', 'Labore incidunt cum in cumque perferendis aliquid labore. Occaecati tempora molestias quam nulla. Sed nihil ab corporis dolorum in quia iure.', '2018-09-16 17:57:57'),
	(9, 'quos', 'tenetur', 'jacobi.icie@example.org', '075.919.7283x800', NULL, '1986-08-25', 'Quia impedit earum ea consequatur. Aut occaecati nobis dolore assumenda laudantium eveniet odit. Voluptatem mollitia amet et.', '1971-06-29 10:34:29'),
	(10, 'et', 'sed', 'imelda.grady@example.com', '09134175670', NULL, '2002-12-30', 'Esse veritatis maiores facere saepe dolores nostrum aliquam. Sunt corporis dolore dolore et id. Molestiae delectus cumque aut voluptates.', '2001-07-13 16:25:13'),
	(11, 'et', 'doloribus', 'hanna.kling@example.org', '361.599.8887x104', NULL, '1993-06-14', 'Ipsum autem ea autem quo facilis. Voluptatem et doloremque ut labore impedit et est. Eligendi quod id suscipit praesentium velit. Sequi distinctio sunt aut aut.', '1984-01-31 16:30:44'),
	(12, 'ovidijus', 'nam', 'huels.sienna@example.org', '1-400-163-0691x8', NULL, '2000-05-08', 'Eum dolorem tempore et ipsam quam eos. Deserunt rem voluptatum molestias magni quo. Eos temporibus assumenda illo modi aut culpa.', '2018-09-16 17:57:56'),
	(13, 'soluta', 'minima', 'cbeatty@example.com', '977-826-9062x546', NULL, '1974-01-08', 'Quis sed deleniti autem asperiores. Qui voluptate voluptas voluptas quibusdam. Nostrum perspiciatis dolor repellendus. Esse inventore autem debitis. Ut corrupti est recusandae et.', '1973-02-22 17:10:01'),
	(14, 'odit', 'sequi', 'scrooks@example.org', '(736)884-7464', NULL, '2005-01-01', 'Eum tenetur exercitationem sit. Accusamus fugiat ea aspernatur voluptate corrupti eaque sint.', '1983-06-25 05:18:33'),
	(15, 'ad', 'earum', 'janessa.mills@example.net', '01874247648', NULL, '1994-05-22', 'Quia dolor totam aliquid. Cum incidunt hic cupiditate ad. Rerum distinctio quis aut et laudantium accusamus modi occaecati.', '1995-09-22 15:51:59'),
	(16, 'placeat', 'molestiae', 'ayla06@example.com', '537-564-8069', NULL, '1986-06-15', 'Consequatur unde qui tempora molestiae. Deleniti aut itaque quisquam tenetur sit. Unde explicabo molestias odit nobis explicabo occaecati adipisci at.', '2009-11-17 07:49:34'),
	(17, 'impedit', 'ea', 'pat60@example.net', '992-886-0164', NULL, '2001-08-13', 'Aut qui assumenda voluptatibus officiis. Illum ut nulla voluptas sunt nisi. Unde ullam est libero libero molestiae.', '2001-05-05 10:10:28'),
	(18, 'ovidijus', 'porro', 'cfritsch@example.com', '1-910-884-7057', NULL, '1990-05-02', 'Deleniti omnis qui odio velit aliquam ut dicta dolorem. Cumque voluptatem ut hic tempora. Eligendi et harum impedit illum ex numquam non.', '2018-09-16 17:57:39'),
	(19, 'ovidijus', 'impedit', 'richie93@example.net', '1-382-471-6070', NULL, '1987-07-11', 'Ad laborum ut fuga aut odit tenetur. Deserunt eum placeat et est quidem impedit. Libero nostrum accusantium eos eius rerum corrupti dolore enim. Ex ea aut veritatis dolorem dolore.', '2018-09-16 17:58:03'),
	(20, 'ovidijus', 'ipsa', 'georgiana60@example.org', '(948)409-9980x37', NULL, '2008-06-06', 'Accusamus ipsam modi sed sequi dolorem quo delectus ex. Doloribus non impedit nam molestiae est laboriosam quae. Voluptatibus delectus quia distinctio possimus et nam perferendis recusandae.', '2018-09-16 17:58:05'),
	(21, 'incidunt', 'qui', 'arvid.sporer@example.org', '1-750-643-8651', NULL, '1975-05-13', 'Molestiae vel animi temporibus amet omnis occaecati. Vel ratione natus dignissimos dolorem modi magni. Consequatur ad et veniam.', '2013-05-30 05:14:32'),
	(22, 'totam', 'nam', 'kfritsch@example.com', '1-466-792-4254x3', NULL, '1979-07-20', 'Culpa eaque ut praesentium esse. A alias tempore voluptatem quidem delectus aperiam. Vitae totam delectus illo.', '2007-03-05 07:11:16'),
	(23, 'laborum', 'non', 'catalina.kuhic@example.org', '1-897-491-3378x7', NULL, '2001-07-17', 'Distinctio ut autem dolor amet commodi iste magnam suscipit. Et at optio aut labore. Enim officia distinctio quis atque in.', '2013-07-21 23:52:15'),
	(24, 'ovidijus', 'qui', 'guiseppe.king@example.net', '156.998.7175x679', NULL, '1981-01-16', 'Dolore quia a consequatur blanditiis. Aut quo quidem repudiandae ut recusandae. Aut delectus ipsum exercitationem error officiis ea.', '2018-09-16 17:58:07'),
	(25, 'a', 'dolores', 'miller.jedidiah@example.org', '599-543-4515x213', NULL, '1993-07-30', 'Repudiandae et in eligendi qui pariatur. Reprehenderit porro numquam est qui rerum vero.', '1972-12-27 20:53:50'),
	(26, 'quo', 'corrupti', 'xwyman@example.org', '+44(2)4246836039', NULL, '1978-07-10', 'Aliquid debitis deleniti consectetur unde quo. Molestiae et molestiae accusamus ipsa eos deserunt incidunt.', '2010-09-25 09:46:25'),
	(27, 'repellat', 'quasi', 'mario66@example.org', '793-440-5786x510', NULL, '2006-04-14', 'Quod sint voluptas corporis veritatis perspiciatis commodi rem. Libero iusto suscipit distinctio ipsum. Et et quaerat cum suscipit quibusdam quo adipisci blanditiis.', '2002-09-19 03:11:30'),
	(28, 'ovidijus', 'joninskis', 'rhuel@example.org', '+3706528874', 'passat 2010, universalas', '2004-02-27', 'Priekinio bamperio apsauginės plevelės klijavimas', '2018-09-18 15:23:40'),
	(29, 'ovidijus', 'voluptatem', 'stamm.jettie@example.com', '794.011.0996', NULL, '2010-07-11', 'Blanditiis qui aspernatur voluptate a soluta enim. Aliquam veniam aliquid eum dolor exercitationem aut. Explicabo repellendus aspernatur labore rerum placeat et inventore. Quo aperiam rerum ipsam.', '2018-09-16 17:57:49'),
	(30, 'qui', 'consequuntur', 'kristopher43@example.com', '+15(6)1948924375', NULL, '2018-06-16', 'In fugit id vitae id ipsam quibusdam quaerat. Sed suscipit consequuntur nisi cumque illum officiis quisquam.', '2006-10-18 12:49:10'),
	(31, 'sed', 'rem', 'billie.howe@example.com', '1-297-391-5139', NULL, '1982-01-28', 'Aliquid ea dolorum fugiat. Possimus incidunt quidem consequatur nihil. Tempore nesciunt magnam corrupti molestiae atque sint voluptatem.', '2009-10-24 08:43:07'),
	(32, 'eum', 'occaecati', 'delores94@example.com', '806-089-6245x036', NULL, '2014-01-14', 'Aliquam ipsum sapiente eum quo omnis labore odio. Impedit recusandae sit ipsam ea voluptatem. Est facilis molestiae itaque incidunt voluptas amet explicabo.', '1975-06-05 21:36:56'),
	(33, 'est', 'sed', 'mmarvin@example.com', '080-822-8157', NULL, '1994-08-05', 'Quod corrupti sit voluptatibus blanditiis eligendi eveniet. Laboriosam repellat necessitatibus delectus accusantium nulla id aut. Numquam illo quaerat est qui.', '1997-10-02 12:09:23'),
	(34, 'reprehenderit', 'sit', 'quigley.lydia@example.net', '02409999609', NULL, '1997-06-28', 'Praesentium aut quis non saepe. Ut nam alias velit non facere praesentium similique. Rem porro voluptas esse accusantium tenetur voluptatum. Qui veniam consequatur ipsa quam.', '1985-08-10 07:51:20'),
	(35, 'eaque', 'esse', 'noemie73@example.org', '923.024.4708x714', NULL, '1975-09-28', 'At incidunt explicabo excepturi sint. Vel quia repudiandae culpa est exercitationem. Et quaerat necessitatibus dolorem quaerat. Sit voluptas sit reiciendis culpa sit.', '2007-10-22 03:22:11'),
	(36, 'velit', 'iste', 'dyundt@example.org', '916-404-6560x912', NULL, '1999-12-15', 'Saepe eveniet impedit voluptas facere corrupti et et. Tempore tempore et est a fuga rerum accusamus. Rerum et est qui architecto cupiditate iusto.', '2009-12-31 15:36:30'),
	(37, 'maiores', 'facilis', 'cbrown@example.net', '1-326-517-9810x3', NULL, '2016-05-24', 'Vel excepturi eius porro. Ab accusantium sed laborum quam nobis modi.', '2017-10-29 02:38:23'),
	(38, 'soluta', 'repellendus', 'awhite@example.com', '(989)393-5820', NULL, '2002-02-15', 'Molestias rerum quis tempora rerum harum. Est qui sunt dolore minima. Qui eum officiis ut.', '2005-06-08 15:44:21'),
	(39, 'et', 'exercitationem', 'vebert@example.net', '598.492.1342x400', NULL, '1995-10-27', 'Iure sint eum sit. Ad inventore laboriosam atque at voluptas. Earum perferendis quo voluptatem laboriosam ipsum.', '2004-12-25 00:12:56'),
	(40, 'sunt', 'impedit', 'dickinson.tevin@example.net', '+46(4)7150070183', NULL, '1999-10-11', 'In quasi ea necessitatibus natus. Numquam maiores perspiciatis architecto voluptatem tempora necessitatibus. Enim voluptates aut ut et.', '2007-11-10 14:11:56'),
	(41, 'quia', 'eum', 'cwalter@example.net', '367.805.3766x768', NULL, '1989-03-04', 'Dicta sapiente illo amet blanditiis. Quaerat labore ut porro repellendus velit error. Harum iure eos architecto dolorem sunt.', '1988-07-30 16:38:13'),
	(42, 'ovidijus', 'sunt', 'monserrat47@example.com', '(769)122-9883', NULL, '1984-06-10', 'Tenetur eaque adipisci distinctio sapiente ut facere. Sunt repellendus distinctio repudiandae atque optio. Debitis praesentium quia ratione quia iusto unde eos quia.', '2018-09-16 17:58:09'),
	(43, 'voluptatibus', 'impedit', 'muriel.bergstrom@example.org', '055-122-3297', NULL, '2010-10-23', 'Id reiciendis adipisci vel omnis. Sit dicta quia corporis molestias. Aut et dolores ea magnam.', '1999-05-24 03:40:34'),
	(44, 'harum', 'earum', 'mtremblay@example.org', '09976594874', NULL, '1986-10-27', 'Iusto necessitatibus quaerat iste in. Porro minus id quia esse quia. Aspernatur debitis deserunt non.\nEveniet et dignissimos amet. Ratione sint quod minus. Eligendi aut voluptatem sed culpa.', '2016-08-20 06:06:15'),
	(45, 'ovidijus', 'occaecati', 'alexandro91@example.org', '266-006-0326x144', NULL, '1971-11-23', 'Quos laboriosam eum placeat voluptatem saepe totam. Iure qui quia nam facere nihil earum. Nostrum voluptatem molestias sit. Ut aperiam odio assumenda nihil.', '2018-09-16 17:57:51'),
	(46, 'aspernatur', 'aperiam', 'schmeler.genevieve@example.org', '1-749-726-2296x3', NULL, '2004-10-02', 'Expedita vero qui voluptatem aut. Nesciunt aut inventore odio nemo quas qui. Debitis recusandae voluptas rerum at. Autem nulla quibusdam voluptas ullam.', '1980-12-06 14:00:33'),
	(47, 'corrupti', 'delectus', 'barrows.roman@example.net', '978-321-8767x698', NULL, '1990-11-05', 'Autem tenetur ut facilis perferendis hic aut est. Sit sed quasi dolores sapiente. Deleniti consectetur impedit asperiores qui quia ut.', '2000-06-23 02:20:59'),
	(48, 'aperiam', 'rerum', 'adams.freddy@example.com', '04730227401', NULL, '2008-05-12', 'Et doloribus quia dolorem omnis voluptatem dolor nisi. Aut explicabo facere culpa odio. Praesentium quos dignissimos sunt est.', '1978-10-07 03:46:20'),
	(49, 'ovidijus', 'quia', 'dalton.ernser@example.org', '+17(0)2367411525', NULL, '2002-03-02', 'Rerum voluptas fugit ut in eligendi quia quibusdam fugit. Autem qui atque id tenetur. Possimus sequi mollitia voluptatem rerum velit aliquam.', '2018-09-16 17:57:54'),
	(50, 'blanditiis', 'praesentium', 'waelchi.martine@example.com', '1-218-485-8844', NULL, '1988-03-27', 'Ut illo tempora magni quos quaerat non fugit. Deserunt sed mollitia voluptas molestiae. Est alias velit amet velit itaque soluta quia.', '2003-07-03 14:53:25'),
	(51, 'šarunas', 'asdasd', 'ovidijus104@live.com', '+37065275269', 'astra j ', '2018-09-20', 'asdasd asd ', '2018-09-18 10:40:32'),
	(52, 'ovidijus', 'ovizz', 'ovidijus104@live.com', '+37065275269', 'Opel astra j hetchbeck ', '2018-10-01', 'paslauga asdasd asd asd asd asd ąčęėįš', '2018-09-18 13:47:58');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
