-- phpMyAdmin SQL Dump
-- version 5.2.0-dev+20220509.f95b261844
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 03, 2022 at 04:41 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp_latihan_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_debug_log`
--

CREATE TABLE `wp_aiowps_debug_log` (
  `id` bigint(20) NOT NULL,
  `level` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '1000-10-10 10:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_events`
--

CREATE TABLE `wp_aiowps_events` (
  `id` bigint(20) NOT NULL,
  `event_type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `ip_or_host` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `referer_info` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `event_data` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_failed_logins`
--

CREATE TABLE `wp_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `login_attempt_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_global_meta`
--

CREATE TABLE `wp_aiowps_global_meta` (
  `meta_id` bigint(20) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `meta_key1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key3` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key4` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key5` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value2` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value3` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value4` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value5` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_login_activity`
--

CREATE TABLE `wp_aiowps_login_activity` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `logout_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `login_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `login_country` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `browser_type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_aiowps_login_activity`
--

INSERT INTO `wp_aiowps_login_activity` (`id`, `user_id`, `user_login`, `login_date`, `logout_date`, `login_ip`, `login_country`, `browser_type`) VALUES
(1, 1, 'admin', '2022-08-08 09:30:06', '2022-08-09 02:11:09', '180.244.138.49', '', ''),
(2, 1, 'admin', '2022-08-09 02:12:46', '2022-08-09 02:25:10', '180.244.138.49', '', ''),
(3, 1, 'admin', '2022-08-09 02:25:48', '2022-08-09 03:29:24', '180.244.138.49', '', ''),
(4, 1, 'admin', '2022-08-09 03:29:34', '2022-08-09 03:36:06', '180.244.138.49', '', ''),
(5, 1, 'admin', '2022-08-09 03:36:37', '2022-08-09 03:37:32', '180.244.138.49', '', ''),
(6, 1, 'admin', '2022-08-09 03:39:02', '2022-08-09 07:09:28', '180.244.138.49', '', ''),
(7, 1, 'admin', '2022-08-09 07:20:18', '2022-08-09 07:20:33', '180.244.138.49', '', ''),
(8, 1, 'admin', '2022-08-09 07:21:20', '2022-08-09 07:23:14', '180.244.138.49', '', ''),
(9, 2, 'editor', '2022-08-09 07:23:29', '2022-08-09 07:53:16', '180.244.138.49', '', ''),
(10, 1, 'admin', '2022-08-09 07:53:25', '1000-10-10 10:00:00', '180.244.138.49', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_login_lockdown`
--

CREATE TABLE `wp_aiowps_login_lockdown` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `release_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `failed_login_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `lock_reason` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `unlock_key` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_aiowps_permanent_block`
--

CREATE TABLE `wp_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL,
  `blocked_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(2, 63, 'arifin habibi', 'arifin@gmail.com', '', '127.0.0.1', '2022-08-16 04:17:07', '2022-08-16 04:17:07', 'hello semuanya', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', 'comment', 0, 0),
(3, 67, 'arifin', 'arifin@gmail.com', 'https://id-id.facebook.com/', '127.0.0.1', '2022-08-16 04:18:41', '2022-08-16 04:18:41', 'hallo semuanya!!!', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', 'comment', 0, 0),
(4, 67, 'admin', 'admin@gmail.com', 'http://localhost/latihan%20wordpress/latihan2', '127.0.0.1', '2022-08-16 04:20:34', '2022-08-16 04:20:34', 'hai', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', 'comment', 3, 1),
(5, 63, 'admin', 'admin@gmail.com', 'http://localhost/latihan%20wordpress/latihan2', '127.0.0.1', '2022-08-16 04:20:44', '2022-08-16 04:20:44', 'juga', 0, '1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:103.0) Gecko/20100101 Firefox/103.0', 'comment', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_bans`
--

CREATE TABLE `wp_itsec_bans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `host` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'ip',
  `created_at` datetime NOT NULL,
  `actor_type` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `actor_id` varchar(128) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_dashboard_events`
--

CREATE TABLE `wp_itsec_dashboard_events` (
  `event_id` int(11) UNSIGNED NOT NULL,
  `event_slug` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `event_time` datetime NOT NULL,
  `event_count` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `event_consolidated` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_distributed_storage`
--

CREATE TABLE `wp_itsec_distributed_storage` (
  `storage_id` bigint(20) UNSIGNED NOT NULL,
  `storage_group` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `storage_key` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `storage_chunk` int(11) NOT NULL DEFAULT 0,
  `storage_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `storage_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_fingerprints`
--

CREATE TABLE `wp_itsec_fingerprints` (
  `fingerprint_id` bigint(20) UNSIGNED NOT NULL,
  `fingerprint_user` bigint(20) UNSIGNED NOT NULL,
  `fingerprint_hash` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fingerprint_created_at` datetime NOT NULL,
  `fingerprint_approved_at` datetime NOT NULL,
  `fingerprint_data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fingerprint_snapshot` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fingerprint_last_seen` datetime NOT NULL,
  `fingerprint_uses` int(11) NOT NULL DEFAULT 0,
  `fingerprint_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fingerprint_uuid` char(36) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_geolocation_cache`
--

CREATE TABLE `wp_itsec_geolocation_cache` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_host` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_lat` decimal(10,8) NOT NULL,
  `location_long` decimal(11,8) NOT NULL,
  `location_label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_credit` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_lockouts`
--

CREATE TABLE `wp_itsec_lockouts` (
  `lockout_id` bigint(20) UNSIGNED NOT NULL,
  `lockout_type` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lockout_start` datetime NOT NULL,
  `lockout_start_gmt` datetime NOT NULL,
  `lockout_expire` datetime NOT NULL,
  `lockout_expire_gmt` datetime NOT NULL,
  `lockout_host` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lockout_user` bigint(20) UNSIGNED DEFAULT NULL,
  `lockout_username` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `lockout_active` int(1) NOT NULL DEFAULT 1,
  `lockout_context` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_logs`
--

CREATE TABLE `wp_itsec_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `module` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `code` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'notice',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `init_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `memory_current` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `memory_peak` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `url` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `remote_ip` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_itsec_logs`
--

INSERT INTO `wp_itsec_logs` (`id`, `parent_id`, `module`, `code`, `data`, `type`, `timestamp`, `init_timestamp`, `memory_current`, `memory_peak`, `url`, `blog_id`, `user_id`, `remote_ip`) VALUES
(1, 0, 'notification_center', 'send::hide-backend', 'a:2:{s:10:\"recipients\";a:1:{i:0;s:15:\"admin@gmail.com\";}s:7:\"subject\";s:72:\"[localhost/latihan%20wordpress/latihan2] WordPress Login Address Changed\";}', 'debug', '2022-08-09 03:36:00', '2022-08-09 03:35:58', 39288984, 39392688, 'http://localhost/latihan%20wordpress/latihan2/index.php/wp-json/batch/v1?_locale=user', 1, 1, '::1'),
(2, 0, 'notification_center', 'send_failed::hide-backend', 'a:1:{s:5:\"error\";O:8:\"WP_Error\":3:{s:6:\"errors\";a:1:{s:14:\"wp_mail_failed\";a:1:{i:0;s:45:\"Invalid address:  (From): wordpress@localhost\";}}s:10:\"error_data\";a:1:{s:14:\"wp_mail_failed\";a:6:{s:2:\"to\";a:1:{i:0;s:15:\"admin@gmail.com\";}s:7:\"subject\";s:72:\"[localhost/latihan%20wordpress/latihan2] WordPress Login Address Changed\";s:7:\"message\";s:41706:\"\n<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\n<html xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"en-US\">\n\n<head>\n	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n	<title>New Login URL</title>\n	<meta name=\"viewport\" content=\"width=device-width\">\n\n	<style type=\"text/css\">\n		/* From: https://litmus.com/community/learning/13-foundations-email-coding-101 */\n\n		/* GENERAL STYLE RESETS */\n		body,#body-table,#body-cell{height:100%!important;width:100%!important;margin:0;padding:0;}\n		img,aimg{border:0;outline:none;text-decoration:none;}\n		.imageFix{display:block;}\n		table,td{border-collapse:collapse;border-spacing:0;}\n\n		/* CLIENT-SPECIFIC RESETS */\n		.ReadMsgBody{width:100%;}\n		.ExternalClass{width:100%;}\n		.ExternalClass,.ExternalClass p,.ExternalClass span,.ExternalClass font,.ExternalClass td,.ExternalClass div{line-height:100%;}\n		table,td{mso-table-lspace:0pt;mso-table-rspace:0pt;}\n		img{-ms-interpolation-mode:bicubic;}\n		body,table,td,p,a,li,blockquote{-ms-text-size-adjust:100%;-webkit-text-size-adjust:100%;}\n\n\n		h1,h2,h3,h4,h5,h6{color:#202020;font-family:Helvetica;font-size:20px;font-weight:bold;line-height:150%;margin:0;padding:0;text-align:center;}\n		p{font-family:Helvetica;font-size:16px;line-height:150%;margin-top:10px;margin-right:0;margin-bottom:10px;margin-left:0;padding:0;text-align:center;}\n		a{color:#0084CB;font-family:Helvetica;font-size:16px;line-height:150%;text-align:center;text-decoration:underline;}\n		img{height:auto;}\n\n		body,#body-table{background-color:#FFFFFF;}\n		#body-cell{padding-bottom:20px;}\n		.section-padding{padding-top:20px;padding-right:20px;padding-left:20px;}\n		.section-padding-bottom{padding-bottom:20px;}\n		.container-cell{color:#808080;font-family:Helvetica;font-size:16px;line-height:150%;text-align:center;padding-bottom:20px;}\n		#top-banner{background-color:#FFCE08;}\n		#top-banner .container-cell{color:#413F39;font-size:13px;}\n		#top-logo .container-cell{padding-top:20px;}\n		#title-container h1{font-size:34px;}\n		.info-box{padding-top:20px;padding-bottom:20px;}\n		.info-box .container{border:1px solid #CDCECE;background-color:#F2F2F2;}\n		.info-box .section-padding{padding-top:40px;padding-right:40px;padding-left:40px;}\n		.info-box .container-cell{padding-bottom:40px;}\n		.info-box .info-icon{width:33px;height:23px;vertical-align:middle;}\n		.section-heading .container-cell{padding-bottom:0;}\n		.section-heading h4{color:#0084CB;font-size:16px;}\n		.section-heading h4 img{padding-top:2px;padding-right:5px;vertical-align:top;}\n		.lockouts-summary .container.left-column{margin-right:60px;}\n		.lockouts-summary h4{color:#ACAAAA;font-size:16px;font-weight:normal;}\n		.lockouts-summary p{color:#505050;font-size:30px;font-weight:bold;}\n		.table{border:1px solid #cdcece;color: #808080;font-family:Helvetica;font-size:14px;}\n		.table th,.table td{border:1px solid #cdcece;padding:10px;}\n		.table th{text-align:left;font-weight:bold;padding:5px 10px;}\n		.table .row-label{font-style:italic;}\n		.table a,.table b{font-size:14px;}\n		.large-text h4{color:#505050;margin-bottom:10px;}\n		.details-box-container{padding-top:20px;padding-bottom:20px;}\n		.details-box{background-color:#E4EEF7;border:1px solid #CDCECE;}\n		.details-box .container-cell{color:#6A6A6A;}\n		.divider .divider-border{border-top-width:1px;border-top-style:solid;border-top-color:#E8E8E8;}\n		.divider .container-cell{line-height:1px;padding-bottom:20px;width:450px;}\n		.module-button .border-radius{-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;}\n		.module-button a{background-color:#FFCD08;border:1px solid #FFCD08;color:#2E280E;display:inline-block;font-size:18px;font-weight:bold;line-height:100%;padding-top:20px;padding-right:30px;padding-bottom:20px;padding-left:30px;}\n		.pro-callout{padding-top:20px;}\n		.pro-callout-background{background-color:#0B1A23;}\n		.pro-callout .section-padding{padding-top:40px;}\n		.pro-callout .two-factor{color:#FFFFFF;margin-top:20px;margin-bottom:20px;}\n		.pro-callout .module-button a{font-size:30px;}\n		.pro-callout .why-pro{color:#999999;font-style:italic;margin-top:20px;margin-bottom:20px;}\n		.footer-heading h2{color:#002030;font-size:26px;}\n		.pro-flag{background-color:#FFCC00;color:#000000;font-size:10px;display:inline-block;padding:3px;line-height:1;position:relative;bottom:10px;text-transform:uppercase;}\n		#security-guide-container{border:1px solid #CDCECE;background-color:#D3E8E9;}\n		#security-guide .container-cell{color:#6C6C6C;text-align:left;}\n		#security-guide h4{color:#6C6C6C;font-size:18px;padding-bottom:10px;text-align:left;}\n		#security-guide a{font-weight:bold;}\n		#footer-source-details .container-cell{line-height:200%;padding-top:60px;padding-bottom:0;}\n		#footer-source-details a{font-size:11px;font-weight:bold;line-height:200%;}\n		.template-container {max-width: 600px !important;}\n\n		@media only screen and (max-width:600px){\n			body{width:100% !important;min-width:100% !important;}\n			#body-cell{padding:10px !important;}\n			#main-container, .container{width:100% !important;}\n			.preserve-ratio{height:auto !important;width:100% !important;}\n			.container-cell-bottom{padding-top:20px !important;}\n			.lockouts-summary .container{width:auto !important;}\n		}\n\n		@media only screen and (max-width:450px){\n			.divider .container-cell{width:auto !important;}\n		}\n	</style>\n</head>\n\n<body style=\"margin: 0;padding: 0;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFFFFF;height: 100%!important;width: 100%!important;\">\n	<center>\n		<table id=\"body-table\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" height=\"100%\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;margin: 0;padding: 0;background-color: #FFFFFF;height: 100%!important;width: 100%!important;\">\n			<tr>\n				<td id=\"body-cell\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;margin: 0;padding: 0;padding-bottom: 20px;height: 100%!important;width: 100%!important;\">\n					<table id=\"main-container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td id=\"top-banner\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #FFCE08;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n											<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n												<tr>\n													<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n														<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n															<tr>\n																<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #413F39;font-family: Helvetica;font-size: 13px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n																	New Login URL\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td id=\"top-logo\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n											<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n												<tr>\n													<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n														<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n															<tr>\n																<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;padding-top: 20px;\">\n																	<img class=\"preserve-ratio\" src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/plugins/better-wp-security/core/img/mail/logo.png\" style=\"max-width: 300px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" alt=\"\" align=\"center\">\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n						<tr>\n							<td id=\"title-container\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n											<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n												<tr>\n													<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n														<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n															<tr>\n																<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n																	<h1 style=\"color: #202020;font-family: Helvetica;font-size: 34px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">New Login URL</h1>\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n<tr>\n	<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n			   style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\"\n					style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\"\n						   style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\"\n								style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\"\n									   style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\"\n											style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<p>The login address for Beautiful Indonesia has changed. The new login address is <code>http://localhost/latihan%20wordpress/latihan2/4dm1n</code>. You will be unable to use the old login address.</p>\n\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding section-padding-bottom\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;padding-bottom: 20px;\">\n								<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n											<table class=\"module-button\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n												<tr>\n													<td class=\"border-radius\" align=\"center\" bgcolor=\"#FFCD08\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;\">\n														<a class=\"border-radius\" href=\"http://localhost/latihan%20wordpress/latihan2/4dm1n\" target=\"_blank\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #2E280E;font-family: Helvetica;font-size: 18px;line-height: 100%;text-align: center;text-decoration: none;background-color: #FFCD08;border: 1px solid #FFCD08;display: inline-block;font-weight: bold;padding-top: 20px;padding-right: 30px;padding-bottom: 20px;padding-left: 30px;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;\">Login Now</a>\n													</td>\n												</tr>\n											</table>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td class=\"pro-callout\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;\">\n		<table class=\"pro-callout-background\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;background-color: #0B1A23;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" class=\"container\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td align=\"center\" valign=\"top\" width=\"600\" class=\"section-padding\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 40px;padding-right: 20px;padding-left: 20px;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td valign=\"top\" class=\"container-cell\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<img class=\"preserve-ratio\" src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/plugins/better-wp-security/core/img/mail/pro_logo_no_text.png\" style=\"max-width: 100px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"100\" alt=\"\" align=\"center\">\n											<p class=\"two-factor\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 20px;margin-right: 0;margin-bottom: 20px;margin-left: 0;padding: 0;text-align: center;color: #FFFFFF;\">Want two-factor authentication, scheduled site scanning, ticketed support and more?</p>\n											<table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n												<tr>\n													<td style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n														<table class=\"module-button\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" align=\"center\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n															<tr>\n																<td class=\"border-radius\" align=\"center\" bgcolor=\"#FFCD08\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;\">\n																	<a href=\"{{ $href }}\" target=\"_blank\" class=\"border-radius\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #2E280E;font-family: Helvetica;font-size: 30px;line-height: 100%;text-align: center;text-decoration: none;background-color: #FFCD08;border: 1px solid #FFCD08;display: inline-block;font-weight: bold;padding-top: 20px;padding-right: 30px;padding-bottom: 20px;padding-left: 30px;-webkit-border-radius: 5px;-moz-border-radius: 5px;border-radius: 5px;\">Get iThemes Security Pro</a>\n																</td>\n															</tr>\n														</table>\n													</td>\n												</tr>\n											</table>\n											<p class=\"why-pro\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 20px;margin-right: 0;margin-bottom: 20px;margin-left: 0;padding: 0;text-align: center;color: #999999;font-style: italic;\">Why go Pro? <a href=\"https://ithemes.com/security/?utm_source=email&utm_medium=link&utm_campaign=itsecfreecta\">Check out the Free/Pro comparison chart.</a></p>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td class=\"footer-heading\" align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<h2 style=\"color: #002030;font-family: Helvetica;font-size: 26px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">More Website Security Resources</h2>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table class=\"container\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"260\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<img class=\"preserve-ratio\" src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/plugins/better-wp-security/core/img/mail/article_icon.png\" style=\"margin-bottom: 10px;max-width: 61px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"61\" alt=\"\" align=\"center\">\n											<br>\n											<h4 style=\"color: #202020;font-family: Helvetica;font-size: 20px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">\n												<a href=\"https://ithemes.com/blog/category/wordpress-security/?utm_source=email_footer&utm_medium=link&utm_campaign=itsecfreecta\" target=\"_blank\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #0084CB;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;text-decoration: none;\">WordPress Security News</a>\n											</h4>\n											<p style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 10px;margin-right: 0;margin-bottom: 10px;margin-left: 0;padding: 0;text-align: center;\">Be the first to get the latest WordPress security news, tips, and updates on the <a href=\"https://ithemes.com/blog/category/wordpress-security/?utm_source=email_footer&utm_medium=link&utm_campaign=itsecfreecta\">iThemes Blog</a>, including the <a href=\"https://ithemes.com/wordpress-vulnerability-report/?utm_source=email_footer&utm_medium=link&utm_campaign=itsecfreecta\">Weekly WordPress Vulnerability Report</a>.</p>\n										</td>\n									</tr>\n								</table>\n								<table class=\"container\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"260\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell container-cell-bottom\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<img class=\"preserve-ratio\" src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/plugins/better-wp-security/core/img/mail/video_icon.png\" style=\"margin-bottom: 10px;max-width: 61px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"61\" alt=\"\" align=\"center\">\n											<br>\n											<h4 style=\"color: #202020;font-family: Helvetica;font-size: 20px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">\n												<a href=\"https://ithemes.com/tutorial/category/ithemes-security/?utm_source=email_footer&utm_medium=link&utm_campaign=itsecfreecta\" target=\"_blank\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #0084CB;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;text-decoration: none;\">\n													Tutorials\n												</a>\n											</h4>\n											<p style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 10px;margin-right: 0;margin-bottom: 10px;margin-left: 0;padding: 0;text-align: center;\">Make sure you’re getting the most out of iThemes Security features to protect your site with our <a href=\"https://ithemes.com/tutorial/category/ithemes-security/?utm_source=email_footer&utm_medium=link&utm_campaign=itsecfreecta\">free iThemes Security tutorials</a>.</p>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table class=\"container\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"260\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<img class=\"preserve-ratio\" src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/plugins/better-wp-security/core/img/mail/documentation_icon.png\" style=\"margin-bottom: 10px;max-width: 62px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"62\" alt=\"\" align=\"center\">\n											<br>\n											<h4 style=\"color: #202020;font-family: Helvetica;font-size: 20px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">\n												<a href=\"https://help.ithemes.com/hc/en-us/categories/200147050\" target=\"_blank\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #0084CB;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;text-decoration: none;\">Documentation</a>\n											</h4>\n											<p style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 10px;margin-right: 0;margin-bottom: 10px;margin-left: 0;padding: 0;text-align: center;\">Read iThemes Security documentation and Frequently Asked Questions on the <a href=\"https://help.ithemes.com/hc/en-us/categories/200147050\">iThemes Help Center</a>.</p>\n										</td>\n									</tr>\n								</table>\n								<table class=\"container\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"260\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell container-cell-bottom\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;padding-bottom: 20px;\">\n											<img class=\"preserve-ratio\" src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/plugins/better-wp-security/core/img/mail/support_icon.png\" style=\"margin-bottom: 10px;max-width: 62px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"62\" alt=\"\" align=\"center\">\n											<br>\n											<h4 style=\"color: #202020;font-family: Helvetica;font-size: 20px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: center;\">\n												<a href=\"https://members.ithemes.com/panel/helpdesk.php?utm_source=email_footer&utm_medium=link&utm_campaign=itsecfreecta\" target=\"_blank\" style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #0084CB;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: center;text-decoration: none;\">Support</a>\n												<span class=\"pro-flag\" style=\"background-color: #FFCC00;color: #000000;font-size: 10px;display: inline-block;padding: 3px;line-height: 1;position: relative;bottom: 10px;text-transform: uppercase;\">Pro</span>\n											</h4>\n											<p style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;font-family: Helvetica;font-size: 16px;line-height: 150%;margin-top: 10px;margin-right: 0;margin-bottom: 10px;margin-left: 0;padding: 0;text-align: center;\">Pro customers have the best support team available as their security team. Contact the <a href=\"https://members.ithemes.com/panel/helpdesk.php?utm_source=email_footer&utm_medium=link&utm_campaign=itsecfreecta\">iThemes Help Desk</a> for help when you need answers.</p>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td id=\"security-guide\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table id=\"security-guide-container\" class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;border: 1px solid #CDCECE;background-color: #D3E8E9;\">\n						<tr>\n							<td class=\"section-padding\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table class=\"container\" align=\"left\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"104\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"section-padding-bottom\" align=\"left\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-bottom: 20px;\">\n											<img class=\"preserve-ratio\" src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/plugins/better-wp-security/core/img/mail/wp_security_book.png\" style=\"max-width: 84px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"84\" alt=\"\" align=\"center\">\n										</td>\n									</tr>\n								</table>\n								<table class=\"container\" align=\"right\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"454\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #6C6C6C;font-family: Helvetica;font-size: 16px;line-height: 150%;text-align: left;padding-bottom: 20px;\">\n											<h4 style=\"color: #6C6C6C;font-family: Helvetica;font-size: 18px;font-weight: bold;line-height: 150%;margin: 0;padding: 0;text-align: left;padding-bottom: 10px;\">Free WordPress Security Guide</h4>\n											Learn simple WordPress security tips — including 3 kinds of security your site needs and 4 best security practices for keeping your WordPress site safe with our <a href=\"https://ithemes.com/ebooks/wordpress-security/?utm_source=email_footer&utm_medium=link&utm_campaign=itsecfreecta\">free guide</a>.\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n<tr>\n	<td id=\"footer-source-details\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n		<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n			<tr>\n				<td align=\"center\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n					<table class=\"container\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n						<tr>\n							<td class=\"section-padding\" align=\"center\" valign=\"top\" width=\"600\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;padding-top: 20px;padding-right: 20px;padding-left: 20px;\">\n								<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" width=\"100%\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;\">\n									<tr>\n										<td class=\"container-cell\" valign=\"top\" style=\"border-collapse: collapse;border-spacing: 0;mso-table-lspace: 0pt;mso-table-rspace: 0pt;-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #808080;font-family: Helvetica;font-size: 16px;line-height: 200%;text-align: center;padding-bottom: 0;padding-top: 60px;\">\n											<img class=\"preserve-ratio\" src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/plugins/better-wp-security/core/img/mail/footer_logo.png\" style=\"max-width: 50px;border: 0;outline: none;text-decoration: none;-ms-interpolation-mode: bicubic;height: auto;\" width=\"50\" alt=\"\" align=\"center\"><br>\n											<br>\n											<span style=\"-ms-text-size-adjust: 100%;-webkit-text-size-adjust: 100%;color: #666f72;font-family: Helvetica;font-size: 11px;line-height: 200%;text-align: center;text-decoration: none;font-weight: bold;\">\n												This email was generated by the iThemes Security plugin.<br>To unsubscribe from these updates, visit the <a href=\"http://localhost/latihan%20wordpress/latihan2/wp-admin/admin.php?page=itsec\" style=\"color: #0084CB\">Settings page</a> in the iThemes Security plugin menu.\n											</span>\n										</td>\n									</tr>\n								</table>\n							</td>\n						</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</td>\n</tr>\n					</table>\n				</td>\n			</tr>\n		</table>\n	</center>\n</body>\n\n</html>\n\";s:7:\"headers\";a:0:{}s:11:\"attachments\";a:0:{}s:24:\"phpmailer_exception_code\";i:0;}}s:18:\"\0*\0additional_data\";a:0:{}}}', 'error', '2022-08-09 03:36:00', '2022-08-09 03:35:58', 40053432, 40665728, 'http://localhost/latihan%20wordpress/latihan2/index.php/wp-json/batch/v1?_locale=user', 1, 1, '::1'),
(3, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2022-08-15 02:35:22', '2022-08-15 02:35:17', 32903440, 32946152, 'http://localhost/latihan%20wordpress/latihan2/', 1, 0, '::1'),
(4, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2022-08-15 02:35:25', '2022-08-15 02:35:24', 33074456, 33170224, 'https://localhost/latihan%20wordpress/latihan2/', 1, 0, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_mutexes`
--

CREATE TABLE `wp_itsec_mutexes` (
  `mutex_id` bigint(20) UNSIGNED NOT NULL,
  `mutex_name` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mutex_expires` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_opaque_tokens`
--

CREATE TABLE `wp_itsec_opaque_tokens` (
  `token_id` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token_hashed` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token_data` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token_created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_temp`
--

CREATE TABLE `wp_itsec_temp` (
  `temp_id` bigint(20) UNSIGNED NOT NULL,
  `temp_type` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `temp_date` datetime NOT NULL,
  `temp_date_gmt` datetime NOT NULL,
  `temp_host` varchar(40) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `temp_user` bigint(20) UNSIGNED DEFAULT NULL,
  `temp_username` varchar(60) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_itsec_user_groups`
--

CREATE TABLE `wp_itsec_user_groups` (
  `group_id` char(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `group_label` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `group_roles` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `group_canonical` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `group_users` text COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `group_min_role` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `group_created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/latihan%20wordpress/latihan2', 'yes'),
(2, 'home', 'http://localhost/latihan%20wordpress/latihan2', 'yes'),
(3, 'blogname', 'Beautiful Indonesia', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'admin@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/index.php/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:108:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:50:\"index.php/social-media/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:60:\"index.php/social-media/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:80:\"index.php/social-media/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"index.php/social-media/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:75:\"index.php/social-media/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:56:\"index.php/social-media/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"index.php/social-media/([^/]+)/embed/?$\";s:45:\"index.php?social-media=$matches[1]&embed=true\";s:43:\"index.php/social-media/([^/]+)/trackback/?$\";s:39:\"index.php?social-media=$matches[1]&tb=1\";s:51:\"index.php/social-media/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?social-media=$matches[1]&paged=$matches[2]\";s:58:\"index.php/social-media/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?social-media=$matches[1]&cpage=$matches[2]\";s:47:\"index.php/social-media/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?social-media=$matches[1]&page=$matches[2]\";s:39:\"index.php/social-media/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"index.php/social-media/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"index.php/social-media/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"index.php/social-media/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"index.php/social-media/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"index.php/social-media/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:37:\"index.php/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:30:\"index.php/([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:50:\"index.php/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:45:\"index.php/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:38:\"index.php/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:45:\"index.php/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:26:\"index.php/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"index.php/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"index.php/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"index.php/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"index.php/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"index.php/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:30:\"advanced-custom-fields/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'BlankSlate', 'yes'),
(41, 'stylesheet', 'beautiful_indonesia', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:1:{s:41:\"better-wp-security/better-wp-security.php\";a:2:{i:0;s:10:\"ITSEC_Core\";i:1;s:16:\"handle_uninstall\";}}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1675479572', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '3', 'no'),
(103, 'widget_block', 'a:12:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:513:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading {\"textAlign\":\"left\",\"level\":1} -->\n<h1 class=\"has-text-align-left\">Recent Posts</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:widget-group -->\n<h2 class=\"widget-title\"></h2><div class=\"wp-widget-group__inner-blocks\"><!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:latest-posts {\"postLayout\":\"grid\",\"align\":\"center\"} /--></div>\n<!-- /wp:group --></div>\n<!-- /wp:widget-group --></div>\n<!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:200:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading {\"level\":1} -->\n<h1>Place Gallery</h1>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:71:\"<!-- wp:group -->\n<div class=\"wp-block-group\"></div>\n<!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:156:\"<!-- wp:group -->\n<div class=\"wp-block-group\"><!-- wp:heading -->\n<h2>Categories</h2>\n<!-- /wp:heading -->\n\n<!-- wp:categories /--></div>\n<!-- /wp:group -->\";}i:7;a:1:{s:7:\"content\";s:417:\"<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":86,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/raja_ampat_.jpeg\" alt=\"\" class=\"wp-image-86\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\";}i:8;a:1:{s:7:\"content\";s:267:\"<!-- wp:image {\"id\":87,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/pdgrumput.jpeg\" alt=\"\" class=\"wp-image-87\"/></figure>\n<!-- /wp:image -->\";}i:9;a:1:{s:7:\"content\";s:262:\"<!-- wp:image {\"id\":88,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/bali.jpeg\" alt=\"\" class=\"wp-image-88\"/></figure>\n<!-- /wp:image -->\";}i:10;a:1:{s:7:\"content\";s:266:\"<!-- wp:image {\"id\":89,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/sukabumi.jpeg\" alt=\"\" class=\"wp-image-89\"/></figure>\n<!-- /wp:image -->\";}i:11;a:1:{s:7:\"content\";s:263:\"<!-- wp:image {\"id\":90,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/beach.jpeg\" alt=\"\" class=\"wp-image-90\"/></figure>\n<!-- /wp:image -->\";}i:15;a:1:{s:7:\"content\";s:1769:\"<!-- wp:gallery {\"linkTo\":\"none\"} -->\n<figure class=\"wp-block-gallery has-nested-images columns-default is-cropped\"><!-- wp:image {\"id\":95,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/raja_ampat_-2.jpeg\" alt=\"\" class=\"wp-image-95\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":94,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/beach-1.jpeg\" alt=\"\" class=\"wp-image-94\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":93,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/prambanan.jpeg\" alt=\"\" class=\"wp-image-93\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":92,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/bali-1.jpeg\" alt=\"\" class=\"wp-image-92\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":91,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/raja_ampat_-1.jpeg\" alt=\"\" class=\"wp-image-91\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:image {\"id\":90,\"sizeSlug\":\"large\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/beach.jpeg\" alt=\"\" class=\"wp-image-90\"/></figure>\n<!-- /wp:image --></figure>\n<!-- /wp:gallery -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:7:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";i:2;s:7:\"block-7\";i:3;s:7:\"block-8\";i:4;s:7:\"block-9\";i:5;s:8:\"block-10\";i:6;s:8:\"block-11\";}s:19:\"primary-widget-area\";a:4:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:8:\"block-15\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:10:{i:1663731485;a:1:{s:24:\"aiowps_hourly_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1663732773;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1663738685;a:1:{s:23:\"aiowps_daily_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663772373;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1663772389;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1663815573;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663815589;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1663815590;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1664247573;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwentytwo', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1659951810;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(125, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}}', 'yes'),
(138, 'can_compress_scripts', '1', 'no'),
(153, 'current_theme', 'Beautiful_Indonesia', 'yes'),
(154, 'theme_mods_blankslate', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1660026406;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:19:\"primary-widget-area\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(155, 'theme_switched', '', 'yes'),
(158, 'finished_updating_comment_type', '1', 'yes'),
(160, 'theme_mods_Beautiful_Indonesia', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1660026408;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:19:\"primary-widget-area\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(161, 'recovery_mode_email_last_sent', '1659927729', 'yes'),
(412, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(438, 'recently_activated', 'a:0:{}', 'yes'),
(445, 'aiowpsec_db_version', '1.9', 'yes'),
(446, 'aio_wp_security_configs', 'a:93:{s:19:\"aiowps_enable_debug\";s:0:\"\";s:36:\"aiowps_remove_wp_generator_meta_info\";s:0:\"\";s:25:\"aiowps_prevent_hotlinking\";s:0:\"\";s:28:\"aiowps_enable_login_lockdown\";s:0:\"\";s:28:\"aiowps_allow_unlock_requests\";s:1:\"1\";s:25:\"aiowps_max_login_attempts\";s:1:\"3\";s:24:\"aiowps_retry_time_period\";s:1:\"5\";s:26:\"aiowps_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_set_generic_login_msg\";s:0:\"\";s:26:\"aiowps_enable_email_notify\";s:0:\"\";s:20:\"aiowps_email_address\";s:15:\"admin@gmail.com\";s:27:\"aiowps_enable_forced_logout\";s:0:\"\";s:25:\"aiowps_logout_time_period\";s:2:\"60\";s:39:\"aiowps_enable_invalid_username_lockdown\";s:0:\"\";s:43:\"aiowps_instantly_lockout_specific_usernames\";a:0:{}s:32:\"aiowps_unlock_request_secret_key\";s:20:\"6kuyo5t9trrnkun4lqv4\";s:35:\"aiowps_lockdown_enable_whitelisting\";s:0:\"\";s:36:\"aiowps_lockdown_allowed_ip_addresses\";s:0:\"\";s:26:\"aiowps_enable_whitelisting\";s:0:\"\";s:27:\"aiowps_allowed_ip_addresses\";s:0:\"\";s:27:\"aiowps_enable_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_custom_login_captcha\";s:0:\"\";s:31:\"aiowps_enable_woo_login_captcha\";s:0:\"\";s:34:\"aiowps_enable_woo_register_captcha\";s:0:\"\";s:38:\"aiowps_enable_woo_lostpassword_captcha\";s:0:\"\";s:25:\"aiowps_captcha_secret_key\";s:20:\"ot17o9vnge8mvhzylhju\";s:42:\"aiowps_enable_manual_registration_approval\";s:0:\"\";s:39:\"aiowps_enable_registration_page_captcha\";s:0:\"\";s:35:\"aiowps_enable_registration_honeypot\";s:0:\"\";s:27:\"aiowps_enable_random_prefix\";s:0:\"\";s:31:\"aiowps_enable_automated_backups\";s:0:\"\";s:26:\"aiowps_db_backup_frequency\";s:1:\"4\";s:25:\"aiowps_db_backup_interval\";s:1:\"2\";s:26:\"aiowps_backup_files_stored\";s:1:\"2\";s:32:\"aiowps_send_backup_email_address\";s:0:\"\";s:27:\"aiowps_backup_email_address\";s:15:\"admin@gmail.com\";s:27:\"aiowps_disable_file_editing\";s:0:\"\";s:37:\"aiowps_prevent_default_wp_file_access\";s:0:\"\";s:22:\"aiowps_system_log_file\";s:9:\"error_log\";s:26:\"aiowps_enable_blacklisting\";s:0:\"\";s:26:\"aiowps_banned_ip_addresses\";s:0:\"\";s:28:\"aiowps_enable_basic_firewall\";s:0:\"\";s:27:\"aiowps_max_file_upload_size\";s:2:\"10\";s:31:\"aiowps_enable_pingback_firewall\";s:0:\"\";s:38:\"aiowps_disable_xmlrpc_pingback_methods\";s:0:\"\";s:34:\"aiowps_block_debug_log_file_access\";s:0:\"\";s:26:\"aiowps_disable_index_views\";s:0:\"\";s:30:\"aiowps_disable_trace_and_track\";s:0:\"\";s:28:\"aiowps_forbid_proxy_comments\";s:0:\"\";s:29:\"aiowps_deny_bad_query_strings\";s:0:\"\";s:34:\"aiowps_advanced_char_string_filter\";s:0:\"\";s:25:\"aiowps_enable_5g_firewall\";s:0:\"\";s:25:\"aiowps_enable_6g_firewall\";s:0:\"\";s:26:\"aiowps_enable_custom_rules\";s:0:\"\";s:32:\"aiowps_place_custom_rules_at_top\";s:0:\"\";s:19:\"aiowps_custom_rules\";s:0:\"\";s:25:\"aiowps_enable_404_logging\";s:0:\"\";s:28:\"aiowps_enable_404_IP_lockout\";s:0:\"\";s:30:\"aiowps_404_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_404_lock_redirect_url\";s:16:\"http://127.0.0.1\";s:31:\"aiowps_enable_rename_login_page\";s:0:\"\";s:28:\"aiowps_enable_login_honeypot\";s:0:\"\";s:43:\"aiowps_enable_brute_force_attack_prevention\";s:0:\"\";s:30:\"aiowps_brute_force_secret_word\";s:0:\"\";s:24:\"aiowps_cookie_brute_test\";s:0:\"\";s:44:\"aiowps_cookie_based_brute_force_redirect_url\";s:16:\"http://127.0.0.1\";s:59:\"aiowps_brute_force_attack_prevention_pw_protected_exception\";s:0:\"\";s:51:\"aiowps_brute_force_attack_prevention_ajax_exception\";s:0:\"\";s:19:\"aiowps_site_lockout\";s:0:\"\";s:23:\"aiowps_site_lockout_msg\";s:0:\"\";s:30:\"aiowps_enable_spambot_blocking\";s:0:\"\";s:29:\"aiowps_enable_comment_captcha\";s:0:\"\";s:31:\"aiowps_enable_autoblock_spam_ip\";s:0:\"\";s:33:\"aiowps_spam_ip_min_comments_block\";s:0:\"\";s:33:\"aiowps_enable_bp_register_captcha\";s:0:\"\";s:35:\"aiowps_enable_bbp_new_topic_captcha\";s:0:\"\";s:32:\"aiowps_enable_automated_fcd_scan\";s:0:\"\";s:25:\"aiowps_fcd_scan_frequency\";s:1:\"4\";s:24:\"aiowps_fcd_scan_interval\";s:1:\"2\";s:28:\"aiowps_fcd_exclude_filetypes\";s:0:\"\";s:24:\"aiowps_fcd_exclude_files\";s:0:\"\";s:26:\"aiowps_send_fcd_scan_email\";s:0:\"\";s:29:\"aiowps_fcd_scan_email_address\";s:15:\"admin@gmail.com\";s:27:\"aiowps_fcds_change_detected\";b:0;s:22:\"aiowps_copy_protection\";s:0:\"\";s:40:\"aiowps_prevent_site_display_inside_frame\";s:0:\"\";s:32:\"aiowps_prevent_users_enumeration\";s:0:\"\";s:42:\"aiowps_disallow_unauthorized_rest_requests\";s:0:\"\";s:25:\"aiowps_recaptcha_site_key\";s:0:\"\";s:27:\"aiowps_recaptcha_secret_key\";s:0:\"\";s:24:\"aiowps_default_recaptcha\";s:0:\"\";s:12:\"installed-at\";i:1660011783;s:22:\"aiowps_login_page_slug\";s:0:\"\";}', 'yes'),
(478, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(593, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(594, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(614, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1663729820;s:7:\"checked\";a:5:{s:19:\"beautiful_indonesia\";s:0:\"\";s:10:\"blankslate\";s:6:\"2022.4\";s:12:\"twentytwenty\";s:3:\"2.0\";s:15:\"twentytwentyone\";s:3:\"1.6\";s:15:\"twentytwentytwo\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:4:{s:10:\"blankslate\";a:6:{s:5:\"theme\";s:10:\"blankslate\";s:11:\"new_version\";s:6:\"2022.4\";s:3:\"url\";s:40:\"https://wordpress.org/themes/blankslate/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/blankslate.2022.4.zip\";s:8:\"requires\";s:3:\"5.2\";s:12:\"requires_php\";s:3:\"7.0\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.2.0.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.6.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.2.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(657, 'WPLANG', '', 'yes'),
(658, 'new_admin_email', 'admin@gmail.com', 'yes'),
(659, 'whl_page', '4dm1n', 'yes'),
(660, 'whl_redirect_admin', '404', 'yes'),
(683, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":0}', 'yes'),
(717, 'itsec-storage', 'a:4:{s:6:\"global\";a:34:{s:11:\"write_files\";b:1;s:10:\"nginx_file\";s:53:\"C:\\xampp\\htdocs\\latihan wordpress\\latihan2/nginx.conf\";s:14:\"lockout_period\";i:15;s:16:\"blacklist_period\";i:7;s:9:\"blacklist\";b:1;s:15:\"blacklist_count\";i:3;s:15:\"lockout_message\";s:5:\"error\";s:20:\"user_lockout_message\";s:64:\"You have been locked out due to too many invalid login attempts.\";s:25:\"community_lockout_message\";s:77:\"Your IP address has been flagged as a threat by the iThemes Security network.\";s:19:\"automatic_temp_auth\";b:1;s:18:\"lockout_white_list\";a:0:{}s:8:\"log_type\";s:8:\"database\";s:12:\"log_rotation\";i:60;s:17:\"file_log_rotation\";i:180;s:12:\"log_location\";s:83:\"C:\\xampp\\htdocs\\latihan wordpress\\latihan2/wp-content/uploads/ithemes-security/logs\";s:5:\"proxy\";s:9:\"automatic\";s:12:\"proxy_header\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"allow_tracking\";b:0;s:14:\"hide_admin_bar\";b:0;s:16:\"show_error_codes\";b:0;s:19:\"enable_grade_report\";b:0;s:5:\"build\";i:4124;s:13:\"initial_build\";i:4124;s:20:\"activation_timestamp\";i:1660015835;s:11:\"cron_status\";i:0;s:8:\"use_cron\";b:0;s:14:\"cron_test_time\";i:1660584803;s:10:\"server_ips\";a:1:{i:0;s:3:\"::1\";}s:24:\"licensed_hostname_prompt\";b:0;s:16:\"onboard_complete\";b:1;s:13:\"enabled_tools\";a:0:{}s:18:\"enable_remote_help\";b:0;s:13:\"feature_flags\";a:0:{}s:12:\"manage_group\";a:0:{}}s:10:\"__extended\";a:0:{}s:12:\"hide-backend\";a:6:{s:7:\"enabled\";b:1;s:4:\"slug\";s:5:\"4dm1n\";s:8:\"register\";s:13:\"wp-signup.php\";s:12:\"theme_compat\";b:1;s:17:\"theme_compat_slug\";s:9:\"not_found\";s:16:\"post_logout_slug\";s:0:\"\";}s:19:\"notification-center\";a:8:{s:9:\"last_sent\";a:1:{s:6:\"digest\";i:1660530917;}s:9:\"resend_at\";a:0:{}s:4:\"data\";a:1:{s:6:\"digest\";a:0:{}}s:15:\"last_mail_error\";s:45:\"Invalid address:  (From): wordpress@localhost\";s:10:\"from_email\";s:0:\"\";s:18:\"default_recipients\";a:1:{s:9:\"user_list\";a:1:{i:0;s:18:\"role:administrator\";}}s:13:\"notifications\";a:4:{s:6:\"digest\";a:5:{s:8:\"schedule\";s:5:\"daily\";s:7:\"enabled\";b:1;s:9:\"user_list\";a:1:{i:0;s:18:\"role:administrator\";}s:14:\"recipient_type\";s:7:\"default\";s:7:\"subject\";N;}s:7:\"lockout\";a:4:{s:7:\"enabled\";b:1;s:9:\"user_list\";a:1:{i:0;s:18:\"role:administrator\";}s:14:\"recipient_type\";s:7:\"default\";s:7:\"subject\";N;}s:6:\"backup\";a:2:{s:10:\"email_list\";a:1:{i:0;s:15:\"admin@gmail.com\";}s:7:\"subject\";N;}s:12:\"hide-backend\";a:4:{s:9:\"user_list\";a:1:{i:0;s:18:\"role:administrator\";}s:14:\"recipient_type\";s:7:\"default\";s:7:\"subject\";N;s:7:\"message\";s:0:\"\";}}s:12:\"admin_emails\";a:0:{}}}', 'yes'),
(719, 'itsec_temp_whitelist_ip', 'a:1:{s:3:\"::1\";i:1660115257;}', 'no'),
(788, 'category_children', 'a:0:{}', 'yes'),
(922, 'itsec_scheduler_page_load', 'a:2:{s:6:\"single\";a:0:{}s:9:\"recurring\";a:1:{s:19:\"identify-server-ips\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:10:\"last_fired\";i:1660444943;s:4:\"data\";a:0:{}}}}', 'no'),
(1848, 'acf_version', '5.12.3', 'yes'),
(2006, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.0.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.0.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.0.2-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.0.2\";s:7:\"version\";s:5:\"6.0.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1663729814;s:15:\"version_checked\";s:5:\"6.0.2\";s:12:\"translations\";a:0:{}}', 'no'),
(2008, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:15:\"admin@gmail.com\";s:7:\"version\";s:5:\"6.0.2\";s:9:\"timestamp\";i:1663204644;}', 'no'),
(2009, '_site_transient_timeout_php_check_fada79097c18d933243b7f5826b158f4', '1663809446', 'no'),
(2010, '_site_transient_php_check_fada79097c18d933243b7f5826b158f4', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(2026, '_site_transient_timeout_browser_620eeaccf0f03dc51ea5a9f1f3fb4360', '1664162916', 'no'),
(2027, '_site_transient_browser_620eeaccf0f03dc51ea5a9f1f3fb4360', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"105.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(2070, '_transient_timeout_global_styles_beautiful_indonesia', '1663729863', 'no'),
(2071, '_transient_global_styles_beautiful_indonesia', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(2073, '_site_transient_timeout_theme_roots', '1663731618', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(2074, '_site_transient_theme_roots', 'a:5:{s:19:\"beautiful_indonesia\";s:7:\"/themes\";s:10:\"blankslate\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(2075, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1663729821;s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.0\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.0.2\";s:12:\"requires_php\";b:0;}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.12.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.12.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:4:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.12.3\";s:19:\"akismet/akismet.php\";s:5:\"4.2.5\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://localhost/latihan%20wordpress/latihan2/'),
(11, 5, '_menu_item_orphaned', '1659933640'),
(26, 11, '_edit_lock', '1660555733:1'),
(27, 13, '_edit_lock', '1659934431:1'),
(28, 15, '_edit_lock', '1659934446:1'),
(96, 28, '_edit_last', '1'),
(97, 28, '_edit_lock', '1659950150:1'),
(98, 29, '_wp_attached_file', '2022/08/facebook.webp'),
(99, 29, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"file\";s:21:\"2022/08/facebook.webp\";s:8:\"filesize\";i:22706;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(100, 30, '_wp_attached_file', '2022/08/ig.webp'),
(101, 30, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2048;s:6:\"height\";i:2048;s:4:\"file\";s:15:\"2022/08/ig.webp\";s:8:\"filesize\";i:267184;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(102, 31, '_wp_attached_file', '2022/08/twitter.webp'),
(103, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:2491;s:6:\"height\";i:2049;s:4:\"file\";s:20:\"2022/08/twitter.webp\";s:8:\"filesize\";i:25194;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 32, '_edit_last', '1'),
(105, 32, '_edit_lock', '1659949613:1'),
(106, 33, '_edit_last', '1'),
(107, 33, '_edit_lock', '1659949593:1'),
(108, 35, '_itsec_dashboard_card', 'banned-users-list'),
(109, 35, '_itsec_dashboard_card_size', 'a:5:{s:4:\"huge\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:4;}s:4:\"wide\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:3;}s:5:\"large\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:3;}s:6:\"medium\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:3;}s:6:\"mobile\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:3;}}'),
(110, 35, '_itsec_dashboard_card_position', 'a:5:{s:4:\"huge\";a:2:{s:1:\"x\";i:6;s:1:\"y\";i:2;}s:4:\"wide\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:6;}s:5:\"large\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:4;}s:6:\"medium\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:14;}s:6:\"mobile\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:32;}}'),
(111, 35, '_itsec_dashboard_card_settings', 'a:0:{}'),
(112, 36, '_itsec_dashboard_card', 'database-backup'),
(113, 36, '_itsec_dashboard_card_size', 'a:5:{s:4:\"huge\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:2;}s:4:\"wide\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:2;}s:5:\"large\";a:2:{s:1:\"w\";i:1;s:1:\"h\";i:2;}s:6:\"medium\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:2;}s:6:\"mobile\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:2;}}'),
(114, 36, '_itsec_dashboard_card_position', 'a:5:{s:4:\"huge\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:2;}s:4:\"wide\";a:2:{s:1:\"x\";i:3;s:1:\"y\";i:4;}s:5:\"large\";a:2:{s:1:\"x\";i:2;s:1:\"y\";i:0;}s:6:\"medium\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:12;}s:6:\"mobile\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:24;}}'),
(115, 36, '_itsec_dashboard_card_settings', 'a:0:{}'),
(116, 37, '_itsec_dashboard_card', 'brute-force'),
(117, 37, '_itsec_dashboard_card_size', 'a:5:{s:4:\"huge\";a:2:{s:1:\"w\";i:3;s:1:\"h\";i:2;}s:4:\"wide\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:2;}s:5:\"large\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:2;}s:6:\"medium\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:2;}s:6:\"mobile\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:2;}}'),
(118, 37, '_itsec_dashboard_card_position', 'a:5:{s:4:\"huge\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:4;}s:4:\"wide\";a:2:{s:1:\"x\";i:3;s:1:\"y\";i:2;}s:5:\"large\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:2;}s:6:\"medium\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:6;}s:6:\"mobile\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:10;}}'),
(119, 37, '_itsec_dashboard_card_settings', 'a:0:{}'),
(120, 38, '_itsec_dashboard_card', 'banned-users'),
(121, 38, '_itsec_dashboard_card_size', 'a:5:{s:4:\"huge\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:2;}s:4:\"wide\";a:2:{s:1:\"w\";i:1;s:1:\"h\";i:2;}s:5:\"large\";a:2:{s:1:\"w\";i:1;s:1:\"h\";i:2;}s:6:\"medium\";a:2:{s:1:\"w\";i:1;s:1:\"h\";i:2;}s:6:\"mobile\";a:2:{s:1:\"w\";i:1;s:1:\"h\";i:2;}}'),
(122, 38, '_itsec_dashboard_card_position', 'a:5:{s:4:\"huge\";a:2:{s:1:\"x\";i:4;s:1:\"y\";i:2;}s:4:\"wide\";a:2:{s:1:\"x\";i:5;s:1:\"y\";i:0;}s:5:\"large\";a:2:{s:1:\"x\";i:2;s:1:\"y\";i:4;}s:6:\"medium\";a:2:{s:1:\"x\";i:1;s:1:\"y\";i:0;}s:6:\"mobile\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:4;}}'),
(123, 38, '_itsec_dashboard_card_settings', 'a:0:{}'),
(124, 39, '_itsec_dashboard_card', 'lockout'),
(125, 39, '_itsec_dashboard_card_size', 'a:5:{s:4:\"huge\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:2;}s:4:\"wide\";a:2:{s:1:\"w\";i:1;s:1:\"h\";i:2;}s:5:\"large\";a:2:{s:1:\"w\";i:1;s:1:\"h\";i:2;}s:6:\"medium\";a:2:{s:1:\"w\";i:1;s:1:\"h\";i:2;}s:6:\"mobile\";a:2:{s:1:\"w\";i:1;s:1:\"h\";i:2;}}'),
(126, 39, '_itsec_dashboard_card_position', 'a:5:{s:4:\"huge\";a:2:{s:1:\"x\";i:2;s:1:\"y\";i:2;}s:4:\"wide\";a:2:{s:1:\"x\";i:4;s:1:\"y\";i:0;}s:5:\"large\";a:2:{s:1:\"x\";i:1;s:1:\"y\";i:0;}s:6:\"medium\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:0;}s:6:\"mobile\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:2;}}'),
(127, 39, '_itsec_dashboard_card_settings', 'a:0:{}'),
(128, 40, '_itsec_dashboard_card', 'malware-scan'),
(129, 40, '_itsec_dashboard_card_size', 'a:5:{s:4:\"huge\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:2;}s:4:\"wide\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:2;}s:5:\"large\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:2;}s:6:\"medium\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:2;}s:6:\"mobile\";a:2:{s:1:\"w\";i:2;s:1:\"h\";i:2;}}'),
(130, 40, '_itsec_dashboard_card_position', 'a:5:{s:4:\"huge\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:0;}s:4:\"wide\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:0;}s:5:\"large\";a:2:{s:1:\"x\";i:2;s:1:\"y\";i:2;}s:6:\"medium\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:2;}s:6:\"mobile\";a:2:{s:1:\"x\";i:0;s:1:\"y\";i:6;}}'),
(131, 40, '_itsec_dashboard_card_settings', 'a:0:{}'),
(154, 11, '_edit_last', '1'),
(155, 51, '_menu_item_type', 'custom'),
(156, 51, '_menu_item_menu_item_parent', '0'),
(157, 51, '_menu_item_object_id', '51'),
(158, 51, '_menu_item_object', 'custom'),
(159, 51, '_menu_item_target', ''),
(160, 51, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(161, 51, '_menu_item_xfn', ''),
(162, 51, '_menu_item_url', 'http://localhost/latihan%20wordpress/latihan2/'),
(164, 52, '_menu_item_type', 'post_type'),
(165, 52, '_menu_item_menu_item_parent', '0'),
(166, 52, '_menu_item_object_id', '11'),
(167, 52, '_menu_item_object', 'page'),
(168, 52, '_menu_item_target', ''),
(169, 52, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(170, 52, '_menu_item_xfn', ''),
(171, 52, '_menu_item_url', ''),
(173, 53, '_menu_item_type', 'post_type'),
(174, 53, '_menu_item_menu_item_parent', '0'),
(175, 53, '_menu_item_object_id', '15'),
(176, 53, '_menu_item_object', 'page'),
(177, 53, '_menu_item_target', ''),
(178, 53, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(179, 53, '_menu_item_xfn', ''),
(180, 53, '_menu_item_url', ''),
(182, 54, '_menu_item_type', 'post_type'),
(183, 54, '_menu_item_menu_item_parent', '0'),
(184, 54, '_menu_item_object_id', '13'),
(185, 54, '_menu_item_object', 'page'),
(186, 54, '_menu_item_target', ''),
(187, 54, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(188, 54, '_menu_item_xfn', ''),
(189, 54, '_menu_item_url', ''),
(198, 61, '_edit_lock', '1660549875:1'),
(201, 63, '_edit_lock', '1660549714:1'),
(204, 65, '_edit_lock', '1660549643:1'),
(207, 67, '_edit_lock', '1660557003:1'),
(210, 70, '_wp_attached_file', '2022/08/covid.jpeg'),
(211, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:628;s:4:\"file\";s:18:\"2022/08/covid.jpeg\";s:8:\"filesize\";i:66369;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(214, 67, '_thumbnail_id', '70'),
(215, 73, '_wp_attached_file', '2022/08/covid2.jpeg'),
(216, 73, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:19:\"2022/08/covid2.jpeg\";s:8:\"filesize\";i:148091;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(219, 65, '_thumbnail_id', '73'),
(220, 76, '_wp_attached_file', '2022/08/covid3.jpeg'),
(221, 76, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:661;s:4:\"file\";s:19:\"2022/08/covid3.jpeg\";s:8:\"filesize\";i:157403;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(224, 63, '_thumbnail_id', '76'),
(225, 79, '_wp_attached_file', '2022/08/covid4.jpeg'),
(226, 79, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:718;s:4:\"file\";s:19:\"2022/08/covid4.jpeg\";s:8:\"filesize\";i:110942;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(229, 61, '_thumbnail_id', '79'),
(241, 84, '_wp_attached_file', '2022/08/covid-1.jpeg'),
(242, 84, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:628;s:4:\"file\";s:20:\"2022/08/covid-1.jpeg\";s:8:\"filesize\";i:66369;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(243, 85, '_wp_attached_file', '2022/08/covid2-1.jpeg'),
(244, 85, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:21:\"2022/08/covid2-1.jpeg\";s:8:\"filesize\";i:148091;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(245, 86, '_wp_attached_file', '2022/08/raja_ampat_.jpeg'),
(246, 86, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:24:\"2022/08/raja_ampat_.jpeg\";s:8:\"filesize\";i:499773;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(247, 87, '_wp_attached_file', '2022/08/pdgrumput.jpeg'),
(248, 87, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:22:\"2022/08/pdgrumput.jpeg\";s:8:\"filesize\";i:315910;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(249, 88, '_wp_attached_file', '2022/08/bali.jpeg'),
(250, 88, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:17:\"2022/08/bali.jpeg\";s:8:\"filesize\";i:223094;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(251, 89, '_wp_attached_file', '2022/08/sukabumi.jpeg'),
(252, 89, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:21:\"2022/08/sukabumi.jpeg\";s:8:\"filesize\";i:506199;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(253, 90, '_wp_attached_file', '2022/08/beach.jpeg'),
(254, 90, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:18:\"2022/08/beach.jpeg\";s:8:\"filesize\";i:329251;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(255, 91, '_wp_attached_file', '2022/08/raja_ampat_-1.jpeg'),
(256, 91, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:26:\"2022/08/raja_ampat_-1.jpeg\";s:8:\"filesize\";i:499773;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(257, 92, '_wp_attached_file', '2022/08/bali-1.jpeg'),
(258, 92, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:19:\"2022/08/bali-1.jpeg\";s:8:\"filesize\";i:223094;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(259, 93, '_wp_attached_file', '2022/08/prambanan.jpeg'),
(260, 93, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:920;s:4:\"file\";s:22:\"2022/08/prambanan.jpeg\";s:8:\"filesize\";i:247596;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(261, 94, '_wp_attached_file', '2022/08/beach-1.jpeg'),
(262, 94, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:853;s:4:\"file\";s:20:\"2022/08/beach-1.jpeg\";s:8:\"filesize\";i:329251;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(263, 95, '_wp_attached_file', '2022/08/raja_ampat_-2.jpeg'),
(264, 95, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1280;s:6:\"height\";i:960;s:4:\"file\";s:26:\"2022/08/raja_ampat_-2.jpeg\";s:8:\"filesize\";i:499773;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(265, 97, '_edit_lock', '1661152431:1'),
(266, 97, '_edit_last', '1'),
(267, 101, '_edit_lock', '1661138335:1'),
(268, 101, '_edit_last', '1'),
(269, 101, 'nama_tempat', 'Prambanan'),
(270, 101, '_nama_tempat', 'field_6302f1811d9b0'),
(271, 101, 'gambar', '93'),
(272, 101, '_gambar', 'field_6302f1dc1d9b1'),
(273, 101, 'deskripsi', 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.  LOREM IPSUM G'),
(274, 101, '_deskripsi', 'field_6302f1f31d9b2'),
(275, 103, 'nama_tempat', 'Prambanan'),
(276, 103, '_nama_tempat', 'field_6302f1811d9b0'),
(277, 103, 'gambar', '93'),
(278, 103, '_gambar', 'field_6302f1dc1d9b1'),
(279, 103, 'deskripsi', 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.  LOREM IPSUM G'),
(280, 103, '_deskripsi', 'field_6302f1f31d9b2'),
(283, 101, '_pingme', '1'),
(284, 101, '_encloseme', '1'),
(285, 104, 'nama_tempat', 'Prambanan'),
(286, 104, '_nama_tempat', 'field_6302f1811d9b0'),
(287, 104, 'gambar', '93'),
(288, 104, '_gambar', 'field_6302f1dc1d9b1'),
(289, 104, 'deskripsi', 'Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.  LOREM IPSUM G'),
(290, 104, '_deskripsi', 'field_6302f1f31d9b2'),
(291, 105, '_edit_lock', '1661138902:1'),
(292, 105, '_edit_last', '1'),
(293, 105, 'nama_tempat', 'Prambanan'),
(294, 105, '_nama_tempat', 'field_6302f1811d9b0'),
(295, 105, 'gambar', '93'),
(296, 105, '_gambar', 'field_6302f1dc1d9b1'),
(297, 105, 'deskripsi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(298, 105, '_deskripsi', 'field_6302f1f31d9b2'),
(299, 101, '_wp_trash_meta_status', 'publish'),
(300, 101, '_wp_trash_meta_time', '1661138803'),
(301, 101, '_wp_desired_post_slug', 'tempat-wisata-jawa'),
(302, 106, '_edit_lock', '1661152422:1'),
(303, 106, '_edit_last', '1'),
(304, 106, 'nama_tempat', 'Raja Ampat'),
(305, 106, '_nama_tempat', 'field_6302f1811d9b0'),
(306, 106, 'gambar', '91'),
(307, 106, '_gambar', 'field_6302f1dc1d9b1'),
(308, 106, 'deskripsi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(309, 106, '_deskripsi', 'field_6302f1f31d9b2'),
(310, 107, '_edit_lock', '1661155141:1'),
(311, 107, '_edit_last', '1'),
(312, 107, 'nama_tempat', 'Gapura Bali'),
(313, 107, '_nama_tempat', 'field_6302f1811d9b0'),
(314, 107, 'gambar', '88'),
(315, 107, '_gambar', 'field_6302f1dc1d9b1'),
(316, 107, 'deskripsi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'),
(317, 107, '_deskripsi', 'field_6302f1f31d9b2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2022-08-08 02:59:33', '2022-08-08 02:59:33', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/latihan%20wordpress/latihan2.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-08-08 02:59:33', '2022-08-08 02:59:33', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?page_id=3', 0, 'page', '', 0),
(5, 1, '2022-08-08 04:40:40', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2022-08-08 04:40:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?p=5', 1, 'nav_menu_item', '', 0),
(7, 1, '2022-08-08 04:42:11', '2022-08-08 04:42:11', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-blankslate', '', '', '2022-08-08 04:42:11', '2022-08-08 04:42:11', '', 0, 'http://localhost/latihan%20wordpress/latihan2/index.php/2022/08/08/wp-global-styles-blankslate/', 0, 'wp_global_styles', '', 0),
(11, 1, '2022-08-08 04:55:57', '2022-08-08 04:55:57', '', 'Articles', '', 'publish', 'closed', 'closed', '', 'articles', '', '', '2022-08-15 09:22:47', '2022-08-15 09:22:47', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?page_id=11', 0, 'page', '', 0),
(12, 1, '2022-08-08 04:55:57', '2022-08-08 04:55:57', '', 'Articles', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-08-08 04:55:57', '2022-08-08 04:55:57', '', 11, 'http://localhost/latihan%20wordpress/latihan2/?p=12', 0, 'revision', '', 0),
(13, 1, '2022-08-08 04:56:14', '2022-08-08 04:56:14', '', 'Places', '', 'publish', 'closed', 'closed', '', 'places', '', '', '2022-08-08 04:56:14', '2022-08-08 04:56:14', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?page_id=13', 0, 'page', '', 0),
(14, 1, '2022-08-08 04:56:14', '2022-08-08 04:56:14', '', 'Places', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2022-08-08 04:56:14', '2022-08-08 04:56:14', '', 13, 'http://localhost/latihan%20wordpress/latihan2/?p=14', 0, 'revision', '', 0),
(15, 1, '2022-08-08 04:56:28', '2022-08-08 04:56:28', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2022-08-08 04:56:28', '2022-08-08 04:56:28', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?page_id=15', 0, 'page', '', 0),
(16, 1, '2022-08-08 04:56:28', '2022-08-08 04:56:28', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2022-08-08 04:56:28', '2022-08-08 04:56:28', '', 15, 'http://localhost/latihan%20wordpress/latihan2/?p=16', 0, 'revision', '', 0),
(28, 1, '2022-08-08 08:23:02', '2022-08-08 08:23:02', '<img class=\"alignnone size-full wp-image-29\" src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/facebook.webp\" alt=\"\" width=\"30\" height=\"30\" />', 'https://www.facebook.com', '', 'publish', 'closed', 'closed', '', 'htttps-www-facebook-com', '', '', '2022-08-08 09:09:30', '2022-08-08 09:09:30', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?post_type=social-media&#038;p=28', 0, 'social-media', '', 0),
(29, 1, '2022-08-08 08:21:16', '2022-08-08 08:21:16', '', 'facebook', '', 'inherit', 'open', 'closed', '', 'facebook', '', '', '2022-08-08 08:21:16', '2022-08-08 08:21:16', '', 28, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/facebook.webp', 0, 'attachment', 'image/webp', 0),
(30, 1, '2022-08-08 08:21:23', '2022-08-08 08:21:23', '', 'ig', '', 'inherit', 'open', 'closed', '', 'ig', '', '', '2022-08-08 08:21:23', '2022-08-08 08:21:23', '', 28, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/ig.webp', 0, 'attachment', 'image/webp', 0),
(31, 1, '2022-08-08 08:21:31', '2022-08-08 08:21:31', '', 'twitter', '', 'inherit', 'open', 'closed', '', 'twitter', '', '', '2022-08-08 08:21:31', '2022-08-08 08:21:31', '', 28, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/twitter.webp', 0, 'attachment', 'image/webp', 0),
(32, 1, '2022-08-08 08:28:37', '2022-08-08 08:28:37', '<img class=\"alignnone size-full wp-image-30\" src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/ig.webp\" alt=\"\" width=\"30\" height=\"30\" />', 'https://www.instagram.com', '', 'publish', 'closed', 'closed', '', 'https-www-instagram-com', '', '', '2022-08-08 09:09:13', '2022-08-08 09:09:13', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?post_type=social-media&#038;p=32', 0, 'social-media', '', 0),
(33, 1, '2022-08-08 08:29:50', '2022-08-08 08:29:50', '<img class=\"alignnone size-full wp-image-31\" src=\"http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/twitter.webp\" alt=\"\" width=\"30\" height=\"30\" />', 'https://www.twitter.com', '', 'publish', 'closed', 'closed', '', 'https-www-twitter-com', '', '', '2022-08-08 09:08:51', '2022-08-08 09:08:51', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?post_type=social-media&#038;p=33', 0, 'social-media', '', 0),
(34, 1, '2022-08-09 03:36:43', '2022-08-09 03:36:43', '', 'Security Dashboard', '', 'publish', 'closed', 'closed', '', 'security-dashboard', '', '', '2022-08-09 03:36:43', '2022-08-09 03:36:43', '', 0, 'http://localhost/latihan%20wordpress/latihan2/index.php/itsec-dashboard/security-dashboard/', 0, 'itsec-dashboard', '', 0),
(35, 1, '2022-08-09 03:36:43', '2022-08-09 03:36:43', '', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2022-08-09 03:36:43', '2022-08-09 03:36:43', '', 34, 'http://localhost/latihan%20wordpress/latihan2/index.php/itsec-dash-card/35/', 0, 'itsec-dash-card', '', 0),
(36, 1, '2022-08-09 03:36:43', '2022-08-09 03:36:43', '', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2022-08-09 03:36:43', '2022-08-09 03:36:43', '', 34, 'http://localhost/latihan%20wordpress/latihan2/index.php/itsec-dash-card/36/', 0, 'itsec-dash-card', '', 0),
(37, 1, '2022-08-09 03:36:43', '2022-08-09 03:36:43', '', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2022-08-09 03:36:43', '2022-08-09 03:36:43', '', 34, 'http://localhost/latihan%20wordpress/latihan2/index.php/itsec-dash-card/37/', 0, 'itsec-dash-card', '', 0),
(38, 1, '2022-08-09 03:36:43', '2022-08-09 03:36:43', '', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2022-08-09 03:36:43', '2022-08-09 03:36:43', '', 34, 'http://localhost/latihan%20wordpress/latihan2/index.php/itsec-dash-card/38/', 0, 'itsec-dash-card', '', 0),
(39, 1, '2022-08-09 03:36:43', '2022-08-09 03:36:43', '', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2022-08-09 03:36:43', '2022-08-09 03:36:43', '', 34, 'http://localhost/latihan%20wordpress/latihan2/index.php/itsec-dash-card/39/', 0, 'itsec-dash-card', '', 0),
(40, 1, '2022-08-09 03:36:43', '2022-08-09 03:36:43', '', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2022-08-09 03:36:43', '2022-08-09 03:36:43', '', 34, 'http://localhost/latihan%20wordpress/latihan2/index.php/itsec-dash-card/40/', 0, 'itsec-dash-card', '', 0),
(49, 1, '2022-08-09 07:01:05', '2022-08-09 07:01:05', 'hjjjjjjjghfdfdf', 'Articles', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-08-09 07:01:05', '2022-08-09 07:01:05', '', 11, 'http://localhost/latihan%20wordpress/latihan2/?p=49', 0, 'revision', '', 0),
(50, 1, '2022-08-09 07:01:12', '2022-08-09 07:01:12', 'hjjjjjjjghfdfdf', 'Articles', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2022-08-09 07:01:12', '2022-08-09 07:01:12', '', 11, 'http://localhost/latihan%20wordpress/latihan2/?p=50', 0, 'revision', '', 0),
(51, 1, '2022-08-09 07:08:21', '2022-08-09 07:07:46', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-08-09 07:08:21', '2022-08-09 07:08:21', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?p=51', 1, 'nav_menu_item', '', 0),
(52, 1, '2022-08-09 07:08:21', '2022-08-09 07:07:46', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2022-08-09 07:08:21', '2022-08-09 07:08:21', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?p=52', 3, 'nav_menu_item', '', 0),
(53, 1, '2022-08-09 07:08:21', '2022-08-09 07:07:46', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2022-08-09 07:08:21', '2022-08-09 07:08:21', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?p=53', 4, 'nav_menu_item', '', 0),
(54, 1, '2022-08-09 07:08:21', '2022-08-09 07:07:46', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2022-08-09 07:08:21', '2022-08-09 07:08:21', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?p=54', 2, 'nav_menu_item', '', 0),
(57, 1, '2022-08-15 02:52:08', '2022-08-15 02:52:08', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-beautiful_indonesia', '', '', '2022-08-15 02:52:08', '2022-08-15 02:52:08', '', 0, 'http://localhost/latihan%20wordpress/latihan2/index.php/wp-global-styles-beautiful_indonesia/', 0, 'wp_global_styles', '', 0),
(61, 1, '2022-08-15 06:43:18', '2022-08-15 06:43:18', '<!-- wp:paragraph -->\n<p>&nbsp;Pemerintah memperpanjang lagi Pemberlakuan Pembatasan Kegiatan Masyarakat (PPKM) untuk periode 5 - 18 Oktober 2021. Dalam periode kali ini, ada beberapa perubahan aturan berdasarkan Instruksi Mendagri No. 47/2021 tentang PPKM Level 4, 3, 2 dan 1 di wilayah Jawa dan Bali.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Juru Bicara Satgas Penanganan COVID-19 Prof Wiku Adisasmito menjelaskan salah satu yang perlu mendapat perhatian ialah Bali yang bersiap menyambut kunjungan wisatawan mancanegara dengan dibukanya Bandara Ngurah Rai untuk pelaku perjalanan internasional. &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ditegaskannya, bahwa semua semua pendatang wajib memenuhi ketentuan dan persyaratan mengenai karantina, dan tes COVID-19 sesuai yang ditetapkan oleh Kementerian Perhubungan sebelum diizinkan masuk ke Indonesia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"Apabila tidak memenuhi persyaratan, maka para wisatawan akan diminta untuk pulang ke negara asalnya. Satuan tugas yang berada di Bandar Udara Ngurah Rai, Bali, harus mempersiapkan diri sebaik-baiknya sebelum bandara kembali dibuka,\" Wiku memberi Keterangan Pers Perkembangan Penanganan COVID-19 di Graha BNPB, Selasa (5/10/2021) yang juga disiarkan kanal YouTube Sekretariat Presiden.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Untuk Bandar Udara Ngurah Rai di Bali, dari InMendagri tersebut menginstruksikan akan dibuka untuk pelaku perjalanan internasional. &nbsp;Beberapa negara asal wisatawan yang diperbolehkan masuk dari Korea Selatan, Tiongkok, Jepang, Abu Dhabi, Dubai dan New Zealand pada tanggal 14 Oktober 2021.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Disamping itu, perubahan lainnya pada fasilitas pusat kebugaran atau fitness diperbolehkan untuk kembali beroperasi di daerah level 4, 3 dan 2. Syaratnya, dengan mengizinkan kapasitas pengguna fasilitas maksimal 25%, menerapkan protokol kesehatan yang ketat menggunakan aplikasi peduli lindungi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lalu, untuk daerah level 3 dan 2, bioskop beserta kounter makanan dan minuman didalamnya diperbolehkan untuk kembali beroperasi. Tetapi dengan catatan kapasitas pengunjung maksimal 50%.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Selanjutnya, event olahraga kompetisi Development Basketball League atau DBL dapat dilaksanakan di Jakarta dan Surabaya. &nbsp;Dan harus memenuhi ketentuan-ketentuan yang disyaratkan. Diantaranya seluruh pemain ofisial, kru media dan staf pendukung wajib menggunakan aplikasi PeduliLindungi. Aplikasi inj digunakan untuk melakukan skrining terhadap orang yang keluar masuk pada tempat pelaksanaan kompetisi dan latihan.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Saat pelaksanaan kompetisinya, tidak diperbolehkan menerima penonton langsung di stadion. Kegiatan menonton bersama oleh suporter juga tidak diperbolehkan. Seluruh pemain official kru media dan staf pendukung yang hadir dalam kompetisi, wajib sudah memperoleh vaksinasi dosis kedua dan hasil negatif PCR H-2 dan pelaksanaan kompetisi wajib mengikuti aturan protokol kesehatan yang ditentukan oleh Kementerian Kesehatan.</p>\n<!-- /wp:paragraph -->', 'Satgas: Wisatawan Mancanegara Ke Bali Harus Mematuhi Persyaratan', '', 'publish', 'open', 'open', '', 'tak-mau-bucin-lagi-nathalie-holscher-jangan-bodoh', '', '', '2022-08-15 07:51:35', '2022-08-15 07:51:35', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?p=61', 0, 'post', '', 0),
(62, 1, '2022-08-15 06:43:18', '2022-08-15 06:43:18', '<!-- wp:paragraph -->\n<p>Sule dan Nathalie Holscher resmi cerai. Gugatan yang dilayangkan Nathalie Holscher dikabulkan majelis hakim Pengadilan Agama Cikarang.<br><br>Setelah putusan itu keluar, Nathalie Holscher mengaku jauh lebih lega. Ia menyebut hidup berdua dengan semata wayangnya jauh lebih membuat dirinya tenang.</p>\n<!-- /wp:paragraph -->', 'Tak Mau Bucin Lagi, Nathalie Holscher: Jangan Bodoh', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2022-08-15 06:43:18', '2022-08-15 06:43:18', '', 61, 'http://localhost/latihan%20wordpress/latihan2/?p=62', 0, 'revision', '', 0),
(63, 1, '2022-08-15 06:45:17', '2022-08-15 06:45:17', '<!-- wp:paragraph -->\n<p>Kabar gembira bagi kalian pelajar dan mahasiswa di bawah naungan Muhammadiyah di seluruh Indonesia. Kementerian Komunikasi dan Informatika (Kemkominfo) Republik Indonesia dengan Muhammadiyah Covid-19 Command Center (MDCC) bersama dengan mitra strategis yaitu Komite Penanganan COVID-19 dan Pemulihan Ekonomi Nasional (KPCPEN), menyelenggarakan Kompetisi Challenge Tiktok #MulaiDariKamu dalam rangka mengembangkan potensi anak muda Kader Digital Muhammadiyah (KDM), serta Memberikan informasi yang menarik dan bermanfaat mengenai perkembangan penanganan COVID-19 di bidang Pendidikan kepada masyarakat Indonesia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>TikTok dianggap sebagai media platform digital kekinian yang sedang di gandrungi anak muda, mempunyai multifungsi yaitu sebagai media hiburan juga sebagai media sarana penyebaran informasi yang sangat cepat. Sementara Muhammadiyah yang memiliki lembaga pendidikan yang tersebar di seluruh Indonesia mempunyai kekuatan kaderisasi di kalangan siswa-siswinya terutama Kader Digital Muhammadiyah ( KDM ).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Perlombaan ini akan dimulai dari tanggal 25 Oktober hingga 8 November 2021. Selama perlombaan, peserta akan mendapat pendampingan dalam menentukan ide serta kreativitas konten yang dibuat pada forum komunikasi yang telah dibuat. Kriteria penilaian konten yang diikutsertakan dalam challenge ini harus memiliki kekuatan pesan, kualitas audio dan gambar yang baik, serta kreatifitas tentunya.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Baca lebih lanjut juga ketentuan apa saja yang harus dibuat dalam video tersebut pada tautan <a href=\"http://komin.fo/juknis-kdm\" target=\"_blank\" rel=\"noreferrer noopener\">komin.fo/juknis-kdm</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ayo buruan bikin videonya karena hadiah Handphone untuk 10 video terbaik sudah menanti. Dan jangan takut, semua yang mengikuti lomba akan mendapatkan sertifikat kepesertaaan sebagai kader digital muhamadiyah!</p>\n<!-- /wp:paragraph -->', 'Kompetisi Challenge Tiktok bersama Kader Digital Muhammadiyah', '', 'publish', 'open', 'open', '', 'tuchel-dan-conte-duel-netizen-malah-senang-ini-liga-inggris', '', '', '2022-08-15 07:48:56', '2022-08-15 07:48:56', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?p=63', 0, 'post', '', 2),
(64, 1, '2022-08-15 06:45:17', '2022-08-15 06:45:17', '<!-- wp:paragraph -->\n<p>Sesama pelatih Thomas Tuchel dan Antonio Conte terlibat ketegangan di akhir hasil seri Chelsea vs Tottenham Hotspur. Hal itu disebabkan Tuchel tersinggung dengan sikap Conte. Meski tak elok, netizen merasa terhibur.</p>\n<!-- /wp:paragraph -->', 'Tuchel dan Conte Duel, Netizen Malah Senang: Ini Liga Inggris', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2022-08-15 06:45:17', '2022-08-15 06:45:17', '', 63, 'http://localhost/latihan%20wordpress/latihan2/?p=64', 0, 'revision', '', 0),
(65, 1, '2022-08-15 06:47:14', '2022-08-15 06:47:14', '<!-- wp:paragraph -->\n<p>Indonesia menerima kedatangan vaksin tahap 97 dan 98 pada Jumat (22/10). Vaksin yang mendarat di Indonesia adalah vaksin Pfizer sebanyak 1.182.870 dosis dan AstraZeneca sejumlah 844.820 dosis. Kedatangan vaksin yang berkelanjutan ini adalah wujud upaya keras pemerintah memastikan ketersediaan vaksin COVID-19 di tanah air dalam rangka mengejar kekebalan komunal di Indonesia tahun ini.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>“Kita bersyukur, Indonesia bisa terus menambah ketersediaan vaksin secara intens dalam beberapa pekan terakhir dan hal ini akan terus berlanjut. Dengan ketibaan kedua jenis vaksin ini, maka total vaksin yang telah hadir di Indonesia sekitar 291 juta dosis baik dalam bentuk vaksin jadi maupun bahan baku,” ujar Juru Bicara Vaksinasi COVID-19 Kementerian Kesehatan Siti Nadia Tarmizi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nadia menambahkan, pemerintah berupaya mendatangkan vaksin bagi masyarakat Indonesia melalui bermacam skema. Di antaranya dalam bentuk donasi, seperti vaksin AstraZeneca yang tiba hari ini sebagai hibah dari Pemerintah Jepang. Sedangkan vaksin Pfizer yang tiba di Jakarta, Semarang, dan Surabaya diperoleh melalui skema pembelian langsung.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Saat ini, menurutnya, Indonesia terus melakukan percepatan dan perluasan vaksinasi. Masih terdapat sejumlah tugas besar yang perlu dilakukan terkait vaksinasi, khususnya untuk meningkatkan capaian vaksinasi bagi lansia dan remaja.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>“Untuk itu, pemerintah mengajak seluruh masyarakat untuk membantu memberikan informasi, masukan, saran, dan bantuan bagi keluarga yang remaja dan lansia untuk dapat segera divaksinasi, demi melindungi diri mereka dan keluarga,” ujar Nadia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Menurut data per 22 Oktober 2021 sore, 111,9 juta orang Indonesia telah mendapatkan vaksin dosis pertama atau 53,75% dari sasaran vaksinasi nasional. Sedangkan yang telah mendapatkan vaksin lengkap sebanyak 66,7 juta orang atau 32%.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Upaya membangun kekebalan komunal, atau capaian vaksinasi di atas 70%, terus dilakukan meski tingkat penularan COVID-19 di Indonesia telah jauh menurun.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>“Justru penurunan tersebut mengindikasikan bahwa langkah yang telah dan sedang kita laksanakan ini telah berada di jalur yang tepat, sehingga perlu dilanjutkan dan dituntaskan,” tegas Nadia, “Jadi penurunan ini juga jangan membuat kita lengah dan mengendorkan protokol kesehatan. Pelaksanaan protokol kesehatan 3M dan percepatan vaksinasi mesti berjalan seiring,” imbuhnya.</p>\n<!-- /wp:paragraph -->', 'Tahap 97 dan 98, Indonesia Terima Kedatangan Vaksin Pfizer dan AstraZeneca', '', 'publish', 'open', 'open', '', 'pencuri-coklat-vs-pegawai-alfamart-toko-ponsel-dibom-review-di-google', '', '', '2022-08-15 07:47:12', '2022-08-15 07:47:12', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?p=65', 0, 'post', '', 0),
(66, 1, '2022-08-15 06:47:14', '2022-08-15 06:47:14', '<!-- wp:paragraph -->\n<p>Imbas kasus diduga pencuri coklat vs pegawai Alfamart, netizen beramai-ramai menyerang lewat internet. Meski belum dibuktikan kebenarannya, netizen menuliskan komentar negatif pada toko ponsel yang diduga milik ibu-ibu pengemudi Mercy tersebut.</p>\n<!-- /wp:paragraph -->', 'Pencuri Coklat Vs Pegawai Alfamart, Toko Ponsel Dibom Review di Google', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2022-08-15 06:47:14', '2022-08-15 06:47:14', '', 65, 'http://localhost/latihan%20wordpress/latihan2/?p=66', 0, 'revision', '', 0),
(67, 1, '2022-08-15 06:50:21', '2022-08-15 06:50:21', '<!-- wp:paragraph -->\n<p>Vaksinasi COVID-19 kini diperuntukkan untuk semua golongan. Tak hanya lansia atau tenaga kesehatan, tetapi juga untuk kalangan umum usia produktif bahkan anak-anak.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vaksin COVID-19 menjadi hal yang penting karena sebagai upaya untuk mencapai herd immunity atau kekebalan kelompok agar dapat hidup berdampingan dengan virus Corona di masa pandemi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kendati demikian, meski semua orang terkena dampak akibat pandemi COVID-19, namun dampaknya tidak dirasakan secara merata.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Berdasarkan tinjauan yang dilakukan oleh World Health Organization (WHO), pengungsi dan migran lebih mungkin mengalami beban infeksi COVID-19 yang lebih tinggi dan secara tidak proporsional terwakili dalam kasus, rawat inap, dan kematian.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Oleh sebab itu, baru-baru ini, WHO mengeluarkan pedoman tentang National Deployment and Vaccination Plans (NDVPs) atau Rencana Penerapan dan Vaksinasi Nasional. Akhirnya, pada 31 Agustus 2021, WHO menerbitkan Panduan Interim \'Imunisasi COVID-19 dalam pengungsi dan migran: prinsip dan pertimbangan utama\'.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mengutip laman resmi WHO, dokumen tersebut memberikan informasi tentang tantangan dan hambatan utama untuk mengakses layanan vaksinasi, seperti stigma, pengucilan dan ketidakpercayaan, yang mengakibatkan rendahnya pengambilan vaksin dan keraguan; kurangnya sarana dan informasi keuangan; ketakutan mengenai biaya, keamanan dan deportasi atau penahanan.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Panduan sementara tersebut diantaranya berisikan beberapa hal, seperti:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Praktik yang baik dan menyoroti prinsip dan pertimbangan utama yang berasal dari hak dan kebijakan serta praktik untuk memastikan bahwa pengungsi dan migran memiliki akses yang sama untuk melakukan vaksinasi COVID-19.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hambatan yang mencegah mereka mengakses layanan ditangani dengan benar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Prinsip dan pertimbangan termasuk memastikan akses universal dan setara terhadap vaksin COVID-19 bagi pengungsi dan migran tanpa memandang status migrasi, dengan akses yang sama dengan warga negara.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mengatasi hambatan yang mencegah pengungsi dan migran mengakses layanan vaksinasi COVID-19 dan perjalanan internasional.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mempromosikan penyerapan vaksin dan mengatasi keraguan vaksin.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Melibatkan masyarakat dalam perencanaan dan implementasi vaksinasi COVID-19 dan meningkatkan komunikasi yang efektif untuk membangun kepercayaan dan melawan informasi yang salah.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mengembangkan pendekatan inovatif dan strategi vaksinasi untuk pengungsi dan migran yang tinggal di daerah yang sulit dijangkau.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dokumen ini dikembangkan oleh Program Kesehatan dan Migrasi WHO bekerja sama dengan Departemen Imunisasi, Vaksin dan Biologi dan Intervensi Darurat Kesehatan dan mitra, otoritas nasional, organisasi pemerintah dan nonpemerintah, tim cluster kesehatan, kantor negara WHO dan Perserikatan Bangsa-Bangsa tim negara yang bertanggung jawab untuk mengelola dan mendukung penyebaran, penerapan, dan pemantauan vaksin COVID-19 pada pengungsi dan migran; dan mitra yang memberikan dukungan.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>WHO mengungkapkan pengungsi dan migran tetap berada di antara anggota masyarakat yang paling rentan dan sering menghadapi xenofobia; diskriminasi; kehidupan, perumahan, dan kondisi kerja yang buruk; dan akses yang tidak memadai ke layanan kesehatan, meskipun masalah kesehatan fisik dan mental sering terjadi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tidak dapat dipungkiri bahwa pandemi COVID-19 telah menimbulkan tantangan tambahan baik dalam hal peningkatan risiko infeksi dan kematian yang dialami oleh pengungsi dan migran.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>“Menyoroti ketidakadilan yang ada dalam akses dan pemanfaatan layanan kesehatan. Pengungsi dan migran juga menderita dampak ekonomi negatif dari penguncian dan pembatasan perjalanan,” kata WHO.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Oleh sebab itu, pengungsi dan migran harus dalam kondisi kesehatan yang baik untuk melindungi diri mereka sendiri dan penduduk setempat. Mereka memiliki hak asasi manusia atas kesehatan, dan negara berkewajiban untuk menyediakan layanan perawatan kesehatan yang sensitif bagi pengungsi dan migran.</p>\n<!-- /wp:paragraph -->', 'Pedoman Vaksin COVID-19 pada Pengungsi dan Migran', '', 'publish', 'open', 'open', '', '3-kali-teriakan-ferdy-sambo-ke-bharada-e-sebelum-yoshua-ditembak-mati', '', '', '2022-08-15 09:29:09', '2022-08-15 09:29:09', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?p=67', 0, 'post', '', 2),
(68, 1, '2022-08-15 06:50:21', '2022-08-15 06:50:21', '<!-- wp:paragraph -->\n<p>Kronologi insiden berdarah yang menimpa Brigadir Nofriansyah Yoshua Hutabarat atau Brigadir J terungkap. Ada momen saat Irjen Ferdy Sambo meneriaki Bharada Richard Eliezer alias Bharada E untuk menembak mati Yoshua.</p>\n<!-- /wp:paragraph -->', '3 Kali Teriakan Ferdy Sambo ke Bharada E Sebelum Yoshua Ditembak Mati', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2022-08-15 06:50:21', '2022-08-15 06:50:21', '', 67, 'http://localhost/latihan%20wordpress/latihan2/?p=68', 0, 'revision', '', 0),
(70, 1, '2022-08-15 07:26:47', '2022-08-15 07:26:47', '', 'covid', '', 'inherit', 'open', 'closed', '', 'covid', '', '', '2022-08-15 07:26:47', '2022-08-15 07:26:47', '', 67, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/covid.jpeg', 0, 'attachment', 'image/jpeg', 0),
(71, 1, '2022-08-15 07:26:53', '2022-08-15 07:26:53', '<!-- wp:paragraph -->\n<p>Vaksinasi COVID-19 kini diperuntukkan untuk semua golongan. Tak hanya lansia atau tenaga kesehatan, tetapi juga untuk kalangan umum usia produktif bahkan anak-anak.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vaksin COVID-19 menjadi hal yang penting karena sebagai upaya untuk mencapai herd immunity atau kekebalan kelompok agar dapat hidup berdampingan dengan virus Corona di masa pandemi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Kendati demikian, meski semua orang terkena dampak akibat pandemi COVID-19, namun dampaknya tidak dirasakan secara merata.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Berdasarkan tinjauan yang dilakukan oleh World Health Organization (WHO), pengungsi dan migran lebih mungkin mengalami beban infeksi COVID-19 yang lebih tinggi dan secara tidak proporsional terwakili dalam kasus, rawat inap, dan kematian.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Oleh sebab itu, baru-baru ini, WHO mengeluarkan pedoman tentang National Deployment and Vaccination Plans (NDVPs) atau Rencana Penerapan dan Vaksinasi Nasional. Akhirnya, pada 31 Agustus 2021, WHO menerbitkan Panduan Interim \'Imunisasi COVID-19 dalam pengungsi dan migran: prinsip dan pertimbangan utama\'.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mengutip laman resmi WHO, dokumen tersebut memberikan informasi tentang tantangan dan hambatan utama untuk mengakses layanan vaksinasi, seperti stigma, pengucilan dan ketidakpercayaan, yang mengakibatkan rendahnya pengambilan vaksin dan keraguan; kurangnya sarana dan informasi keuangan; ketakutan mengenai biaya, keamanan dan deportasi atau penahanan.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Panduan sementara tersebut diantaranya berisikan beberapa hal, seperti:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Praktik yang baik dan menyoroti prinsip dan pertimbangan utama yang berasal dari hak dan kebijakan serta praktik untuk memastikan bahwa pengungsi dan migran memiliki akses yang sama untuk melakukan vaksinasi COVID-19.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Hambatan yang mencegah mereka mengakses layanan ditangani dengan benar.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Prinsip dan pertimbangan termasuk memastikan akses universal dan setara terhadap vaksin COVID-19 bagi pengungsi dan migran tanpa memandang status migrasi, dengan akses yang sama dengan warga negara.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>4.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mengatasi hambatan yang mencegah pengungsi dan migran mengakses layanan vaksinasi COVID-19 dan perjalanan internasional.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>5.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mempromosikan penyerapan vaksin dan mengatasi keraguan vaksin.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>6.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Melibatkan masyarakat dalam perencanaan dan implementasi vaksinasi COVID-19 dan meningkatkan komunikasi yang efektif untuk membangun kepercayaan dan melawan informasi yang salah.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>7.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mengembangkan pendekatan inovatif dan strategi vaksinasi untuk pengungsi dan migran yang tinggal di daerah yang sulit dijangkau.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Dokumen ini dikembangkan oleh Program Kesehatan dan Migrasi WHO bekerja sama dengan Departemen Imunisasi, Vaksin dan Biologi dan Intervensi Darurat Kesehatan dan mitra, otoritas nasional, organisasi pemerintah dan nonpemerintah, tim cluster kesehatan, kantor negara WHO dan Perserikatan Bangsa-Bangsa tim negara yang bertanggung jawab untuk mengelola dan mendukung penyebaran, penerapan, dan pemantauan vaksin COVID-19 pada pengungsi dan migran; dan mitra yang memberikan dukungan.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>WHO mengungkapkan pengungsi dan migran tetap berada di antara anggota masyarakat yang paling rentan dan sering menghadapi xenofobia; diskriminasi; kehidupan, perumahan, dan kondisi kerja yang buruk; dan akses yang tidak memadai ke layanan kesehatan, meskipun masalah kesehatan fisik dan mental sering terjadi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tidak dapat dipungkiri bahwa pandemi COVID-19 telah menimbulkan tantangan tambahan baik dalam hal peningkatan risiko infeksi dan kematian yang dialami oleh pengungsi dan migran.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>“Menyoroti ketidakadilan yang ada dalam akses dan pemanfaatan layanan kesehatan. Pengungsi dan migran juga menderita dampak ekonomi negatif dari penguncian dan pembatasan perjalanan,” kata WHO.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Oleh sebab itu, pengungsi dan migran harus dalam kondisi kesehatan yang baik untuk melindungi diri mereka sendiri dan penduduk setempat. Mereka memiliki hak asasi manusia atas kesehatan, dan negara berkewajiban untuk menyediakan layanan perawatan kesehatan yang sensitif bagi pengungsi dan migran.</p>\n<!-- /wp:paragraph -->', 'Pedoman Vaksin COVID-19 pada Pengungsi dan Migran', '', 'inherit', 'closed', 'closed', '', '67-revision-v1', '', '', '2022-08-15 07:26:53', '2022-08-15 07:26:53', '', 67, 'http://localhost/latihan%20wordpress/latihan2/?p=71', 0, 'revision', '', 0),
(72, 1, '2022-08-15 07:46:22', '2022-08-15 07:46:22', '', 'Tahap 97 dan 98, Indonesia Terima Kedatangan Vaksin Pfizer dan AstraZeneca', '', 'inherit', 'closed', 'closed', '', '65-autosave-v1', '', '', '2022-08-15 07:46:22', '2022-08-15 07:46:22', '', 65, 'http://localhost/latihan%20wordpress/latihan2/?p=72', 0, 'revision', '', 0),
(73, 1, '2022-08-15 07:47:08', '2022-08-15 07:47:08', '', 'covid2', '', 'inherit', 'open', 'closed', '', 'covid2', '', '', '2022-08-15 07:47:08', '2022-08-15 07:47:08', '', 65, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/covid2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2022-08-15 07:47:12', '2022-08-15 07:47:12', '<!-- wp:paragraph -->\n<p>Indonesia menerima kedatangan vaksin tahap 97 dan 98 pada Jumat (22/10). Vaksin yang mendarat di Indonesia adalah vaksin Pfizer sebanyak 1.182.870 dosis dan AstraZeneca sejumlah 844.820 dosis. Kedatangan vaksin yang berkelanjutan ini adalah wujud upaya keras pemerintah memastikan ketersediaan vaksin COVID-19 di tanah air dalam rangka mengejar kekebalan komunal di Indonesia tahun ini.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>“Kita bersyukur, Indonesia bisa terus menambah ketersediaan vaksin secara intens dalam beberapa pekan terakhir dan hal ini akan terus berlanjut. Dengan ketibaan kedua jenis vaksin ini, maka total vaksin yang telah hadir di Indonesia sekitar 291 juta dosis baik dalam bentuk vaksin jadi maupun bahan baku,” ujar Juru Bicara Vaksinasi COVID-19 Kementerian Kesehatan Siti Nadia Tarmizi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Nadia menambahkan, pemerintah berupaya mendatangkan vaksin bagi masyarakat Indonesia melalui bermacam skema. Di antaranya dalam bentuk donasi, seperti vaksin AstraZeneca yang tiba hari ini sebagai hibah dari Pemerintah Jepang. Sedangkan vaksin Pfizer yang tiba di Jakarta, Semarang, dan Surabaya diperoleh melalui skema pembelian langsung.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Saat ini, menurutnya, Indonesia terus melakukan percepatan dan perluasan vaksinasi. Masih terdapat sejumlah tugas besar yang perlu dilakukan terkait vaksinasi, khususnya untuk meningkatkan capaian vaksinasi bagi lansia dan remaja.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>“Untuk itu, pemerintah mengajak seluruh masyarakat untuk membantu memberikan informasi, masukan, saran, dan bantuan bagi keluarga yang remaja dan lansia untuk dapat segera divaksinasi, demi melindungi diri mereka dan keluarga,” ujar Nadia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Menurut data per 22 Oktober 2021 sore, 111,9 juta orang Indonesia telah mendapatkan vaksin dosis pertama atau 53,75% dari sasaran vaksinasi nasional. Sedangkan yang telah mendapatkan vaksin lengkap sebanyak 66,7 juta orang atau 32%.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Upaya membangun kekebalan komunal, atau capaian vaksinasi di atas 70%, terus dilakukan meski tingkat penularan COVID-19 di Indonesia telah jauh menurun.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>“Justru penurunan tersebut mengindikasikan bahwa langkah yang telah dan sedang kita laksanakan ini telah berada di jalur yang tepat, sehingga perlu dilanjutkan dan dituntaskan,” tegas Nadia, “Jadi penurunan ini juga jangan membuat kita lengah dan mengendorkan protokol kesehatan. Pelaksanaan protokol kesehatan 3M dan percepatan vaksinasi mesti berjalan seiring,” imbuhnya.</p>\n<!-- /wp:paragraph -->', 'Tahap 97 dan 98, Indonesia Terima Kedatangan Vaksin Pfizer dan AstraZeneca', '', 'inherit', 'closed', 'closed', '', '65-revision-v1', '', '', '2022-08-15 07:47:12', '2022-08-15 07:47:12', '', 65, 'http://localhost/latihan%20wordpress/latihan2/?p=74', 0, 'revision', '', 0),
(75, 1, '2022-08-15 07:48:34', '2022-08-15 07:48:34', '<!-- wp:paragraph -->\n<p>Kabar gembira bagi kalian pelajar dan mahasiswa di bawah naungan Muhammadiyah di seluruh Indonesia. Kementerian Komunikasi dan Informatika (Kemkominfo) Republik Indonesia dengan Muhammadiyah Covid-19 Command Center (MDCC) bersama dengan mitra strategis yaitu Komite Penanganan COVID-19 dan Pemulihan Ekonomi Nasional (KPCPEN), menyelenggarakan Kompetisi Challenge Tiktok #MulaiDariKamu dalam rangka mengembangkan potensi anak muda Kader Digital Muhammadiyah (KDM), serta Memberikan informasi yang menarik dan bermanfaat mengenai perkembangan penanganan COVID-19 di bidang Pendidikan kepada masyarakat Indonesia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>TikTok dianggap sebagai media platform digital kekinian yang sedang di gandrungi anak muda, mempunyai multifungsi yaitu sebagai media hiburan juga sebagai media sarana penyebaran informasi yang sangat cepat. Sementara Muhammadiyah yang memiliki lembaga pendidikan yang tersebar di seluruh Indonesia mempunyai kekuatan kaderisasi di kalangan siswa-siswinya terutama Kader Digital Muhammadiyah ( KDM ).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Perlombaan ini akan dimulai dari tanggal 25 Oktober hingga 8 November 2021. Selama perlombaan, peserta akan mendapat pendampingan dalam menentukan ide serta kreativitas konten yang dibuat pada forum komunikasi yang telah dibuat. Kriteria penilaian konten yang diikutsertakan dalam challenge ini harus memiliki kekuatan pesan, kualitas audio dan gambar yang baik, serta kreatifitas tentunya.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Baca lebih lanjut juga ketentuan apa saja yang harus dibuat dalam video tersebut pada tautan <a href=\"http://komin.fo/juknis-kdm\" target=\"_blank\" rel=\"noreferrer noopener\">komin.fo/juknis-kdm</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ayo buruan bikin videonya karena hadiah Handphone untuk 10 video terbaik sudah menanti. Dan jangan takut, semua yang mengikuti lomba akan mendapatkan sertifikat kepesertaaan sebagai kader digital muhamadiyah!</p>\n<!-- /wp:paragraph -->', 'Kompetisi Challenge Tiktok bersama Kader Digital Muhammadiyah', '', 'inherit', 'closed', 'closed', '', '63-autosave-v1', '', '', '2022-08-15 07:48:34', '2022-08-15 07:48:34', '', 63, 'http://localhost/latihan%20wordpress/latihan2/?p=75', 0, 'revision', '', 0),
(76, 1, '2022-08-15 07:48:53', '2022-08-15 07:48:53', '', 'covid3', '', 'inherit', 'open', 'closed', '', 'covid3', '', '', '2022-08-15 07:48:53', '2022-08-15 07:48:53', '', 63, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/covid3.jpeg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2022-08-15 07:48:56', '2022-08-15 07:48:56', '<!-- wp:paragraph -->\n<p>Kabar gembira bagi kalian pelajar dan mahasiswa di bawah naungan Muhammadiyah di seluruh Indonesia. Kementerian Komunikasi dan Informatika (Kemkominfo) Republik Indonesia dengan Muhammadiyah Covid-19 Command Center (MDCC) bersama dengan mitra strategis yaitu Komite Penanganan COVID-19 dan Pemulihan Ekonomi Nasional (KPCPEN), menyelenggarakan Kompetisi Challenge Tiktok #MulaiDariKamu dalam rangka mengembangkan potensi anak muda Kader Digital Muhammadiyah (KDM), serta Memberikan informasi yang menarik dan bermanfaat mengenai perkembangan penanganan COVID-19 di bidang Pendidikan kepada masyarakat Indonesia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>TikTok dianggap sebagai media platform digital kekinian yang sedang di gandrungi anak muda, mempunyai multifungsi yaitu sebagai media hiburan juga sebagai media sarana penyebaran informasi yang sangat cepat. Sementara Muhammadiyah yang memiliki lembaga pendidikan yang tersebar di seluruh Indonesia mempunyai kekuatan kaderisasi di kalangan siswa-siswinya terutama Kader Digital Muhammadiyah ( KDM ).</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Perlombaan ini akan dimulai dari tanggal 25 Oktober hingga 8 November 2021. Selama perlombaan, peserta akan mendapat pendampingan dalam menentukan ide serta kreativitas konten yang dibuat pada forum komunikasi yang telah dibuat. Kriteria penilaian konten yang diikutsertakan dalam challenge ini harus memiliki kekuatan pesan, kualitas audio dan gambar yang baik, serta kreatifitas tentunya.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Baca lebih lanjut juga ketentuan apa saja yang harus dibuat dalam video tersebut pada tautan <a href=\"http://komin.fo/juknis-kdm\" target=\"_blank\" rel=\"noreferrer noopener\">komin.fo/juknis-kdm</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ayo buruan bikin videonya karena hadiah Handphone untuk 10 video terbaik sudah menanti. Dan jangan takut, semua yang mengikuti lomba akan mendapatkan sertifikat kepesertaaan sebagai kader digital muhamadiyah!</p>\n<!-- /wp:paragraph -->', 'Kompetisi Challenge Tiktok bersama Kader Digital Muhammadiyah', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2022-08-15 07:48:56', '2022-08-15 07:48:56', '', 63, 'http://localhost/latihan%20wordpress/latihan2/?p=77', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(78, 1, '2022-08-15 07:50:15', '2022-08-15 07:50:15', '<!-- wp:paragraph -->\n<p>&nbsp;Pemerintah memperpanjang lagi Pemberlakuan Pembatasan Kegiatan Masyarakat (PPKM) untuk periode 5 - 18 Oktober 2021. Dalam periode kali ini, ada beberapa perubahan aturan berdasarkan Instruksi Mendagri No. 47/2021 tentang PPKM Level 4, 3, 2 dan 1 di wilayah Jawa dan Bali.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Juru Bicara Satgas Penanganan COVID-19 Prof Wiku Adisasmito menjelaskan salah satu yang perlu mendapat perhatian ialah Bali yang bersiap menyambut kunjungan wisatawan mancanegara dengan dibukanya Bandara Ngurah Rai untuk pelaku perjalanan internasional. &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ditegaskannya, bahwa semua semua pendatang wajib memenuhi ketentuan dan persyaratan mengenai karantina, dan tes COVID-19 sesuai yang ditetapkan oleh Kementerian Perhubungan sebelum diizinkan masuk ke Indonesia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"Apabila tidak memenuhi persyaratan, maka para wisatawan akan diminta untuk pulang ke negara asalnya. Satuan tugas yang berada di Bandar Udara Ngurah Rai, Bali, harus mempersiapkan diri sebaik-baiknya sebelum bandara kembali dibuka,\" Wiku memberi Keterangan Pers Perkembangan Penanganan COVID-19 di Graha BNPB, Selasa (5/10/2021) yang juga disiarkan kanal YouTube Sekretariat Presiden.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Untuk Bandar Udara Ngurah Rai di Bali, dari InMendagri tersebut menginstruksikan akan dibuka untuk pelaku perjalanan internasional. &nbsp;Beberapa negara asal wisatawan yang diperbolehkan masuk dari Korea Selatan, Tiongkok, Jepang, Abu Dhabi, Dubai dan New Zealand pada tanggal 14 Oktober 2021.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Disamping itu, perubahan lainnya pada fasilitas pusat kebugaran atau fitness diperbolehkan untuk kembali beroperasi di daerah level 4, 3 dan 2. Syaratnya, dengan mengizinkan kapasitas pengguna fasilitas maksimal 25%, menerapkan protokol kesehatan yang ketat menggunakan aplikasi peduli lindungi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lalu, untuk daerah level 3 dan 2, bioskop beserta kounter makanan dan minuman didalamnya diperbolehkan untuk kembali beroperasi. Tetapi dengan catatan kapasitas pengunjung maksimal 50%.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Selanjutnya, event olahraga kompetisi Development Basketball League atau DBL dapat dilaksanakan di Jakarta dan Surabaya. &nbsp;Dan harus memenuhi ketentuan-ketentuan yang disyaratkan. Diantaranya seluruh pemain ofisial, kru media dan staf pendukung wajib menggunakan aplikasi PeduliLindungi. Aplikasi inj digunakan untuk melakukan skrining terhadap orang yang keluar masuk pada tempat pelaksanaan kompetisi dan latihan.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Saat pelaksanaan kompetisinya, tidak diperbolehkan menerima penonton langsung di stadion. Kegiatan menonton bersama oleh suporter juga tidak diperbolehkan. Seluruh pemain official kru media dan staf pendukung yang hadir dalam kompetisi, wajib sudah memperoleh vaksinasi dosis kedua dan hasil negatif PCR H-2 dan pelaksanaan kompetisi wajib mengikuti aturan protokol kesehatan yang ditentukan oleh Kementerian Kesehatan.</p>\n<!-- /wp:paragraph -->', 'Satgas: Wisatawan Mancanegara Ke Bali Harus Mematuhi Persyaratan', '', 'inherit', 'closed', 'closed', '', '61-autosave-v1', '', '', '2022-08-15 07:50:15', '2022-08-15 07:50:15', '', 61, 'http://localhost/latihan%20wordpress/latihan2/?p=78', 0, 'revision', '', 0),
(79, 1, '2022-08-15 07:50:30', '2022-08-15 07:50:30', '', 'covid4', '', 'inherit', 'open', 'closed', '', 'covid4', '', '', '2022-08-15 07:50:30', '2022-08-15 07:50:30', '', 61, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/covid4.jpeg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2022-08-15 07:51:35', '2022-08-15 07:51:35', '<!-- wp:paragraph -->\n<p>&nbsp;Pemerintah memperpanjang lagi Pemberlakuan Pembatasan Kegiatan Masyarakat (PPKM) untuk periode 5 - 18 Oktober 2021. Dalam periode kali ini, ada beberapa perubahan aturan berdasarkan Instruksi Mendagri No. 47/2021 tentang PPKM Level 4, 3, 2 dan 1 di wilayah Jawa dan Bali.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Juru Bicara Satgas Penanganan COVID-19 Prof Wiku Adisasmito menjelaskan salah satu yang perlu mendapat perhatian ialah Bali yang bersiap menyambut kunjungan wisatawan mancanegara dengan dibukanya Bandara Ngurah Rai untuk pelaku perjalanan internasional. &nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ditegaskannya, bahwa semua semua pendatang wajib memenuhi ketentuan dan persyaratan mengenai karantina, dan tes COVID-19 sesuai yang ditetapkan oleh Kementerian Perhubungan sebelum diizinkan masuk ke Indonesia.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>\"Apabila tidak memenuhi persyaratan, maka para wisatawan akan diminta untuk pulang ke negara asalnya. Satuan tugas yang berada di Bandar Udara Ngurah Rai, Bali, harus mempersiapkan diri sebaik-baiknya sebelum bandara kembali dibuka,\" Wiku memberi Keterangan Pers Perkembangan Penanganan COVID-19 di Graha BNPB, Selasa (5/10/2021) yang juga disiarkan kanal YouTube Sekretariat Presiden.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Untuk Bandar Udara Ngurah Rai di Bali, dari InMendagri tersebut menginstruksikan akan dibuka untuk pelaku perjalanan internasional. &nbsp;Beberapa negara asal wisatawan yang diperbolehkan masuk dari Korea Selatan, Tiongkok, Jepang, Abu Dhabi, Dubai dan New Zealand pada tanggal 14 Oktober 2021.&nbsp;</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Disamping itu, perubahan lainnya pada fasilitas pusat kebugaran atau fitness diperbolehkan untuk kembali beroperasi di daerah level 4, 3 dan 2. Syaratnya, dengan mengizinkan kapasitas pengguna fasilitas maksimal 25%, menerapkan protokol kesehatan yang ketat menggunakan aplikasi peduli lindungi.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Lalu, untuk daerah level 3 dan 2, bioskop beserta kounter makanan dan minuman didalamnya diperbolehkan untuk kembali beroperasi. Tetapi dengan catatan kapasitas pengunjung maksimal 50%.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Selanjutnya, event olahraga kompetisi Development Basketball League atau DBL dapat dilaksanakan di Jakarta dan Surabaya. &nbsp;Dan harus memenuhi ketentuan-ketentuan yang disyaratkan. Diantaranya seluruh pemain ofisial, kru media dan staf pendukung wajib menggunakan aplikasi PeduliLindungi. Aplikasi inj digunakan untuk melakukan skrining terhadap orang yang keluar masuk pada tempat pelaksanaan kompetisi dan latihan.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Saat pelaksanaan kompetisinya, tidak diperbolehkan menerima penonton langsung di stadion. Kegiatan menonton bersama oleh suporter juga tidak diperbolehkan. Seluruh pemain official kru media dan staf pendukung yang hadir dalam kompetisi, wajib sudah memperoleh vaksinasi dosis kedua dan hasil negatif PCR H-2 dan pelaksanaan kompetisi wajib mengikuti aturan protokol kesehatan yang ditentukan oleh Kementerian Kesehatan.</p>\n<!-- /wp:paragraph -->', 'Satgas: Wisatawan Mancanegara Ke Bali Harus Mematuhi Persyaratan', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2022-08-15 07:51:35', '2022-08-15 07:51:35', '', 61, 'http://localhost/latihan%20wordpress/latihan2/?p=80', 0, 'revision', '', 0),
(83, 1, '2022-08-15 09:22:47', '2022-08-15 09:22:47', '', 'Articles', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2022-08-15 09:22:47', '2022-08-15 09:22:47', '', 11, 'http://localhost/latihan%20wordpress/latihan2/?p=83', 0, 'revision', '', 0),
(84, 1, '2022-08-16 02:31:45', '2022-08-16 02:31:45', '', 'covid-1', '', 'inherit', 'open', 'closed', '', 'covid-1', '', '', '2022-08-16 02:31:45', '2022-08-16 02:31:45', '', 0, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/covid-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(85, 1, '2022-08-16 02:32:31', '2022-08-16 02:32:31', '', 'covid2-1', '', 'inherit', 'open', 'closed', '', 'covid2-1', '', '', '2022-08-16 02:32:31', '2022-08-16 02:32:31', '', 0, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/covid2-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2022-08-16 02:36:54', '2022-08-16 02:36:54', '', 'raja_ampat_', '', 'inherit', 'open', 'closed', '', 'raja_ampat_', '', '', '2022-08-16 02:36:54', '2022-08-16 02:36:54', '', 0, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/raja_ampat_.jpeg', 0, 'attachment', 'image/jpeg', 0),
(87, 1, '2022-08-16 02:37:05', '2022-08-16 02:37:05', '', 'pdgrumput', '', 'inherit', 'open', 'closed', '', 'pdgrumput', '', '', '2022-08-16 02:37:05', '2022-08-16 02:37:05', '', 0, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/pdgrumput.jpeg', 0, 'attachment', 'image/jpeg', 0),
(88, 1, '2022-08-16 02:37:13', '2022-08-16 02:37:13', '', 'bali', '', 'inherit', 'open', 'closed', '', 'bali', '', '', '2022-08-22 07:17:24', '2022-08-22 07:17:24', '', 107, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/bali.jpeg', 0, 'attachment', 'image/jpeg', 0),
(89, 1, '2022-08-16 02:37:19', '2022-08-16 02:37:19', '', 'sukabumi', '', 'inherit', 'open', 'closed', '', 'sukabumi', '', '', '2022-08-16 02:37:19', '2022-08-16 02:37:19', '', 0, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/sukabumi.jpeg', 0, 'attachment', 'image/jpeg', 0),
(90, 1, '2022-08-16 02:37:27', '2022-08-16 02:37:27', '', 'beach', '', 'inherit', 'open', 'closed', '', 'beach', '', '', '2022-08-16 02:37:27', '2022-08-16 02:37:27', '', 0, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/beach.jpeg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2022-08-16 02:38:22', '2022-08-16 02:38:22', '', 'raja_ampat_-1', '', 'inherit', 'open', 'closed', '', 'raja_ampat_-1', '', '', '2022-08-22 04:36:14', '2022-08-22 04:36:14', '', 106, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/raja_ampat_-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(92, 1, '2022-08-16 02:38:29', '2022-08-16 02:38:29', '', 'bali-1', '', 'inherit', 'open', 'closed', '', 'bali-1', '', '', '2022-08-16 02:38:29', '2022-08-16 02:38:29', '', 0, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/bali-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(93, 1, '2022-08-16 02:38:39', '2022-08-16 02:38:39', '', 'prambanan', '', 'inherit', 'open', 'closed', '', 'prambanan', '', '', '2022-08-22 03:07:47', '2022-08-22 03:07:47', '', 101, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/prambanan.jpeg', 0, 'attachment', 'image/jpeg', 0),
(94, 1, '2022-08-16 02:38:54', '2022-08-16 02:38:54', '', 'beach-1', '', 'inherit', 'open', 'closed', '', 'beach-1', '', '', '2022-08-16 02:38:54', '2022-08-16 02:38:54', '', 0, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/beach-1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(95, 1, '2022-08-16 02:51:51', '2022-08-16 02:51:51', '', 'raja_ampat_-2', '', 'inherit', 'open', 'closed', '', 'raja_ampat_-2', '', '', '2022-08-16 02:51:51', '2022-08-16 02:51:51', '', 0, 'http://localhost/latihan%20wordpress/latihan2/wp-content/uploads/2022/08/raja_ampat_-2.jpeg', 0, 'attachment', 'image/jpeg', 0),
(97, 1, '2022-08-22 03:06:09', '2022-08-22 03:06:09', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"places\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Places', 'places', 'publish', 'closed', 'closed', '', 'group_6302f136bcb77', '', '', '2022-08-22 06:20:56', '2022-08-22 06:20:56', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?post_type=acf-field-group&#038;p=97', 0, 'acf-field-group', '', 0),
(98, 1, '2022-08-22 03:06:09', '2022-08-22 03:06:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:38:\"masukan nama tempat yang anda inginkan\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'nama tempat', 'nama_tempat', 'publish', 'closed', 'closed', '', 'field_6302f1811d9b0', '', '', '2022-08-22 03:06:09', '2022-08-22 03:06:09', '', 97, 'http://localhost/latihan%20wordpress/latihan2/?post_type=acf-field&p=98', 0, 'acf-field', '', 0),
(99, 1, '2022-08-22 03:06:09', '2022-08-22 03:06:09', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'gambar', 'gambar', 'publish', 'closed', 'closed', '', 'field_6302f1dc1d9b1', '', '', '2022-08-22 06:20:56', '2022-08-22 06:20:56', '', 97, 'http://localhost/latihan%20wordpress/latihan2/?post_type=acf-field&#038;p=99', 1, 'acf-field', '', 0),
(100, 1, '2022-08-22 03:06:09', '2022-08-22 03:06:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'deskripsi', 'deskripsi', 'publish', 'closed', 'closed', '', 'field_6302f1f31d9b2', '', '', '2022-08-22 03:06:09', '2022-08-22 03:06:09', '', 97, 'http://localhost/latihan%20wordpress/latihan2/?post_type=acf-field&p=100', 2, 'acf-field', '', 0),
(101, 1, '2022-08-22 03:15:50', '2022-08-22 03:15:50', '<!-- wp:paragraph -->\n<p><em>Lorem ipsum</em> is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.</p>\n<!-- /wp:paragraph -->', 'Tempat wisata jawa', '', 'trash', 'open', 'open', '', 'tempat-wisata-jawa__trashed', '', '', '2022-08-22 03:26:43', '2022-08-22 03:26:43', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?p=101', 0, 'post', '', 0),
(102, 1, '2022-08-22 03:07:47', '2022-08-22 03:07:47', '<!-- wp:paragraph -->\n<p><em>Lorem ipsum</em> is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.</p>\n<!-- /wp:paragraph -->', 'Tempat wisata jawa', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2022-08-22 03:07:47', '2022-08-22 03:07:47', '', 101, 'http://localhost/latihan%20wordpress/latihan2/?p=102', 0, 'revision', '', 0),
(103, 1, '2022-08-22 03:07:47', '2022-08-22 03:07:47', '<!-- wp:paragraph -->\n<p><em>Lorem ipsum</em> is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.</p>\n<!-- /wp:paragraph -->', 'Tempat wisata jawa', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2022-08-22 03:07:47', '2022-08-22 03:07:47', '', 101, 'http://localhost/latihan%20wordpress/latihan2/?p=103', 0, 'revision', '', 0),
(104, 1, '2022-08-22 03:15:51', '2022-08-22 03:15:51', '<!-- wp:paragraph -->\n<p><em>Lorem ipsum</em> is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.</p>\n<!-- /wp:paragraph -->', 'Tempat wisata jawa', '', 'inherit', 'closed', 'closed', '', '101-revision-v1', '', '', '2022-08-22 03:15:51', '2022-08-22 03:15:51', '', 101, 'http://localhost/latihan%20wordpress/latihan2/?p=104', 0, 'revision', '', 0),
(105, 1, '2022-08-22 03:25:16', '2022-08-22 03:25:16', '', 'Wisata candi prambanan', '', 'publish', 'closed', 'closed', '', '105', '', '', '2022-08-22 03:26:27', '2022-08-22 03:26:27', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?post_type=places&#038;p=105', 0, 'places', '', 0),
(106, 1, '2022-08-22 04:36:14', '2022-08-22 04:36:14', '', 'Wisata raja ampat', '', 'publish', 'closed', 'closed', '', 'wisata-raja-ampat', '', '', '2022-08-22 04:36:14', '2022-08-22 04:36:14', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?post_type=places&#038;p=106', 0, 'places', '', 0),
(107, 1, '2022-08-22 07:17:24', '2022-08-22 07:17:24', '', 'wisata bali', '', 'publish', 'closed', 'closed', '', 'wisata-bali', '', '', '2022-08-22 07:17:50', '2022-08-22 07:17:50', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?post_type=places&#038;p=107', 0, 'places', '', 0),
(108, 1, '2022-09-19 03:28:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-09-19 03:28:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/latihan%20wordpress/latihan2/?p=108', 0, 'post', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'blankslate', 'blankslate', 0),
(4, 'Updates', 'updates', 0),
(5, 'Travelling Tips', 'travelling-tips', 0),
(6, 'Menu 1', 'menu-1', 0),
(7, 'beautiful_indonesia', 'beautiful_indonesia', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(7, 2, 0),
(51, 6, 0),
(52, 6, 0),
(53, 6, 0),
(54, 6, 0),
(57, 7, 0),
(61, 1, 0),
(63, 1, 0),
(65, 1, 0),
(67, 4, 0),
(67, 5, 0),
(101, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'wp_theme', '', 0, 1),
(4, 4, 'category', '', 0, 1),
(5, 5, 'category', '', 0, 1),
(6, 6, 'nav_menu', '', 0, 4),
(7, 7, 'wp_theme', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '108'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(24, 1, 'nav_menu_recently_edited', '6'),
(25, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(26, 1, 'wp_user-settings-time', '1660011059'),
(28, 1, 'last_login_time', '2022-08-09 07:53:25'),
(29, 2, 'nickname', 'editor'),
(30, 2, 'first_name', 'editor'),
(31, 2, 'last_name', '01'),
(32, 2, 'description', ''),
(33, 2, 'rich_editing', 'true'),
(34, 2, 'syntax_highlighting', 'true'),
(35, 2, 'comment_shortcuts', 'false'),
(36, 2, 'admin_color', 'fresh'),
(37, 2, 'use_ssl', '0'),
(38, 2, 'show_admin_bar_front', 'true'),
(39, 2, 'locale', ''),
(40, 2, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(41, 2, 'wp_user_level', '7'),
(42, 2, 'dismissed_wp_pointers', ''),
(43, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(44, 1, 'metaboxhidden_dashboard', 'a:2:{i:0;s:21:\"dashboard_site_health\";i:1;s:17:\"dashboard_primary\";}'),
(47, 1, 'itsec_user_activity_last_seen', '1660028859'),
(48, 1, 'itsec-password-strength', '1'),
(49, 1, '_itsec_password_requirements', 'a:1:{s:16:\"evaluation_times\";a:1:{s:8:\"strength\";i:1660016195;}}'),
(50, 1, '_itsec_has_logged_in', '1660016195'),
(51, 1, '_itsec_primary_dashboard', '34'),
(52, 2, 'itsec-password-strength', '1'),
(53, 2, '_itsec_password_requirements', 'a:1:{s:16:\"evaluation_times\";a:1:{s:8:\"strength\";i:1660029808;}}'),
(55, 2, 'last_login_time', '2022-08-09 07:23:29'),
(56, 2, '_itsec_has_logged_in', '1660029808'),
(57, 2, 'wp_dashboard_quick_press_last_post_id', '55'),
(58, 2, 'itsec_user_activity_last_seen', '1660029811'),
(60, 3, 'nickname', 'editor2'),
(61, 3, 'first_name', 'editor'),
(62, 3, 'last_name', '2'),
(63, 3, 'description', ''),
(64, 3, 'rich_editing', 'true'),
(65, 3, 'syntax_highlighting', 'true'),
(66, 3, 'comment_shortcuts', 'false'),
(67, 3, 'admin_color', 'fresh'),
(68, 3, 'use_ssl', '0'),
(69, 3, 'show_admin_bar_front', 'true'),
(70, 3, 'locale', ''),
(71, 3, 'wp_capabilities', 'a:1:{s:6:\"editor\";b:1;}'),
(72, 3, 'wp_user_level', '7'),
(73, 3, 'dismissed_wp_pointers', ''),
(74, 2, 'session_tokens', 'a:1:{s:64:\"7875f8c7fca32199e7d107184d4ae167ddf1a3b0e631087254ad1e169d6be23f\";a:4:{s:10:\"expiration\";i:1660724899;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\";s:5:\"login\";i:1660552099;}}'),
(75, 1, 'wp_media_library_mode', 'list'),
(76, 1, 'session_tokens', 'a:1:{s:64:\"a2ee8b11802a558d457f56f5dc078b99b89a644f59d9c95683ec50a13b2f0fc6\";a:4:{s:10:\"expiration\";i:1663730913;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.0.0 Safari/537.36\";s:5:\"login\";i:1663558113;}}'),
(77, 1, 'closedpostboxes_places', 'a:0:{}'),
(78, 1, 'metaboxhidden_places', 'a:1:{i:0;s:7:\"slugdiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$B7H1SGzcVVp7UhXCMLyBzeFqFty1D7.', 'admin', 'admin@gmail.com', 'http://localhost/latihan%20wordpress/latihan2', '2022-08-08 02:59:33', '', 0, 'admin'),
(2, 'editor', '$P$BSQnfgGKoA93UEOgo2tWpfOSsg11rk.', 'editor', 'editor@gmail.com', '', '2022-08-08 09:45:36', '1659951936:$P$BHtFrgSgbCULyzOn58uYnYChvVVeZ11', 0, 'editor 01'),
(3, 'editor2', '$P$B2xMzf9zQyCuH/yMPoKEmrD0sh2m1I1', 'editor2', 'editor2@gmail.com', '', '2022-08-15 08:15:12', '1660551312:$P$B0devN6yNbcdp.0ka3lPwSxJx..u7./', 0, 'editor 2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_aiowps_debug_log`
--
ALTER TABLE `wp_aiowps_debug_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_events`
--
ALTER TABLE `wp_aiowps_events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_failed_logins`
--
ALTER TABLE `wp_aiowps_failed_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_global_meta`
--
ALTER TABLE `wp_aiowps_global_meta`
  ADD PRIMARY KEY (`meta_id`);

--
-- Indexes for table `wp_aiowps_login_activity`
--
ALTER TABLE `wp_aiowps_login_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_login_lockdown`
--
ALTER TABLE `wp_aiowps_login_lockdown`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_aiowps_permanent_block`
--
ALTER TABLE `wp_aiowps_permanent_block`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wp_itsec_bans`
--
ALTER TABLE `wp_itsec_bans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `actor` (`actor_type`,`actor_id`);

--
-- Indexes for table `wp_itsec_dashboard_events`
--
ALTER TABLE `wp_itsec_dashboard_events`
  ADD PRIMARY KEY (`event_id`),
  ADD UNIQUE KEY `event_slug__time__consolidated` (`event_slug`,`event_time`,`event_consolidated`);

--
-- Indexes for table `wp_itsec_distributed_storage`
--
ALTER TABLE `wp_itsec_distributed_storage`
  ADD PRIMARY KEY (`storage_id`),
  ADD UNIQUE KEY `storage_group__key__chunk` (`storage_group`,`storage_key`,`storage_chunk`);

--
-- Indexes for table `wp_itsec_fingerprints`
--
ALTER TABLE `wp_itsec_fingerprints`
  ADD PRIMARY KEY (`fingerprint_id`),
  ADD UNIQUE KEY `fingerprint_user__hash` (`fingerprint_user`,`fingerprint_hash`),
  ADD UNIQUE KEY `fingerprint_uuid` (`fingerprint_uuid`);

--
-- Indexes for table `wp_itsec_geolocation_cache`
--
ALTER TABLE `wp_itsec_geolocation_cache`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_host` (`location_host`),
  ADD KEY `location_time` (`location_time`);

--
-- Indexes for table `wp_itsec_lockouts`
--
ALTER TABLE `wp_itsec_lockouts`
  ADD PRIMARY KEY (`lockout_id`),
  ADD KEY `lockout_expire_gmt` (`lockout_expire_gmt`),
  ADD KEY `lockout_host` (`lockout_host`),
  ADD KEY `lockout_user` (`lockout_user`),
  ADD KEY `lockout_username` (`lockout_username`),
  ADD KEY `lockout_active` (`lockout_active`);

--
-- Indexes for table `wp_itsec_logs`
--
ALTER TABLE `wp_itsec_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module` (`module`),
  ADD KEY `code` (`code`),
  ADD KEY `type` (`type`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `init_timestamp` (`init_timestamp`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `wp_itsec_mutexes`
--
ALTER TABLE `wp_itsec_mutexes`
  ADD PRIMARY KEY (`mutex_id`),
  ADD UNIQUE KEY `mutex_name` (`mutex_name`);

--
-- Indexes for table `wp_itsec_opaque_tokens`
--
ALTER TABLE `wp_itsec_opaque_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD UNIQUE KEY `token_hashed` (`token_hashed`);

--
-- Indexes for table `wp_itsec_temp`
--
ALTER TABLE `wp_itsec_temp`
  ADD PRIMARY KEY (`temp_id`),
  ADD KEY `temp_date_gmt` (`temp_date_gmt`),
  ADD KEY `temp_host` (`temp_host`),
  ADD KEY `temp_user` (`temp_user`),
  ADD KEY `temp_username` (`temp_username`);

--
-- Indexes for table `wp_itsec_user_groups`
--
ALTER TABLE `wp_itsec_user_groups`
  ADD PRIMARY KEY (`group_id`);

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
-- AUTO_INCREMENT for table `wp_aiowps_debug_log`
--
ALTER TABLE `wp_aiowps_debug_log`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_aiowps_events`
--
ALTER TABLE `wp_aiowps_events`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_aiowps_failed_logins`
--
ALTER TABLE `wp_aiowps_failed_logins`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_aiowps_global_meta`
--
ALTER TABLE `wp_aiowps_global_meta`
  MODIFY `meta_id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_aiowps_login_activity`
--
ALTER TABLE `wp_aiowps_login_activity`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_aiowps_login_lockdown`
--
ALTER TABLE `wp_aiowps_login_lockdown`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_aiowps_permanent_block`
--
ALTER TABLE `wp_aiowps_permanent_block`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_itsec_bans`
--
ALTER TABLE `wp_itsec_bans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_itsec_dashboard_events`
--
ALTER TABLE `wp_itsec_dashboard_events`
  MODIFY `event_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_itsec_distributed_storage`
--
ALTER TABLE `wp_itsec_distributed_storage`
  MODIFY `storage_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_itsec_fingerprints`
--
ALTER TABLE `wp_itsec_fingerprints`
  MODIFY `fingerprint_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_itsec_geolocation_cache`
--
ALTER TABLE `wp_itsec_geolocation_cache`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_itsec_lockouts`
--
ALTER TABLE `wp_itsec_lockouts`
  MODIFY `lockout_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_itsec_logs`
--
ALTER TABLE `wp_itsec_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_itsec_mutexes`
--
ALTER TABLE `wp_itsec_mutexes`
  MODIFY `mutex_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_itsec_temp`
--
ALTER TABLE `wp_itsec_temp`
  MODIFY `temp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2076;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=318;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
