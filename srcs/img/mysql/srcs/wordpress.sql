-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql-svc:3306
-- Generation Time: Mar 18, 2021 at 05:59 PM
-- Server version: 10.5.8-MariaDB
-- PHP Version: 7.4.15

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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-03-03 10:07:46', '2021-03-03 10:07:46', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

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
(1, 'siteurl', 'http://192.168.49.2:5050', 'yes'),
(2, 'home', 'http://192.168.49.2:5050', 'yes'),
(3, 'blogname', 'Ft_services', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'wpuser@services.org', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:68:\"/home/www/wordpress/wp-content/themes/twentytwentyonechild/style.css\";i:2;s:72:\"/home/www/wordpress/wp-content/themes/twentytwentyonechild/functions.php\";i:3;s:69:\"/home/www/wordpress/wp-content/themes/twentytwentyonechild/footer.php\";i:4;s:63:\"/home/www/wordpress/wp-content/themes/twentytwentyone/style.css\";i:5;s:58:\"/home/www/wordpress/wp-content/plugins/akismet/akismet.php\";}', 'no'),
(40, 'template', 'twentytwentyonechild', 'yes'),
(41, 'stylesheet', 'twentytwentyonechild', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '126', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1630318063', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:10:{i:1614766079;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1614766081;a:4:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1614766086;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1614766087;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1614766088;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1614766147;a:1:{s:28:\"wp_update_comment_type_batch\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1614852479;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1616075042;a:1:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1616075793;a:1:{s:8:\"do_pings\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'nonce_key', '?^+A@:8)u)U1-^rCHlK1KMhc=?]<gTD}I::l&|<Lh(xheQ2~,gO7^ kobgbchRwW', 'no'),
(115, 'nonce_salt', 'sYKM=Mz`-B{1rKzsw@Si0=BFQ=X:@b~APx_7[z;Gl+0]}@;PnZtdHs`vUXf&r%<!', 'no'),
(116, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, '_transient_doing_cron', '1616090343.1617391109466552734375', 'yes'),
(120, 'auth_key', '#Uvh=|p%bxrgU,QPY(<~g}&-#S0g`g].{i4f,I$NG!`_#kFiNB],$<JciDBxgtz4', 'no'),
(121, 'auth_salt', '8BY.~.9S%gJUb/_X4/tm&,~C1bfi^tdaHsotk`Ixm5IA LS{}-u?T#J*O P9mkZh', 'no'),
(122, 'logged_in_key', 'R^,N;Rhc3h%C C}HvBS?:?8cFKL$jd|U0P,)hb1+Um&3iCt!6U+804>T@RtuvgXF', 'no'),
(123, 'logged_in_salt', '{GT_!^o{{Cj@iQ.|<F3(pu<42kr7Bkm6LC?tQ1ODg^gfd6h4kV3h$(CmYl+@Ra@W', 'no'),
(124, '_site_transient_update_core', 'O:8:\"stdClass\":3:{s:7:\"updates\";a:0:{}s:15:\"version_checked\";s:3:\"5.7\";s:12:\"last_checked\";i:1616075050;}', 'no'),
(125, '_site_transient_update_plugins', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1616075056;}', 'no'),
(128, '_site_transient_update_themes', 'O:8:\"stdClass\":1:{s:12:\"last_checked\";i:1616078753;}', 'no'),
(129, 'can_compress_scripts', '1', 'no'),
(132, 'theme_mods_twentytwentyone', 'a:4:{s:18:\"custom_css_post_id\";i:51;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:16:\"background_color\";s:6:\"080a14\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1616078662;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(137, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1616118280', 'no'),
(138, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> XML or PCRE extensions not loaded!</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> XML or PCRE extensions not loaded!</p></div>', 'no'),
(139, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(143, 'current_theme', 'Twenty Twenty-One Child', 'yes'),
(144, 'theme_mods_twentytwentyonechild', 'a:6:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1616078671;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:63;s:16:\"background_color\";s:6:\"090811\";s:28:\"display_excerpt_or_full_post\";s:4:\"full\";}', 'yes'),
(145, 'theme_switched', '', 'yes'),
(166, '_site_transient_timeout_theme_roots', '1616086604', 'no'),
(167, '_site_transient_theme_roots', 'a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:20:\"twentytwentyonechild\";s:7:\"/themes\";}', 'no'),
(168, 'category_children', 'a:0:{}', 'yes');

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
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_customize_draft_post_name', 'create-your-website-with-blocks'),
(4, 5, '_customize_changeset_uuid', 'ac0a6ce4-0291-4f4e-881c-793482e69533'),
(5, 6, '_customize_draft_post_name', 'about'),
(6, 6, '_customize_changeset_uuid', 'ac0a6ce4-0291-4f4e-881c-793482e69533'),
(7, 7, '_customize_draft_post_name', 'contact'),
(8, 7, '_customize_changeset_uuid', 'ac0a6ce4-0291-4f4e-881c-793482e69533'),
(9, 8, '_customize_draft_post_name', 'blog'),
(10, 8, '_customize_changeset_uuid', 'ac0a6ce4-0291-4f4e-881c-793482e69533'),
(11, 10, '_customize_draft_post_name', 'create-your-website-with-blocks'),
(12, 10, '_customize_changeset_uuid', '0e155204-f4e8-4389-8104-0a9510fe5401'),
(13, 11, '_customize_draft_post_name', 'about'),
(14, 11, '_customize_changeset_uuid', '0e155204-f4e8-4389-8104-0a9510fe5401'),
(15, 12, '_customize_draft_post_name', 'contact'),
(16, 12, '_customize_changeset_uuid', '0e155204-f4e8-4389-8104-0a9510fe5401'),
(17, 13, '_customize_draft_post_name', 'blog'),
(18, 13, '_customize_changeset_uuid', '0e155204-f4e8-4389-8104-0a9510fe5401'),
(19, 9, '_customize_restore_dismissed', '1'),
(20, 15, '_edit_lock', '1616083809:1'),
(21, 17, '_edit_lock', '1616083790:1'),
(22, 19, '_edit_lock', '1616083823:1'),
(23, 21, '_edit_lock', '1616084767:1'),
(24, 23, '_edit_lock', '1616083770:1'),
(25, 25, '_edit_lock', '1616085028:1'),
(26, 27, '_edit_lock', '1616083841:1'),
(27, 14, '_customize_restore_dismissed', '1'),
(28, 29, '_edit_lock', '1616075574:1'),
(29, 30, '_menu_item_type', 'custom'),
(30, 30, '_menu_item_menu_item_parent', '0'),
(31, 30, '_menu_item_object_id', '30'),
(32, 30, '_menu_item_object', 'custom'),
(33, 30, '_menu_item_target', ''),
(34, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(35, 30, '_menu_item_xfn', ''),
(36, 30, '_menu_item_url', 'http://192.168.49.2:5050'),
(37, 31, '_menu_item_type', 'post_type'),
(38, 31, '_menu_item_menu_item_parent', '0'),
(39, 31, '_menu_item_object_id', '27'),
(40, 31, '_menu_item_object', 'page'),
(41, 31, '_menu_item_target', ''),
(42, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(43, 31, '_menu_item_xfn', ''),
(44, 31, '_menu_item_url', ''),
(45, 32, '_menu_item_type', 'post_type'),
(46, 32, '_menu_item_menu_item_parent', '0'),
(47, 32, '_menu_item_object_id', '23'),
(48, 32, '_menu_item_object', 'page'),
(49, 32, '_menu_item_target', ''),
(50, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(51, 32, '_menu_item_xfn', ''),
(52, 32, '_menu_item_url', ''),
(53, 33, '_menu_item_type', 'post_type'),
(54, 33, '_menu_item_menu_item_parent', '0'),
(55, 33, '_menu_item_object_id', '25'),
(56, 33, '_menu_item_object', 'page'),
(57, 33, '_menu_item_target', ''),
(58, 33, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(59, 33, '_menu_item_xfn', ''),
(60, 33, '_menu_item_url', ''),
(61, 34, '_menu_item_type', 'post_type'),
(62, 34, '_menu_item_menu_item_parent', '0'),
(63, 34, '_menu_item_object_id', '21'),
(64, 34, '_menu_item_object', 'page'),
(65, 34, '_menu_item_target', ''),
(66, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(67, 34, '_menu_item_xfn', ''),
(68, 34, '_menu_item_url', ''),
(69, 35, '_menu_item_type', 'post_type'),
(70, 35, '_menu_item_menu_item_parent', '0'),
(71, 35, '_menu_item_object_id', '19'),
(72, 35, '_menu_item_object', 'page'),
(73, 35, '_menu_item_target', ''),
(74, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 35, '_menu_item_xfn', ''),
(76, 35, '_menu_item_url', ''),
(77, 36, '_menu_item_type', 'post_type'),
(78, 36, '_menu_item_menu_item_parent', '0'),
(79, 36, '_menu_item_object_id', '17'),
(80, 36, '_menu_item_object', 'page'),
(81, 36, '_menu_item_target', ''),
(82, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(83, 36, '_menu_item_xfn', ''),
(84, 36, '_menu_item_url', ''),
(85, 37, '_menu_item_type', 'post_type'),
(86, 37, '_menu_item_menu_item_parent', '0'),
(87, 37, '_menu_item_object_id', '15'),
(88, 37, '_menu_item_object', 'page'),
(89, 37, '_menu_item_target', ''),
(90, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(91, 37, '_menu_item_xfn', ''),
(92, 37, '_menu_item_url', ''),
(93, 29, '_wp_trash_meta_status', 'publish'),
(94, 29, '_wp_trash_meta_time', '1616075578'),
(95, 1, '_edit_lock', '1616085277:1'),
(96, 1, '_encloseme', '1'),
(97, 39, '_edit_lock', '1616077225:1'),
(98, 39, '_wp_trash_meta_status', 'publish'),
(99, 39, '_wp_trash_meta_time', '1616077270'),
(100, 40, '_wp_trash_meta_status', 'publish'),
(101, 40, '_wp_trash_meta_time', '1616077322'),
(108, 49, '_wp_trash_meta_status', 'publish'),
(109, 49, '_wp_trash_meta_time', '1616077849'),
(110, 50, '_wp_trash_meta_status', 'publish'),
(111, 50, '_wp_trash_meta_time', '1616078131'),
(112, 53, '_edit_lock', '1616078166:1'),
(113, 53, '_wp_trash_meta_status', 'publish'),
(114, 53, '_wp_trash_meta_time', '1616078194'),
(115, 55, '_wp_trash_meta_status', 'publish'),
(116, 55, '_wp_trash_meta_time', '1616078214'),
(117, 57, '_wp_trash_meta_status', 'publish'),
(118, 57, '_wp_trash_meta_time', '1616078734'),
(119, 58, '_wp_trash_meta_status', 'publish'),
(120, 58, '_wp_trash_meta_time', '1616079342'),
(121, 59, '_wp_trash_meta_status', 'publish'),
(122, 59, '_wp_trash_meta_time', '1616079374'),
(123, 60, '_wp_trash_meta_status', 'publish'),
(124, 60, '_wp_trash_meta_time', '1616079391'),
(126, 61, '_customize_restore_dismissed', '1'),
(127, 62, '_wp_trash_meta_status', 'publish'),
(128, 62, '_wp_trash_meta_time', '1616080335'),
(129, 65, '_wp_trash_meta_status', 'publish'),
(130, 65, '_wp_trash_meta_time', '1616080345'),
(131, 67, '_wp_trash_meta_status', 'publish'),
(132, 67, '_wp_trash_meta_time', '1616080426'),
(133, 68, '_wp_trash_meta_status', 'publish'),
(134, 68, '_wp_trash_meta_time', '1616080657'),
(163, 100, '_wp_attached_file', '2021/03/Influxdb_logo.png'),
(164, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:672;s:6:\"height\";i:250;s:4:\"file\";s:25:\"2021/03/Influxdb_logo.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Influxdb_logo-300x112.png\";s:5:\"width\";i:300;s:6:\"height\";i:112;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Influxdb_logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(165, 102, '_wp_attached_file', '2021/03/MariaDB_Logo.png'),
(166, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2021/03/MariaDB_Logo.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"MariaDB_Logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"MariaDB_Logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 104, '_wp_attached_file', '2021/03/nginx.png'),
(168, 104, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1666;s:6:\"height\";i:1666;s:4:\"file\";s:17:\"2021/03/nginx.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"nginx-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"nginx-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"nginx-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"nginx-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"nginx-1536x1536.png\";s:5:\"width\";i:1536;s:6:\"height\";i:1536;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"post-thumbnail\";a:4:{s:4:\"file\";s:19:\"nginx-1568x1568.png\";s:5:\"width\";i:1568;s:6:\"height\";i:1568;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(169, 106, '_wp_attached_file', '2021/03/PhpMyAdmin.png'),
(170, 106, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:357;s:4:\"file\";s:22:\"2021/03/PhpMyAdmin.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"PhpMyAdmin-300x167.png\";s:5:\"width\";i:300;s:6:\"height\";i:167;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"PhpMyAdmin-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(171, 108, '_wp_attached_file', '2021/03/Wordpress.png'),
(172, 108, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:21:\"2021/03/Wordpress.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"Wordpress-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Wordpress-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(181, 119, '_wp_attached_file', '2021/03/Grafana.png'),
(182, 119, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:471;s:6:\"height\";i:480;s:4:\"file\";s:19:\"2021/03/Grafana.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"Grafana-294x300.png\";s:5:\"width\";i:294;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"Grafana-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(183, 121, '_wp_attached_file', '2021/03/ftps.png'),
(184, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:352;s:6:\"height\";i:321;s:4:\"file\";s:16:\"2021/03/ftps.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"ftps-300x274.png\";s:5:\"width\";i:300;s:6:\"height\";i:274;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"ftps-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 125, '_wp_attached_file', '2021/03/favicon-1.png'),
(186, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:96;s:6:\"height\";i:96;s:4:\"file\";s:21:\"2021/03/favicon-1.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(187, 126, '_wp_attached_file', '2021/03/cropped-favicon-1.png'),
(188, 126, '_wp_attachment_context', 'site-icon'),
(189, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:29:\"2021/03/cropped-favicon-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"cropped-favicon-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"cropped-favicon-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:29:\"cropped-favicon-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:29:\"cropped-favicon-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:29:\"cropped-favicon-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:27:\"cropped-favicon-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(190, 127, '_wp_trash_meta_status', 'publish'),
(191, 127, '_wp_trash_meta_time', '1616090178');

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
(1, 1, '2021-03-03 10:07:46', '2021-03-03 10:07:46', '<!-- wp:paragraph -->\n<p><a href=\"http://192.168.49.2:5050/wp-admin\" data-type=\"URL\" data-id=\"192.168.49.2:5050/wp-admin\">Go to admin page</a></p>\n<!-- /wp:paragraph -->', 'Ft_services', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2021-03-18 16:35:15', '2021-03-18 16:35:15', '', 0, 'http://192.168.49.2:5050/?p=1', 0, 'post', '', 1),
(2, 1, '2021-03-03 10:07:46', '2021-03-03 10:07:46', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://192.168.49.2:5050/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2021-03-03 10:07:46', '2021-03-03 10:07:46', '', 0, 'http://192.168.49.2:5050/?page_id=2', 0, 'page', '', 0),
(3, 1, '2021-03-03 10:07:46', '2021-03-03 10:07:46', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://192.168.49.2:5050.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2021-03-03 10:07:46', '2021-03-03 10:07:46', '', 0, 'http://192.168.49.2:5050/?page_id=3', 0, 'page', '', 0),
(4, 1, '2021-03-03 10:08:08', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2021-03-03 10:08:08', '0000-00-00 00:00:00', '', 0, 'http://192.168.49.2:5050/?p=4', 0, 'post', '', 0),
(5, 1, '2021-03-03 10:11:48', '0000-00-00 00:00:00', '\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Create your website with blocks</h2>\n					<!-- /wp:heading -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://192.168.49.2:5050/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"&#8220;Roses Tremieres&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://192.168.49.2:5050/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"&#8220;In the Bois de Boulogne&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://192.168.49.2:5050/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"&#8220;Young Woman in Mauve&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":50} -->\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Add block patterns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Frame your images</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Select the &quot;Frame&quot; block style to activate it.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Overlap columns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Choose the &quot;Overlap&quot; block style to try it out.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n					<p class=\"has-huge-font-size\">Need help?</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:spacer {\"height\":75} -->\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns -->\n					<div class=\"wp-block-columns\"><!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer --></div></div>\n					<!-- /wp:cover -->', 'Create your website with blocks', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-03 10:11:48', '0000-00-00 00:00:00', '', 0, 'http://192.168.49.2:5050/?page_id=5', 0, 'page', '', 0),
(6, 1, '2021-03-03 10:11:48', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-03 10:11:48', '0000-00-00 00:00:00', '', 0, 'http://192.168.49.2:5050/?page_id=6', 0, 'page', '', 0),
(7, 1, '2021-03-03 10:11:48', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-03 10:11:48', '0000-00-00 00:00:00', '', 0, 'http://192.168.49.2:5050/?page_id=7', 0, 'page', '', 0),
(8, 1, '2021-03-03 10:11:48', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-03 10:11:48', '0000-00-00 00:00:00', '', 0, 'http://192.168.49.2:5050/?page_id=8', 0, 'page', '', 0),
(9, 1, '2021-03-03 10:11:48', '0000-00-00 00:00:00', '{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:11:48\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:11:48\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://192.168.49.2:5050/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:11:48\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 6,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:11:48\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:11:48\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:11:48\"\n    },\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:11:48\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Secondary menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:11:48\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:11:48\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:11:48\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:11:48\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:11:48\"\n    },\n    \"twentytwentyone::nav_menu_locations[footer]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:11:48\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:11:48\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 5,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:11:48\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 8,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:11:48\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'ac0a6ce4-0291-4f4e-881c-793482e69533', '', '', '2021-03-03 10:11:48', '0000-00-00 00:00:00', '', 0, 'http://192.168.49.2:5050/?p=9', 0, 'customize_changeset', '', 0),
(10, 1, '2021-03-03 10:12:43', '0000-00-00 00:00:00', '\n					<!-- wp:heading {\"align\":\"wide\",\"fontSize\":\"gigantic\",\"style\":{\"typography\":{\"lineHeight\":\"1.1\"}}} -->\n					<h2 class=\"alignwide has-text-align-wide has-gigantic-font-size\" style=\"line-height:1.1\">Create your website with blocks</h2>\n					<!-- /wp:heading -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-columns-overlap\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-center is-style-twentytwentyone-columns-overlap\"><!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\"} -->\n					<figure class=\"wp-block-image alignfull size-large\"><img src=\"http://192.168.49.2:5050/wp-content/themes/twentytwentyone/assets/images/roses-tremieres-hollyhocks-1884.jpg\" alt=\"&#8220;Roses Tremieres&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"align\":\"full\",\"sizeSlug\":\"large\",\"className\":\"is-style-twentytwentyone-image-frame\"} -->\n					<figure class=\"wp-block-image alignfull size-large is-style-twentytwentyone-image-frame\"><img src=\"http://192.168.49.2:5050/wp-content/themes/twentytwentyone/assets/images/in-the-bois-de-boulogne.jpg\" alt=\"&#8220;In the Bois de Boulogne&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"center\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-center\"><!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:image {\"sizeSlug\":\"large\",\"className\":\"alignfull size-full is-style-twentytwentyone-border\"} -->\n					<figure class=\"wp-block-image size-large alignfull size-full is-style-twentytwentyone-border\"><img src=\"http://192.168.49.2:5050/wp-content/themes/twentytwentyone/assets/images/young-woman-in-mauve.jpg\" alt=\"&#8220;Young Woman in Mauve&#8221; by Berthe Morisot\"/></figure>\n					<!-- /wp:image --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":50} -->\n					<div style=\"height:50px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns {\"verticalAlignment\":\"top\",\"align\":\"wide\"} -->\n					<div class=\"wp-block-columns alignwide are-vertically-aligned-top\"><!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Add block patterns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Block patterns are pre-designed groups of blocks. To add one, select the Add Block button [+] in the toolbar at the top of the editor. Switch to the Patterns tab underneath the search bar, and choose a pattern.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Frame your images</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One includes stylish borders for your content. With an Image block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Select the &quot;Frame&quot; block style to activate it.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column {\"verticalAlignment\":\"top\"} -->\n					<div class=\"wp-block-column is-vertically-aligned-top\"><!-- wp:heading {\"level\":3} -->\n					<h3>Overlap columns</h3>\n					<!-- /wp:heading -->\n\n					<!-- wp:paragraph -->\n					<p>Twenty Twenty-One also includes an overlap style for column blocks. With a Columns block selected, open the &quot;Styles&quot; panel within the Editor sidebar. Choose the &quot;Overlap&quot; block style to try it out.</p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer -->\n					<div style=\"height:100px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:cover {\"overlayColor\":\"green\",\"contentPosition\":\"center center\",\"align\":\"wide\",\"className\":\"is-style-twentytwentyone-border\"} -->\n					<div class=\"wp-block-cover alignwide has-green-background-color has-background-dim is-style-twentytwentyone-border\"><div class=\"wp-block-cover__inner-container\"><!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:paragraph {\"fontSize\":\"huge\"} -->\n					<p class=\"has-huge-font-size\">Need help?</p>\n					<!-- /wp:paragraph -->\n\n					<!-- wp:spacer {\"height\":75} -->\n					<div style=\"height:75px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer -->\n\n					<!-- wp:columns -->\n					<div class=\"wp-block-columns\"><!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/article/twenty-twenty-one/\">Read the Theme Documentation</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column -->\n\n					<!-- wp:column -->\n					<div class=\"wp-block-column\"><!-- wp:paragraph -->\n					<p><a href=\"https://wordpress.org/support/theme/twentytwentyone/\">Check out the Support Forums</a></p>\n					<!-- /wp:paragraph --></div>\n					<!-- /wp:column --></div>\n					<!-- /wp:columns -->\n\n					<!-- wp:spacer {\"height\":20} -->\n					<div style=\"height:20px\" aria-hidden=\"true\" class=\"wp-block-spacer\"></div>\n					<!-- /wp:spacer --></div></div>\n					<!-- /wp:cover -->', 'Create your website with blocks', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-03 10:12:43', '0000-00-00 00:00:00', '', 0, 'http://192.168.49.2:5050/?page_id=10', 0, 'page', '', 0),
(11, 1, '2021-03-03 10:12:43', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>You might be an artist who would like to introduce yourself and your work here or maybe you&rsquo;re a business with a mission to describe.</p>\n<!-- /wp:paragraph -->', 'About', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-03 10:12:43', '0000-00-00 00:00:00', '', 0, 'http://192.168.49.2:5050/?page_id=11', 0, 'page', '', 0),
(12, 1, '2021-03-03 10:12:43', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>This is a page with some basic contact information, such as an address and phone number. You might also try a plugin to add a contact form.</p>\n<!-- /wp:paragraph -->', 'Contact', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-03 10:12:43', '0000-00-00 00:00:00', '', 0, 'http://192.168.49.2:5050/?page_id=12', 0, 'page', '', 0),
(13, 1, '2021-03-03 10:12:43', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-03 10:12:43', '0000-00-00 00:00:00', '', 0, 'http://192.168.49.2:5050/?page_id=13', 0, 'page', '', 0),
(14, 1, '2021-03-03 10:12:43', '0000-00-00 00:00:00', '{\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            10,\n            11,\n            12,\n            13\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:12:43\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:12:43\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://192.168.49.2:5050/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:12:43\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 11,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"About\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:12:43\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 13,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:12:43\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 12,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contact\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:12:43\"\n    },\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:12:43\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Secondary menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:12:43\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:12:43\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:12:43\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:12:43\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Email\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:12:43\"\n    },\n    \"twentytwentyone::nav_menu_locations[footer]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:12:43\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:12:43\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:12:43\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 13,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-03 10:12:43\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '0e155204-f4e8-4389-8104-0a9510fe5401', '', '', '2021-03-03 10:12:43', '0000-00-00 00:00:00', '', 0, 'http://192.168.49.2:5050/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2021-03-18 13:47:55', '2021-03-18 13:47:55', '<!-- wp:image {\"id\":104,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/nginx-1024x1024.png\" alt=\"\" class=\"wp-image-104\"/></figure>\n<!-- /wp:image -->', 'Nginx', '', 'publish', 'closed', 'closed', '', 'nginx', '', '', '2021-03-18 16:12:32', '2021-03-18 16:12:32', '', 0, 'http://192.168.49.2:5050/?page_id=15', 0, 'page', '', 0),
(16, 1, '2021-03-18 13:47:55', '2021-03-18 13:47:55', '', 'Nginx', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-03-18 13:47:55', '2021-03-18 13:47:55', '', 15, 'http://192.168.49.2:5050/?p=16', 0, 'revision', '', 0),
(17, 1, '2021-03-18 13:48:08', '2021-03-18 13:48:08', '<!-- wp:image {\"id\":102,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image size-large is-style-rounded\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/MariaDB_Logo.png\" alt=\"\" class=\"wp-image-102\"/></figure>\n<!-- /wp:image -->', 'Mysql', '', 'publish', 'closed', 'closed', '', 'mysql', '', '', '2021-03-18 16:12:13', '2021-03-18 16:12:13', '', 0, 'http://192.168.49.2:5050/?page_id=17', 0, 'page', '', 0),
(18, 1, '2021-03-18 13:48:08', '2021-03-18 13:48:08', '', 'Mysql', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-03-18 13:48:08', '2021-03-18 13:48:08', '', 17, 'http://192.168.49.2:5050/?p=18', 0, 'revision', '', 0),
(19, 1, '2021-03-18 13:48:23', '2021-03-18 13:48:23', '<!-- wp:image {\"id\":106,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/PhpMyAdmin.png\" alt=\"\" class=\"wp-image-106\"/></figure>\n<!-- /wp:image -->', 'PhpMyAdmin', '', 'publish', 'closed', 'closed', '', 'phpmyadmin', '', '', '2021-03-18 16:12:46', '2021-03-18 16:12:46', '', 0, 'http://192.168.49.2:5050/?page_id=19', 0, 'page', '', 0),
(20, 1, '2021-03-18 13:48:23', '2021-03-18 13:48:23', '', 'PhpMyAdmin', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2021-03-18 13:48:23', '2021-03-18 13:48:23', '', 19, 'http://192.168.49.2:5050/?p=20', 0, 'revision', '', 0),
(21, 1, '2021-03-18 13:48:56', '2021-03-18 13:48:56', '<!-- wp:image {\"id\":119,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/Grafana.png\" alt=\"\" class=\"wp-image-119\"/></figure>\n<!-- /wp:image -->', 'Grafana', '', 'publish', 'closed', 'closed', '', 'grafana', '', '', '2021-03-18 16:28:31', '2021-03-18 16:28:31', '', 0, 'http://192.168.49.2:5050/?page_id=21', 0, 'page', '', 0),
(22, 1, '2021-03-18 13:48:56', '2021-03-18 13:48:56', '', 'Grafana', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-03-18 13:48:56', '2021-03-18 13:48:56', '', 21, 'http://192.168.49.2:5050/?p=22', 0, 'revision', '', 0),
(23, 1, '2021-03-18 13:49:10', '2021-03-18 13:49:10', '<!-- wp:image {\"id\":100,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/Influxdb_logo.png\" alt=\"\" class=\"wp-image-100\"/></figure>\n<!-- /wp:image -->', 'Influxdb', '', 'publish', 'closed', 'closed', '', 'influxdb', '', '', '2021-03-18 16:11:50', '2021-03-18 16:11:50', '', 0, 'http://192.168.49.2:5050/?page_id=23', 0, 'page', '', 0),
(24, 1, '2021-03-18 13:49:10', '2021-03-18 13:49:10', '', 'Influxdb', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-03-18 13:49:10', '2021-03-18 13:49:10', '', 23, 'http://192.168.49.2:5050/?p=24', 0, 'revision', '', 0),
(25, 1, '2021-03-18 13:49:21', '2021-03-18 13:49:21', '<!-- wp:image {\"id\":121,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/ftps.png\" alt=\"\" class=\"wp-image-121\"/></figure>\n<!-- /wp:image -->', 'Ftps', '', 'publish', 'closed', 'closed', '', 'ftps', '', '', '2021-03-18 16:32:52', '2021-03-18 16:32:52', '', 0, 'http://192.168.49.2:5050/?page_id=25', 0, 'page', '', 0),
(26, 1, '2021-03-18 13:49:21', '2021-03-18 13:49:21', '', 'Ftps', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2021-03-18 13:49:21', '2021-03-18 13:49:21', '', 25, 'http://192.168.49.2:5050/?p=26', 0, 'revision', '', 0),
(27, 1, '2021-03-18 13:50:32', '2021-03-18 13:50:32', '<!-- wp:image {\"id\":108,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/Wordpress.png\" alt=\"\" class=\"wp-image-108\"/></figure>\n<!-- /wp:image -->', 'Wordpress', '', 'publish', 'closed', 'closed', '', 'wordpress', '', '', '2021-03-18 16:13:04', '2021-03-18 16:13:04', '', 0, 'http://192.168.49.2:5050/?page_id=27', 0, 'page', '', 0),
(28, 1, '2021-03-18 13:50:32', '2021-03-18 13:50:32', '', 'Wordpress', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2021-03-18 13:50:32', '2021-03-18 13:50:32', '', 27, 'http://192.168.49.2:5050/?p=28', 0, 'revision', '', 0),
(29, 1, '2021-03-18 13:52:56', '2021-03-18 13:52:56', '{\n    \"twentytwentyone::nav_menu_locations[primary]\": {\n        \"value\": -1378966321314621400,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 13:52:54\"\n    },\n    \"nav_menu[-1378966321314621400]\": {\n        \"value\": {\n            \"name\": \"Main Navigation\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 13:52:54\"\n    },\n    \"nav_menu_item[-2374963281796141000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Home\",\n            \"url\": \"http://192.168.49.2:5050\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Home\",\n            \"nav_menu_term_id\": -1378966321314621400,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 13:52:54\"\n    },\n    \"nav_menu_item[-6359560004766822000]\": {\n        \"value\": {\n            \"object_id\": 27,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 5,\n            \"type\": \"post_type\",\n            \"title\": \"Wordpress\",\n            \"url\": \"http://192.168.49.2:5050/?page_id=27\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Wordpress\",\n            \"nav_menu_term_id\": -1378966321314621400,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 13:52:54\"\n    },\n    \"nav_menu_item[-3194461339309211600]\": {\n        \"value\": {\n            \"object_id\": 23,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 6,\n            \"type\": \"post_type\",\n            \"title\": \"Influxdb\",\n            \"url\": \"http://192.168.49.2:5050/?page_id=23\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Influxdb\",\n            \"nav_menu_term_id\": -1378966321314621400,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 13:52:54\"\n    },\n    \"nav_menu_item[-3283160081680724000]\": {\n        \"value\": {\n            \"object_id\": 25,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 8,\n            \"type\": \"post_type\",\n            \"title\": \"Ftps\",\n            \"url\": \"http://192.168.49.2:5050/?page_id=25\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Ftps\",\n            \"nav_menu_term_id\": -1378966321314621400,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 13:52:54\"\n    },\n    \"nav_menu_item[-2989597754463699000]\": {\n        \"value\": {\n            \"object_id\": 21,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 7,\n            \"type\": \"post_type\",\n            \"title\": \"Grafana\",\n            \"url\": \"http://192.168.49.2:5050/?page_id=21\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Grafana\",\n            \"nav_menu_term_id\": -1378966321314621400,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 13:52:54\"\n    },\n    \"nav_menu_item[-2808073825274278000]\": {\n        \"value\": {\n            \"object_id\": 19,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"post_type\",\n            \"title\": \"PhpMyAdmin\",\n            \"url\": \"http://192.168.49.2:5050/?page_id=19\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"PhpMyAdmin\",\n            \"nav_menu_term_id\": -1378966321314621400,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 13:52:54\"\n    },\n    \"nav_menu_item[-1302161770565847000]\": {\n        \"value\": {\n            \"object_id\": 17,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"Mysql\",\n            \"url\": \"http://192.168.49.2:5050/?page_id=17\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Mysql\",\n            \"nav_menu_term_id\": -1378966321314621400,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 13:52:54\"\n    },\n    \"nav_menu_item[-2998361864949885000]\": {\n        \"value\": {\n            \"object_id\": 15,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"Nginx\",\n            \"url\": \"http://192.168.49.2:5050/?page_id=15\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"Nginx\",\n            \"nav_menu_term_id\": -1378966321314621400,\n            \"_invalid\": false,\n            \"type_label\": \"Page\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 13:52:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '28b15dd0-3142-42b7-8c74-35ba11aa6ed9', '', '', '2021-03-18 13:52:56', '2021-03-18 13:52:56', '', 0, 'http://192.168.49.2:5050/?p=29', 0, 'customize_changeset', '', 0),
(30, 1, '2021-03-18 13:52:56', '2021-03-18 13:52:56', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-03-18 13:52:56', '2021-03-18 13:52:56', '', 0, 'http://192.168.49.2:5050/?p=30', 1, 'nav_menu_item', '', 0),
(31, 1, '2021-03-18 13:52:57', '2021-03-18 13:52:57', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2021-03-18 13:52:57', '2021-03-18 13:52:57', '', 0, 'http://192.168.49.2:5050/?p=31', 5, 'nav_menu_item', '', 0),
(32, 1, '2021-03-18 13:52:57', '2021-03-18 13:52:57', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2021-03-18 13:52:57', '2021-03-18 13:52:57', '', 0, 'http://192.168.49.2:5050/?p=32', 6, 'nav_menu_item', '', 0),
(33, 1, '2021-03-18 13:52:57', '2021-03-18 13:52:57', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2021-03-18 13:52:57', '2021-03-18 13:52:57', '', 0, 'http://192.168.49.2:5050/?p=33', 8, 'nav_menu_item', '', 0),
(34, 1, '2021-03-18 13:52:57', '2021-03-18 13:52:57', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2021-03-18 13:52:57', '2021-03-18 13:52:57', '', 0, 'http://192.168.49.2:5050/?p=34', 7, 'nav_menu_item', '', 0),
(35, 1, '2021-03-18 13:52:57', '2021-03-18 13:52:57', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2021-03-18 13:52:57', '2021-03-18 13:52:57', '', 0, 'http://192.168.49.2:5050/?p=35', 4, 'nav_menu_item', '', 0),
(36, 1, '2021-03-18 13:52:58', '2021-03-18 13:52:58', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2021-03-18 13:52:58', '2021-03-18 13:52:58', '', 0, 'http://192.168.49.2:5050/?p=36', 3, 'nav_menu_item', '', 0),
(37, 1, '2021-03-18 13:52:58', '2021-03-18 13:52:58', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2021-03-18 13:52:58', '2021-03-18 13:52:58', '', 0, 'http://192.168.49.2:5050/?p=37', 2, 'nav_menu_item', '', 0),
(38, 1, '2021-03-18 13:56:33', '2021-03-18 13:56:33', '', 'Ft_services', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-03-18 13:56:33', '2021-03-18 13:56:33', '', 1, 'http://192.168.49.2:5050/?p=38', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(39, 1, '2021-03-18 14:21:10', '2021-03-18 14:21:10', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 14:21:10\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e0ee8f38-aea6-4f70-a99e-ae59d3417186', '', '', '2021-03-18 14:21:10', '2021-03-18 14:21:10', '', 0, 'http://192.168.49.2:5050/?p=39', 0, 'customize_changeset', '', 0),
(40, 1, '2021-03-18 14:22:02', '2021-03-18 14:22:02', '{\n    \"twentytwentyone::background_color\": {\n        \"value\": \"#1d282b\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 14:22:02\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9c888618-8cb6-4183-a435-73ad318f9545', '', '', '2021-03-18 14:22:02', '2021-03-18 14:22:02', '', 0, 'http://192.168.49.2:5050/?p=40', 0, 'customize_changeset', '', 0),
(44, 1, '2021-03-18 14:28:59', '2021-03-18 14:28:59', '<!-- wp:image {\"id\":42,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/Grafana.png\" alt=\"\" class=\"wp-image-42\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Grafana', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-03-18 14:28:59', '2021-03-18 14:28:59', '', 21, 'http://192.168.49.2:5050/?p=44', 0, 'revision', '', 0),
(46, 1, '2021-03-18 14:29:24', '2021-03-18 14:29:24', '<!-- wp:image {\"id\":45,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/PhpMyAdmin.png\" alt=\"\" class=\"wp-image-45\"/></figure>\n<!-- /wp:image -->', 'PhpMyAdmin', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2021-03-18 14:29:24', '2021-03-18 14:29:24', '', 19, 'http://192.168.49.2:5050/?p=46', 0, 'revision', '', 0),
(48, 1, '2021-03-18 14:29:44', '2021-03-18 14:29:44', '<!-- wp:image {\"id\":47,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/Wordpress.png\" alt=\"\" class=\"wp-image-47\"/></figure>\n<!-- /wp:image -->', 'Wordpress', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2021-03-18 14:29:44', '2021-03-18 14:29:44', '', 27, 'http://192.168.49.2:5050/?p=48', 0, 'revision', '', 0),
(49, 1, '2021-03-18 14:30:48', '2021-03-18 14:30:48', '{\n    \"twentytwentyone::background_color\": {\n        \"value\": \"#080a14\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 14:30:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f790e914-99bc-4665-9268-dd5b049a4baa', '', '', '2021-03-18 14:30:48', '2021-03-18 14:30:48', '', 0, 'http://192.168.49.2:5050/?p=49', 0, 'customize_changeset', '', 0),
(50, 1, '2021-03-18 14:35:31', '2021-03-18 14:35:31', '{\n    \"custom_css[twentytwentyone]\": {\n        \"value\": \"color: #FF00FF !important;\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 14:35:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3c403e67-5a1d-4cf5-929c-c478417d934d', '', '', '2021-03-18 14:35:31', '2021-03-18 14:35:31', '', 0, 'http://192.168.49.2:5050/?p=50', 0, 'customize_changeset', '', 0),
(51, 1, '2021-03-18 14:35:31', '2021-03-18 14:35:31', '', 'twentytwentyone', '', 'publish', 'closed', 'closed', '', 'twentytwentyone', '', '', '2021-03-18 14:36:54', '2021-03-18 14:36:54', '', 0, 'http://192.168.49.2:5050/?p=51', 0, 'custom_css', '', 0),
(52, 1, '2021-03-18 14:35:31', '2021-03-18 14:35:31', 'color: #FF00FF !important;', 'twentytwentyone', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-03-18 14:35:31', '2021-03-18 14:35:31', '', 51, 'http://192.168.49.2:5050/?p=52', 0, 'revision', '', 0),
(53, 1, '2021-03-18 14:36:34', '2021-03-18 14:36:34', '{\n    \"custom_css[twentytwentyone]\": {\n        \"value\": \"a h1 p {\\n\\tcolor: #FF00FF !important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 14:36:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3ea64fc2-368b-4d94-8dd6-e986830baab8', '', '', '2021-03-18 14:36:34', '2021-03-18 14:36:34', '', 0, 'http://192.168.49.2:5050/?p=53', 0, 'customize_changeset', '', 0),
(54, 1, '2021-03-18 14:36:34', '2021-03-18 14:36:34', 'a h1 p {\n	color: #FF00FF !important;\n}', 'twentytwentyone', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-03-18 14:36:34', '2021-03-18 14:36:34', '', 51, 'http://192.168.49.2:5050/?p=54', 0, 'revision', '', 0),
(55, 1, '2021-03-18 14:36:53', '2021-03-18 14:36:53', '{\n    \"custom_css[twentytwentyone]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 14:36:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e2fa32b6-c1ed-438c-81ad-38ab326ceee6', '', '', '2021-03-18 14:36:53', '2021-03-18 14:36:53', '', 0, 'http://192.168.49.2:5050/?p=55', 0, 'customize_changeset', '', 0),
(56, 1, '2021-03-18 14:36:54', '2021-03-18 14:36:54', '', 'twentytwentyone', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-03-18 14:36:54', '2021-03-18 14:36:54', '', 51, 'http://192.168.49.2:5050/?p=56', 0, 'revision', '', 0),
(57, 1, '2021-03-18 14:45:34', '2021-03-18 14:45:34', '{\n    \"twentytwentyonechild::background_color\": {\n        \"value\": \"#010011\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 14:45:34\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ca003d7b-498d-4e58-ac6c-9ffb36489d73', '', '', '2021-03-18 14:45:34', '2021-03-18 14:45:34', '', 0, 'http://192.168.49.2:5050/?p=57', 0, 'customize_changeset', '', 0),
(58, 1, '2021-03-18 14:55:42', '2021-03-18 14:55:42', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [\n            \"meta-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 14:55:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ac74f905-6475-46db-b846-8452e166fbf7', '', '', '2021-03-18 14:55:42', '2021-03-18 14:55:42', '', 0, 'http://192.168.49.2:5050/?p=58', 0, 'customize_changeset', '', 0),
(59, 1, '2021-03-18 14:56:14', '2021-03-18 14:56:14', '{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 14:56:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '4e40ec61-df4a-4bf7-8a24-6b9c5a015d1b', '', '', '2021-03-18 14:56:14', '2021-03-18 14:56:14', '', 0, 'http://192.168.49.2:5050/?p=59', 0, 'customize_changeset', '', 0),
(60, 1, '2021-03-18 14:56:31', '2021-03-18 14:56:31', '{\n    \"twentytwentyonechild::display_excerpt_or_full_post\": {\n        \"value\": \"full\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 14:56:31\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f2b2d13f-d3fe-41be-b0da-cb0373345eb6', '', '', '2021-03-18 14:56:31', '2021-03-18 14:56:31', '', 0, 'http://192.168.49.2:5050/?p=60', 0, 'customize_changeset', '', 0),
(61, 1, '2021-03-18 14:57:11', '0000-00-00 00:00:00', '{\n    \"twentytwentyonechild::nav_menu_locations[footer]\": {\n        \"value\": -6434148917431435000,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 14:57:11\"\n    },\n    \"nav_menu[-6434148917431435000]\": {\n        \"value\": {\n            \"name\": \"Meta\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 14:57:11\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '537d0fe4-3b83-4b13-a6c5-4f7f11a54cc9', '', '', '2021-03-18 14:57:11', '0000-00-00 00:00:00', '', 0, 'http://192.168.49.2:5050/?p=61', 0, 'customize_changeset', '', 0),
(62, 1, '2021-03-18 15:12:15', '2021-03-18 15:12:15', '{\n    \"custom_css[twentytwentyonechild]\": {\n        \"value\": \"\\t--global--color-primary: #7AE4FF !important;\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 15:12:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '042b6824-2265-45ed-ae46-fe3e2d5b005d', '', '', '2021-03-18 15:12:15', '2021-03-18 15:12:15', '', 0, 'http://192.168.49.2:5050/?p=62', 0, 'customize_changeset', '', 0),
(63, 1, '2021-03-18 15:12:15', '2021-03-18 15:12:15', 'h1 {\n	text-align: center !important;\n}', 'twentytwentyonechild', '', 'publish', 'closed', 'closed', '', 'twentytwentyonechild', '', '', '2021-03-18 15:17:37', '2021-03-18 15:17:37', '', 0, 'http://192.168.49.2:5050/?p=63', 0, 'custom_css', '', 0),
(64, 1, '2021-03-18 15:12:15', '2021-03-18 15:12:15', '	--global--color-primary: #7AE4FF !important;\n', 'twentytwentyonechild', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2021-03-18 15:12:15', '2021-03-18 15:12:15', '', 63, 'http://192.168.49.2:5050/?p=64', 0, 'revision', '', 0),
(65, 1, '2021-03-18 15:12:25', '2021-03-18 15:12:25', '{\n    \"custom_css[twentytwentyonechild]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 15:12:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f4a30a1d-d7f4-4b17-9566-be68f643d35f', '', '', '2021-03-18 15:12:25', '2021-03-18 15:12:25', '', 0, 'http://192.168.49.2:5050/?p=65', 0, 'customize_changeset', '', 0),
(66, 1, '2021-03-18 15:12:25', '2021-03-18 15:12:25', '', 'twentytwentyonechild', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2021-03-18 15:12:25', '2021-03-18 15:12:25', '', 63, 'http://192.168.49.2:5050/?p=66', 0, 'revision', '', 0),
(67, 1, '2021-03-18 15:13:46', '2021-03-18 15:13:46', '{\n    \"twentytwentyonechild::background_color\": {\n        \"value\": \"#090811\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 15:13:46\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '29e6920e-5816-4cba-857b-825e7b0dcd3b', '', '', '2021-03-18 15:13:46', '2021-03-18 15:13:46', '', 0, 'http://192.168.49.2:5050/?p=67', 0, 'customize_changeset', '', 0),
(68, 1, '2021-03-18 15:17:37', '2021-03-18 15:17:37', '{\n    \"custom_css[twentytwentyonechild]\": {\n        \"value\": \"h1 {\\n\\ttext-align: center !important;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 15:17:37\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1c3058b9-8d47-4e42-ba78-8f3e8f0a8c9e', '', '', '2021-03-18 15:17:37', '2021-03-18 15:17:37', '', 0, 'http://192.168.49.2:5050/?p=68', 0, 'customize_changeset', '', 0),
(69, 1, '2021-03-18 15:17:37', '2021-03-18 15:17:37', 'h1 {\n	text-align: center !important;\n}', 'twentytwentyonechild', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2021-03-18 15:17:37', '2021-03-18 15:17:37', '', 63, 'http://192.168.49.2:5050/?p=69', 0, 'revision', '', 0),
(71, 1, '2021-03-18 15:27:26', '2021-03-18 15:27:26', '<!-- wp:image {\"id\":70,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/nginx-1024x1024.png\" alt=\"\" class=\"wp-image-70\"/></figure>\n<!-- /wp:image -->', 'Nginx', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-03-18 15:27:26', '2021-03-18 15:27:26', '', 15, 'http://192.168.49.2:5050/?p=71', 0, 'revision', '', 0),
(73, 1, '2021-03-18 15:32:16', '2021-03-18 15:32:16', '<!-- wp:image {\"id\":72,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/MariaDB_Logo.png\" alt=\"\" class=\"wp-image-72\"/></figure>\n<!-- /wp:image -->', 'Mysql', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-03-18 15:32:16', '2021-03-18 15:32:16', '', 17, 'http://192.168.49.2:5050/?p=73', 0, 'revision', '', 0),
(75, 1, '2021-03-18 15:33:24', '2021-03-18 15:33:24', '<!-- wp:image {\"id\":74,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/MariaDB_Logo-1.png\" alt=\"\" class=\"wp-image-74\"/></figure>\n<!-- /wp:image -->', 'Mysql', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-03-18 15:33:24', '2021-03-18 15:33:24', '', 17, 'http://192.168.49.2:5050/?p=75', 0, 'revision', '', 0),
(77, 1, '2021-03-18 15:34:34', '2021-03-18 15:34:34', '<!-- wp:image {\"id\":74,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image size-large is-style-rounded\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/MariaDB_Logo-1.png\" alt=\"\" class=\"wp-image-74\"/></figure>\n<!-- /wp:image -->', 'Mysql', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-03-18 15:34:34', '2021-03-18 15:34:34', '', 17, 'http://192.168.49.2:5050/?p=77', 0, 'revision', '', 0),
(79, 1, '2021-03-18 15:40:25', '2021-03-18 15:40:25', '<!-- wp:image {\"id\":78,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/Influxdb_logo.png\" alt=\"\" class=\"wp-image-78\"/></figure>\n<!-- /wp:image -->', 'Influxdb', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-03-18 15:40:25', '2021-03-18 15:40:25', '', 23, 'http://192.168.49.2:5050/?p=79', 0, 'revision', '', 0),
(86, 1, '2021-03-18 16:00:53', '2021-03-18 16:00:53', '', 'Nginx', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-03-18 16:00:53', '2021-03-18 16:00:53', '', 15, 'http://192.168.49.2:5050/?p=86', 0, 'revision', '', 0),
(87, 1, '2021-03-18 16:01:13', '2021-03-18 16:01:13', '', 'Grafana', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-03-18 16:01:13', '2021-03-18 16:01:13', '', 21, 'http://192.168.49.2:5050/?p=87', 0, 'revision', '', 0),
(88, 1, '2021-03-18 16:01:25', '2021-03-18 16:01:25', '', 'Influxdb', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-03-18 16:01:25', '2021-03-18 16:01:25', '', 23, 'http://192.168.49.2:5050/?p=88', 0, 'revision', '', 0),
(89, 1, '2021-03-18 16:01:36', '2021-03-18 16:01:36', '', 'Mysql', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-03-18 16:01:36', '2021-03-18 16:01:36', '', 17, 'http://192.168.49.2:5050/?p=89', 0, 'revision', '', 0),
(90, 1, '2021-03-18 16:01:56', '2021-03-18 16:01:56', '', 'PhpMyAdmin', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2021-03-18 16:01:56', '2021-03-18 16:01:56', '', 19, 'http://192.168.49.2:5050/?p=90', 0, 'revision', '', 0),
(91, 1, '2021-03-18 16:02:10', '2021-03-18 16:02:10', '', 'Wordpress', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2021-03-18 16:02:10', '2021-03-18 16:02:10', '', 27, 'http://192.168.49.2:5050/?p=91', 0, 'revision', '', 0),
(93, 1, '2021-03-18 16:04:55', '2021-03-18 16:04:55', '<!-- wp:image {\"id\":92,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/Grafana.png\" alt=\"\" class=\"wp-image-92\"/></figure>\n<!-- /wp:image -->', 'Grafana', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-03-18 16:04:55', '2021-03-18 16:04:55', '', 21, 'http://192.168.49.2:5050/?p=93', 0, 'revision', '', 0),
(94, 1, '2021-03-18 16:05:20', '2021-03-18 16:05:20', '', 'Grafana', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-03-18 16:05:20', '2021-03-18 16:05:20', '', 21, 'http://192.168.49.2:5050/?p=94', 0, 'revision', '', 0),
(96, 1, '2021-03-18 16:07:20', '2021-03-18 16:07:20', '<!-- wp:image {\"id\":95,\"width\":471,\"height\":480,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large is-resized\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/Grafana.png\" alt=\"Grafana Logo\" class=\"wp-image-95\" width=\"471\" height=\"480\"/></figure>\n<!-- /wp:image -->', 'Grafana', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-03-18 16:07:20', '2021-03-18 16:07:20', '', 21, 'http://192.168.49.2:5050/?p=96', 0, 'revision', '', 0),
(97, 1, '2021-03-18 16:07:42', '2021-03-18 16:07:42', '', 'Grafana', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-03-18 16:07:42', '2021-03-18 16:07:42', '', 21, 'http://192.168.49.2:5050/?p=97', 0, 'revision', '', 0),
(99, 1, '2021-03-18 16:11:33', '2021-03-18 16:11:33', '<!-- wp:image {\"id\":98,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/Grafana.png\" alt=\"\" class=\"wp-image-98\"/></figure>\n<!-- /wp:image -->', 'Grafana', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-03-18 16:11:33', '2021-03-18 16:11:33', '', 21, 'http://192.168.49.2:5050/?p=99', 0, 'revision', '', 0),
(100, 1, '2021-03-18 16:11:48', '2021-03-18 16:11:48', '', 'Influxdb_logo', '', 'inherit', 'open', 'closed', '', 'influxdb_logo', '', '', '2021-03-18 16:11:48', '2021-03-18 16:11:48', '', 23, 'http://192.168.49.2:5050/wp-content/uploads/2021/03/Influxdb_logo.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2021-03-18 16:11:50', '2021-03-18 16:11:50', '<!-- wp:image {\"id\":100,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/Influxdb_logo.png\" alt=\"\" class=\"wp-image-100\"/></figure>\n<!-- /wp:image -->', 'Influxdb', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2021-03-18 16:11:50', '2021-03-18 16:11:50', '', 23, 'http://192.168.49.2:5050/?p=101', 0, 'revision', '', 0),
(102, 1, '2021-03-18 16:12:09', '2021-03-18 16:12:09', '', 'MariaDB_Logo', '', 'inherit', 'open', 'closed', '', 'mariadb_logo', '', '', '2021-03-18 16:12:09', '2021-03-18 16:12:09', '', 17, 'http://192.168.49.2:5050/wp-content/uploads/2021/03/MariaDB_Logo.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2021-03-18 16:12:13', '2021-03-18 16:12:13', '<!-- wp:image {\"id\":102,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image size-large is-style-rounded\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/MariaDB_Logo.png\" alt=\"\" class=\"wp-image-102\"/></figure>\n<!-- /wp:image -->', 'Mysql', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-03-18 16:12:13', '2021-03-18 16:12:13', '', 17, 'http://192.168.49.2:5050/?p=103', 0, 'revision', '', 0),
(104, 1, '2021-03-18 16:12:29', '2021-03-18 16:12:29', '', 'nginx', '', 'inherit', 'open', 'closed', '', 'nginx-2', '', '', '2021-03-18 16:12:29', '2021-03-18 16:12:29', '', 15, 'http://192.168.49.2:5050/wp-content/uploads/2021/03/nginx.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2021-03-18 16:12:32', '2021-03-18 16:12:32', '<!-- wp:image {\"id\":104,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/nginx-1024x1024.png\" alt=\"\" class=\"wp-image-104\"/></figure>\n<!-- /wp:image -->', 'Nginx', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2021-03-18 16:12:32', '2021-03-18 16:12:32', '', 15, 'http://192.168.49.2:5050/?p=105', 0, 'revision', '', 0),
(106, 1, '2021-03-18 16:12:44', '2021-03-18 16:12:44', '', 'PhpMyAdmin', '', 'inherit', 'open', 'closed', '', 'phpmyadmin-2', '', '', '2021-03-18 16:12:44', '2021-03-18 16:12:44', '', 19, 'http://192.168.49.2:5050/wp-content/uploads/2021/03/PhpMyAdmin.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2021-03-18 16:12:46', '2021-03-18 16:12:46', '<!-- wp:image {\"id\":106,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/PhpMyAdmin.png\" alt=\"\" class=\"wp-image-106\"/></figure>\n<!-- /wp:image -->', 'PhpMyAdmin', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2021-03-18 16:12:46', '2021-03-18 16:12:46', '', 19, 'http://192.168.49.2:5050/?p=107', 0, 'revision', '', 0),
(108, 1, '2021-03-18 16:13:02', '2021-03-18 16:13:02', '', 'Wordpress', '', 'inherit', 'open', 'closed', '', 'wordpress-2', '', '', '2021-03-18 16:13:02', '2021-03-18 16:13:02', '', 27, 'http://192.168.49.2:5050/wp-content/uploads/2021/03/Wordpress.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2021-03-18 16:13:04', '2021-03-18 16:13:04', '<!-- wp:image {\"id\":108,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/Wordpress.png\" alt=\"\" class=\"wp-image-108\"/></figure>\n<!-- /wp:image -->', 'Wordpress', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2021-03-18 16:13:04', '2021-03-18 16:13:04', '', 27, 'http://192.168.49.2:5050/?p=109', 0, 'revision', '', 0),
(111, 1, '2021-03-18 16:17:41', '2021-03-18 16:17:41', '<!-- wp:image {\"id\":110,\"width\":606,\"height\":321,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image size-large is-resized is-style-rounded\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/ftps.jpg\" alt=\"\" class=\"wp-image-110\" width=\"606\" height=\"321\"/></figure>\n<!-- /wp:image -->', 'Ftps', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2021-03-18 16:17:41', '2021-03-18 16:17:41', '', 25, 'http://192.168.49.2:5050/?p=111', 0, 'revision', '', 0),
(114, 1, '2021-03-18 16:22:01', '2021-03-18 16:22:01', '<!-- wp:image {\"id\":113,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image size-large is-style-rounded\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/ftps.png\" alt=\"\" class=\"wp-image-113\"/></figure>\n<!-- /wp:image -->', 'Ftps', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2021-03-18 16:22:01', '2021-03-18 16:22:01', '', 25, 'http://192.168.49.2:5050/?p=114', 0, 'revision', '', 0),
(115, 1, '2021-03-18 16:27:13', '2021-03-18 16:27:13', '', 'Grafana', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-03-18 16:27:13', '2021-03-18 16:27:13', '', 21, 'http://192.168.49.2:5050/?p=115', 0, 'revision', '', 0),
(117, 1, '2021-03-18 16:27:42', '2021-03-18 16:27:42', '<!-- wp:image {\"id\":113,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image size-large is-style-rounded\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/ftps.png\" alt=\"\" class=\"wp-image-113\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":116,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/ftps.png\" alt=\"\" class=\"wp-image-116\"/></figure>\n<!-- /wp:image -->', 'Ftps', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2021-03-18 16:27:42', '2021-03-18 16:27:42', '', 25, 'http://192.168.49.2:5050/?p=117', 0, 'revision', '', 0),
(118, 1, '2021-03-18 16:27:59', '2021-03-18 16:27:59', '<!-- wp:image {\"id\":113,\"sizeSlug\":\"large\",\"linkDestination\":\"none\",\"className\":\"is-style-rounded\"} -->\n<figure class=\"wp-block-image size-large is-style-rounded\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/ftps.png\" alt=\"\" class=\"wp-image-113\"/></figure>\n<!-- /wp:image -->', 'Ftps', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2021-03-18 16:27:59', '2021-03-18 16:27:59', '', 25, 'http://192.168.49.2:5050/?p=118', 0, 'revision', '', 0),
(119, 1, '2021-03-18 16:28:26', '2021-03-18 16:28:26', '', 'Grafana', '', 'inherit', 'open', 'closed', '', 'grafana-2', '', '', '2021-03-18 16:28:26', '2021-03-18 16:28:26', '', 21, 'http://192.168.49.2:5050/wp-content/uploads/2021/03/Grafana.png', 0, 'attachment', 'image/png', 0),
(120, 1, '2021-03-18 16:28:31', '2021-03-18 16:28:31', '<!-- wp:image {\"id\":119,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/Grafana.png\" alt=\"\" class=\"wp-image-119\"/></figure>\n<!-- /wp:image -->', 'Grafana', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2021-03-18 16:28:31', '2021-03-18 16:28:31', '', 21, 'http://192.168.49.2:5050/?p=120', 0, 'revision', '', 0),
(121, 1, '2021-03-18 16:32:48', '2021-03-18 16:32:48', '', 'ftps', '', 'inherit', 'open', 'closed', '', 'ftps-2', '', '', '2021-03-18 16:32:48', '2021-03-18 16:32:48', '', 25, 'http://192.168.49.2:5050/wp-content/uploads/2021/03/ftps.png', 0, 'attachment', 'image/png', 0),
(122, 1, '2021-03-18 16:32:52', '2021-03-18 16:32:52', '<!-- wp:image {\"id\":121,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://192.168.49.2:5050/wp-content/uploads/2021/03/ftps.png\" alt=\"\" class=\"wp-image-121\"/></figure>\n<!-- /wp:image -->', 'Ftps', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2021-03-18 16:32:52', '2021-03-18 16:32:52', '', 25, 'http://192.168.49.2:5050/?p=122', 0, 'revision', '', 0),
(123, 1, '2021-03-18 16:34:36', '2021-03-18 16:34:36', '<!-- wp:paragraph -->\n<p id=\"192.168.49.2:5050/wp-admin\">Go to admin page</p>\n<!-- /wp:paragraph -->', 'Ft_services', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2021-03-18 16:34:36', '2021-03-18 16:34:36', '', 1, 'http://192.168.49.2:5050/?p=123', 0, 'revision', '', 0),
(124, 1, '2021-03-18 16:35:15', '2021-03-18 16:35:15', '<!-- wp:paragraph -->\n<p><a href=\"http://192.168.49.2:5050/wp-admin\" data-type=\"URL\" data-id=\"192.168.49.2:5050/wp-admin\">Go to admin page</a></p>\n<!-- /wp:paragraph -->', 'Ft_services', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-03-18 16:35:15', '2021-03-18 16:35:15', '', 1, 'http://192.168.49.2:5050/?p=124', 0, 'revision', '', 0),
(125, 1, '2021-03-18 17:56:01', '2021-03-18 17:56:01', '', 'favicon', '', 'inherit', 'open', 'closed', '', 'favicon', '', '', '2021-03-18 17:56:01', '2021-03-18 17:56:01', '', 0, 'http://192.168.49.2:5050/wp-content/uploads/2021/03/favicon-1.png', 0, 'attachment', 'image/png', 0),
(126, 1, '2021-03-18 17:56:15', '2021-03-18 17:56:15', 'http://192.168.49.2:5050/wp-content/uploads/2021/03/cropped-favicon-1.png', 'cropped-favicon-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-favicon-1-png', '', '', '2021-03-18 17:56:15', '2021-03-18 17:56:15', '', 0, 'http://192.168.49.2:5050/wp-content/uploads/2021/03/cropped-favicon-1.png', 0, 'attachment', 'image/png', 0),
(127, 1, '2021-03-18 17:56:18', '2021-03-18 17:56:18', '{\n    \"site_icon\": {\n        \"value\": 126,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2021-03-18 17:56:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e07d20fa-e51a-4ed5-9b36-835dc2315642', '', '', '2021-03-18 17:56:18', '2021-03-18 17:56:18', '', 0, 'http://192.168.49.2:5050/?p=127', 0, 'customize_changeset', '', 0);

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
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Navigation', 'main-navigation', 0);

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
(1, 1, 0),
(30, 2, 0),
(31, 2, 0),
(32, 2, 0),
(33, 2, 0),
(34, 2, 0),
(35, 2, 0),
(36, 2, 0),
(37, 2, 0);

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
(2, 2, 'nav_menu', '', 0, 8);

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
(1, 1, 'nickname', 'wpuser'),
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
(14, 1, 'dismissed_wp_pointers', 'theme_editor_notice,plugin_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:5:{s:64:\"0d23383b53f4d5db96dbee3d503cc6c8516f6c0af0b7e83f56741136f3777af0\";a:4:{s:10:\"expiration\";i:1616247850;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36\";s:5:\"login\";i:1616075050;}s:64:\"fdaa0d77626789ec955fd4c48ace3fdb567aacc0265fa442186a37d4f412ef9e\";a:4:{s:10:\"expiration\";i:1616255459;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36\";s:5:\"login\";i:1616082659;}s:64:\"c3ca8ea2da0ea9bf9177bf04454a28e35543dbb29a0a7a4f1aa875dfed22f4db\";a:4:{s:10:\"expiration\";i:1616255881;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36\";s:5:\"login\";i:1616083081;}s:64:\"347786e7d15fd3f054c33ad4bcd2feb5272b3c94db366cfee360a06f5250276d\";a:4:{s:10:\"expiration\";i:1616256660;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36\";s:5:\"login\";i:1616083860;}s:64:\"c9281b419cba845465a1d1a3e57ab2b5268fff2f08e22097c39c910911e2e273\";a:4:{s:10:\"expiration\";i:1616262914;s:2:\"ip\";s:10:\"172.17.0.1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.66 Safari/537.36\";s:5:\"login\";i:1616090114;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 2, 'nickname', 'user1'),
(19, 2, 'first_name', ''),
(20, 2, 'last_name', ''),
(21, 2, 'description', ''),
(22, 2, 'rich_editing', 'true'),
(23, 2, 'syntax_highlighting', 'true'),
(24, 2, 'comment_shortcuts', 'false'),
(25, 2, 'admin_color', 'fresh'),
(26, 2, 'use_ssl', '0'),
(27, 2, 'show_admin_bar_front', 'true'),
(28, 2, 'locale', ''),
(29, 2, 'wp_capabilities', 'a:1:{s:11:\"contributor\";b:1;}'),
(30, 2, 'wp_user_level', '1'),
(31, 2, 'dismissed_wp_pointers', ''),
(32, 3, 'nickname', 'user2'),
(33, 3, 'first_name', ''),
(34, 3, 'last_name', ''),
(35, 3, 'description', ''),
(36, 3, 'rich_editing', 'true'),
(37, 3, 'syntax_highlighting', 'true'),
(38, 3, 'comment_shortcuts', 'false'),
(39, 3, 'admin_color', 'fresh'),
(40, 3, 'use_ssl', '0'),
(41, 3, 'show_admin_bar_front', 'true'),
(42, 3, 'locale', ''),
(43, 3, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(44, 3, 'wp_user_level', '7'),
(45, 3, 'dismissed_wp_pointers', ''),
(46, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(47, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(48, 1, 'wp_media_library_mode', 'list'),
(49, 1, 'wp_user-settings', 'libraryContent=browse'),
(50, 1, 'wp_user-settings-time', '1616083250');

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
(1, 'wpuser', '$P$BlTSOetFcSVbLkjCiEYQJ.WJ8sq7.B.', 'wpuser', 'wpuser@services.org', 'http://192.168.49.2:5050', '2021-03-03 10:07:46', '', 0, 'wpuser'),
(2, 'user1', '$P$BF/q8Ve7xu3TUrSIuunZfc9g5O758D1', 'user1', 'user1@service.org', '', '2021-03-03 10:09:19', '', 0, 'user1'),
(3, 'user2', '$P$BQ5AN7FN9NtXv4fNVKXNYtudoRpAJS.', 'user2', 'user2@services.org', '', '2021-03-03 10:09:46', '', 0, 'user2');

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
