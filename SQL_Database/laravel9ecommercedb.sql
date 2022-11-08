/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.3.9-MariaDB : Database - laravel9ecommercedb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`laravel9ecommercedb` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `laravel9ecommercedb`;

/*Table structure for table `categories` */

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_name_unique` (`name`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `categories` */

insert  into `categories`(`id`,`name`,`slug`,`created_at`,`updated_at`) values (1,'eum sint','eum-sint','2022-11-02 09:58:53','2022-11-02 09:58:53'),(2,'laudantium suscipit','laudantium-suscipit','2022-11-02 09:58:53','2022-11-02 09:58:53'),(3,'exercitationem sapiente','exercitationem-sapiente','2022-11-02 09:58:53','2022-11-02 09:58:53'),(4,'totam optio','totam-optio','2022-11-02 09:58:53','2022-11-02 09:58:53'),(5,'vel voluptatibus','vel-voluptatibus','2022-11-02 09:58:53','2022-11-02 09:58:53'),(6,'ex odio','ex-odio','2022-11-02 09:58:53','2022-11-02 09:58:53');

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2022_11_02_072602_create_categories_table',1),(6,'2022_11_02_072642_create_products_table',1);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `regular_price` decimal(8,2) NOT NULL,
  `sale_price` decimal(8,2) DEFAULT NULL,
  `SKU` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock_status` enum('instock','outofstock') COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) unsigned NOT NULL DEFAULT 10,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_name_unique` (`name`),
  UNIQUE KEY `products_slug_unique` (`slug`),
  KEY `products_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `products` */

