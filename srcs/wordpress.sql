-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 09, 2020 at 08:14 AM
-- Server version: 10.3.22-MariaDB-0+deb10u1
-- PHP Version: 7.3.19-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wordpress`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress', 'yes'),
(2, 'home', 'http://localhost/wordpress', 'yes'),
(3, 'blogname', 'ft_server', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'alexanderbellor18@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:67:\"favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:62:\"/var/www/html/wordpress/wp-content/plugins/akismet/akismet.php\";i:1;s:67:\"/var/www/html/wordpress/wp-content/themes/twentyseventeen/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'twentyseventeen', 'yes'),
(41, 'stylesheet', 'twentyseventeen', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:4:{i:2;a:4:{s:5:\"title\";s:20:\"Acerca de este sitio\";s:4:\"text\";s:108:\"Este puede ser un buen lugar para presentarte a ti mismo y a tu sitio o para incluir algunas acreditaciones.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:13:\"Encuéntranos\";s:4:\"text\";s:161:\"<strong>Dirección</strong>\nCalle Principal, 123\nMadrid, 28000\n\n<strong>Horas</strong>\nLunes a viernes: de 9:00 a 17:00 h.\nSábado y domingo: de 11:00 a 15:00 h.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;i:5;a:4:{s:5:\"title\";s:2:\"42\";s:4:\"text\";s:254:\"42 is a private, nonprofit and tuition-free computer programming school created and funded by French billionaire Xavier Niel with several partners including Nicolas Sadirac, Kwame Yamgnane and Florian Bucher. The school was first opened in Paris in 2013.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1599090027', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'es_ES', 'yes'),
(98, 'widget_search', 'a:3:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;i:4;a:0:{}}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:15:{i:0;s:10:\"calendar-3\";i:1;s:8:\"search-4\";i:2;s:6:\"text-5\";i:3;s:10:\"nav_menu-3\";i:4;s:10:\"nav_menu-5\";i:5;s:10:\"archives-2\";i:6;s:6:\"meta-2\";i:7;s:8:\"search-2\";i:8;s:6:\"text-2\";i:9;s:6:\"text-3\";i:10;s:12:\"categories-2\";i:11;s:14:\"recent-posts-2\";i:12;s:17:\"recent-comments-2\";i:13;s:13:\"media_audio-3\";i:14;s:13:\"media_audio-4\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:8:{i:1594284030;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1594294830;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1594338030;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1594338034;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1594338036;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1594368717;a:1:{s:23:\"fbrfg_check_for_updates\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1594658155;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:2:{s:12:\"_multiwidget\";i:1;i:3;a:0:{}}', 'yes'),
(107, 'widget_media_audio', 'a:3:{s:12:\"_multiwidget\";i:1;i:3;a:10:{s:7:\"preload\";s:4:\"none\";s:4:\"loop\";b:0;s:3:\"mp3\";s:0:\"\";s:3:\"ogg\";s:0:\"\";s:4:\"flac\";s:0:\"\";s:3:\"m4a\";s:0:\"\";s:3:\"wav\";s:0:\"\";s:13:\"attachment_id\";i:0;s:3:\"url\";s:0:\"\";s:5:\"title\";s:14:\"lññlñklñkl\";}i:4;a:10:{s:7:\"preload\";s:4:\"none\";s:4:\"loop\";b:0;s:3:\"mp3\";s:0:\"\";s:3:\"ogg\";s:0:\"\";s:4:\"flac\";s:0:\"\";s:3:\"m4a\";s:0:\"\";s:3:\"wav\";s:0:\"\";s:13:\"attachment_id\";i:0;s:3:\"url\";s:0:\"\";s:5:\"title\";s:9:\"asffasafs\";}}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:4:{s:12:\"_multiwidget\";i:1;i:3;a:2:{s:5:\"title\";s:5:\"LOGIN\";s:8:\"nav_menu\";i:5;}i:5;a:2:{s:5:\"title\";s:4:\"Loin\";s:8:\"nav_menu\";i:5;}i:6;a:2:{s:5:\"title\";s:5:\"LOGIN\";s:8:\"nav_menu\";i:5;}}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(135, 'theme_mods_twentytwenty', 'a:15:{s:18:\"custom_css_post_id\";i:49;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:0;s:8:\"expanded\";i:0;s:6:\"social\";i:0;}s:16:\"background_color\";s:6:\"1e73be\";s:11:\"retina_logo\";b:0;s:24:\"accent_accessible_colors\";a:2:{s:7:\"content\";a:5:{s:4:\"text\";s:7:\"#ffffff\";s:6:\"accent\";s:7:\"#fcf2f4\";s:10:\"background\";s:7:\"#1e73be\";s:7:\"borders\";s:7:\"#2a8adf\";s:9:\"secondary\";s:7:\"#ffffff\";}s:13:\"header-footer\";a:5:{s:4:\"text\";s:7:\"#000000\";s:6:\"accent\";s:7:\"#e22658\";s:10:\"background\";s:7:\"#ffffff\";s:7:\"borders\";s:7:\"#dbdbdb\";s:9:\"secondary\";s:7:\"#6d6d6d\";}}s:30:\"header_footer_background_color\";s:7:\"#ffffff\";s:20:\"enable_header_search\";b:0;s:15:\"show_author_bio\";b:0;s:12:\"blog_content\";s:4:\"full\";s:31:\"cover_template_fixed_background\";b:0;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1586120725;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:13:\"media_audio-3\";i:9;s:13:\"media_audio-4\";}s:9:\"sidebar-1\";a:1:{i:0;s:6:\"text-5\";}s:9:\"sidebar-2\";a:0:{}}}s:17:\"accent_hue_active\";s:7:\"default\";s:10:\"accent_hue\";i:344;s:30:\"cover_template_overlay_opacity\";i:40;s:39:\"cover_template_overlay_background_color\";s:7:\"#ffe5e5\";}', 'yes'),
(136, 'ftp_credentials', 'a:3:{s:8:\"hostname\";s:9:\"localhost\";s:8:\"username\";s:6:\"kriosfu\";s:15:\"connection_type\";s:3:\"ftp\";}', 'yes'),
(142, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(163, 'current_theme', 'Twenty Seventeen', 'yes'),
(164, 'theme_mods_draco', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1583587461;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:8:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}}}}', 'yes'),
(165, 'theme_switched', '', 'yes'),
(175, 'db_upgraded', '', 'yes'),
(183, 'can_compress_scripts', '1', 'no'),
(188, 'theme_mods_twentyseventeen', 'a:7:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:6:\"social\";i:0;}s:21:\"external_header_video\";s:43:\"https://www.youtube.com/watch?v=jfVBrpIhH60\";s:12:\"header_image\";s:13:\"remove-header\";s:16:\"header_textcolor\";s:6:\"ffd400\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1594201489;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:13:\"media_audio-3\";i:9;s:13:\"media_audio-4\";}s:9:\"sidebar-1\";a:1:{i:0;s:10:\"nav_menu-6\";}s:9:\"sidebar-2\";a:0:{}}}s:11:\"colorscheme\";s:5:\"light\";}', 'yes'),
(191, 'theme_switched_via_customizer', '', 'yes'),
(192, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(202, 'category_children', 'a:0:{}', 'yes'),
(209, 'recently_activated', 'a:0:{}', 'yes'),
(225, '_site_transient_timeout_php_check_3a2d9985cedb197b672d242e982a58e6', '1594806236', 'no'),
(226, '_site_transient_php_check_3a2d9985cedb197b672d242e982a58e6', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(227, '_transient_health-check-site-status-result', '{\"good\":\"8\",\"recommended\":\"8\",\"critical\":\"1\"}', 'yes'),
(228, '_site_transient_timeout_browser_127ed807c83bddfe23771a7ab852f4ee', '1594806253', 'no'),
(229, '_site_transient_browser_127ed807c83bddfe23771a7ab852f4ee', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.106\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(241, 'theme_mods_popularis-hub', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1594201522;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:10:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:6:\"text-2\";i:4;s:6:\"text-3\";i:5;s:12:\"categories-2\";i:6;s:14:\"recent-posts-2\";i:7;s:17:\"recent-comments-2\";i:8;s:13:\"media_audio-3\";i:9;s:13:\"media_audio-4\";}s:9:\"sidebar-1\";a:1:{i:0;s:10:\"nav_menu-6\";}s:9:\"sidebar-2\";a:0:{}}}}', 'yes'),
(250, '_site_transient_timeout_popular_importers_ceb7249fb574fcbd58a2b5dcc05498d8', '1594374834', 'no'),
(251, '_site_transient_popular_importers_ceb7249fb574fcbd58a2b5dcc05498d8', 'a:2:{s:9:\"importers\";a:7:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:54:\"Import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:10:\"wp-cat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:46:\"Import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:62:\"Import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:30:\"Import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:53:\"Import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"wordpress\";a:4:{s:4:\"name\";s:9:\"WordPress\";s:11:\"description\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a WordPress export file.\";s:11:\"plugin-slug\";s:18:\"wordpress-importer\";s:11:\"importer-id\";s:9:\"wordpress\";}}s:10:\"translated\";b:0;}', 'no'),
(262, '_site_transient_timeout_theme_roots', '1594284008', 'no'),
(263, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(269, '_site_transient_timeout_browser_20ba8d8c98eda12a8b12bec244469bcf', '1594887044', 'no'),
(270, '_site_transient_browser_20ba8d8c98eda12a8b12bec244469bcf', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:6:\"12.1.1\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(271, '_transient_timeout_dash_v2_c05853b002c443ec8e57ff884f56cdde', '1594325444', 'no'),
(272, '_transient_dash_v2_c05853b002c443ec8e57ff884f56cdde', '<div class=\"rss-widget\"><ul><li>Ha ocurrido un error que, probablemente, implique que se ha caído el feed. Prueba de nuevo más tarde.</li></ul></div><div class=\"rss-widget\"><ul><li>Ha ocurrido un error que, probablemente, implique que se ha caído el feed. Prueba de nuevo más tarde.</li></ul></div>', 'no'),
(273, '_site_transient_timeout_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', '1594325445', 'no'),
(274, '_site_transient_community-events-e2f2ed925cc0dc7eddd67ec58c0404fa', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}s:6:\"events\";a:1:{i:0;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:54:\"Prototipar en Figma para desarrollar en WordPress 💙\";s:3:\"url\";s:57:\"https://www.meetup.com/Wordpress-Grinon/events/271751600/\";s:6:\"meetup\";s:17:\"WordPress Griñon\";s:10:\"meetup_url\";s:40:\"https://www.meetup.com/Wordpress-Grinon/\";s:4:\"date\";s:19:\"2020-07-23 19:00:00\";s:8:\"end_date\";s:19:\"2020-07-23 21:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"ES\";s:8:\"latitude\";d:40.209999084473;s:9:\"longitude\";d:-3.8599998950958;}}}}', 'no'),
(275, '_transient_is_multi_author', '0', 'yes'),
(276, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1594293099', 'no'),
(277, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4709;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4218;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2674;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2560;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1966;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1813;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1793;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1486;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1477;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1477;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1452;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1437;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1430;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1305;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1205;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1198;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1133;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1127;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1099;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:999;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:884;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:878;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:877;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:876;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:789;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:783;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:776;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:775;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:769;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:750;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:732;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:719;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:718;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:699;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:693;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:662;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:661;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:656;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:655;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:648;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:632;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:628;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:595;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:587;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:581;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:580;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:578;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:572;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:558;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:552;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:550;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:550;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:541;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:538;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:531;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:524;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:517;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:515;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:515;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:508;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:507;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:503;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:494;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:490;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:478;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:478;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:470;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:446;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:440;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:438;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:433;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:433;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:431;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:430;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:423;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:421;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:413;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:409;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:408;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:402;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:399;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:398;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:392;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:388;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:379;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:377;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:377;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:376;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:373;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:371;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:367;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:363;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:363;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:359;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:357;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:350;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:346;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:342;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:339;}s:6:\"import\";a:3:{s:4:\"name\";s:6:\"import\";s:4:\"slug\";s:6:\"import\";s:5:\"count\";i:338;}}', 'no'),
(279, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.4.2.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.4.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.2\";s:7:\"version\";s:5:\"5.4.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1594282315;s:15:\"version_checked\";s:5:\"5.4.2\";s:12:\"translations\";a:0:{}}', 'no'),
(280, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1594282316;s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.1.5\";s:67:\"favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php\";s:6:\"1.3.18\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.2\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:67:\"favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:45:\"w.org/plugins/favicon-by-realfavicongenerator\";s:4:\"slug\";s:31:\"favicon-by-realfavicongenerator\";s:6:\"plugin\";s:67:\"favicon-by-realfavicongenerator/favicon-by-realfavicongenerator.php\";s:11:\"new_version\";s:6:\"1.3.18\";s:3:\"url\";s:62:\"https://wordpress.org/plugins/favicon-by-realfavicongenerator/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/favicon-by-realfavicongenerator.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:83:\"https://ps.w.org/favicon-by-realfavicongenerator/assets/icon-256x256.png?rev=972314\";s:2:\"1x\";s:83:\"https://ps.w.org/favicon-by-realfavicongenerator/assets/icon-128x128.png?rev=972314\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:87:\"https://ps.w.org/favicon-by-realfavicongenerator/assets/banner-1544x500.png?rev=1110918\";s:2:\"1x\";s:86:\"https://ps.w.org/favicon-by-realfavicongenerator/assets/banner-772x250.png?rev=1110918\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(281, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1594282316;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:2:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.6.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(144, 38, '_wp_attached_file', '2020/03/descarga-8.png'),
(145, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:199;s:6:\"height\";i:199;s:4:\"file\";s:22:\"2020/03/descarga-8.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(146, 38, '_wp_attachment_is_custom_background', 'twentytwenty'),
(147, 40, '_wp_attached_file', '2020/03/libft.png'),
(148, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:206;s:6:\"height\";i:170;s:4:\"file\";s:17:\"2020/03/libft.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 41, '_wp_attached_file', '2020/03/libft-1.png'),
(150, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:206;s:6:\"height\";i:170;s:4:\"file\";s:19:\"2020/03/libft-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 42, '_wp_attached_file', '2020/03/printf.png'),
(152, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:204;s:6:\"height\";i:169;s:4:\"file\";s:18:\"2020/03/printf.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 43, '_wp_attached_file', '2020/03/exam.png'),
(154, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:202;s:6:\"height\";i:172;s:4:\"file\";s:16:\"2020/03/exam.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 59, '_menu_item_type', 'custom'),
(172, 59, '_menu_item_menu_item_parent', '0'),
(173, 59, '_menu_item_object_id', '59'),
(174, 59, '_menu_item_object', 'custom'),
(175, 59, '_menu_item_target', ''),
(176, 59, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(177, 59, '_menu_item_xfn', ''),
(178, 59, '_menu_item_url', 'https://localhost/phpmyadmin/'),
(179, 60, '_menu_item_type', 'custom'),
(180, 60, '_menu_item_menu_item_parent', '0'),
(181, 60, '_menu_item_object_id', '60'),
(182, 60, '_menu_item_object', 'custom'),
(183, 60, '_menu_item_target', ''),
(184, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 60, '_menu_item_xfn', ''),
(186, 60, '_menu_item_url', 'http://localhost/wordpress/wp-login.php'),
(203, 68, '_edit_lock', '1594202183:1'),
(212, 76, '_wp_trash_meta_status', 'publish'),
(213, 76, '_wp_trash_meta_time', '1594201489'),
(214, 77, '_edit_lock', '1594201645:1'),
(215, 78, '_wp_attached_file', '2020/07/nasa.jpg'),
(216, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1400;s:6:\"height\";i:1400;s:4:\"file\";s:16:\"2020/07/nasa.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(217, 78, '_wp_attachment_custom_header_last_used_twentyseventeen', '1594201647'),
(218, 78, '_wp_attachment_is_custom_header', 'twentyseventeen'),
(219, 77, '_wp_trash_meta_status', 'publish'),
(220, 77, '_wp_trash_meta_time', '1594201647'),
(221, 79, '_wp_trash_meta_status', 'publish'),
(222, 79, '_wp_trash_meta_time', '1594201661'),
(223, 80, '_wp_trash_meta_status', 'publish'),
(224, 80, '_wp_trash_meta_time', '1594201933'),
(225, 81, '_wp_trash_meta_status', 'publish'),
(226, 81, '_wp_trash_meta_time', '1594201974'),
(227, 82, '_wp_trash_meta_status', 'publish'),
(228, 82, '_wp_trash_meta_time', '1594202147'),
(229, 84, '_wp_trash_meta_status', 'publish'),
(230, 84, '_wp_trash_meta_time', '1594202375'),
(231, 85, '_wp_attached_file', '2020/07/favicon.png'),
(232, 85, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:19:\"2020/07/favicon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(233, 85, '_wp_attachment_image_alt', 'cohete'),
(234, 86, '_wp_attached_file', '2020/07/dona.favicon.png'),
(235, 86, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:541;s:4:\"file\";s:24:\"2020/07/dona.favicon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 87, '_wp_trash_meta_status', 'publish'),
(237, 87, '_wp_trash_meta_time', '1594202773'),
(238, 88, '_wp_attached_file', '2020/07/donut.favicon.png'),
(239, 88, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:25:\"2020/07/donut.favicon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(240, 88, '_wp_attachment_image_alt', 'Donut'),
(241, 89, '_wp_trash_meta_status', 'publish'),
(242, 89, '_wp_trash_meta_time', '1594202871'),
(243, 90, '_wp_trash_meta_status', 'publish'),
(244, 90, '_wp_trash_meta_time', '1594282259'),
(245, 91, '_wp_attached_file', '2020/07/dona.favicon.png'),
(246, 91, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:550;s:6:\"height\";i:541;s:4:\"file\";s:24:\"2020/07/dona.favicon.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(38, 1, '2020-03-07 00:04:25', '2020-03-07 00:04:25', '', 'descarga-8', '', 'inherit', 'open', 'closed', '', 'descarga-8', '', '', '2020-03-07 00:04:25', '2020-03-07 00:04:25', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/03/descarga-8.png', 0, 'attachment', 'image/png', 0),
(40, 1, '2020-03-07 00:07:10', '2020-03-07 00:07:10', '', 'libft', '', 'inherit', 'open', 'closed', '', 'libft', '', '', '2020-03-07 00:07:10', '2020-03-07 00:07:10', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/03/libft.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2020-03-07 00:07:21', '2020-03-07 00:07:21', '', 'libft-1', '', 'inherit', 'open', 'closed', '', 'libft-1', '', '', '2020-03-07 00:07:21', '2020-03-07 00:07:21', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/03/libft-1.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2020-03-07 00:07:39', '2020-03-07 00:07:39', '', 'printf', '', 'inherit', 'open', 'closed', '', 'printf', '', '', '2020-03-07 00:07:39', '2020-03-07 00:07:39', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/03/printf.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2020-03-07 00:07:46', '2020-03-07 00:07:46', '', 'exam', '', 'inherit', 'open', 'closed', '', 'exam', '', '', '2020-03-07 00:07:46', '2020-03-07 00:07:46', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/03/exam.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2020-03-07 13:25:48', '2020-03-07 13:25:48', '', 'twentytwenty', '', 'publish', 'closed', 'closed', '', 'twentytwenty', '', '', '2020-03-07 13:25:48', '2020-03-07 13:25:48', '', 0, 'http://localhost/wordpress/?p=49', 0, 'custom_css', '', 0),
(50, 1, '2020-03-07 13:25:48', '2020-03-07 13:25:48', '', 'twentytwenty', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2020-03-07 13:25:48', '2020-03-07 13:25:48', '', 49, 'http://localhost/wordpress/?p=50', 0, 'revision', '', 0),
(59, 1, '2020-04-05 21:08:24', '2020-04-05 21:08:24', '', 'phpMyAdmin', '', 'publish', 'closed', 'closed', '', 'phpmyadmin', '', '', '2020-04-05 21:08:24', '2020-04-05 21:08:24', '', 0, 'http://localhost/wordpress/?p=59', 1, 'nav_menu_item', '', 0),
(60, 1, '2020-04-05 21:08:25', '2020-04-05 21:08:25', '', 'WordPress', '', 'publish', 'closed', 'closed', '', 'wordpress', '', '', '2020-04-05 21:08:25', '2020-04-05 21:08:25', '', 0, 'http://localhost/wordpress/?p=60', 2, 'nav_menu_item', '', 0),
(68, 1, '2020-04-05 21:22:11', '2020-04-05 21:22:11', '<hr />\n<p><em><span style=\"color: #000000;\">Esta evaluación tiene como objetivo hacerle descubrir la administración de sistemas y concienciarle de la importancia que tiene el uso de scripts para la automatización de sus tareas. Para ello, vamos a hacerle descubrir la tecnología \"Docker\"para que pueda instalar un servidor web completo, capaz de hacer funcionar varios servicios como Wordpress, Phpmyadmin y una base de datos.</span></em></p>\n<hr />\n<p> </p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '¿FT_SERVER?', '', 'publish', 'open', 'open', '', 'ft_server', '', '', '2020-04-05 21:30:31', '2020-04-05 21:30:31', '', 0, 'http://localhost/wordpress/?p=68', 0, 'post', '', 0),
(69, 1, '2020-04-05 21:21:22', '2020-04-05 21:21:22', '<h3 class=\"rich-text block-editor-rich-text__editable has-text-align-center\" role=\"textbox\" contenteditable=\"true\" aria-multiline=\"true\" aria-label=\"Escribe el encabezado…\"><span style=\"color: #333399;\"><strong>Esta evaluación tiene como objetivo hacerle descubrir la administración de sistemas y concienciarle de la importancia que tiene el uso de scripts para la automatización de sus tareas. Para ello, vamos a hacerle descubrir la tecnología \"Docker\"para que pueda instalar un servidor web completo, capaz de hacer funcionar varios servicios como Wordpress, Phpmyadmin y una base de datos.</strong></span></h3>', '¿FT_SERVER?', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-04-05 21:21:22', '2020-04-05 21:21:22', '', 68, 'https://localhost/wordpress/?p=69', 0, 'revision', '', 0),
(70, 1, '2020-04-05 21:22:11', '2020-04-05 21:22:11', '<h3 class=\"rich-text block-editor-rich-text__editable has-text-align-center\" role=\"textbox\" contenteditable=\"true\" aria-multiline=\"true\" aria-label=\"Escribe el encabezado…\"><em><span style=\"color: #000000;\"><strong>Esta evaluación tiene como objetivo hacerle descubrir la administración de sistemas y concienciarle de la importancia que tiene el uso de scripts para la automatización de sus tareas. Para ello, vamos a hacerle descubrir la tecnología \"Docker\"para que pueda instalar un servidor web completo, capaz de hacer funcionar varios servicios como Wordpress, Phpmyadmin y una base de datos.</strong></span></em></h3>', '¿FT_SERVER?', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-04-05 21:22:11', '2020-04-05 21:22:11', '', 68, 'https://localhost/wordpress/?p=70', 0, 'revision', '', 0),
(72, 1, '2020-04-05 21:25:18', '2020-04-05 21:25:18', '<h3 class=\"rich-text block-editor-rich-text__editable has-text-align-center\" style=\"text-align: left;\" role=\"textbox\" contenteditable=\"true\" aria-multiline=\"true\" aria-label=\"Escribe el encabezado…\"><em><span style=\"color: #000000;\">Esta evaluación tiene como objetivo hacerle descubrir la administración de sistemas y concienciarle de la importancia que tiene el uso de scripts para la automatización de sus tareas. Para ello, vamos a hacerle descubrir la tecnología \"Docker\"para que pueda instalar un servidor web completo, capaz de hacer funcionar varios servicios como Wordpress, Phpmyadmin y una base de datos.</span></em></h3>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '¿FT_SERVER?', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-04-05 21:25:18', '2020-04-05 21:25:18', '', 68, 'https://localhost/wordpress/?p=72', 0, 'revision', '', 0),
(74, 1, '2020-04-05 21:30:31', '2020-04-05 21:30:31', '<hr />\n<p><em><span style=\"color: #000000;\">Esta evaluación tiene como objetivo hacerle descubrir la administración de sistemas y concienciarle de la importancia que tiene el uso de scripts para la automatización de sus tareas. Para ello, vamos a hacerle descubrir la tecnología \"Docker\"para que pueda instalar un servidor web completo, capaz de hacer funcionar varios servicios como Wordpress, Phpmyadmin y una base de datos.</span></em></p>\n<hr />\n<p> </p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '¿FT_SERVER?', '', 'inherit', 'closed', 'closed', '', '68-revision-v1', '', '', '2020-04-05 21:30:31', '2020-04-05 21:30:31', '', 68, 'https://localhost/wordpress/?p=74', 0, 'revision', '', 0),
(75, 1, '2020-07-08 09:44:13', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-07-08 09:44:13', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=75', 0, 'post', '', 0),
(76, 1, '2020-07-08 09:44:49', '2020-07-08 09:44:49', '{\n    \"old_sidebars_widgets_data\": {\n        \"value\": {\n            \"wp_inactive_widgets\": [\n                \"archives-2\",\n                \"meta-2\",\n                \"search-2\",\n                \"text-2\",\n                \"text-3\",\n                \"categories-2\",\n                \"recent-posts-2\",\n                \"recent-comments-2\",\n                \"media_audio-3\",\n                \"media_audio-4\"\n            ],\n            \"sidebar-1\": [\n                \"nav_menu-6\"\n            ],\n            \"sidebar-2\": []\n        },\n        \"type\": \"global_variable\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-08 09:44:49\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0e1a45e9-85e5-4d0e-b660-e10232b61caa', '', '', '2020-07-08 09:44:49', '2020-07-08 09:44:49', '', 0, 'http://localhost/wordpress/?p=76', 0, 'customize_changeset', '', 0),
(77, 1, '2020-07-08 09:47:27', '2020-07-08 09:47:27', '{\n    \"twentyseventeen::colorscheme\": {\n        \"value\": \"dark\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-08 09:47:27\"\n    },\n    \"twentyseventeen::header_textcolor\": {\n        \"value\": \"#0fba00\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-08 09:47:27\"\n    },\n    \"twentyseventeen::header_image\": {\n        \"value\": \"http://localhost/wordpress/wp-content/uploads/2020/07/nasa.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-08 09:47:27\"\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": {\n            \"url\": \"http://localhost/wordpress/wp-content/uploads/2020/07/nasa.jpg\",\n            \"thumbnail_url\": \"http://localhost/wordpress/wp-content/uploads/2020/07/nasa.jpg\",\n            \"timestamp\": 1594201609662,\n            \"attachment_id\": 78,\n            \"width\": 1400,\n            \"height\": 1400\n        },\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-08 09:47:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1836caf9-246d-4762-bc8a-7f97ba006f58', '', '', '2020-07-08 09:47:27', '2020-07-08 09:47:27', '', 0, 'http://localhost/wordpress/?p=77', 0, 'customize_changeset', '', 0),
(78, 1, '2020-07-08 09:46:43', '2020-07-08 09:46:43', '', 'nasa', '', 'inherit', 'open', 'closed', '', 'nasa', '', '', '2020-07-08 09:46:43', '2020-07-08 09:46:43', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/07/nasa.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2020-07-08 09:47:41', '2020-07-08 09:47:41', '{\n    \"twentyseventeen::header_textcolor\": {\n        \"value\": \"#0a0000\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-08 09:47:41\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '124f7b82-2f48-4353-aec8-09b8e48a4e06', '', '', '2020-07-08 09:47:41', '2020-07-08 09:47:41', '', 0, 'http://localhost/wordpress/?p=79', 0, 'customize_changeset', '', 0),
(80, 1, '2020-07-08 09:52:13', '2020-07-08 09:52:13', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-08 09:52:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '654798f0-3982-44ee-ac33-d7f6c9b5385d', '', '', '2020-07-08 09:52:13', '2020-07-08 09:52:13', '', 0, 'http://localhost/wordpress/?p=80', 0, 'customize_changeset', '', 0),
(81, 1, '2020-07-08 09:52:54', '2020-07-08 09:52:54', '{\n    \"twentyseventeen::header_textcolor\": {\n        \"value\": \"#15ff00\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-08 09:52:54\"\n    },\n    \"twentyseventeen::colorscheme\": {\n        \"value\": \"light\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-08 09:52:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '714a873b-6a71-47f7-8ef7-31db53bc7c6b', '', '', '2020-07-08 09:52:54', '2020-07-08 09:52:54', '', 0, 'http://localhost/wordpress/?p=81', 0, 'customize_changeset', '', 0),
(82, 1, '2020-07-08 09:55:47', '2020-07-08 09:55:47', '{\n    \"twentyseventeen::external_header_video\": {\n        \"value\": \"https://www.youtube.com/watch?v=xWggTb45brM\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-08 09:55:47\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8b75139a-d4b5-4c4a-9a91-37ccbe28c7a0', '', '', '2020-07-08 09:55:47', '2020-07-08 09:55:47', '', 0, 'http://localhost/wordpress/?p=82', 0, 'customize_changeset', '', 0),
(83, 1, '2020-07-08 09:58:42', '2020-07-08 09:58:42', '<hr />\n\n<em><span style=\"color: #000000;\">Esta evaluación tiene como objetivo hacerle descubrir la administración de sistemas y concienciarle de la importancia que tiene el uso de scripts para la automatización de sus tareas. Para ello, vamos a hacerle descubrir la tecnología \"Docker\"para que pueda instalar un servidor web completo, capaz de hacer funcionar varios servicios como Wordpress, Phpmyadmin y una base de datos.</span></em>\n\n<hr />', '¿FT_SERVER?', '', 'inherit', 'closed', 'closed', '', '68-autosave-v1', '', '', '2020-07-08 09:58:42', '2020-07-08 09:58:42', '', 68, 'http://localhost/wordpress/?p=83', 0, 'revision', '', 0),
(84, 1, '2020-07-08 09:59:35', '2020-07-08 09:59:35', '{\n    \"twentyseventeen::external_header_video\": {\n        \"value\": \"https://www.youtube.com/watch?v=jfVBrpIhH60\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-08 09:59:35\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '131f4bbe-a84a-45f0-822f-7650dbca60c6', '', '', '2020-07-08 09:59:35', '2020-07-08 09:59:35', '', 0, 'http://localhost/wordpress/?p=84', 0, 'customize_changeset', '', 0),
(85, 1, '2020-07-08 09:59:52', '2020-07-08 09:59:52', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2020-07-08 10:00:53', '2020-07-08 10:00:53', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/07/favicon.png', 0, 'attachment', 'image/png', 0),
(86, 1, '2020-07-08 10:01:50', '2020-07-08 10:01:50', '', 'dona.favicon', '', 'inherit', 'open', 'closed', '', 'dona-favicon', '', '', '2020-07-08 10:01:50', '2020-07-08 10:01:50', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/07/dona.favicon.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2020-07-08 10:06:13', '2020-07-08 10:06:13', '{\n    \"twentyseventeen::header_textcolor\": {\n        \"value\": \"#f4fc00\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-08 10:06:13\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '10313299-9ae5-4ff6-af6d-1a6a1e962f95', '', '', '2020-07-08 10:06:13', '2020-07-08 10:06:13', '', 0, 'http://localhost/wordpress/?p=87', 0, 'customize_changeset', '', 0),
(88, 1, '2020-07-08 10:06:48', '2020-07-08 10:06:48', '', 'donut.favicon', '', 'inherit', 'open', 'closed', '', 'donut-favicon', '', '', '2020-07-08 10:07:01', '2020-07-08 10:07:01', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/07/donut.favicon.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2020-07-08 10:07:51', '2020-07-08 10:07:51', '{\n    \"twentyseventeen::header_textcolor\": {\n        \"value\": \"#ffd400\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-08 10:07:51\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'dceaa304-2926-4774-aed9-2d2607f71cc3', '', '', '2020-07-08 10:07:51', '2020-07-08 10:07:51', '', 0, 'http://localhost/wordpress/?p=89', 0, 'customize_changeset', '', 0),
(90, 1, '2020-07-09 08:10:59', '2020-07-09 08:10:59', '{\n    \"twentyseventeen::header_image\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-09 08:10:59\"\n    },\n    \"twentyseventeen::header_image_data\": {\n        \"value\": \"remove-header\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-07-09 08:10:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'fba0b57c-226d-4d0e-a6bb-08446c4a135c', '', '', '2020-07-09 08:10:59', '2020-07-09 08:10:59', '', 0, 'http://localhost/wordpress/?p=90', 0, 'customize_changeset', '', 0),
(91, 1, '2020-07-09 08:12:12', '2020-07-09 08:12:12', '', 'dona.favicon', '', 'inherit', 'open', 'closed', '', 'dona-favicon-2', '', '', '2020-07-09 08:12:12', '2020-07-09 08:12:12', '', 0, 'http://localhost/wordpress/wp-content/uploads/2020/07/dona.favicon.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
(5, 'LOGIN', 'login', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(59, 5, 0),
(60, 5, 0),
(68, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(5, 5, 'nav_menu', '', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'abello42'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'text_widget_custom_html,theme_editor_notice,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '75'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:10:\"172.17.0.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1594201448'),
(21, 1, 'session_tokens', 'a:3:{s:64:\"e6d21a1072dcf88a39d6b09b4b3e264e2172461f4020d407954c39a5dbf0391d\";a:4:{s:10:\"expiration\";i:1594374252;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36\";s:5:\"login\";i:1594201452;}s:64:\"56730ece8cc74c305912c9449fb9d2ed9fe63d0f91d16c4ebe3bc0f2390003dd\";a:4:{s:10:\"expiration\";i:1594374475;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.106 Safari/537.36\";s:5:\"login\";i:1594201675;}s:64:\"7db5b7dc648637d9477004512d087ef09317f335840281f8601bdd858006bd09\";a:4:{s:10:\"expiration\";i:1594455043;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:119:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.1.1 Safari/605.1.15\";s:5:\"login\";i:1594282243;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'abello42', '$P$BDU1Us7hkf.YObBX1MdsDvJTdNL0/e1', 'abello42', 'alexanderbellor18@gmail.com', '', '2020-06-02 11:01:37', '', 0, 'abello42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
