-- Adminer 4.7.7 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `data_rows`;
CREATE TABLE `data_rows` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data_type_id` int unsigned NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `data_rows_data_type_id_foreign` (`data_type_id`),
  CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1,	1,	'id',	'number',	'ID',	1,	0,	0,	0,	0,	0,	NULL,	1),
(2,	1,	'name',	'text',	'Name',	1,	1,	1,	1,	1,	1,	NULL,	2),
(3,	1,	'email',	'text',	'Email',	1,	1,	1,	1,	1,	1,	NULL,	3),
(4,	1,	'password',	'password',	'Password',	1,	0,	0,	1,	1,	0,	NULL,	4),
(5,	1,	'remember_token',	'text',	'Remember Token',	0,	0,	0,	0,	0,	0,	NULL,	5),
(6,	1,	'created_at',	'timestamp',	'Created At',	0,	1,	1,	0,	0,	0,	NULL,	6),
(7,	1,	'updated_at',	'timestamp',	'Updated At',	0,	0,	0,	0,	0,	0,	NULL,	7),
(8,	1,	'avatar',	'image',	'Avatar',	0,	1,	1,	1,	1,	1,	NULL,	8),
(9,	1,	'user_belongsto_role_relationship',	'relationship',	'Role',	0,	1,	1,	1,	1,	0,	'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}',	10),
(10,	1,	'user_belongstomany_role_relationship',	'relationship',	'Roles',	0,	1,	1,	1,	1,	0,	'{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}',	11),
(11,	1,	'settings',	'hidden',	'Settings',	0,	0,	0,	0,	0,	0,	NULL,	12),
(12,	2,	'id',	'number',	'ID',	1,	0,	0,	0,	0,	0,	NULL,	1),
(13,	2,	'name',	'text',	'Name',	1,	1,	1,	1,	1,	1,	NULL,	2),
(14,	2,	'created_at',	'timestamp',	'Created At',	0,	0,	0,	0,	0,	0,	NULL,	3),
(15,	2,	'updated_at',	'timestamp',	'Updated At',	0,	0,	0,	0,	0,	0,	NULL,	4),
(16,	3,	'id',	'number',	'ID',	1,	0,	0,	0,	0,	0,	NULL,	1),
(17,	3,	'name',	'text',	'Name',	1,	1,	1,	1,	1,	1,	NULL,	2),
(18,	3,	'created_at',	'timestamp',	'Created At',	0,	0,	0,	0,	0,	0,	NULL,	3),
(19,	3,	'updated_at',	'timestamp',	'Updated At',	0,	0,	0,	0,	0,	0,	NULL,	4),
(20,	3,	'display_name',	'text',	'Display Name',	1,	1,	1,	1,	1,	1,	NULL,	5),
(21,	1,	'role_id',	'text',	'Role',	1,	1,	1,	1,	1,	1,	NULL,	9),
(22,	4,	'id',	'text',	'Id',	1,	0,	0,	0,	0,	0,	'{}',	1),
(23,	4,	'name',	'text',	'Exhibitor Name',	1,	1,	1,	1,	1,	1,	'{}',	2),
(24,	4,	'business_name',	'text',	'Exhibitor Business Name',	0,	1,	1,	1,	1,	1,	'{}',	3),
(25,	4,	'link',	'text',	'Website Link',	0,	1,	1,	1,	1,	1,	'{}',	4),
(26,	4,	'category',	'select_dropdown',	'Category',	1,	1,	1,	1,	1,	1,	'{\"options\":{\"CORPORATE\":\"Corporate\",\"RECIPE_PUBLICATIONS\":\"Recipe Publications\",\"CHAKULA_CHALLENGE\":\"Chakula Chetu Challenge\",\"FOOD_VLOGGER\":\"Food Vlogger Challenge\"}}',	5),
(27,	4,	'created_at',	'timestamp',	'Created At',	0,	1,	1,	0,	0,	1,	'{}',	6),
(28,	4,	'updated_at',	'timestamp',	'Updated At',	0,	0,	0,	0,	0,	0,	'{}',	7),
(29,	4,	'banner',	'image',	'Banner (1000px by 500px)',	0,	1,	1,	1,	1,	1,	'{}',	8),
(30,	4,	'logo',	'image',	'Logo (square)',	0,	1,	1,	1,	1,	1,	'{}',	9),
(31,	5,	'id',	'text',	'Id',	1,	0,	0,	0,	0,	0,	'{}',	1),
(32,	5,	'title',	'text',	'Title',	0,	1,	1,	1,	1,	1,	'{}',	2),
(33,	5,	'description',	'text_area',	'Description',	0,	1,	1,	1,	1,	1,	'{}',	3),
(34,	5,	'link',	'text',	'Link',	0,	1,	1,	1,	1,	1,	'{}',	4),
(35,	5,	'published_at',	'timestamp',	'Published At (when',	0,	1,	1,	1,	1,	1,	'{}',	5),
(36,	5,	'created_at',	'timestamp',	'Created At',	0,	1,	1,	0,	0,	1,	'{}',	6),
(37,	5,	'updated_at',	'timestamp',	'Updated At',	0,	0,	0,	0,	0,	0,	'{}',	7);

DROP TABLE IF EXISTS `data_types`;
CREATE TABLE `data_types` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_types_name_unique` (`name`),
  UNIQUE KEY `data_types_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1,	'users',	'users',	'User',	'Users',	'voyager-person',	'TCG\\Voyager\\Models\\User',	'TCG\\Voyager\\Policies\\UserPolicy',	'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController',	'',	1,	0,	NULL,	'2020-09-02 16:03:25',	'2020-09-02 16:03:25'),
(2,	'menus',	'menus',	'Menu',	'Menus',	'voyager-list',	'TCG\\Voyager\\Models\\Menu',	NULL,	'',	'',	1,	0,	NULL,	'2020-09-02 16:03:25',	'2020-09-02 16:03:25'),
(3,	'roles',	'roles',	'Role',	'Roles',	'voyager-lock',	'TCG\\Voyager\\Models\\Role',	NULL,	'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController',	'',	1,	0,	NULL,	'2020-09-02 16:03:25',	'2020-09-02 16:03:25'),
(4,	'exhibitors',	'exhibitors',	'Exhibitor',	'Exhibitors',	'voyager-people',	'App\\Models\\Exhibitor',	NULL,	NULL,	NULL,	1,	0,	'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}',	'2020-09-06 11:54:47',	'2020-09-06 12:00:15'),
(5,	'videos',	'videos',	'Video',	'Videos',	'voyager-video',	'App\\Models\\Video',	NULL,	NULL,	NULL,	1,	0,	'{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}',	'2020-09-06 12:03:29',	'2020-09-06 12:04:57');

DROP TABLE IF EXISTS `exhibitors`;
CREATE TABLE `exhibitors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `exhibitors` (`id`, `name`, `business_name`, `link`, `category`, `created_at`, `updated_at`, `banner`, `logo`) VALUES
(1,	'Test Exhibito',	NULL,	NULL,	'CORPORATE',	'2020-09-06 11:59:22',	'2020-09-06 11:59:22',	NULL,	NULL),
(2,	'Kaitlyn Dare',	'Howe, Jacobson and Orn',	'https://www.parisian.net/est-facilis-dolorem-natus-quaerat-voluptatem',	'CORPORATE',	'2020-09-12 07:30:16',	'2020-09-12 07:30:16',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(3,	'Annamae Gutmann PhD',	'Russel-Stoltenberg',	'http://www.huel.org/aliquid-accusantium-voluptatem-ea-itaque',	'CORPORATE',	'2020-09-12 07:30:17',	'2020-09-12 07:30:17',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(4,	'Carmine Armstrong',	'Bashirian, Kunde and Kuvalis',	'http://terry.org/magnam-odit-laudantium-quasi-quo-quae',	'CORPORATE',	'2020-09-12 07:30:17',	'2020-09-12 07:30:17',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(5,	'Pierre Koss',	'Kreiger, Wilkinson and Green',	'http://www.mante.com/',	'CORPORATE',	'2020-09-12 07:30:17',	'2020-09-12 07:30:17',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(6,	'Alanna Labadie',	'Hettinger, Kessler and Kuvalis',	'http://www.walsh.com/',	'CORPORATE',	'2020-09-12 07:30:17',	'2020-09-12 07:30:17',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(7,	'Ms. Laurianne Pouros MD',	'Hamill LLC',	'https://hartmann.com/id-laboriosam-qui-at-consectetur-laborum.html',	'CORPORATE',	'2020-09-12 07:30:18',	'2020-09-12 07:30:18',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(8,	'Nedra O\'Reilly',	'Quitzon PLC',	'http://conroy.info/itaque-alias-dignissimos-natus-perferendis-commodi-dolores-et.html',	'CORPORATE',	'2020-09-12 07:30:18',	'2020-09-12 07:30:18',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(9,	'Ms. Eulalia Glover',	'Fadel-Leannon',	'http://www.hackett.com/ratione-non-eveniet-natus-doloribus',	'CORPORATE',	'2020-09-12 07:30:18',	'2020-09-12 07:30:18',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(10,	'Mr. Foster Willms',	'Kling-Leuschke',	'http://www.harvey.biz/',	'CORPORATE',	'2020-09-12 07:30:18',	'2020-09-12 07:30:18',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(11,	'Marquis Sauer',	'Walsh, Marvin and Reichel',	'http://kuvalis.com/',	'CORPORATE',	'2020-09-12 07:30:18',	'2020-09-12 07:30:18',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(12,	'Prof. Vida Nicolas I',	'Grimes-Crooks',	'http://hickle.com/corporis-doloribus-non-sunt-aut.html',	'CORPORATE',	'2020-09-12 07:30:19',	'2020-09-12 07:30:19',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(13,	'Aryanna Lubowitz',	'Berge-Reichel',	'http://www.greenfelder.biz/',	'CORPORATE',	'2020-09-12 07:30:19',	'2020-09-12 07:30:19',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(14,	'Prof. Claudie Tromp I',	'Pfeffer-Padberg',	'https://www.west.com/tempore-voluptates-amet-aut-dolorem-est-necessitatibus',	'CORPORATE',	'2020-09-12 07:30:19',	'2020-09-12 07:30:19',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(15,	'Prof. Felix Tremblay',	'D\'Amore and Sons',	'https://www.kihn.com/quasi-quis-impedit-accusamus-officia-temporibus-mollitia',	'CORPORATE',	'2020-09-12 07:30:19',	'2020-09-12 07:30:19',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(16,	'Guido Kertzmann',	'Tremblay, Huel and Borer',	'http://www.abshire.com/voluptatibus-ut-pariatur-laudantium-earum',	'CORPORATE',	'2020-09-12 07:30:19',	'2020-09-12 07:30:19',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(17,	'Sophia Hodkiewicz',	'Will, Stokes and Schuppe',	'https://brown.info/voluptatem-error-expedita-corporis-asperiores-eos-ut-natus-ut.html',	'CORPORATE',	'2020-09-12 07:30:19',	'2020-09-12 07:30:19',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(18,	'Don Hagenes',	'Shanahan Group',	'https://cruickshank.info/porro-reprehenderit-numquam-ipsam-aut-unde-vero-iusto.html',	'CORPORATE',	'2020-09-12 07:30:19',	'2020-09-12 07:30:19',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(19,	'Elza Crist',	'Schaefer-Gottlieb',	'http://www.stark.net/alias-dolores-earum-dolor-reiciendis-ratione-dolores-est',	'CORPORATE',	'2020-09-12 07:30:20',	'2020-09-12 07:30:20',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(20,	'Devin O\'Hara III',	'Keeling LLC',	'http://mccullough.net/laudantium-tenetur-sit-sed-reiciendis-architecto.html',	'CORPORATE',	'2020-09-12 07:30:20',	'2020-09-12 07:30:20',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(21,	'Efrain Gutmann',	'Fadel-Rodriguez',	'http://wintheiser.org/velit-asperiores-et-animi-libero-ratione-nihil-animi',	'CORPORATE',	'2020-09-12 07:30:20',	'2020-09-12 07:30:20',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(22,	'Emiliano Powlowski DDS',	'Howe, Schiller and Pagac',	'http://www.lubowitz.com/',	'CORPORATE',	'2020-09-12 07:30:20',	'2020-09-12 07:30:20',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(23,	'Devon Wiegand DDS',	'Torp, Schinner and Cremin',	'https://pfannerstill.biz/modi-dolorem-nemo-illum-et.html',	'CORPORATE',	'2020-09-12 07:30:20',	'2020-09-12 07:30:20',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(24,	'Mr. Charlie Schultz PhD',	'Swift LLC',	'http://www.breitenberg.com/',	'CORPORATE',	'2020-09-12 07:30:20',	'2020-09-12 07:30:20',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(25,	'Vladimir Purdy',	'Altenwerth-Sporer',	'http://bernhard.com/minus-adipisci-neque-omnis',	'CORPORATE',	'2020-09-12 07:30:21',	'2020-09-12 07:30:21',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(26,	'Darlene Bogisich',	'Sawayn, Casper and Beahan',	'http://www.cummings.com/',	'CORPORATE',	'2020-09-12 07:30:21',	'2020-09-12 07:30:21',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(27,	'Gisselle Gleason',	'Shields, Gutkowski and Skiles',	'http://www.mann.com/',	'CORPORATE',	'2020-09-12 07:30:21',	'2020-09-12 07:30:21',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(28,	'Jameson Nicolas V',	'Prohaska, Mohr and Hagenes',	'https://armstrong.com/iure-perferendis-mollitia-voluptatem-et-saepe-voluptatem-quos.html',	'CORPORATE',	'2020-09-12 07:30:21',	'2020-09-12 07:30:21',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(29,	'Mr. Cecil Effertz',	'Littel, Strosin and Shanahan',	'http://swaniawski.com/magni-facilis-numquam-sint-fugit-dolorum-nobis',	'CORPORATE',	'2020-09-12 07:30:22',	'2020-09-12 07:30:22',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(30,	'Garrison Botsford',	'Schoen Group',	'https://nikolaus.com/minima-delectus-aut-eius-error-soluta-aut-voluptatem-quaerat.html',	'CORPORATE',	'2020-09-12 07:30:22',	'2020-09-12 07:30:22',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(31,	'Makayla Veum',	'Nicolas, Gleason and Effertz',	'https://www.jast.com/enim-exercitationem-amet-provident-aut-et-quibusdam',	'CORPORATE',	'2020-09-12 07:30:22',	'2020-09-12 07:30:22',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(32,	'Cordie Carter III',	'Kilback Inc',	'https://stark.net/aspernatur-minus-impedit-optio-sunt.html',	'CORPORATE',	'2020-09-12 07:30:23',	'2020-09-12 07:30:23',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(33,	'Delfina Wunsch',	'Zieme Ltd',	'http://stark.com/voluptatem-animi-id-ea-non-doloribus-eos',	'CORPORATE',	'2020-09-12 07:30:23',	'2020-09-12 07:30:23',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(34,	'Greyson Considine',	'Bins, Bradtke and Boehm',	'http://www.lueilwitz.com/',	'CORPORATE',	'2020-09-12 07:30:23',	'2020-09-12 07:30:23',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(35,	'Guadalupe Connelly Jr.',	'Tremblay Group',	'http://www.keebler.com/eos-mollitia-quia-vel-voluptatum-nobis-numquam',	'CORPORATE',	'2020-09-12 07:30:24',	'2020-09-12 07:30:24',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(36,	'Miss Annamarie Hagenes III',	'Wehner, Langworth and O\'Keefe',	'http://hoppe.com/rem-et-quas-et-sint-quas-omnis.html',	'CORPORATE',	'2020-09-12 07:30:24',	'2020-09-12 07:30:24',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(37,	'Idella Friesen',	'Price, Hoeger and Hettinger',	'http://www.gorczany.com/',	'CORPORATE',	'2020-09-12 07:30:24',	'2020-09-12 07:30:24',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(38,	'Mrs. Madeline Schoen MD',	'Bernier-Gorczany',	'http://sipes.com/reprehenderit-libero-nobis-aut-enim-consequatur-corrupti.html',	'CORPORATE',	'2020-09-12 07:30:24',	'2020-09-12 07:30:24',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(39,	'Grant Nader',	'Oberbrunner-Gerlach',	'http://www.nienow.com/corrupti-dolorem-rerum-sunt-in-magnam-ipsum-voluptatem',	'CORPORATE',	'2020-09-12 07:30:24',	'2020-09-12 07:30:24',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(40,	'Woodrow Collier V',	'Murphy, Tromp and Mayer',	'https://bernhard.com/distinctio-voluptate-rem-consequatur.html',	'CORPORATE',	'2020-09-12 07:30:24',	'2020-09-12 07:30:24',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(41,	'Marquis Pouros',	'Schuster and Sons',	'http://www.lubowitz.com/aliquid-velit-architecto-asperiores-quaerat.html',	'CORPORATE',	'2020-09-12 07:30:25',	'2020-09-12 07:30:25',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(42,	'Juliet Mohr',	'Wuckert and Sons',	'http://littel.biz/',	'CORPORATE',	'2020-09-12 07:30:25',	'2020-09-12 07:30:25',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(43,	'Patricia Monahan',	'Schimmel-Blick',	'http://farrell.com/',	'CORPORATE',	'2020-09-12 07:30:25',	'2020-09-12 07:30:25',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(44,	'Prof. Diamond Greenfelder',	'Lynch-Mann',	'https://www.schuster.net/magni-laudantium-enim-amet-architecto-est-harum',	'CORPORATE',	'2020-09-12 07:30:25',	'2020-09-12 07:30:25',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(45,	'Hans Parker',	'Schowalter, Armstrong and Morissette',	'https://weimann.com/eius-esse-molestiae-non-facere-commodi-inventore-maxime.html',	'CORPORATE',	'2020-09-12 07:30:25',	'2020-09-12 07:30:25',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(46,	'Samson Trantow',	'Kreiger, Watsica and Murray',	'https://www.wisoky.info/rerum-eos-id-sed-quia-dolorem-blanditiis-qui',	'CORPORATE',	'2020-09-12 07:30:25',	'2020-09-12 07:30:25',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(47,	'Mr. Kevin Kautzer I',	'Paucek LLC',	'http://cummerata.org/debitis-hic-dolorum-et-ipsam-voluptate-molestiae',	'CORPORATE',	'2020-09-12 07:30:26',	'2020-09-12 07:30:26',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(48,	'Neva Bins',	'Reichel, Hammes and Rolfson',	'http://okon.com/',	'CORPORATE',	'2020-09-12 07:30:26',	'2020-09-12 07:30:26',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(49,	'Cole Runolfsson',	'Mohr Ltd',	'http://www.conn.biz/officia-voluptas-recusandae-eveniet-omnis-eos',	'CORPORATE',	'2020-09-12 07:30:26',	'2020-09-12 07:30:26',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(50,	'Shanelle Prosacco',	'Hudson, Green and Gerlach',	'http://www.mertz.com/illo-rerum-vero-doloremque-debitis-dolorem-voluptatem',	'CORPORATE',	'2020-09-12 07:30:26',	'2020-09-12 07:30:26',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(51,	'Miss Beryl Flatley DVM',	'Rutherford-Bartell',	'http://www.prosacco.com/',	'CORPORATE',	'2020-09-12 07:30:26',	'2020-09-12 07:30:26',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(52,	'Rosa Becker',	'Kutch, Bernier and Prosacco',	'http://www.cremin.com/',	'CORPORATE',	'2020-09-12 07:30:27',	'2020-09-12 07:30:27',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(53,	'Royce Larkin V',	'Kuhn, Gerlach and Nolan',	'https://sporer.com/nam-dicta-sed-beatae-at-officiis.html',	'CORPORATE',	'2020-09-12 07:30:27',	'2020-09-12 07:30:27',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(54,	'Joyce Hessel',	'Ernser, Kessler and Stamm',	'http://www.orn.com/sed-eum-reprehenderit-fugit-recusandae-laboriosam-et-ea',	'CORPORATE',	'2020-09-12 07:30:27',	'2020-09-12 07:30:27',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(55,	'Samara Walsh',	'Wiza-Hettinger',	'http://huel.info/iure-harum-qui-quia-qui-ab',	'CORPORATE',	'2020-09-12 07:30:27',	'2020-09-12 07:30:27',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(56,	'Prof. Darrel Kessler',	'Considine and Sons',	'http://rice.com/dolorem-nam-culpa-voluptatem-quis-dolore',	'CORPORATE',	'2020-09-12 07:30:27',	'2020-09-12 07:30:27',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(57,	'Frida O\'Conner',	'Kautzer, Mann and Ortiz',	'http://conroy.com/',	'CORPORATE',	'2020-09-12 07:30:27',	'2020-09-12 07:30:27',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(58,	'Mr. Einar Shanahan',	'Ziemann Ltd',	'https://stroman.com/minima-repudiandae-nam-ut-ipsam-asperiores-qui.html',	'CORPORATE',	'2020-09-12 07:30:28',	'2020-09-12 07:30:28',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(59,	'Lily Smith',	'Langosh, Rohan and Hartmann',	'http://www.berge.net/sint-repudiandae-eos-perspiciatis-nesciunt',	'CORPORATE',	'2020-09-12 07:30:28',	'2020-09-12 07:30:28',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(60,	'Prof. Madyson Collier',	'McCullough, Beier and Mohr',	'https://www.jakubowski.com/dolorem-consequatur-omnis-eveniet-fugit-distinctio-aspernatur-est',	'CORPORATE',	'2020-09-12 07:30:28',	'2020-09-12 07:30:28',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(61,	'Hellen Marquardt',	'McKenzie and Sons',	'http://kirlin.com/officiis-incidunt-et-qui-quia',	'CORPORATE',	'2020-09-12 07:30:28',	'2020-09-12 07:30:28',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(62,	'Dr. Terrill Konopelski',	'Bauch, Hyatt and Turcotte',	'https://stanton.com/deleniti-cupiditate-quia-inventore-officiis.html',	'CORPORATE',	'2020-09-12 07:30:28',	'2020-09-12 07:30:28',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(63,	'Brandyn Cruickshank',	'Schmidt Group',	'http://goldner.com/',	'CORPORATE',	'2020-09-12 07:30:29',	'2020-09-12 07:30:29',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(64,	'Taya Nader Jr.',	'Emard, Stehr and Goodwin',	'http://howe.com/quasi-perspiciatis-voluptatibus-aut',	'CORPORATE',	'2020-09-12 07:30:29',	'2020-09-12 07:30:29',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(65,	'Rosendo Reichel DDS',	'Torphy-Kuvalis',	'http://prohaska.info/',	'CORPORATE',	'2020-09-12 07:30:30',	'2020-09-12 07:30:30',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(66,	'Stella Kreiger',	'Dare, Klein and Corwin',	'http://www.kuhn.biz/',	'CORPORATE',	'2020-09-12 07:30:30',	'2020-09-12 07:30:30',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(67,	'Murray Carter',	'Quigley-Heathcote',	'https://schaefer.com/repellendus-voluptas-amet-repellat-itaque-asperiores-corrupti.html',	'CORPORATE',	'2020-09-12 07:30:30',	'2020-09-12 07:30:30',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(68,	'Jailyn Ziemann Sr.',	'Rice, Bernhard and Spinka',	'http://www.bode.com/sed-velit-nihil-ut-in-enim-in-autem-harum',	'CORPORATE',	'2020-09-12 07:30:30',	'2020-09-12 07:30:30',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(69,	'Dr. Jayda Hilpert',	'Torp-Lemke',	'http://hackett.com/sapiente-vero-et-non-culpa-et-quibusdam-iusto.html',	'CORPORATE',	'2020-09-12 07:30:31',	'2020-09-12 07:30:31',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(70,	'Mrs. Aimee Russel MD',	'Ryan Group',	'http://www.wolf.biz/voluptas-neque-recusandae-excepturi-velit-saepe.html',	'CORPORATE',	'2020-09-12 07:30:31',	'2020-09-12 07:30:31',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(71,	'Barbara Collins',	'Emard, Rosenbaum and Abshire',	'http://www.feeney.com/quaerat-consequatur-fuga-sed-ut.html',	'CORPORATE',	'2020-09-12 07:30:32',	'2020-09-12 07:30:32',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(72,	'Danielle Stanton',	'Simonis-Mraz',	'http://schulist.org/dicta-qui-et-et-provident-doloremque-ducimus',	'CORPORATE',	'2020-09-12 07:30:32',	'2020-09-12 07:30:32',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(73,	'Teagan Pacocha',	'Connelly LLC',	'http://www.paucek.org/ducimus-culpa-ipsam-et-nam-repudiandae-et-deserunt',	'CORPORATE',	'2020-09-12 07:30:33',	'2020-09-12 07:30:33',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(74,	'Angelina Jacobi',	'Jones LLC',	'https://gislason.net/perspiciatis-aliquid-alias-nihil-voluptas-et-consectetur-quo-est.html',	'CORPORATE',	'2020-09-12 07:30:33',	'2020-09-12 07:30:33',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(75,	'Fernando Feest',	'Rempel, Bogan and Skiles',	'http://willms.com/blanditiis-dolores-ratione-quod-vel-est-voluptatem',	'CORPORATE',	'2020-09-12 07:30:33',	'2020-09-12 07:30:33',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(76,	'Alycia Crona',	'Howell-Kuhn',	'http://www.johnston.biz/in-et-distinctio-ut-sed-quae-et-harum',	'CORPORATE',	'2020-09-12 07:30:33',	'2020-09-12 07:30:33',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(77,	'Prof. Jeramie Hermann DVM',	'Schroeder-Kling',	'http://stroman.net/',	'CORPORATE',	'2020-09-12 07:30:34',	'2020-09-12 07:30:34',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(78,	'Jaqueline Lesch',	'Baumbach Ltd',	'https://schoen.com/vero-voluptate-aut-tempora-iusto-labore-autem.html',	'CORPORATE',	'2020-09-12 07:30:34',	'2020-09-12 07:30:34',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(79,	'Alexys Feest DVM',	'Considine, Stiedemann and Cremin',	'https://rempel.com/in-molestias-aut-non.html',	'CORPORATE',	'2020-09-12 07:30:34',	'2020-09-12 07:30:34',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(80,	'Muriel Kertzmann',	'Collier Ltd',	'http://www.deckow.com/nesciunt-voluptatum-rerum-quos-error',	'CORPORATE',	'2020-09-12 07:30:35',	'2020-09-12 07:30:35',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(81,	'Brittany Baumbach',	'Zemlak-Mayer',	'http://hackett.net/non-vero-impedit-saepe-voluptate-neque-aliquid-praesentium.html',	'CORPORATE',	'2020-09-12 07:30:35',	'2020-09-12 07:30:35',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(82,	'Prof. Florian Sporer DDS',	'Heathcote-Wiegand',	'http://www.kessler.net/repellat-beatae-dolorem-voluptates-assumenda-neque-quae.html',	'CORPORATE',	'2020-09-12 07:30:35',	'2020-09-12 07:30:35',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(83,	'Florence Osinski',	'O\'Kon LLC',	'https://www.turcotte.net/ullam-dignissimos-voluptate-rerum-tempore',	'CORPORATE',	'2020-09-12 07:30:35',	'2020-09-12 07:30:35',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(84,	'Winona Durgan',	'Ferry-Gerlach',	'http://www.frami.net/eveniet-assumenda-voluptatem-voluptatem-qui-ducimus-id',	'CORPORATE',	'2020-09-12 07:30:36',	'2020-09-12 07:30:36',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(85,	'Dr. Maximus Bechtelar V',	'Padberg-Gibson',	'http://hand.com/amet-quisquam-omnis-illo-ut-quaerat-ut',	'CORPORATE',	'2020-09-12 07:30:36',	'2020-09-12 07:30:36',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(86,	'Mittie Howe',	'Wintheiser, Shields and Rau',	'https://cormier.com/sed-velit-quia-suscipit-ullam-voluptas-sit.html',	'CORPORATE',	'2020-09-12 07:30:37',	'2020-09-12 07:30:37',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(87,	'Keely Ratke',	'Denesik-Yost',	'http://ebert.com/',	'CORPORATE',	'2020-09-12 07:30:37',	'2020-09-12 07:30:37',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(88,	'Arlo Frami PhD',	'Schroeder-Sauer',	'https://www.kris.biz/incidunt-eius-illo-minima-deleniti-alias',	'CORPORATE',	'2020-09-12 07:30:37',	'2020-09-12 07:30:37',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(89,	'Orpha Reichel Sr.',	'Stark, Shanahan and Weissnat',	'http://weimann.com/',	'CORPORATE',	'2020-09-12 07:30:37',	'2020-09-12 07:30:37',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(90,	'Taurean Morissette II',	'Ward Group',	'http://abshire.biz/consectetur-totam-nulla-illo-cupiditate-molestiae',	'CORPORATE',	'2020-09-12 07:30:37',	'2020-09-12 07:30:37',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(91,	'Mr. Nils Gusikowski IV',	'Braun, Watsica and Hermann',	'http://smith.com/dignissimos-libero-et-consequuntur-suscipit',	'CORPORATE',	'2020-09-12 07:30:38',	'2020-09-12 07:30:38',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(92,	'Mikel Hudson',	'Schamberger LLC',	'http://www.abbott.info/cum-enim-eligendi-sequi-et-exercitationem-libero-totam',	'CORPORATE',	'2020-09-12 07:30:38',	'2020-09-12 07:30:38',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(93,	'Dr. Al Strosin I',	'Blick-Orn',	'http://johnson.org/quas-nobis-suscipit-incidunt-numquam-molestias-assumenda.html',	'CORPORATE',	'2020-09-12 07:30:38',	'2020-09-12 07:30:38',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(94,	'Karina Senger',	'Hessel and Sons',	'https://www.bins.com/qui-sed-amet-itaque-in',	'CORPORATE',	'2020-09-12 07:30:38',	'2020-09-12 07:30:38',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(95,	'Sheridan Balistreri',	'Wuckert, Purdy and Kerluke',	'http://www.mcdermott.com/quos-tempore-est-iure-ducimus-quibusdam-recusandae-provident',	'CORPORATE',	'2020-09-12 07:30:39',	'2020-09-12 07:30:39',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(96,	'Prof. Carson O\'Conner MD',	'Kemmer PLC',	'http://weimann.info/porro-sunt-ex-incidunt-cupiditate-magni-eum.html',	'CORPORATE',	'2020-09-12 07:30:39',	'2020-09-12 07:30:39',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(97,	'Nedra Mohr',	'Ward, McGlynn and Swaniawski',	'http://kulas.info/',	'CORPORATE',	'2020-09-12 07:30:39',	'2020-09-12 07:30:39',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(98,	'Mr. Dudley Cronin',	'Bednar, Rath and Abbott',	'http://www.durgan.org/et-ad-hic-numquam-ut.html',	'CORPORATE',	'2020-09-12 07:30:39',	'2020-09-12 07:30:39',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(99,	'Brionna Kuphal',	'Williamson-Konopelski',	'http://stroman.info/voluptatum-unde-quae-minus-voluptatem-voluptas-laborum-assumenda',	'CORPORATE',	'2020-09-12 07:30:40',	'2020-09-12 07:30:40',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(100,	'Bruce D\'Amore',	'Armstrong Ltd',	'http://www.wiza.com/rerum-tempora-quam-vitae-similique-quidem-illo-optio',	'CORPORATE',	'2020-09-12 07:30:40',	'2020-09-12 07:30:40',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo'),
(101,	'Ms. Geraldine Green',	'Bahringer, Runte and Brekke',	'http://white.com/maxime-totam-vero-tempora-modi-et.html',	'CORPORATE',	'2020-09-12 07:30:41',	'2020-09-12 07:30:41',	'http://placehold.it/1000x600?text=Banner Here',	'http://placehold.it/600x600?text=Logo');

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `menu_items`;
CREATE TABLE `menu_items` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `menu_items_menu_id_foreign` (`menu_id`),
  CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1,	1,	'Dashboard',	'',	'_self',	'voyager-boat',	NULL,	NULL,	1,	'2020-09-02 16:03:30',	'2020-09-02 16:03:30',	'voyager.dashboard',	NULL),
(2,	1,	'Media',	'',	'_self',	'voyager-images',	NULL,	NULL,	5,	'2020-09-02 16:03:31',	'2020-09-02 16:03:31',	'voyager.media.index',	NULL),
(3,	1,	'Users',	'',	'_self',	'voyager-person',	NULL,	NULL,	3,	'2020-09-02 16:03:31',	'2020-09-02 16:03:31',	'voyager.users.index',	NULL),
(4,	1,	'Roles',	'',	'_self',	'voyager-lock',	NULL,	NULL,	2,	'2020-09-02 16:03:31',	'2020-09-02 16:03:31',	'voyager.roles.index',	NULL),
(5,	1,	'Tools',	'',	'_self',	'voyager-tools',	NULL,	NULL,	9,	'2020-09-02 16:03:31',	'2020-09-02 16:03:31',	NULL,	NULL),
(6,	1,	'Menu Builder',	'',	'_self',	'voyager-list',	NULL,	5,	10,	'2020-09-02 16:03:31',	'2020-09-02 16:03:31',	'voyager.menus.index',	NULL),
(7,	1,	'Database',	'',	'_self',	'voyager-data',	NULL,	5,	11,	'2020-09-02 16:03:32',	'2020-09-02 16:03:32',	'voyager.database.index',	NULL),
(8,	1,	'Compass',	'',	'_self',	'voyager-compass',	NULL,	5,	12,	'2020-09-02 16:03:32',	'2020-09-02 16:03:32',	'voyager.compass.index',	NULL),
(9,	1,	'BREAD',	'',	'_self',	'voyager-bread',	NULL,	5,	13,	'2020-09-02 16:03:32',	'2020-09-02 16:03:32',	'voyager.bread.index',	NULL),
(10,	1,	'Settings',	'',	'_self',	'voyager-settings',	NULL,	NULL,	14,	'2020-09-02 16:03:32',	'2020-09-02 16:03:32',	'voyager.settings.index',	NULL),
(11,	1,	'Hooks',	'',	'_self',	'voyager-hook',	NULL,	5,	13,	'2020-09-02 16:03:44',	'2020-09-02 16:03:44',	'voyager.hooks',	NULL),
(12,	1,	'Exhibitors',	'',	'_self',	'voyager-people',	NULL,	NULL,	15,	'2020-09-06 11:54:49',	'2020-09-06 11:54:49',	'voyager.exhibitors.index',	NULL),
(13,	1,	'Videos',	'',	'_self',	'voyager-video',	'#000000',	NULL,	16,	'2020-09-06 12:03:30',	'2020-09-07 04:35:18',	'voyager.videos.index',	'null');

DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1,	'admin',	'2020-09-02 16:03:30',	'2020-09-02 16:03:30');

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'2014_10_12_000000_create_users_table',	1),
(2,	'2014_10_12_100000_create_password_resets_table',	1),
(3,	'2016_01_01_000000_add_voyager_user_fields',	1),
(4,	'2016_01_01_000000_create_data_types_table',	1),
(5,	'2016_05_19_173453_create_menu_table',	1),
(6,	'2016_10_21_190000_create_roles_table',	1),
(7,	'2016_10_21_190000_create_settings_table',	1),
(8,	'2016_11_30_135954_create_permission_table',	1),
(9,	'2016_11_30_141208_create_permission_role_table',	1),
(10,	'2016_12_26_201236_data_types__add__server_side',	1),
(11,	'2017_01_13_000000_add_route_to_menu_items_table',	1),
(12,	'2017_01_14_005015_create_translations_table',	1),
(13,	'2017_01_15_000000_make_table_name_nullable_in_permissions_table',	1),
(14,	'2017_03_06_000000_add_controller_to_data_types_table',	1),
(15,	'2017_04_21_000000_add_order_to_data_rows_table',	1),
(16,	'2017_07_05_210000_add_policyname_to_data_types_table',	1),
(17,	'2017_08_05_000000_add_group_to_settings_table',	1),
(18,	'2017_11_26_013050_add_user_role_relationship',	1),
(19,	'2017_11_26_015000_create_user_roles_table',	1),
(20,	'2018_03_11_000000_add_user_settings',	1),
(21,	'2018_03_14_000000_add_details_to_data_types_table',	1),
(22,	'2018_03_16_000000_make_settings_value_nullable',	1),
(23,	'2019_08_19_000000_create_failed_jobs_table',	1);

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_permission_id_index` (`permission_id`),
  KEY `permission_role_role_id_index` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1,	1),
(1,	2),
(2,	1),
(3,	1),
(4,	1),
(4,	2),
(5,	1),
(6,	1),
(7,	1),
(8,	1),
(9,	1),
(10,	1),
(11,	1),
(12,	1),
(13,	1),
(14,	1),
(15,	1),
(16,	1),
(16,	2),
(17,	1),
(17,	2),
(18,	1),
(19,	1),
(20,	1),
(21,	1),
(22,	1),
(23,	1),
(24,	1),
(25,	1),
(26,	1),
(27,	1),
(27,	2),
(28,	1),
(28,	2),
(29,	1),
(29,	2),
(30,	1),
(30,	2),
(31,	1),
(31,	2),
(32,	1),
(32,	2),
(33,	1),
(33,	2),
(34,	1),
(34,	2),
(35,	1),
(35,	2),
(36,	1),
(36,	2);

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_key_index` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1,	'browse_admin',	NULL,	'2020-09-02 16:03:33',	'2020-09-02 16:03:33'),
(2,	'browse_bread',	NULL,	'2020-09-02 16:03:33',	'2020-09-02 16:03:33'),
(3,	'browse_database',	NULL,	'2020-09-02 16:03:33',	'2020-09-02 16:03:33'),
(4,	'browse_media',	NULL,	'2020-09-02 16:03:33',	'2020-09-02 16:03:33'),
(5,	'browse_compass',	NULL,	'2020-09-02 16:03:33',	'2020-09-02 16:03:33'),
(6,	'browse_menus',	'menus',	'2020-09-02 16:03:33',	'2020-09-02 16:03:33'),
(7,	'read_menus',	'menus',	'2020-09-02 16:03:34',	'2020-09-02 16:03:34'),
(8,	'edit_menus',	'menus',	'2020-09-02 16:03:34',	'2020-09-02 16:03:34'),
(9,	'add_menus',	'menus',	'2020-09-02 16:03:34',	'2020-09-02 16:03:34'),
(10,	'delete_menus',	'menus',	'2020-09-02 16:03:34',	'2020-09-02 16:03:34'),
(11,	'browse_roles',	'roles',	'2020-09-02 16:03:34',	'2020-09-02 16:03:34'),
(12,	'read_roles',	'roles',	'2020-09-02 16:03:34',	'2020-09-02 16:03:34'),
(13,	'edit_roles',	'roles',	'2020-09-02 16:03:35',	'2020-09-02 16:03:35'),
(14,	'add_roles',	'roles',	'2020-09-02 16:03:35',	'2020-09-02 16:03:35'),
(15,	'delete_roles',	'roles',	'2020-09-02 16:03:35',	'2020-09-02 16:03:35'),
(16,	'browse_users',	'users',	'2020-09-02 16:03:35',	'2020-09-02 16:03:35'),
(17,	'read_users',	'users',	'2020-09-02 16:03:36',	'2020-09-02 16:03:36'),
(18,	'edit_users',	'users',	'2020-09-02 16:03:36',	'2020-09-02 16:03:36'),
(19,	'add_users',	'users',	'2020-09-02 16:03:36',	'2020-09-02 16:03:36'),
(20,	'delete_users',	'users',	'2020-09-02 16:03:36',	'2020-09-02 16:03:36'),
(21,	'browse_settings',	'settings',	'2020-09-02 16:03:36',	'2020-09-02 16:03:36'),
(22,	'read_settings',	'settings',	'2020-09-02 16:03:36',	'2020-09-02 16:03:36'),
(23,	'edit_settings',	'settings',	'2020-09-02 16:03:36',	'2020-09-02 16:03:36'),
(24,	'add_settings',	'settings',	'2020-09-02 16:03:37',	'2020-09-02 16:03:37'),
(25,	'delete_settings',	'settings',	'2020-09-02 16:03:37',	'2020-09-02 16:03:37'),
(26,	'browse_hooks',	NULL,	'2020-09-02 16:03:44',	'2020-09-02 16:03:44'),
(27,	'browse_exhibitors',	'exhibitors',	'2020-09-06 11:54:48',	'2020-09-06 11:54:48'),
(28,	'read_exhibitors',	'exhibitors',	'2020-09-06 11:54:48',	'2020-09-06 11:54:48'),
(29,	'edit_exhibitors',	'exhibitors',	'2020-09-06 11:54:48',	'2020-09-06 11:54:48'),
(30,	'add_exhibitors',	'exhibitors',	'2020-09-06 11:54:48',	'2020-09-06 11:54:48'),
(31,	'delete_exhibitors',	'exhibitors',	'2020-09-06 11:54:48',	'2020-09-06 11:54:48'),
(32,	'browse_videos',	'videos',	'2020-09-06 12:03:29',	'2020-09-06 12:03:29'),
(33,	'read_videos',	'videos',	'2020-09-06 12:03:29',	'2020-09-06 12:03:29'),
(34,	'edit_videos',	'videos',	'2020-09-06 12:03:29',	'2020-09-06 12:03:29'),
(35,	'add_videos',	'videos',	'2020-09-06 12:03:29',	'2020-09-06 12:03:29'),
(36,	'delete_videos',	'videos',	'2020-09-06 12:03:29',	'2020-09-06 12:03:29');

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1,	'admin',	'Administrator',	'2020-09-02 16:03:32',	'2020-09-02 16:03:32'),
(2,	'user',	'Normal User',	'2020-09-02 16:03:33',	'2020-09-02 16:03:33');

DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1,	'site.title',	'Site Title',	'Site Title',	'',	'text',	1,	'Site'),
(2,	'site.description',	'Site Description',	'Site Description',	'',	'text',	2,	'Site'),
(3,	'site.logo',	'Site Logo',	'',	'',	'image',	3,	'Site'),
(4,	'site.google_analytics_tracking_id',	'Google Analytics Tracking ID',	NULL,	'',	'text',	4,	'Site'),
(5,	'admin.bg_image',	'Admin Background Image',	'',	'',	'image',	5,	'Admin'),
(6,	'admin.title',	'Admin Title',	'Food Festival',	'',	'text',	1,	'Admin'),
(7,	'admin.description',	'Admin Description',	'Re-imagining tourism and food experiences',	'',	'text',	2,	'Admin'),
(8,	'admin.loader',	'Admin Loader',	'',	'',	'image',	3,	'Admin'),
(9,	'admin.icon_image',	'Admin Icon Image',	'settings/September2020/Y0vO1VS9OgDyM4KCRveH.png',	'',	'image',	4,	'Admin'),
(10,	'admin.google_analytics_client_id',	'Google Analytics Client ID (used for admin dashboard)',	NULL,	'',	'text',	1,	'Admin');

DROP TABLE IF EXISTS `translations`;
CREATE TABLE `translations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int unsigned NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `user_roles_user_id_index` (`user_id`),
  KEY `user_roles_role_id_index` (`role_id`),
  CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `role_id` bigint unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1,	1,	'Nelson Ameyo',	'nelson@sodium.co.ke',	'users/default.png',	NULL,	'$2y$10$pcwlAyrRfKqd6i88o8ojOOLylPuZbSvOo7DoqaQJB5WaES5aVy9oG',	NULL,	NULL,	'2020-09-02 16:06:40',	'2020-09-02 16:06:40'),
(2,	2,	'Food Lover',	'growthpad@irenkenya.com',	'users/default.png',	NULL,	'$2y$10$yR4eezgEISSqzlMk9/34u.G05/8wt6d4rUszLXo1C/eyrzSUhWmAq',	NULL,	'{\"locale\":\"en\"}',	'2020-09-06 12:07:51',	'2020-09-06 12:38:14');

DROP TABLE IF EXISTS `videos`;
CREATE TABLE `videos` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` int DEFAULT NULL,
  `description` int DEFAULT NULL,
  `link` int DEFAULT NULL,
  `published_at` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- 2020-09-15 19:14:31