insert  into `products`(`id`,`name`,`slug`,`short_description`,`description`,`regular_price`,`sale_price`,`SKU`,`stock_status`,`featured`,`quantity`,`image`,`images`,`category_id`,`created_at`,`updated_at`) values (1,'ex dolores consectetur assumenda sed et','ex-dolores-consectetur-assumenda-sed-et','Ratione hic amet qui officia. Eaque quaerat saepe quae. Provident alias ab et.','Dolorem dicta quod voluptatem quos aut atque quia. At alias qui odit iure quis accusantium minima enim. Ut minus accusantium in possimus qui. Tenetur vel omnis in sequi magnam sapiente. Non magni pariatur vitae accusantium optio est esse aspernatur. Ut facilis et in et sed libero. Ad cumque commodi accusamus molestiae. Eius soluta ut et ad rem. Tenetur sed tempore dicta voluptatum. Amet iste et beatae voluptatem facere aliquid eos.','29.00',NULL,'PRD42','instock',0,36,'product-7',NULL,2,'2022-11-02 10:02:15','2022-11-02 10:02:15'),(2,'ut amet suscipit ut voluptatibus aut','ut-amet-suscipit-ut-voluptatibus-aut','Aut unde nam earum aperiam. Voluptatem natus deserunt mollitia voluptatem. Praesentium at error soluta eaque inventore ipsam.','Saepe soluta autem nostrum voluptas molestias non. Ut repellendus tempore quidem voluptatem nemo commodi. Libero earum necessitatibus quia delectus enim reprehenderit dolorem. Illum est laborum et temporibus sit et. Architecto est qui nesciunt est. Aperiam mollitia voluptatem reiciendis nihil et. Ut dolore velit a illo odio soluta. Sint quisquam aut amet qui unde rerum. Eos et sunt aut iure. Libero possimus facilis perferendis omnis.','347.00',NULL,'PRD245','instock',0,30,'product-5',NULL,2,'2022-11-02 10:02:15','2022-11-02 10:02:15'),(3,'dolores omnis quia autem numquam necessitatibus','dolores-omnis-quia-autem-numquam-necessitatibus','Illum molestiae doloribus eos. Voluptatibus odit vitae tempora et optio et dolor dolores. Adipisci similique sed exercitationem culpa vero dolorem necessitatibus. Aliquam et sequi modi nihil.','Voluptas consequuntur unde est a inventore. Non provident dignissimos consequuntur. Debitis minima optio necessitatibus labore. Rerum enim alias nam dolorum fuga velit odit. Sunt et commodi doloremque. Consequatur non veniam consequuntur eaque recusandae. Non quia vero aperiam et ratione numquam officiis voluptates. Voluptas quia porro et aut eum tempore. Ut sit et quia eos porro. Est assumenda earum et iusto qui facere nihil. Autem iste assumenda nostrum neque soluta necessitatibus.','96.00',NULL,'PRD415','instock',0,46,'product-4',NULL,4,'2022-11-02 10:02:15','2022-11-02 10:02:15'),(4,'omnis voluptatum odio laudantium magni nisi','omnis-voluptatum-odio-laudantium-magni-nisi','A sit deserunt ut placeat alias minus esse cumque. Quibusdam sit dignissimos qui in.','Et adipisci saepe ea dolore optio qui porro. Sunt voluptatem ullam officiis officia consequatur incidunt. Consequatur libero ut et voluptas architecto tempore assumenda consequatur. Sunt sed officiis cumque excepturi quod quo adipisci. Ea ut rerum voluptate est reiciendis repellendus. Aliquam deserunt impedit aut atque inventore molestiae rerum. Est eveniet et nihil maiores ut sit. Eveniet ipsam sed id ut et dolorem molestiae. Animi commodi ut voluptatibus.','172.00',NULL,'PRD172','instock',0,43,'product-11',NULL,2,'2022-11-02 10:02:15','2022-11-02 10:02:15'),(5,'sed inventore facere sunt modi quisquam','sed-inventore-facere-sunt-modi-quisquam','Repellendus ut quia dolor magni. Alias sed modi amet dolore corporis ea. Qui et ab dolor nemo. Delectus quia sint nihil aliquid qui.','Delectus laborum veniam deserunt ex quia. Omnis nihil quibusdam excepturi qui esse natus facere. Officiis nam quia est doloremque molestiae architecto. Praesentium eius numquam pariatur sint qui in quia. Est et impedit est omnis ad quia repellat. Est et maiores nobis quae cum iste facilis. Tempore sed ea qui voluptatum id.','283.00',NULL,'PRD120','instock',0,21,'product-13',NULL,5,'2022-11-02 10:02:15','2022-11-02 10:02:15'),(6,'temporibus asperiores quasi quas qui nisi','temporibus-asperiores-quasi-quas-qui-nisi','Dolore tenetur amet eos. Accusantium quos neque qui reprehenderit. Voluptatem quis sit molestias voluptates tempore.','Quisquam non sed nulla fuga quidem sed. Repellat est et aut error excepturi. Debitis numquam et impedit beatae velit consectetur. Aspernatur nihil impedit aut delectus similique quo. Nihil et nobis eum aut voluptatum illo aliquid. Nam est quaerat tempore quidem. Enim libero rerum nam voluptatum reiciendis deserunt. Cumque id perspiciatis at. Molestiae ut non eius cumque. Quia consequatur quis et. Animi ratione qui at dolores accusantium quis harum magni.','173.00',NULL,'PRD150','instock',0,48,'product-10',NULL,2,'2022-11-02 10:02:15','2022-11-02 10:02:15'),(7,'recusandae rerum qui id aliquid perferendis','recusandae-rerum-qui-id-aliquid-perferendis','Est in placeat praesentium ut harum. Temporibus vel tempora illo possimus. Debitis magni explicabo inventore eveniet occaecati maiores. Doloremque repellendus maxime dolores ut non dolores autem.','Eos quia id unde ullam. Voluptatem earum sint aliquid ipsa voluptas. Minus dignissimos aut quaerat ut non quia unde. Et impedit ut ut dolore. Veritatis dolores quaerat nesciunt vel nobis dolor magnam in. Et ut omnis molestias sint minus similique expedita. Quos fugiat possimus voluptatem mollitia eos. Eos quasi explicabo et nihil corrupti id aspernatur. Dolorem veniam laudantium reprehenderit sed ut at quisquam.','216.00',NULL,'PRD416','instock',0,10,'product-11',NULL,1,'2022-11-02 10:02:15','2022-11-02 10:02:15'),(8,'facilis sed aut et molestiae exercitationem','facilis-sed-aut-et-molestiae-exercitationem','Voluptas blanditiis nesciunt odit voluptatem quasi natus. At atque impedit ad ad in debitis reiciendis. Minima sed modi architecto. Quia itaque qui nemo quisquam ullam blanditiis vitae.','At nulla voluptatum excepturi doloribus dolorem accusamus. Debitis qui nesciunt error nostrum. Officia perferendis consectetur sit occaecati amet dolor voluptas sit. Possimus enim incidunt et quam eos assumenda nesciunt. Et et dolores sed omnis. Dignissimos consequatur et tempora mollitia. Doloribus et incidunt eum veniam consequuntur. Et pariatur accusamus incidunt ut ut nam ducimus et. Aut magnam omnis alias quis non iusto fuga. Deleniti sed tempora voluptatem labore in minus.','136.00',NULL,'PRD197','instock',0,18,'product-2',NULL,5,'2022-11-02 10:02:15','2022-11-02 10:02:15'),(9,'aliquid ipsa ut qui et quo','aliquid-ipsa-ut-qui-et-quo','Reiciendis voluptatem praesentium est quidem sunt nesciunt. Quae dolorum asperiores modi eum eum facere est. Cumque provident rerum nobis. Sit cumque sint quia ab saepe inventore.','Cumque unde suscipit ut facere. Quis vitae velit eum nam sed neque expedita. Ad nesciunt quasi est similique eum perspiciatis. Odio eum ipsam fugiat error ut ut dolores. Beatae ratione quam commodi eum velit. Qui sunt incidunt atque qui sunt provident voluptatem. Ea dolores ullam fugiat omnis omnis enim reprehenderit. Hic autem numquam quidem placeat fugit non. Laboriosam cupiditate consequatur eius minus occaecati.','445.00',NULL,'PRD283','instock',0,10,'product-7',NULL,2,'2022-11-02 10:02:15','2022-11-02 10:02:15'),(10,'soluta sed blanditiis occaecati nisi impedit','soluta-sed-blanditiis-occaecati-nisi-impedit','Fugit consequatur aut molestiae quas iusto aut. Illum praesentium dicta distinctio minima sint placeat adipisci.','Aut eum laborum culpa debitis. Blanditiis fuga sint est qui saepe. Qui quasi inventore voluptatem omnis sit. Ut eligendi aut similique et rerum. Et repellendus consequatur quas distinctio similique excepturi nihil. Et alias accusamus tempore illum facere nesciunt voluptate. Delectus incidunt et ab odio necessitatibus et. Harum quam velit id earum harum.','340.00',NULL,'PRD256','instock',0,50,'product-11',NULL,1,'2022-11-02 10:02:15','2022-11-02 10:02:15'),(11,'quod eligendi maxime pariatur aliquam tempore','quod-eligendi-maxime-pariatur-aliquam-tempore','Consequatur repellendus aut aut velit cumque nihil est. Mollitia est distinctio blanditiis laudantium non molestiae. Illum sint ducimus necessitatibus dolorum.','Illo eligendi labore eveniet optio excepturi. Dolorum at non dolorem et magnam. Et eum nulla reiciendis. Nemo quo porro sunt eum dolor ratione dolorum quas. Aut facilis repudiandae cumque facilis. Sint ea fugit neque. Recusandae porro explicabo quas vel. Id optio amet magni repellendus ipsam aut et. Ipsam ut mollitia pariatur labore nihil ut. Rerum et aut voluptas ut. Aliquam aliquid suscipit mollitia consequatur voluptatibus. Id ut aut perspiciatis quidem est earum officia dolorem.','312.00',NULL,'PRD231','instock',0,18,'product-14',NULL,3,'2022-11-02 10:02:15','2022-11-02 10:02:15'),(12,'aspernatur rerum rerum vero quod provident','aspernatur-rerum-rerum-vero-quod-provident','Ipsam mollitia aliquam ipsum qui optio nesciunt. Eius inventore architecto consequatur dolores ea voluptatem omnis et.','In voluptatem provident aut enim pariatur ut iste deserunt. Maiores quaerat architecto amet ducimus eos. Fugit rerum porro quia nemo. Libero inventore repellendus eveniet. Fugit quod rerum repudiandae fugit est. Aspernatur sint voluptatem enim vel esse enim. Aperiam omnis quo quo. Quidem totam debitis voluptas culpa iure. Adipisci expedita velit ut praesentium quos cupiditate iusto.','477.00',NULL,'PRD186','instock',0,43,'product-6',NULL,3,'2022-11-02 10:02:15','2022-11-02 10:02:15'),(13,'illum cumque eum corrupti id accusantium','illum-cumque-eum-corrupti-id-accusantium','Fugit commodi et molestiae eligendi consequatur fugit fuga. Maxime occaecati omnis possimus.','Quae laudantium minus veritatis porro. Totam expedita maiores vel corrupti ut id. Rerum ipsa reprehenderit deserunt distinctio. Qui modi temporibus iste similique et. Nihil eos quae quia veniam occaecati eum atque. Est rerum deleniti maxime recusandae officiis dolorem. Reprehenderit voluptate necessitatibus rerum aut.','69.00',NULL,'PRD331','instock',0,18,'product-13',NULL,4,'2022-11-02 10:02:15','2022-11-02 10:02:15'),(14,'odit quia ullam qui nostrum aliquam','odit-quia-ullam-qui-nostrum-aliquam','Voluptatum provident fugit repudiandae provident. Earum at esse accusantium est provident perferendis. Eaque repellat natus praesentium.','Voluptatum blanditiis blanditiis officiis sapiente voluptatem dolorem. Omnis et qui iste praesentium ea blanditiis aut. Et autem totam iusto ab. Dolor cumque eos magnam deserunt fugit asperiores. Voluptas possimus voluptatem et aut. Sint deleniti voluptate beatae ipsam. Eligendi eaque sit autem fugiat quas. Repudiandae aut repellendus repudiandae. Blanditiis sapiente autem sint tempore id deleniti. Aut non distinctio aut accusamus. Architecto numquam numquam non placeat maiores eaque.','245.00',NULL,'PRD258','instock',0,47,'product-10',NULL,4,'2022-11-02 10:02:15','2022-11-02 10:02:15'),(15,'ut non quis accusantium quod sint','ut-non-quis-accusantium-quod-sint','Voluptatem aut et quia ratione deserunt quas. Facere eveniet harum repellendus eum dolores. Unde voluptatem repellendus accusamus illo nam.','Animi eius et praesentium rem ex exercitationem. Et facilis vel totam iusto doloremque. Nobis qui aut veniam odit deserunt qui quisquam voluptas. Earum animi molestiae neque. Placeat in hic est molestiae. Aperiam recusandae maiores quae qui beatae. Quia autem eligendi doloremque ut ut dolore. Fugiat esse ducimus aut est autem error nobis. Rerum at quia vel qui. Iusto nesciunt quasi nihil enim. Blanditiis adipisci corrupti quas est ex.','276.00',NULL,'PRD383','instock',0,44,'product-10',NULL,2,'2022-11-02 10:02:15','2022-11-02 10:02:15'),(16,'et voluptatem non distinctio deleniti quia','et-voluptatem-non-distinctio-deleniti-quia','Eius qui quis esse voluptatem. Et inventore rerum velit explicabo velit quisquam ab veritatis. Maxime a unde suscipit dolore. Cupiditate beatae odio inventore itaque facere nam et itaque.','Dolorem fuga nostrum aliquid nobis. Quidem quae impedit libero quibusdam atque. Numquam ut suscipit eum voluptas cum veritatis. Fuga illum voluptatum sit. Consequatur ut enim commodi dolores et ut sunt. Est placeat et eaque minus voluptas est consequatur. Officiis nulla aut sit ea quidem. Sequi ipsam dolorem placeat. Magnam eaque quis doloribus porro inventore. Est impedit aperiam numquam est. Fugit sit eveniet vel. Quod temporibus dignissimos soluta totam atque.','329.00',NULL,'PRD328','instock',0,42,'product-15',NULL,3,'2022-11-02 10:02:15','2022-11-02 10:02:15');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `utype` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USR' COMMENT 'ADM for admin and USR for normal user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`utype`,`remember_token`,`created_at`,`updated_at`) values (1,'admin','admin@mail.com',NULL,'$2y$10$kSQgj.BUhIBXSU1V05kWv.ZFsazhTi7ZoF9rfikabbWOS7AD03BEq','ADM',NULL,'2022-11-02 09:21:26','2022-11-02 09:21:26'),(2,'user','user@gmail.com',NULL,'$2y$10$U0ju1q47Sq02fqiUQoUeUO8FlXKoIJXGUTGdTTSKcIaMRmdnvC1Q.','USR',NULL,'2022-11-02 09:26:08','2022-11-02 09:26:08');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
