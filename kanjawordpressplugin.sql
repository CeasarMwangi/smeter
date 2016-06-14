-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2015 at 11:50 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kanjawordpressplugin`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:3000/kanjawordpressplugin', 'yes'),
(2, 'home', 'http://localhost:3000/kanjawordpressplugin', 'yes'),
(3, 'blogname', 'kanjawordpressplugin', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'ceasarmwangi@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:10:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:41:"dk-pricr-responsive-pricing-table/rpt.php";i:2;s:30:"formget-contact-form/index.php";i:3;s:9:"hello.php";i:4;s:39:"mini-twitter-feed/mini-twitter-feed.php";i:5;s:37:"my-facebook-tags/my-facebook-tags.php";i:6;s:27:"price-table/price-table.php";i:7;s:59:"ultimate-social-media-icons/ultimate_social_media_icons.php";i:8;s:34:"wp-lorem-ipsum-generator/index.php";i:9;s:27:"wp-super-cache/wp-cache.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:3:{i:0;s:79:"C:\\xampp\\htdocs\\kanjawordpressplugin/wp-content/themes/twentyfifteen/single.php";i:1;s:78:"C:\\xampp\\htdocs\\kanjawordpressplugin/wp-content/themes/twentyfifteen/style.css";i:2;s:0:"";}', 'no'),
(41, 'template', 'local-business', 'yes'),
(42, 'stylesheet', 'local-business', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33056', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'posts', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:3:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:8:"Location";s:4:"text";s:353:"<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d31910.737332923894!2d36.87804446715506!3d-1.2674447408348177!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x182f1412fba52c8b%3A0x4b1c1edbdfba7c21!2sKCC+Train+Stop!5e0!3m2!1ssw!2ske!4v1448084815173" width="280" height="140" frameborder="0" style="border:0" allowfullscreen></iframe>";s:6:"filter";b:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:2:{s:27:"wp-super-cache/wp-cache.php";s:22:"wpsupercache_uninstall";s:59:"ultimate-social-media-icons/ultimate_social_media_icons.php";s:20:"sfsi_Unistall_plugin";}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '0', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'finished_splitting_shared_terms', '1', 'yes'),
(89, 'initial_db_version', '33056', 'yes'),
(90, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:7:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:3:{i:0;s:8:"search-2";i:1;s:7:"pages-2";i:2;s:20:"minitwitter-widget-2";}s:21:"secondary-widget-area";a:2:{i:0;s:13:"sfsi-widget-2";i:1;s:19:"subscriber_widget-2";}s:24:"first-footer-widget-area";a:0:{}s:25:"second-footer-widget-area";a:0:{}s:24:"third-footer-widget-area";a:1:{i:0;s:6:"text-2";}s:13:"array_version";i:3;}', 'yes'),
(98, 'cron', 'a:5:{i:1448134176;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1448135340;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1448166736;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1448177893;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(102, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.3.1.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.3.1-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.3.1-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.3.1";s:7:"version";s:5:"4.3.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1448101347;s:15:"version_checked";s:5:"4.3.1";s:12:"translations";a:0:{}}', 'yes'),
(103, '_transient_random_seed', 'd66bc1d592f8757be16677173be14d80', 'yes'),
(108, '_transient_timeout_plugin_slugs', '1448187822', 'no'),
(109, '_transient_plugin_slugs', 'a:12:{i:0;s:19:"akismet/akismet.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:30:"formget-contact-form/index.php";i:3;s:9:"hello.php";i:4;s:34:"wp-lorem-ipsum-generator/index.php";i:5;s:39:"mini-twitter-feed/mini-twitter-feed.php";i:6;s:37:"my-facebook-tags/my-facebook-tags.php";i:7;s:27:"price-table/price-table.php";i:8;s:41:"dk-pricr-responsive-pricing-table/rpt.php";i:9;s:17:"ronpop/ronpop.php";i:10;s:59:"ultimate-social-media-icons/ultimate_social_media_icons.php";i:11;s:27:"wp-super-cache/wp-cache.php";}', 'no'),
(112, 'can_compress_scripts', '1', 'yes'),
(113, 'recently_activated', 'a:1:{s:17:"ronpop/ronpop.php";i:1448077421;}', 'yes'),
(116, '_transient_twentyfifteen_categories', '1', 'yes'),
(117, '_site_transient_timeout_browser_c4ad11723f9adaddd6e43884d917b605', '1448527217', 'yes'),
(118, '_site_transient_browser_c4ad11723f9adaddd6e43884d917b605', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"46.0.2490.86";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(123, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(124, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(125, 'widget_pages', 'a:3:{i:1;a:0:{}i:2;a:3:{s:5:"title";s:5:"Pages";s:6:"sortby";s:10:"menu_order";s:7:"exclude";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(127, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(150, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1448116619', 'no'),
(151, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: wordpress.org</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: Could not resolve host: planet.wordpress.org</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(155, 'current_theme', 'Local Business', 'yes'),
(156, 'theme_mods_twentyfourteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1448077572;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;s:9:"sidebar-3";N;}}}', 'yes'),
(157, 'theme_switched', '', 'yes'),
(159, '_transient_twentyfourteen_category_count', '1', 'yes'),
(160, 'theme_mods_twentythirteen', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1448079678;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";N;}}}', 'yes'),
(161, '_site_transient_timeout_available_translations', '1448088440', 'yes'),
(162, '_site_transient_available_translations', 'a:68:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 00:32:07";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-27 20:45:33";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.3.1/ary.zip";s:3:"iso";a:2:{i:1;s:5:"ar_MA";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-22 14:16:17";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-25 14:32:58";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-16 05:09:40";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 21:20:44";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-07 03:25:59";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-19 09:17:13";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 19:34:34";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-10 10:48:02";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-02 05:19:03";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-14 15:24:20";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:70:"http://downloads.wordpress.org/translation/core/4.3.1/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-16 22:03:32";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 20:57:21";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-13 23:56:05";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 22:20:50";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-14 00:38:16";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-16 10:50:33";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-26 22:31:40";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-26 19:53:52";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-04 06:10:33";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"http://downloads.wordpress.org/translation/core/4.3-RC/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.2.5";s:7:"updated";s:19:"2015-10-29 16:32:18";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.5/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-30 19:20:19";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-19 14:33:57";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-05 16:34:02";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-12 17:21:08";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-20 13:36:08";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-15 15:41:04";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-06 20:37:24";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-09 14:35:27";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-24 15:25:30";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 23:34:00";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.1.8/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-22 08:59:41";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-20 14:39:18";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-04 22:14:16";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-15 12:00:25";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 13:36:47";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-08 17:47:38";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-22 13:47:37";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-06 06:16:37";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-30 16:23:05";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-06 04:24:53";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 07:48:28";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.8/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-23 10:49:34";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-28 15:14:19";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 18:56:13";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:6:"4.3-RC";s:7:"updated";s:19:"2015-08-02 07:53:33";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"http://downloads.wordpress.org/translation/core/4.3-RC/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-27 13:38:57";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.1.8/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-05 03:15:53";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-10 16:45:56";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-18 16:44:05";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-03 10:08:50";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-20 09:27:40";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-06 16:10:24";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-27 07:05:44";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-17 18:31:56";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-19 10:43:45";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-11-08 12:30:32";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-20 03:52:15";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-19 13:55:59";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.8";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.8/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-08 09:34:14";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-10-28 06:20:02";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.3.1/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-08-20 19:10:20";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.3.1";s:7:"updated";s:19:"2015-09-21 11:18:12";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.3.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'yes'),
(172, 'ossdl_off_cdn_url', 'http://localhost:3000/kanjawordpressplugin', 'yes'),
(173, 'ossdl_off_include_dirs', 'wp-content,wp-includes', 'yes'),
(174, 'ossdl_off_exclude', '.php', 'yes'),
(175, 'ossdl_cname', '', 'yes'),
(177, 'wp_super_cache_index_detected', '3', 'yes'),
(178, 'wpsupercache_start', '1448078886', 'yes'),
(179, 'wpsupercache_count', '0', 'yes'),
(180, 'supercache_stats', 'a:3:{s:9:"generated";i:1448079094;s:10:"supercache";a:5:{s:7:"expired";i:0;s:12:"expired_list";a:0:{}s:6:"cached";i:0;s:11:"cached_list";a:0:{}s:2:"ts";i:1448079094;}s:7:"wpcache";a:3:{s:6:"cached";i:0;s:7:"expired";i:0;s:5:"fsize";s:3:"0KB";}}', 'yes'),
(183, '_site_transient_timeout_wporg_theme_feature_list', '1448091819', 'yes'),
(184, '_site_transient_wporg_theme_feature_list', 'a:4:{s:6:"Colors";a:15:{i:0;s:5:"black";i:1;s:4:"blue";i:2;s:5:"brown";i:3;s:4:"gray";i:4;s:5:"green";i:5;s:6:"orange";i:6;s:4:"pink";i:7;s:6:"purple";i:8;s:3:"red";i:9;s:6:"silver";i:10;s:3:"tan";i:11;s:5:"white";i:12;s:6:"yellow";i:13;s:4:"dark";i:14;s:5:"light";}s:6:"Layout";a:9:{i:0;s:12:"fixed-layout";i:1;s:12:"fluid-layout";i:2;s:17:"responsive-layout";i:3;s:10:"one-column";i:4;s:11:"two-columns";i:5;s:13:"three-columns";i:6;s:12:"four-columns";i:7;s:12:"left-sidebar";i:8;s:13:"right-sidebar";}s:8:"Features";a:20:{i:0;s:19:"accessibility-ready";i:1;s:8:"blavatar";i:2;s:10:"buddypress";i:3;s:17:"custom-background";i:4;s:13:"custom-colors";i:5;s:13:"custom-header";i:6;s:11:"custom-menu";i:7;s:12:"editor-style";i:8;s:21:"featured-image-header";i:9;s:15:"featured-images";i:10;s:15:"flexible-header";i:11;s:20:"front-page-post-form";i:12;s:19:"full-width-template";i:13;s:12:"microformats";i:14;s:12:"post-formats";i:15;s:20:"rtl-language-support";i:16;s:11:"sticky-post";i:17;s:13:"theme-options";i:18;s:17:"threaded-comments";i:19;s:17:"translation-ready";}s:7:"Subject";a:3:{i:0;s:7:"holiday";i:1;s:13:"photoblogging";i:2;s:8:"seasonal";}}', 'yes'),
(186, 'theme_mods_mustang-lite', 'a:2:{i:0;b:0;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1448081093;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:7:"general";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:14:"footer-widgets";N;}}}', 'yes'),
(187, 'wm-mustang-install', '1', 'yes'),
(188, '_transient_wm-mustang-version', '1.5.2', 'yes'),
(200, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1448080810;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(203, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1448101404;s:7:"checked";a:5:{s:14:"local-business";s:5:"2.0.5";s:12:"mustang-lite";s:5:"1.5.2";s:13:"twentyfifteen";s:3:"1.3";s:14:"twentyfourteen";s:3:"1.5";s:14:"twentythirteen";s:3:"1.6";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(204, '_transient_timeout_wm-admin-notice', '1448167493', 'no'),
(205, '_transient_wm-admin-notice', 'a:3:{i:0;s:723:"<a href="http://localhost:3000/kanjawordpressplugin/wp-admin/themes.php?page=mustang-about" class="button button-primary button-hero" style="text-decoration: none; float: right;" title="Go to the Mustang Lite about page">Mustang Lite setup &raquo;</a><span style="font-size: 1.25em;">Thank you for <a href="http://localhost:3000/kanjawordpressplugin/wp-admin/themes.php?page=mustang-about">installing <strong>Mustang Lite</strong></a> WordPress theme by <a href="http://www.webmandesign.eu" target="_blank">WebMan</a>!</span><br /><strong>Please, set the theme up according to "<a href="http://localhost:3000/kanjawordpressplugin/wp-admin/themes.php?page=mustang-about"><em>About Mustang Lite</em></a>" page first.</strong>";i:1;s:0:"";i:2;s:13:"switch_themes";}', 'no'),
(206, 'theme_mods_local-business', 'a:3:{i:0;b:0;s:16:"background_color";s:6:"ffffff";s:18:"nav_menu_locations";a:1:{s:11:"custom_menu";i:2;}}', 'yes'),
(208, 'category_children', 'a:0:{}', 'yes'),
(209, 'localbusiness_options', 'a:4:{s:25:"localbusiness_slideimage1";s:108:"http://localhost:3000/kanjawordpressplugin/wp-content/uploads/2015/11/2015-07-02-13.29.53-e1448081727625.jpg";s:24:"localbusiness_slidelink1";s:51:"http://localhost:3000/kanjawordpressplugin/about-us";s:30:"localbusiness_slider_read_more";s:8:"About us";s:25:"localbusiness_slider_link";s:51:"http://localhost:3000/kanjawordpressplugin/about-us";}', 'yes'),
(210, 'localbusiness_option_migrate', '1', 'yes'),
(213, 'rewrite_rules', 'a:67:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(223, 'sfsi_section1_options', 's:411:"a:11:{s:16:"sfsi_rss_display";s:3:"yes";s:18:"sfsi_email_display";s:3:"yes";s:21:"sfsi_facebook_display";s:3:"yes";s:20:"sfsi_twitter_display";s:3:"yes";s:19:"sfsi_google_display";s:3:"yes";s:18:"sfsi_share_display";s:2:"no";s:20:"sfsi_youtube_display";s:2:"no";s:22:"sfsi_pinterest_display";s:2:"no";s:21:"sfsi_linkedin_display";s:2:"no";s:22:"sfsi_instagram_display";s:2:"no";s:17:"sfsi_custom_files";s:0:"";}";', 'yes'),
(224, 'sfsi_section2_options', 's:1877:"a:36:{s:12:"sfsi_rss_url";s:48:"http://localhost:3000/kanjawordpressplugin/feed/";s:17:"sfsi_rss_blogName";s:0:"";s:18:"sfsi_rss_blogEmail";s:0:"";s:14:"sfsi_rss_icons";s:5:"email";s:14:"sfsi_email_url";s:297:"http://www.specificfeeds.com/widgets/emailSubscribeEncFeed/SlRCWGRQaW9zZ3IxRU9MVXJvbXZRZFA5NEpBREpQbW9sc0JzZHpQQWc2WnBiSEpEcUFkay9tVzZFbXlrWFU0SjhXcVlLaHQyMlo4MGdtdGlZNkkyeGJCQjFNUXNBelFpRCs2d2R4VFo2NlNJMUd5cWk3Q2tjRE1kNHRFNis5UGF8cVVudnYydHlXbDRjVlV3Z3dyL255Qzd2L2F0SzZHcUFQRkprMFlaZmZtND0=/OA==/";s:24:"sfsi_facebookPage_option";s:3:"yes";s:21:"sfsi_facebookPage_url";s:38:"https://web.facebook.com/mwangi.ceasar";s:24:"sfsi_facebookLike_option";s:3:"yes";s:25:"sfsi_facebookShare_option";s:3:"yes";s:21:"sfsi_twitter_followme";s:3:"yes";s:27:"sfsi_twitter_followUserName";s:10:"CzarCeasar";s:22:"sfsi_twitter_aboutPage";s:3:"yes";s:17:"sfsi_twitter_page";s:3:"yes";s:20:"sfsi_twitter_pageURL";s:30:"https://twitter.com/CzarCeasar";s:26:"sfsi_twitter_aboutPageText";s:105:"Hey, check out this cool site I found: http://localhost:3000/kanjawordpressplugin#services via@CzarCeasar";s:16:"sfsi_google_page";s:2:"no";s:19:"sfsi_google_pageURL";s:0:"";s:22:"sfsi_googleLike_option";s:3:"yes";s:23:"sfsi_googleShare_option";s:3:"yes";s:20:"sfsi_youtube_pageUrl";s:0:"";s:17:"sfsi_youtube_page";s:0:"";s:19:"sfsi_youtube_follow";s:0:"";s:15:"sfsi_ytube_user";s:0:"";s:19:"sfsi_pinterest_page";s:0:"";s:22:"sfsi_pinterest_pageUrl";s:0:"";s:23:"sfsi_pinterest_pingBlog";s:0:"";s:22:"sfsi_instagram_pageUrl";s:0:"";s:18:"sfsi_linkedin_page";s:0:"";s:21:"sfsi_linkedin_pageURL";s:0:"";s:20:"sfsi_linkedin_follow";s:0:"";s:27:"sfsi_linkedin_followCompany";s:0:"";s:23:"sfsi_linkedin_SharePage";s:0:"";s:30:"sfsi_linkedin_recommendBusines";s:2:"no";s:30:"sfsi_linkedin_recommendCompany";s:0:"";s:32:"sfsi_linkedin_recommendProductId";s:0:"";s:21:"sfsi_CustomIcon_links";s:0:"";}";', 'yes'),
(225, 'sfsi_section3_options', 's:585:"a:14:{s:18:"sfsi_actvite_theme";s:4:"flat";s:14:"sfsi_mouseOver";s:3:"yes";s:21:"sfsi_mouseOver_effect";s:5:"scale";s:18:"sfsi_shuffle_icons";s:3:"yes";s:22:"sfsi_shuffle_Firstload";s:3:"yes";s:21:"sfsi_shuffle_interval";s:3:"yes";s:25:"sfsi_shuffle_intervalTime";s:2:"10";s:26:"sfsi_specialIcon_animation";s:0:"";s:26:"sfsi_specialIcon_MouseOver";s:2:"no";s:26:"sfsi_specialIcon_Firstload";s:2:"no";s:32:"sfsi_specialIcon_Firstload_Icons";s:3:"all";s:25:"sfsi_specialIcon_interval";s:2:"no";s:29:"sfsi_specialIcon_intervalTime";s:0:"";s:30:"sfsi_specialIcon_intervalIcons";s:3:"all";}";', 'yes'),
(226, 'sfsi_section4_options', 's:1760:"a:45:{s:19:"sfsi_display_counts";s:3:"yes";s:24:"sfsi_email_countsDisplay";s:3:"yes";s:21:"sfsi_email_countsFrom";s:6:"source";s:23:"sfsi_email_manualCounts";s:2:"20";s:22:"sfsi_rss_countsDisplay";s:2:"no";s:21:"sfsi_rss_manualCounts";s:2:"20";s:27:"sfsi_facebook_countsDisplay";s:3:"yes";s:24:"sfsi_facebook_countsFrom";s:5:"likes";s:26:"sfsi_facebook_mypageCounts";s:0:"";s:26:"sfsi_facebook_manualCounts";s:2:"20";s:26:"sfsi_twitter_countsDisplay";s:3:"yes";s:23:"sfsi_twitter_countsFrom";s:6:"manual";s:25:"sfsi_twitter_manualCounts";s:3:"200";s:15:"tw_consumer_key";s:0:"";s:18:"tw_consumer_secret";s:0:"";s:21:"tw_oauth_access_token";s:0:"";s:28:"tw_oauth_access_token_secret";s:0:"";s:25:"sfsi_google_countsDisplay";s:3:"yes";s:22:"sfsi_google_countsFrom";s:6:"manual";s:24:"sfsi_google_manualCounts";s:3:"150";s:19:"sfsi_google_api_key";s:0:"";s:10:"ln_company";s:0:"";s:10:"ln_api_key";s:0:"";s:13:"ln_secret_key";s:0:"";s:19:"ln_oAuth_user_token";s:0:"";s:27:"sfsi_linkedIn_countsDisplay";s:0:"";s:24:"sfsi_linkedIn_countsFrom";s:0:"";s:26:"sfsi_linkedIn_manualCounts";s:2:"20";s:26:"sfsi_youtube_countsDisplay";s:0:"";s:23:"sfsi_youtube_countsFrom";s:0:"";s:25:"sfsi_youtube_manualCounts";s:2:"20";s:17:"sfsi_youtube_user";s:0:"";s:28:"sfsi_pinterest_countsDisplay";s:0:"";s:25:"sfsi_pinterest_countsFrom";s:0:"";s:27:"sfsi_pinterest_manualCounts";s:2:"20";s:19:"sfsi_pinterest_user";s:0:"";s:20:"sfsi_pinterest_board";s:0:"";s:25:"sfsi_instagram_countsFrom";s:0:"";s:28:"sfsi_instagram_countsDisplay";s:0:"";s:27:"sfsi_instagram_manualCounts";s:2:"20";s:19:"sfsi_instagram_User";s:0:"";s:25:"sfsi_shares_countsDisplay";s:0:"";s:22:"sfsi_shares_countsFrom";s:0:"";s:24:"sfsi_shares_manualCounts";s:2:"20";s:24:"sfsi_youtubeusernameorid";s:4:"name";}";', 'yes'),
(227, 'sfsi_section5_options', 's:1422:"a:35:{s:15:"sfsi_icons_size";s:2:"40";s:18:"sfsi_icons_spacing";s:1:"5";s:20:"sfsi_icons_Alignment";s:5:"right";s:17:"sfsi_icons_perRow";s:1:"5";s:24:"sfsi_icons_ClickPageOpen";s:3:"yes";s:16:"sfsi_icons_float";s:2:"no";s:23:"sfsi_disable_floaticons";s:3:"yes";s:24:"sfsi_icons_floatPosition";s:12:"center-right";s:26:"sfsi_icons_floatMargin_top";s:0:"";s:29:"sfsi_icons_floatMargin_bottom";s:0:"";s:27:"sfsi_icons_floatMargin_left";s:0:"";s:28:"sfsi_icons_floatMargin_right";s:0:"";s:16:"sfsi_icons_stick";s:3:"yes";s:22:"sfsi_rss_MouseOverText";s:3:"RSS";s:24:"sfsi_email_MouseOverText";s:15:"Follow by Email";s:26:"sfsi_twitter_MouseOverText";s:7:"Twitter";s:27:"sfsi_facebook_MouseOverText";s:8:"Facebook";s:25:"sfsi_google_MouseOverText";s:7:"Google+";s:27:"sfsi_linkedIn_MouseOverText";s:0:"";s:28:"sfsi_pinterest_MouseOverText";s:0:"";s:26:"sfsi_youtube_MouseOverText";s:0:"";s:24:"sfsi_share_MouseOverText";s:0:"";s:28:"sfsi_instagram_MouseOverText";s:0:"";s:22:"sfsi_CustomIcons_order";s:0:"";s:18:"sfsi_rssIcon_order";s:1:"1";s:20:"sfsi_emailIcon_order";s:1:"2";s:23:"sfsi_facebookIcon_order";s:1:"3";s:21:"sfsi_googleIcon_order";s:1:"4";s:22:"sfsi_twitterIcon_order";s:1:"5";s:20:"sfsi_shareIcon_order";s:1:"6";s:22:"sfsi_youtubeIcon_order";s:1:"7";s:24:"sfsi_pinterestIcon_order";s:1:"8";s:24:"sfsi_instagramIcon_order";s:2:"10";s:23:"sfsi_linkedinIcon_order";s:1:"9";s:26:"sfsi_custom_MouseOverTexts";s:0:"";}";', 'yes'),
(228, 'sfsi_section6_options', 's:371:"a:10:{s:17:"sfsi_show_Onposts";s:3:"yes";s:22:"sfsi_icons_postPositon";s:0:"";s:20:"sfsi_icons_alignment";s:5:"right";s:20:"sfsi_textBefor_icons";s:26:"Please follow and like us:";s:24:"sfsi_icons_DisplayCounts";s:3:"yes";s:12:"sfsi_rectsub";s:3:"yes";s:11:"sfsi_rectfb";s:3:"yes";s:11:"sfsi_rectgp";s:3:"yes";s:12:"sfsi_rectshr";s:2:"no";s:13:"sfsi_recttwtr";s:3:"yes";}";', 'yes'),
(229, 'sfsi_section7_options', 's:633:"a:14:{s:15:"sfsi_popup_text";s:42:"Enjoy this blog? Please spread the word :)";s:27:"sfsi_popup_background_color";s:7:"#eff7f7";s:23:"sfsi_popup_border_color";s:7:"#f3faf2";s:27:"sfsi_popup_border_thickness";s:1:"1";s:24:"sfsi_popup_border_shadow";s:3:"yes";s:15:"sfsi_popup_font";s:26:"Helvetica,Arial,sans-serif";s:19:"sfsi_popup_fontSize";s:2:"30";s:20:"sfsi_popup_fontStyle";s:0:"";s:20:"sfsi_popup_fontColor";s:7:"#000000";s:17:"sfsi_Show_popupOn";s:9:"everypage";s:25:"sfsi_Show_popupOn_PageIDs";s:0:"";s:14:"sfsi_Shown_pop";s:8:"ETscroll";s:24:"sfsi_Shown_popupOnceTime";s:0:"";s:32:"sfsi_Shown_popuplimitPerUserTime";s:0:"";}";', 'yes'),
(230, 'sfsi_feed_id', 'SlRCWGRQaW9zZ3IxRU9MVXJvbXZRZFA5NEpBREpQbW9sc0JzZHpQQWc2WnBiSEpEcUFkay9tVzZFbXlrWFU0SjhXcVlLaHQyMlo4MGdtdGlZNkkyeGJCQjFNUXNBelFpRCs2d2R4VFo2NlNJMUd5cWk3Q2tjRE1kNHRFNis5UGF8cVVudnYydHlXbDRjVlV3Z3dyL255Qzd2L2F0SzZHcUFQRkprMFlaZmZtND0=', 'yes'),
(231, 'sfsi_redirect_url', 'http://www.specificfeeds.com/widgets/emailSubscribeEncFeed/SlRCWGRQaW9zZ3IxRU9MVXJvbXZRZFA5NEpBREpQbW9sc0JzZHpQQWc2WnBiSEpEcUFkay9tVzZFbXlrWFU0SjhXcVlLaHQyMlo4MGdtdGlZNkkyeGJCQjFNUXNBelFpRCs2d2R4VFo2NlNJMUd5cWk3Q2tjRE1kNHRFNis5UGF8cVVudnYydHlXbDRjVlV3Z3dyL255Qzd2L2F0SzZHcUFQRkprMFlaZmZtND0=/OA==/', 'yes'),
(232, 'sfsi_installDate', '2015-11-21 08:24:13', 'yes'),
(233, 'sfsi_RatingDiv', 'no', 'yes'),
(234, 'sfsi_footer_sec', 'no', 'yes'),
(235, 'sfsi_activate', '0', 'yes'),
(236, 'sfsi_pluginVersion', '1.32', 'yes'),
(237, 'show_notification', 'yes', 'yes'),
(238, 'show_notification_plugin', 'yes', 'yes'),
(239, 'sfsi_section8_options', 's:1210:"a:26:{s:20:"sfsi_form_adjustment";s:3:"yes";s:16:"sfsi_form_height";s:3:"180";s:15:"sfsi_form_width";s:3:"230";s:16:"sfsi_form_border";s:3:"yes";s:26:"sfsi_form_border_thickness";s:1:"1";s:22:"sfsi_form_border_color";s:7:"#b5b5b5";s:20:"sfsi_form_background";s:7:"#ffffff";s:22:"sfsi_form_heading_text";s:22:"Get new posts by email";s:22:"sfsi_form_heading_font";s:26:"Helvetica,Arial,sans-serif";s:27:"sfsi_form_heading_fontstyle";s:4:"bold";s:27:"sfsi_form_heading_fontcolor";s:7:"#000000";s:26:"sfsi_form_heading_fontsize";s:2:"16";s:27:"sfsi_form_heading_fontalign";s:6:"center";s:20:"sfsi_form_field_text";s:16:"Enter your email";s:20:"sfsi_form_field_font";s:26:"Helvetica,Arial,sans-serif";s:25:"sfsi_form_field_fontstyle";s:6:"normal";s:25:"sfsi_form_field_fontcolor";s:0:"";s:24:"sfsi_form_field_fontsize";s:2:"14";s:25:"sfsi_form_field_fontalign";s:6:"center";s:21:"sfsi_form_button_text";s:9:"Subscribe";s:21:"sfsi_form_button_font";s:26:"Helvetica,Arial,sans-serif";s:26:"sfsi_form_button_fontstyle";s:4:"bold";s:26:"sfsi_form_button_fontcolor";s:7:"#000000";s:25:"sfsi_form_button_fontsize";s:2:"16";s:26:"sfsi_form_button_fontalign";s:6:"center";s:27:"sfsi_form_button_background";s:7:"#dedede";}";', 'yes'),
(240, 'sfsi_instagram_sf_count', 's:90:"a:3:{s:4:"date";i:1448064000;s:13:"sfsi_sf_count";i:0;s:20:"sfsi_instagram_count";s:0:"";}";', 'yes'),
(241, 'sfsi_verificatiom_code', 'gyBkA66YKtV9fCPuGYGa', 'yes'),
(242, 'widget_subscriber_widget', 'a:2:{i:2;a:1:{s:5:"title";s:24:"News letter subscription";}s:12:"_multiwidget";i:1;}', 'yes'),
(243, 'adding_tags', 'no', 'yes'),
(244, 'widget_sfsi-widget', 'a:2:{i:2;a:2:{s:5:"showf";i:1;s:5:"title";s:26:"Please follow & like us :)";}s:12:"_multiwidget";i:1;}', 'yes'),
(245, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1448107327', 'yes'),
(246, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5550";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3478";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3435";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"2930";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2674";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2131";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2122";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"1951";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"1918";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1901";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"1896";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1842";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1751";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1552";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1474";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1434";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1286";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1264";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1249";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1213";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1105";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1044";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1009";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:3:"959";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"926";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"893";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"861";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"852";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"844";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"841";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"821";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"786";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"752";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"719";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"713";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"712";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"710";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"709";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"692";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"689";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"687";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"667";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"665";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"660";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"636";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"624";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"618";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"617";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"611";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"609";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"589";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"587";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"572";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"572";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"563";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"562";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"560";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"558";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"551";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"545";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"535";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"514";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"513";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"509";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"507";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"498";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"495";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"491";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"488";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"485";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"466";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"462";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"449";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"443";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"438";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"437";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"425";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"419";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"415";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"411";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"400";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"397";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"394";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"393";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"391";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"387";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"386";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"382";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"379";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"375";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"375";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"373";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"372";}s:4:"code";a:3:{s:4:"name";s:4:"code";s:4:"slug";s:4:"code";s:5:"count";s:3:"372";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"366";}s:9:"automatic";a:3:{s:4:"name";s:9:"automatic";s:4:"slug";s:9:"automatic";s:5:"count";s:3:"364";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"363";}s:8:"lightbox";a:3:{s:4:"name";s:8:"lightbox";s:4:"slug";s:8:"lightbox";s:5:"count";s:3:"363";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"362";}s:14:"administration";a:3:{s:4:"name";s:14:"administration";s:4:"slug";s:14:"administration";s:5:"count";s:3:"360";}}', 'yes'),
(250, 'widget_minitwitter-widget', 'a:2:{i:2;a:7:{s:2:"id";s:18:"667993014564950016";s:8:"username";s:10:"CzarCeasar";s:5:"limit";s:1:"5";s:4:"list";s:0:"";s:5:"query";s:0:"";s:5:"width";s:0:"";s:6:"height";s:3:"250";}s:12:"_multiwidget";i:1;}', 'yes'),
(254, 'wpcf7', 'a:1:{s:7:"version";s:3:"4.3";}', 'yes'),
(256, 'price_table_version', '1.2', 'yes'),
(257, 'price_table_customer_type', 'free', 'yes'),
(258, '_site_transient_timeout_theme_roots', '1448103139', 'yes'),
(259, '_site_transient_theme_roots', 'a:5:{s:14:"local-business";s:7:"/themes";s:12:"mustang-lite";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(261, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1448101419;s:7:"checked";a:12:{s:19:"akismet/akismet.php";s:5:"3.1.5";s:36:"contact-form-7/wp-contact-form-7.php";s:3:"4.3";s:30:"formget-contact-form/index.php";s:5:"5.3.6";s:9:"hello.php";s:3:"1.6";s:34:"wp-lorem-ipsum-generator/index.php";s:3:"0.3";s:39:"mini-twitter-feed/mini-twitter-feed.php";s:5:"2.0.1";s:37:"my-facebook-tags/my-facebook-tags.php";s:5:"1.0.0";s:27:"price-table/price-table.php";s:3:"1.2";s:41:"dk-pricr-responsive-pricing-table/rpt.php";s:5:"4.2.1";s:17:"ronpop/ronpop.php";s:5:"1.0.0";s:59:"ultimate-social-media-icons/ultimate_social_media_icons.php";s:5:"1.3.2";s:27:"wp-super-cache/wp-cache.php";s:5:"1.4.6";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:10:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.5";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.3.1.5.zip";}s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:3:"4.3";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/contact-form-7.4.3.zip";}s:30:"formget-contact-form/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"43959";s:4:"slug";s:20:"formget-contact-form";s:6:"plugin";s:30:"formget-contact-form/index.php";s:11:"new_version";s:5:"5.3.6";s:3:"url";s:51:"https://wordpress.org/plugins/formget-contact-form/";s:7:"package";s:69:"https://downloads.wordpress.org/plugin/formget-contact-form.5.3.6.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:34:"wp-lorem-ipsum-generator/index.php";O:8:"stdClass":6:{s:2:"id";s:5:"23829";s:4:"slug";s:24:"wp-lorem-ipsum-generator";s:6:"plugin";s:34:"wp-lorem-ipsum-generator/index.php";s:11:"new_version";s:3:"0.3";s:3:"url";s:55:"https://wordpress.org/plugins/wp-lorem-ipsum-generator/";s:7:"package";s:67:"https://downloads.wordpress.org/plugin/wp-lorem-ipsum-generator.zip";}s:39:"mini-twitter-feed/mini-twitter-feed.php";O:8:"stdClass":6:{s:2:"id";s:5:"30790";s:4:"slug";s:17:"mini-twitter-feed";s:6:"plugin";s:39:"mini-twitter-feed/mini-twitter-feed.php";s:11:"new_version";s:5:"2.0.1";s:3:"url";s:48:"https://wordpress.org/plugins/mini-twitter-feed/";s:7:"package";s:66:"https://downloads.wordpress.org/plugin/mini-twitter-feed.2.0.1.zip";}s:27:"price-table/price-table.php";O:8:"stdClass":6:{s:2:"id";s:5:"56496";s:4:"slug";s:11:"price-table";s:6:"plugin";s:27:"price-table/price-table.php";s:11:"new_version";s:3:"1.2";s:3:"url";s:42:"https://wordpress.org/plugins/price-table/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/price-table.zip";}s:41:"dk-pricr-responsive-pricing-table/rpt.php";O:8:"stdClass":6:{s:2:"id";s:5:"54008";s:4:"slug";s:33:"dk-pricr-responsive-pricing-table";s:6:"plugin";s:41:"dk-pricr-responsive-pricing-table/rpt.php";s:11:"new_version";s:5:"4.2.1";s:3:"url";s:64:"https://wordpress.org/plugins/dk-pricr-responsive-pricing-table/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/dk-pricr-responsive-pricing-table.zip";}s:59:"ultimate-social-media-icons/ultimate_social_media_icons.php";O:8:"stdClass":7:{s:2:"id";s:5:"53724";s:4:"slug";s:27:"ultimate-social-media-icons";s:6:"plugin";s:59:"ultimate-social-media-icons/ultimate_social_media_icons.php";s:11:"new_version";s:5:"1.3.2";s:3:"url";s:58:"https://wordpress.org/plugins/ultimate-social-media-icons/";s:7:"package";s:76:"https://downloads.wordpress.org/plugin/ultimate-social-media-icons.1.3.2.zip";s:14:"upgrade_notice";s:38:"Several enhancements - please upgrade!";}s:27:"wp-super-cache/wp-cache.php";O:8:"stdClass":7:{s:2:"id";s:4:"1221";s:4:"slug";s:14:"wp-super-cache";s:6:"plugin";s:27:"wp-super-cache/wp-cache.php";s:11:"new_version";s:5:"1.4.6";s:3:"url";s:45:"https://wordpress.org/plugins/wp-super-cache/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-super-cache.1.4.6.zip";s:14:"upgrade_notice";s:64:"Bugfix for sites that use mod_rewrite to serve compressed pages.";}}}', 'yes'),
(262, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:1:{i:0;i:2;}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=147 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(4, 7, '_edit_last', '1'),
(5, 7, '_edit_lock', '1448101705:1'),
(6, 7, '_wp_page_template', 'default'),
(7, 9, '_edit_last', '1'),
(8, 9, '_wp_page_template', 'default'),
(9, 9, '_edit_lock', '1448099857:1'),
(10, 11, '_edit_last', '1'),
(11, 11, '_wp_page_template', 'default'),
(12, 11, '_edit_lock', '1448098930:1'),
(13, 13, '_wp_attached_file', '2015/11/2015-07-02-13.29.53-e1448081727625.jpg'),
(14, 13, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:363;s:6:"height";i:285;s:4:"file";s:46:"2015/11/2015-07-02-13.29.53-e1448081727625.jpg";s:5:"sizes";a:7:{s:9:"thumbnail";a:4:{s:4:"file";s:46:"2015-07-02-13.29.53-e1448081727625-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:46:"2015-07-02-13.29.53-e1448081727625-300x236.jpg";s:5:"width";i:300;s:6:"height";i:236;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:32:"2015-07-02-13.29.53-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post_thumbnail";a:4:{s:4:"file";s:46:"2015-07-02-13.29.53-e1448081727625-363x224.jpg";s:5:"width";i:363;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:46:"2015-07-02-13.29.53-e1448081727625-250x196.jpg";s:5:"width";i:250;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:14:"blog-thumbnail";a:4:{s:4:"file";s:46:"2015-07-02-13.29.53-e1448081727625-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:17:"sidebar-thumbnail";a:4:{s:4:"file";s:44:"2015-07-02-13.29.53-e1448081727625-48x48.jpg";s:5:"width";i:48;s:6:"height";i:48;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:2;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:1039348800;s:9:"copyright";s:0:"";s:12:"focal_length";s:4:"3.79";s:3:"iso";s:3:"800";s:13:"shutter_speed";s:4:"0.04";s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(15, 13, '_edit_lock', '1448083187:1'),
(16, 13, '_wp_attachment_backup_sizes', 'a:9:{s:9:"full-orig";a:3:{s:5:"width";i:3120;s:6:"height";i:4160;s:4:"file";s:23:"2015-07-02-13.29.53.jpg";}s:18:"full-1448081727625";a:3:{s:5:"width";i:363;s:6:"height";i:484;s:4:"file";s:38:"2015-07-02-13.29.53-e1448081537809.jpg";}s:14:"thumbnail-orig";a:4:{s:4:"file";s:31:"2015-07-02-13.29.53-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:11:"medium-orig";a:4:{s:4:"file";s:31:"2015-07-02-13.29.53-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:10:"large-orig";a:4:{s:4:"file";s:32:"2015-07-02-13.29.53-768x1024.jpg";s:5:"width";i:768;s:6:"height";i:1024;s:9:"mime-type";s:10:"image/jpeg";}s:19:"post_thumbnail-orig";a:4:{s:4:"file";s:31:"2015-07-02-13.29.53-595x224.jpg";s:5:"width";i:595;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:19:"post-thumbnail-orig";a:4:{s:4:"file";s:31:"2015-07-02-13.29.53-188x250.jpg";s:5:"width";i:188;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:19:"blog-thumbnail-orig";a:4:{s:4:"file";s:31:"2015-07-02-13.29.53-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:22:"sidebar-thumbnail-orig";a:4:{s:4:"file";s:29:"2015-07-02-13.29.53-48x48.jpg";s:5:"width";i:48;s:6:"height";i:48;s:9:"mime-type";s:10:"image/jpeg";}}'),
(17, 13, '_edit_last', '1'),
(23, 16, '_wp_attached_file', '2015/11/18318_1052779098073206_2907599220212502918_n.jpg'),
(24, 16, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:500;s:6:"height";i:500;s:4:"file";s:56:"2015/11/18318_1052779098073206_2907599220212502918_n.jpg";s:5:"sizes";a:6:{s:9:"thumbnail";a:4:{s:4:"file";s:56:"18318_1052779098073206_2907599220212502918_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:56:"18318_1052779098073206_2907599220212502918_n-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post_thumbnail";a:4:{s:4:"file";s:56:"18318_1052779098073206_2907599220212502918_n-500x224.jpg";s:5:"width";i:500;s:6:"height";i:224;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:56:"18318_1052779098073206_2907599220212502918_n-250x250.jpg";s:5:"width";i:250;s:6:"height";i:250;s:9:"mime-type";s:10:"image/jpeg";}s:14:"blog-thumbnail";a:4:{s:4:"file";s:56:"18318_1052779098073206_2907599220212502918_n-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:17:"sidebar-thumbnail";a:4:{s:4:"file";s:54:"18318_1052779098073206_2907599220212502918_n-48x48.jpg";s:5:"width";i:48;s:6:"height";i:48;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(25, 19, '_wp_attached_file', '2015/11/logoa.png'),
(26, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:100;s:4:"file";s:17:"2015/11/logoa.png";s:5:"sizes";a:1:{s:17:"sidebar-thumbnail";a:4:{s:4:"file";s:15:"logoa-48x48.png";s:5:"width";i:48;s:6:"height";i:48;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(27, 20, '_wp_attached_file', '2015/11/logob.png'),
(28, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:100;s:6:"height";i:98;s:4:"file";s:17:"2015/11/logob.png";s:5:"sizes";a:1:{s:17:"sidebar-thumbnail";a:4:{s:4:"file";s:15:"logob-48x48.png";s:5:"width";i:48;s:6:"height";i:48;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(29, 21, '_wp_attached_file', '2015/11/logoc.png'),
(30, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:98;s:6:"height";i:98;s:4:"file";s:17:"2015/11/logoc.png";s:5:"sizes";a:1:{s:17:"sidebar-thumbnail";a:4:{s:4:"file";s:15:"logoc-48x48.png";s:5:"width";i:48;s:6:"height";i:48;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(31, 27, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'),
(32, 27, '_mail', 'a:8:{s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:36:"[your-name] <ceasarmwangi@gmail.com>";s:4:"body";s:200:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on kanjawordpressplugin (http://localhost:3000/kanjawordpressplugin)";s:9:"recipient";s:22:"ceasarmwangi@gmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(33, 27, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:14:"[your-subject]";s:6:"sender";s:45:"kanjawordpressplugin <ceasarmwangi@gmail.com>";s:4:"body";s:142:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on kanjawordpressplugin (http://localhost:3000/kanjawordpressplugin)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:32:"Reply-To: ceasarmwangi@gmail.com";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(34, 27, '_messages', 'a:22:{s:12:"mail_sent_ok";s:43:"Your message was sent successfully. Thanks.";s:12:"mail_sent_ng";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:16:"validation_error";s:74:"Validation errors occurred. Please confirm the fields and submit it again.";s:4:"spam";s:93:"Failed to send your message. Please try later or contact the administrator by another method.";s:12:"accept_terms";s:35:"Please accept the terms to proceed.";s:16:"invalid_required";s:34:"Please fill in the required field.";s:16:"invalid_too_long";s:23:"This input is too long.";s:17:"invalid_too_short";s:24:"This input is too short.";s:12:"invalid_date";s:26:"Date format seems invalid.";s:14:"date_too_early";s:23:"This date is too early.";s:13:"date_too_late";s:22:"This date is too late.";s:13:"upload_failed";s:22:"Failed to upload file.";s:24:"upload_file_type_invalid";s:30:"This file type is not allowed.";s:21:"upload_file_too_large";s:23:"This file is too large.";s:23:"upload_failed_php_error";s:38:"Failed to upload file. Error occurred.";s:14:"invalid_number";s:28:"Number format seems invalid.";s:16:"number_too_small";s:25:"This number is too small.";s:16:"number_too_large";s:25:"This number is too large.";s:23:"quiz_answer_not_correct";s:27:"Your answer is not correct.";s:13:"invalid_email";s:28:"Email address seems invalid.";s:11:"invalid_url";s:18:"URL seems invalid.";s:11:"invalid_tel";s:31:"Telephone number seems invalid.";}'),
(35, 27, '_additional_settings', ''),
(36, 27, '_locale', 'en_US'),
(37, 29, '_edit_last', '1'),
(38, 29, '_edit_lock', '1448100962:1'),
(39, 29, 'price_table_data', 'a:3:{s:5:"row_0";a:3:{s:5:"col_0";s:1:"1";s:5:"col_1";s:1:"2";s:5:"col_2";s:0:"";}s:5:"row_1";a:3:{s:5:"col_0";s:1:"1";s:5:"col_1";s:1:"2";s:5:"col_2";s:0:"";}s:5:"row_2";a:3:{s:5:"col_0";s:0:"";s:5:"col_1";s:0:"";s:5:"col_2";s:0:"";}}'),
(40, 29, 'price_table_data_price', 'a:3:{s:5:"col_0";s:2:"$5";s:5:"col_1";s:3:"$10";s:5:"col_2";s:3:"$37";}'),
(41, 29, 'price_table_data_header', 'a:3:{s:5:"col_0";s:10:"Basic Plan";s:5:"col_1";s:8:"Pro Plan";s:5:"col_2";s:14:"Trusted Member";}'),
(42, 29, 'price_table_data_signup_url', 'a:3:{s:5:"col_0";s:24:"http://hello.com/signup1";s:5:"col_1";s:24:"http://hello.com/signup2";s:5:"col_2";s:0:"";}'),
(43, 29, 'price_table_data_signup_text', 'a:3:{s:5:"col_0";s:9:"Sign Up 1";s:5:"col_1";s:9:"Sign Up 2";s:5:"col_2";s:11:"Get started";}'),
(44, 29, 'price_table_themes', 'flat'),
(45, 29, 'price_table_themes_pack', 'a:3:{s:5:"col_0";s:5:"pack4";s:5:"col_1";s:5:"pack9";s:5:"col_2";s:6:"pack12";}'),
(46, 29, 'price_table_themes_text_pack', 'a:3:{s:5:"col_0";s:5:"pack7";s:5:"col_1";s:5:"pack4";s:5:"col_2";s:5:"pack2";}'),
(47, 29, 'price_table_themes_pack_custom_header', 'a:3:{s:5:"col_0";s:6:"FFFFFF";s:5:"col_1";s:6:"FFFFFF";s:5:"col_2";s:6:"FFFFFF";}'),
(48, 29, 'price_table_themes_pack_custom_price', 'a:3:{s:5:"col_0";s:6:"FFFFFF";s:5:"col_1";s:6:"FFFFFF";s:5:"col_2";s:6:"FFFFFF";}'),
(49, 29, 'price_table_themes_pack_custom_signup', 'a:3:{s:5:"col_0";s:6:"FFFFFF";s:5:"col_1";s:6:"FFFFFF";s:5:"col_2";s:6:"FFFFFF";}'),
(50, 29, 'price_table_themes_text_pack_custom_header', 'a:3:{s:5:"col_0";s:6:"FFFFFF";s:5:"col_1";s:6:"FFFFFF";s:5:"col_2";s:6:"FFFFFF";}'),
(51, 29, 'price_table_themes_text_pack_custom_price', 'a:3:{s:5:"col_0";s:6:"FFFFFF";s:5:"col_1";s:6:"FFFFFF";s:5:"col_2";s:6:"FFFFFF";}'),
(52, 29, 'price_table_themes_text_pack_custom_signup', 'a:3:{s:5:"col_0";s:6:"FFFFFF";s:5:"col_1";s:6:"FFFFFF";s:5:"col_2";s:6:"FFFFFF";}'),
(53, 29, 'price_table_themes_text_size_pack_header', 'a:3:{s:5:"col_0";s:4:"25px";s:5:"col_1";s:4:"25px";s:5:"col_2";s:4:"25px";}'),
(54, 29, 'price_table_themes_text_size_pack_price', 'a:3:{s:5:"col_0";s:4:"23px";s:5:"col_1";s:4:"23px";s:5:"col_2";s:4:"23px";}'),
(55, 29, 'price_table_themes_text_size_pack_signup', 'a:3:{s:5:"col_0";s:4:"17px";s:5:"col_1";s:4:"17px";s:5:"col_2";s:4:"17px";}'),
(56, 29, 'price_table_col_duration', 'a:3:{s:5:"col_0";s:0:"";s:5:"col_1";s:0:"";s:5:"col_2";s:0:"";}'),
(57, 29, 'price_table_col_width', 'a:3:{s:5:"col_0";s:0:"";s:5:"col_1";s:0:"";s:5:"col_2";s:0:"";}'),
(58, 29, 'price_table_ribbons', 'a:3:{s:5:"col_0";s:4:"none";s:5:"col_1";s:4:"none";s:5:"col_2";s:4:"none";}'),
(59, 29, 'price_table_col_img', 'a:3:{s:5:"col_0";s:0:"";s:5:"col_1";s:0:"";s:5:"col_2";s:0:"";}'),
(60, 29, 'price_table_col_img_height', ''),
(61, 29, 'price_table_bg_img', 'http://localhost:3000/kanjawordpressplugin/wp-content/plugins/price-table/css/bg/congruent_pentagon.png'),
(62, 29, 'price_table_font_family', ''),
(63, 29, 'price_table_font_family_custom', ''),
(64, 31, '_edit_last', '1'),
(65, 31, '_edit_lock', '1448102022:1'),
(66, 31, '_rpt_plan_group', 'a:2:{i:0;a:21:{s:16:"_rpt_head_header";s:0:"";s:10:"_rpt_title";s:11:"Programming";s:13:"_rpt_subtitle";s:4:"PHP ";s:15:"_rpt_recurrence";s:14:"Every 3 months";s:10:"_rpt_price";s:4:"$200";s:16:"_rpt_description";s:31:"Become a PHP expert in 3 months";s:12:"_rpt_icon_id";i:19;s:9:"_rpt_icon";s:79:"http://localhost:3000/kanjawordpressplugin/wp-content/uploads/2015/11/logoa.png";s:16:"_rpt_recommended";s:2:"on";s:9:"_rpt_free";b:0;s:20:"_rpt_features_header";s:0:"";s:13:"_rpt_features";s:38:"Variables\r\nobjects\r\ncontrol statements";s:18:"_rpt_features_desc";s:0:"";s:18:"_rpt_button_header";s:0:"";s:13:"_rpt_btn_text";s:8:"Register";s:13:"_rpt_btn_link";s:53:"http://localhost:3000/kanjawordpressplugin/contact-us";s:23:"_rpt_cust_button_header";s:0:"";s:19:"_rpt_btn_custom_btn";s:0:"";s:23:"_rpt_custom_button_desc";s:0:"";s:17:"_rpt_styling_desc";s:0:"";s:10:"_rpt_color";s:7:"#000000";}i:1;a:11:{s:10:"_rpt_title";s:10:"Web design";s:13:"_rpt_subtitle";s:10:"Web design";s:15:"_rpt_recurrence";s:14:"Every 2 months";s:10:"_rpt_price";s:4:"$100";s:16:"_rpt_description";s:10:"Web design";s:12:"_rpt_icon_id";i:20;s:9:"_rpt_icon";s:79:"http://localhost:3000/kanjawordpressplugin/wp-content/uploads/2015/11/logob.png";s:13:"_rpt_features";s:58:"Web design\r\nWeb design\r\nWeb design\r\nWeb design\r\nWeb design";s:13:"_rpt_btn_text";s:8:"Register";s:13:"_rpt_btn_link";s:53:"http://localhost:3000/kanjawordpressplugin/contact-us";s:10:"_rpt_color";s:7:"#000000";}}'),
(67, 31, '_rpt_open_newwindow', 'currentwindow'),
(68, 31, '_rpt_title_fontsize', 'normal'),
(69, 31, '_rpt_subtitle_fontsize', 'normal'),
(70, 31, '_rpt_description_fontsize', 'normal'),
(71, 31, '_rpt_price_fontsize', 'normal'),
(72, 31, '_rpt_recurrence_fontsize', 'normal'),
(73, 31, '_rpt_button_fontsize', 'normal'),
(74, 31, '_rpt_features_fontsize', 'normal'),
(75, 33, '_menu_item_type', 'custom'),
(76, 33, '_menu_item_menu_item_parent', '0'),
(77, 33, '_menu_item_object_id', '33'),
(78, 33, '_menu_item_object', 'custom'),
(79, 33, '_menu_item_target', ''),
(80, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(81, 33, '_menu_item_xfn', ''),
(82, 33, '_menu_item_url', 'http://localhost:3000/kanjawordpressplugin/'),
(83, 33, '_menu_item_orphaned', '1448102169'),
(84, 34, '_menu_item_type', 'post_type'),
(85, 34, '_menu_item_menu_item_parent', '0'),
(86, 34, '_menu_item_object_id', '11'),
(87, 34, '_menu_item_object', 'page'),
(88, 34, '_menu_item_target', ''),
(89, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(90, 34, '_menu_item_xfn', ''),
(91, 34, '_menu_item_url', ''),
(92, 34, '_menu_item_orphaned', '1448102170'),
(93, 35, '_menu_item_type', 'post_type'),
(94, 35, '_menu_item_menu_item_parent', '0'),
(95, 35, '_menu_item_object_id', '9'),
(96, 35, '_menu_item_object', 'page'),
(97, 35, '_menu_item_target', ''),
(98, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(99, 35, '_menu_item_xfn', ''),
(100, 35, '_menu_item_url', ''),
(101, 35, '_menu_item_orphaned', '1448102170'),
(102, 36, '_menu_item_type', 'post_type'),
(103, 36, '_menu_item_menu_item_parent', '0'),
(104, 36, '_menu_item_object_id', '7'),
(105, 36, '_menu_item_object', 'page'),
(106, 36, '_menu_item_target', ''),
(107, 36, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(108, 36, '_menu_item_xfn', ''),
(109, 36, '_menu_item_url', ''),
(110, 36, '_menu_item_orphaned', '1448102170'),
(111, 37, '_menu_item_type', 'custom'),
(112, 37, '_menu_item_menu_item_parent', '0'),
(113, 37, '_menu_item_object_id', '37'),
(114, 37, '_menu_item_object', 'custom'),
(115, 37, '_menu_item_target', ''),
(116, 37, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(117, 37, '_menu_item_xfn', ''),
(118, 37, '_menu_item_url', 'http://localhost:3000/kanjawordpressplugin/'),
(120, 38, '_menu_item_type', 'post_type'),
(121, 38, '_menu_item_menu_item_parent', '0'),
(122, 38, '_menu_item_object_id', '11'),
(123, 38, '_menu_item_object', 'page'),
(124, 38, '_menu_item_target', ''),
(125, 38, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(126, 38, '_menu_item_xfn', ''),
(127, 38, '_menu_item_url', ''),
(129, 39, '_menu_item_type', 'post_type'),
(130, 39, '_menu_item_menu_item_parent', '0'),
(131, 39, '_menu_item_object_id', '9'),
(132, 39, '_menu_item_object', 'page'),
(133, 39, '_menu_item_target', ''),
(134, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(135, 39, '_menu_item_xfn', ''),
(136, 39, '_menu_item_url', ''),
(138, 40, '_menu_item_type', 'post_type'),
(139, 40, '_menu_item_menu_item_parent', '0'),
(140, 40, '_menu_item_object_id', '7'),
(141, 40, '_menu_item_object', 'page'),
(142, 40, '_menu_item_target', ''),
(143, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(144, 40, '_menu_item_xfn', ''),
(145, 40, '_menu_item_url', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2015-11-19 07:34:09', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-11-19 07:34:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:3000/kanjawordpressplugin/?p=3', 0, 'post', '', 0),
(7, 1, '2015-11-21 04:38:44', '2015-11-21 04:38:44', '[price_table  id="29" ]\r\n\r\n[rpt name="services"]', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2015-11-21 10:30:31', '2015-11-21 10:30:31', '', 0, 'http://localhost:3000/kanjawordpressplugin/?page_id=7', 0, 'page', '', 0),
(8, 1, '2015-11-21 04:38:44', '2015-11-21 04:38:44', 'Lorem\r\n\r\nLorem ipsum aenean massa porttitor ullamcorper risus eu platea fringilla habitasse suscipit, pellentesque donec est habitant vehicula tempor ultrices placerat sociosqu ultrices, consectetur ullamcorper tincidunt quisque tellus ante nostra euismod nec suspendisse. sem curabitur elit malesuada lacus viverra sagittis sit ornare orci augue, nullam adipiscing pulvinar libero aliquam vestibulum platea cursus pellentesque, leo dui lectus curabitur euismod ad erat curae non.\r\n\r\nElit ultrices placerat netus metus feugiat non conubia fusce, porttitor sociosqu diam commodo metus in himenaeos vitae, aptent consequat luctus purus eleifend enim sollicitudin. eleifend porta malesuada ac class conubia, condimentum mauris facilisis. conubia quis scelerisque lacinia tempus nullam felis fusce ac, potenti netus ornare semper molestie iaculis fermentum ornare, curabitur tincidunt imperdiet scelerisque imperdiet euismod scelerisque.\r\n\r\nTorquent curae rhoncus sollicitudin tortor placerat aptent, hac nec posuere suscipit sed.', 'Services', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-11-21 04:38:44', '2015-11-21 04:38:44', '', 7, 'http://localhost:3000/kanjawordpressplugin/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2015-11-21 04:41:03', '2015-11-21 04:41:03', '[contact-form-7 id="27" title="Contact form 1"]', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2015-11-21 09:47:15', '2015-11-21 09:47:15', '', 0, 'http://localhost:3000/kanjawordpressplugin/?page_id=9', 0, 'page', '', 0),
(10, 1, '2015-11-21 04:41:03', '2015-11-21 04:41:03', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2015-11-21 04:41:03', '2015-11-21 04:41:03', '', 9, 'http://localhost:3000/kanjawordpressplugin/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2015-11-21 04:41:39', '2015-11-21 04:41:39', '<img class="alignright size-medium wp-image-16" src="http://localhost:3000/kanjawordpressplugin/wp-content/uploads/2015/11/18318_1052779098073206_2907599220212502918_n-300x300.jpg" alt="18318_1052779098073206_2907599220212502918_n" width="300" height="300" />Lorem ipsum nisl molestie est etiam sit rutrum dui nostra sem, aliquet conubia nullam sollicitudin rhoncus venenatis vivamus rhoncus netus risus, tortor non mauris turpis eget integer nibh dolor commodo. venenatis ut molestie semper adipiscing amet cras class donec, sapien malesuada auctor sapien arcu inceptos aenean, consequat metus litora mattis vivamus feugiat arcu.\r\n\r\nAdipiscing mauris primis ante ullamcorper ad nisi lobortis arcu, per orci malesuada blandit metus tortor urna turpis, consectetur porttitor egestas sed eleifend eget tincidunt. pharetra varius tincidunt morbi malesuada elementum mi torquent mollis eu lobortis curae purus amet, vivamus amet nulla torquent nibh eu diam aliquam pretium donec aliquam.\r\n<blockquote>\r\n<h4><strong><em><span style="color: #808080;">Tempus lacus tempus feugiat lectus cras non velit mollis sit, et integer egestas habitant auctor integer sem at nam massa, himenaeos netus vel dapibus nibh malesuada leo fusce.</span></em></strong></h4>\r\n</blockquote>', 'About us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2015-11-21 08:01:33', '2015-11-21 08:01:33', '', 0, 'http://localhost:3000/kanjawordpressplugin/?page_id=11', 0, 'page', '', 0),
(12, 1, '2015-11-21 04:41:39', '2015-11-21 04:41:39', '', 'About us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2015-11-21 04:41:39', '2015-11-21 04:41:39', '', 11, 'http://localhost:3000/kanjawordpressplugin/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2015-11-21 04:49:07', '2015-11-21 04:49:07', '', '2015-07-02 13.29.53', '', 'inherit', 'open', 'closed', '', '2015-07-02-13-29-53', '', '', '2015-11-21 04:55:35', '2015-11-21 04:55:35', '', 0, 'http://localhost:3000/kanjawordpressplugin/wp-content/uploads/2015/11/2015-07-02-13.29.53.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2015-11-21 07:52:45', '2015-11-21 07:52:45', '<img class="alignright size-medium wp-image-16" src="http://localhost:3000/kanjawordpressplugin/wp-content/uploads/2015/11/18318_1052779098073206_2907599220212502918_n-300x300.jpg" alt="18318_1052779098073206_2907599220212502918_n" width="300" height="300" />Lorem ipsum nisl molestie est etiam sit rutrum dui nostra sem, aliquet conubia nullam sollicitudin rhoncus venenatis vivamus rhoncus netus risus, tortor non mauris turpis eget integer nibh dolor commodo. venenatis ut molestie semper adipiscing amet cras class donec, sapien malesuada auctor sapien arcu inceptos aenean, consequat metus litora mattis vivamus feugiat arcu.\n\nAdipiscing mauris primis ante ullamcorper ad nisi lobortis arcu, per orci malesuada blandit metus tortor urna turpis, consectetur porttitor egestas sed eleifend eget tincidunt. pharetra varius tincidunt morbi malesuada elementum mi torquent mollis eu lobortis curae purus amet, vivamus amet nulla torquent nibh eu diam aliquam pretium donec aliquam.\n<blockquote>\n<h4><strong><em><span style="color: #808080;">Tempus lacus tempus feugiat lectus cras non velit mollis sit, et integer egestas habitant auctor integer sem at nam massa, himenaeos netus vel dapibus nibh malesuada leo fusce.</span></em></strong></h4>\n</blockquote>\nLorem ipsum ac sociosqu semper facilisis semper class tempus faucibus, tristique duis eros cubilia quisque habitasse aliquam fringilla orci, non vel laoreet dolor enim justo facilisis neque, accumsan in ad venenatis hac per dictumst nulla. ligula donec mollis massa porttitor ullamcorper risus eu platea, fringilla habitasse suscipit pellentesque donec est habitant vehicula, tempor ultrices placerat sociosqu ultrices consectetur ullamcorper.\n\nTincidunt quisque tellus ante nostra euismod nec suspendisse, sem curabitur elit malesuada lacus viverra sagittis, sit ornare orci augue nullam adipiscing. pulvinar libero aliquam vestibulum platea cursus pellentesque leo dui lectus curabitur euismod ad erat curae non, elit ultrices placerat netus metus feugiat non conubia fusce porttitor sociosqu diam commodo metus.\n\nIn himenaeos vitae aptent consequat luctus purus eleifend, enim sollicitudin eleifend porta malesuada ac, class conubia condimentum mauris facilisis conubia.', 'About us', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2015-11-21 07:52:45', '2015-11-21 07:52:45', '', 11, 'http://localhost:3000/kanjawordpressplugin/11-autosave-v1/', 0, 'revision', '', 0),
(16, 1, '2015-11-21 07:27:29', '2015-11-21 07:27:29', '', '18318_1052779098073206_2907599220212502918_n', '', 'inherit', 'open', 'closed', '', '18318_1052779098073206_2907599220212502918_n', '', '', '2015-11-21 07:27:29', '2015-11-21 07:27:29', '', 11, 'http://localhost:3000/kanjawordpressplugin/wp-content/uploads/2015/11/18318_1052779098073206_2907599220212502918_n.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2015-11-21 07:28:51', '2015-11-21 07:28:51', '<img class="alignright size-medium wp-image-16" src="http://localhost:3000/kanjawordpressplugin/wp-content/uploads/2015/11/18318_1052779098073206_2907599220212502918_n-300x300.jpg" alt="18318_1052779098073206_2907599220212502918_n" width="300" height="300" />Lorem ipsum nisl molestie est etiam sit rutrum dui nostra sem, aliquet conubia nullam sollicitudin rhoncus venenatis vivamus rhoncus netus risus, tortor non mauris turpis eget integer nibh dolor commodo. venenatis ut molestie semper adipiscing amet cras class donec, sapien malesuada auctor sapien arcu inceptos aenean, consequat metus litora mattis vivamus feugiat arcu.\r\n\r\nAdipiscing mauris primis ante ullamcorper ad nisi lobortis arcu, per orci malesuada blandit metus tortor urna turpis, consectetur porttitor egestas sed eleifend eget tincidunt. pharetra varius tincidunt morbi malesuada elementum mi torquent mollis eu lobortis curae purus amet, vivamus amet nulla torquent nibh eu diam aliquam pretium donec aliquam.\r\n\r\nTempus lacus tempus feugiat lectus cras non velit mollis sit, et integer egestas habitant auctor integer sem at nam massa, himenaeos netus vel dapibus nibh malesuada leo fusce.', 'About us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2015-11-21 07:28:51', '2015-11-21 07:28:51', '', 11, 'http://localhost:3000/kanjawordpressplugin/11-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2015-11-21 07:38:58', '2015-11-21 07:38:58', '<img class="alignright size-medium wp-image-16" src="http://localhost:3000/kanjawordpressplugin/wp-content/uploads/2015/11/18318_1052779098073206_2907599220212502918_n-300x300.jpg" alt="18318_1052779098073206_2907599220212502918_n" width="300" height="300" />Lorem ipsum nisl molestie est etiam sit rutrum dui nostra sem, aliquet conubia nullam sollicitudin rhoncus venenatis vivamus rhoncus netus risus, tortor non mauris turpis eget integer nibh dolor commodo. venenatis ut molestie semper adipiscing amet cras class donec, sapien malesuada auctor sapien arcu inceptos aenean, consequat metus litora mattis vivamus feugiat arcu.\r\n\r\nAdipiscing mauris primis ante ullamcorper ad nisi lobortis arcu, per orci malesuada blandit metus tortor urna turpis, consectetur porttitor egestas sed eleifend eget tincidunt. pharetra varius tincidunt morbi malesuada elementum mi torquent mollis eu lobortis curae purus amet, vivamus amet nulla torquent nibh eu diam aliquam pretium donec aliquam.\r\n<blockquote>\r\n<h4><strong><em><span style="color: #808080;">Tempus lacus tempus feugiat lectus cras non velit mollis sit, et integer egestas habitant auctor integer sem at nam massa, himenaeos netus vel dapibus nibh malesuada leo fusce.</span></em></strong></h4>\r\n</blockquote>', 'About us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2015-11-21 07:38:58', '2015-11-21 07:38:58', '', 11, 'http://localhost:3000/kanjawordpressplugin/11-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2015-11-21 07:53:05', '2015-11-21 07:53:05', '', 'logoa', '', 'inherit', 'open', 'closed', '', 'logoa', '', '', '2015-11-21 07:53:05', '2015-11-21 07:53:05', '', 11, 'http://localhost:3000/kanjawordpressplugin/wp-content/uploads/2015/11/logoa.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2015-11-21 07:53:07', '2015-11-21 07:53:07', '', 'logob', '', 'inherit', 'open', 'closed', '', 'logob', '', '', '2015-11-21 07:53:07', '2015-11-21 07:53:07', '', 11, 'http://localhost:3000/kanjawordpressplugin/wp-content/uploads/2015/11/logob.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2015-11-21 07:53:07', '2015-11-21 07:53:07', '', 'logoc', '', 'inherit', 'open', 'closed', '', 'logoc', '', '', '2015-11-21 07:53:07', '2015-11-21 07:53:07', '', 11, 'http://localhost:3000/kanjawordpressplugin/wp-content/uploads/2015/11/logoc.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2015-11-21 07:54:10', '2015-11-21 07:54:10', '<img class="alignright size-medium wp-image-16" src="http://localhost:3000/kanjawordpressplugin/wp-content/uploads/2015/11/18318_1052779098073206_2907599220212502918_n-300x300.jpg" alt="18318_1052779098073206_2907599220212502918_n" width="300" height="300" />Lorem ipsum nisl molestie est etiam sit rutrum dui nostra sem, aliquet conubia nullam sollicitudin rhoncus venenatis vivamus rhoncus netus risus, tortor non mauris turpis eget integer nibh dolor commodo. venenatis ut molestie semper adipiscing amet cras class donec, sapien malesuada auctor sapien arcu inceptos aenean, consequat metus litora mattis vivamus feugiat arcu.\r\n\r\nAdipiscing mauris primis ante ullamcorper ad nisi lobortis arcu, per orci malesuada blandit metus tortor urna turpis, consectetur porttitor egestas sed eleifend eget tincidunt. pharetra varius tincidunt morbi malesuada elementum mi torquent mollis eu lobortis curae purus amet, vivamus amet nulla torquent nibh eu diam aliquam pretium donec aliquam.\r\n<blockquote>\r\n<h4><strong><em><span style="color: #808080;">Tempus lacus tempus feugiat lectus cras non velit mollis sit, et integer egestas habitant auctor integer sem at nam massa, himenaeos netus vel dapibus nibh malesuada leo fusce.</span></em></strong></h4>\r\n</blockquote>\r\n<img class="alignleft size-full wp-image-19" src="http://localhost:3000/kanjawordpressplugin/wp-content/uploads/2015/11/logoa.png" alt="logoa" width="100" height="100" /><img class="alignleft size-full wp-image-20" src="http://localhost:3000/kanjawordpressplugin/wp-content/uploads/2015/11/logob.png" alt="logob" width="100" height="98" /><img class="alignleft size-full wp-image-21" src="http://localhost:3000/kanjawordpressplugin/wp-content/uploads/2015/11/logoc.png" alt="logoc" width="98" height="98" />Lorem ipsum ac sociosqu semper facilisis semper class tempus faucibus, tristique duis eros cubilia quisque habitasse aliquam fringilla orci, non vel laoreet dolor enim justo facilisis neque, accumsan in ad venenatis hac per dictumst nulla. ligula donec mollis massa porttitor ullamcorper risus eu platea, fringilla habitasse suscipit pellentesque donec est habitant vehicula, tempor ultrices placerat sociosqu ultrices consectetur ullamcorper.\r\n\r\nTincidunt quisque tellus ante nostra euismod nec suspendisse, sem curabitur elit malesuada lacus viverra sagittis, sit ornare orci augue nullam adipiscing. pulvinar libero aliquam vestibulum platea cursus pellentesque leo dui lectus curabitur euismod ad erat curae non, elit ultrices placerat netus metus feugiat non conubia fusce porttitor sociosqu diam commodo metus.\r\n\r\nIn himenaeos vitae aptent consequat luctus purus eleifend, enim sollicitudin eleifend porta malesuada ac, class conubia condimentum mauris facilisis conubia.', 'About us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2015-11-21 07:54:10', '2015-11-21 07:54:10', '', 11, 'http://localhost:3000/kanjawordpressplugin/11-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2015-11-21 07:58:43', '2015-11-21 07:58:43', '<img class="alignright size-medium wp-image-16" src="http://localhost:3000/kanjawordpressplugin/wp-content/uploads/2015/11/18318_1052779098073206_2907599220212502918_n-300x300.jpg" alt="18318_1052779098073206_2907599220212502918_n" width="300" height="300" />Lorem ipsum nisl molestie est etiam sit rutrum dui nostra sem, aliquet conubia nullam sollicitudin rhoncus venenatis vivamus rhoncus netus risus, tortor non mauris turpis eget integer nibh dolor commodo. venenatis ut molestie semper adipiscing amet cras class donec, sapien malesuada auctor sapien arcu inceptos aenean, consequat metus litora mattis vivamus feugiat arcu.\r\n\r\nAdipiscing mauris primis ante ullamcorper ad nisi lobortis arcu, per orci malesuada blandit metus tortor urna turpis, consectetur porttitor egestas sed eleifend eget tincidunt. pharetra varius tincidunt morbi malesuada elementum mi torquent mollis eu lobortis curae purus amet, vivamus amet nulla torquent nibh eu diam aliquam pretium donec aliquam.\r\n<blockquote>\r\n<h4><strong><em><span style="color: #808080;">Tempus lacus tempus feugiat lectus cras non velit mollis sit, et integer egestas habitant auctor integer sem at nam massa, himenaeos netus vel dapibus nibh malesuada leo fusce.</span></em></strong></h4>\r\n</blockquote>', 'About us', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2015-11-21 07:58:43', '2015-11-21 07:58:43', '', 11, 'http://localhost:3000/kanjawordpressplugin/11-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2015-11-21 09:12:20', '2015-11-21 09:12:20', '&lt;a class="twitter-timeline" href="https://twitter.com/CzarCeasar" data-widget-id="667993014564950016"&gt;Tweets by @CzarCeasar&lt;/a&gt;\r\n&lt;script&gt;!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?''http'':''https'';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");&lt;/script&gt;', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2015-11-21 09:12:20', '2015-11-21 09:12:20', '', 9, 'http://localhost:3000/kanjawordpressplugin/9-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2015-11-21 09:21:31', '2015-11-21 09:21:31', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2015-11-21 09:21:31', '2015-11-21 09:21:31', '', 9, 'http://localhost:3000/kanjawordpressplugin/9-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2015-11-21 09:37:45', '2015-11-21 09:37:45', '<p>Your Name (required)<br />\r\n    [text* your-name] </p>\r\n\r\n<p>Your Email (required)<br />\r\n    [email* your-email] </p>\r\n\r\n<p>Subject<br />\r\n    [text your-subject] </p>\r\n\r\n<p>Your Message<br />\r\n    [textarea your-message] </p>\r\n\r\n<p>[submit "Send"]</p>\n[your-subject]\n[your-name] <ceasarmwangi@gmail.com>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on kanjawordpressplugin (http://localhost:3000/kanjawordpressplugin)\nceasarmwangi@gmail.com\nReply-To: [your-email]\n\n\n\n\n[your-subject]\nkanjawordpressplugin <ceasarmwangi@gmail.com>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on kanjawordpressplugin (http://localhost:3000/kanjawordpressplugin)\n[your-email]\nReply-To: ceasarmwangi@gmail.com\n\n\n\nYour message was sent successfully. Thanks.\nFailed to send your message. Please try later or contact the administrator by another method.\nValidation errors occurred. Please confirm the fields and submit it again.\nFailed to send your message. Please try later or contact the administrator by another method.\nPlease accept the terms to proceed.\nPlease fill in the required field.\nThis input is too long.\nThis input is too short.\nDate format seems invalid.\nThis date is too early.\nThis date is too late.\nFailed to upload file.\nThis file type is not allowed.\nThis file is too large.\nFailed to upload file. Error occurred.\nNumber format seems invalid.\nThis number is too small.\nThis number is too large.\nYour answer is not correct.\nEmail address seems invalid.\nURL seems invalid.\nTelephone number seems invalid.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2015-11-21 09:43:44', '2015-11-21 09:43:44', '', 0, 'http://localhost:3000/kanjawordpressplugin/?post_type=wpcf7_contact_form&#038;p=27', 0, 'wpcf7_contact_form', '', 0),
(28, 1, '2015-11-21 09:44:53', '2015-11-21 09:44:53', '[contact-form-7 id="27" title="Contact form 1"]', 'Contact', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2015-11-21 09:44:53', '2015-11-21 09:44:53', '', 9, 'http://localhost:3000/kanjawordpressplugin/9-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2015-11-21 10:09:18', '2015-11-21 10:09:18', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2015-11-21 10:14:57', '2015-11-21 10:14:57', '', 0, 'http://localhost:3000/kanjawordpressplugin/?post_type=price_table&#038;p=29', 0, 'price_table', '', 0),
(30, 1, '2015-11-21 10:09:41', '2015-11-21 10:09:41', '[price_table  id="29" ]', 'Services', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-11-21 10:09:41', '2015-11-21 10:09:41', '', 7, 'http://localhost:3000/kanjawordpressplugin/7-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2015-11-21 10:29:01', '2015-11-21 10:29:01', '', 'Services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2015-11-21 10:34:03', '2015-11-21 10:34:03', '', 0, 'http://localhost:3000/kanjawordpressplugin/?post_type=rpt_pricing_table&#038;p=31', 0, 'rpt_pricing_table', '', 0),
(32, 1, '2015-11-21 10:30:31', '2015-11-21 10:30:31', '[price_table  id="29" ]\r\n\r\n[rpt name="services"]', 'Services', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2015-11-21 10:30:31', '2015-11-21 10:30:31', '', 7, 'http://localhost:3000/kanjawordpressplugin/7-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2015-11-21 10:36:08', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-11-21 10:36:08', '0000-00-00 00:00:00', '', 0, 'http://localhost:3000/kanjawordpressplugin/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2015-11-21 10:36:09', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-11-21 10:36:09', '0000-00-00 00:00:00', '', 0, 'http://localhost:3000/kanjawordpressplugin/?p=34', 1, 'nav_menu_item', '', 0),
(35, 1, '2015-11-21 10:36:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-11-21 10:36:10', '0000-00-00 00:00:00', '', 0, 'http://localhost:3000/kanjawordpressplugin/?p=35', 1, 'nav_menu_item', '', 0),
(36, 1, '2015-11-21 10:36:10', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2015-11-21 10:36:10', '0000-00-00 00:00:00', '', 0, 'http://localhost:3000/kanjawordpressplugin/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2015-11-21 10:38:30', '2015-11-21 10:38:30', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2015-11-21 10:39:18', '2015-11-21 10:39:18', '', 0, 'http://localhost:3000/kanjawordpressplugin/?p=37', 1, 'nav_menu_item', '', 0),
(38, 1, '2015-11-21 10:38:30', '2015-11-21 10:38:30', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2015-11-21 10:39:18', '2015-11-21 10:39:18', '', 0, 'http://localhost:3000/kanjawordpressplugin/?p=38', 2, 'nav_menu_item', '', 0),
(39, 1, '2015-11-21 10:38:30', '2015-11-21 10:38:30', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2015-11-21 10:39:18', '2015-11-21 10:39:18', '', 0, 'http://localhost:3000/kanjawordpressplugin/?p=39', 4, 'nav_menu_item', '', 0),
(40, 1, '2015-11-21 10:38:30', '2015-11-21 10:38:30', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2015-11-21 10:39:18', '2015-11-21 10:39:18', '', 0, 'http://localhost:3000/kanjawordpressplugin/?p=40', 3, 'nav_menu_item', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(37, 2, 0),
(38, 2, 0),
(39, 2, 0),
(40, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '3'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o&hidetb=1&align=left&urlbutton=none&editor=html&posts_list_mode=list'),
(19, 1, 'wp_user-settings-time', '1448101910'),
(20, 1, 'session_tokens', 'a:1:{s:64:"3b5e8665f20c368f2539691566d023b9fdb11c4ea773c273c3c226e60d5f540d";a:4:{s:10:"expiration";i:1448251853;s:2:"ip";s:3:"::1";s:2:"ua";s:108:"Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.86 Safari/537.36";s:5:"login";i:1448079053;}}'),
(21, 1, 'closedpostboxes_page', 'a:0:{}'),
(22, 1, 'metaboxhidden_page', 'a:4:{i:0;s:10:"postcustom";i:1;s:11:"commentsdiv";i:2;s:7:"slugdiv";i:3;s:9:"authordiv";}'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:15:"add-price_table";i:1;s:12:"add-post_tag";}'),
(25, 1, 'nav_menu_recently_edited', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BQUK.sS0L020IBNFhwuD9xE5nmneZp1', 'admin', 'ceasarmwangi@gmail.com', '', '2015-11-19 07:29:34', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=263;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=147;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
