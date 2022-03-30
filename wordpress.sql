-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 30/03/2022 às 13:58
-- Versão do servidor: 10.4.22-MariaDB
-- Versão do PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `wordpress`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_comments`
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
-- Despejando dados para a tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-03-16 23:56:16', '2022-03-17 02:56:16', 'Olá, isso é um comentário.\nPara começar a moderar, editar e excluir comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_links`
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
-- Estrutura para tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/projetos/wordpress', 'yes'),
(2, 'home', 'http://localhost/projetos/wordpress', 'yes'),
(3, 'blogname', 'Curso wordpress', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'davimichaelsenm@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:95:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=8&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:0:{}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'curso', 'yes'),
(41, 'stylesheet', 'curso', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
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
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '5', 'yes'),
(82, 'page_on_front', '8', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1663037766', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pt_BR', 'yes'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1648612578;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1648652178;a:2:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1648652179;a:2:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1648695377;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1648695398;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1648695399;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1648781778;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
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
(122, 'theme_mods_twentytwentytwo', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1647522537;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(125, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(143, 'can_compress_scripts', '1', 'no'),
(155, 'finished_updating_comment_type', '1', 'yes'),
(161, 'current_theme', 'Curso WordPress', 'yes'),
(162, 'theme_mods_temaPontoCom', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:9:\"main_menu\";i:4;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1648054936;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}}}}', 'yes'),
(163, 'theme_switched', '', 'yes'),
(188, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:2:{i:0;i:4;i:1;i:5;}}', 'yes'),
(221, 'recovery_mode_email_last_sent', '1647874640', 'yes'),
(230, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":5,\"critical\":1}', 'yes'),
(370, 'theme_mods_curso', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"my_main_menu\";i:5;}s:18:\"custom_css_post_id\";i:-1;s:12:\"header_image\";s:21:\"random-uploaded-image\";}', 'yes'),
(409, '_site_transient_timeout_php_check_653b16e6c5979ac325fae9f9db6a18fe', '1648821186', 'no'),
(411, '_site_transient_php_check_653b16e6c5979ac325fae9f9db6a18fe', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(441, 'category_children', 'a:0:{}', 'yes'),
(446, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(551, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(552, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(648, '_transient_timeout_oembed_fed53fd1d13766b76d24e8caf84ac415', '1648679354', 'no'),
(649, '_transient_oembed_fed53fd1d13766b76d24e8caf84ac415', 'O:8:\"stdClass\":13:{s:5:\"title\";s:50:\"Nobody - Need for Speed: Underground 2 (Legendado)\";s:11:\"author_name\";s:8:\"jazzcafe\";s:10:\"author_url\";s:36:\"https://www.youtube.com/c/jazzcafetv\";s:4:\"type\";s:5:\"video\";s:6:\"height\";i:338;s:5:\"width\";i:600;s:7:\"version\";s:3:\"1.0\";s:13:\"provider_name\";s:7:\"YouTube\";s:12:\"provider_url\";s:24:\"https://www.youtube.com/\";s:16:\"thumbnail_height\";i:360;s:15:\"thumbnail_width\";i:480;s:13:\"thumbnail_url\";s:48:\"https://i.ytimg.com/vi/eeFN8HPVXVc/hqdefault.jpg\";s:4:\"html\";s:293:\"<iframe title=\"Nobody - Need for Speed: Underground 2 (Legendado)\" width=\"600\" height=\"338\" src=\"https://www.youtube.com/embed/eeFN8HPVXVc?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\";}', 'no'),
(657, '_transient_timeout_oembed_2abeef3190c877b00164f5ed24d590f4', '1648679646', 'no'),
(658, '_transient_oembed_2abeef3190c877b00164f5ed24d590f4', 'O:8:\"stdClass\":13:{s:5:\"title\";s:60:\"Celebration Song - Need for Speed: Underground 2 (Legendado)\";s:11:\"author_name\";s:8:\"jazzcafe\";s:10:\"author_url\";s:36:\"https://www.youtube.com/c/jazzcafetv\";s:4:\"type\";s:5:\"video\";s:6:\"height\";i:338;s:5:\"width\";i:600;s:7:\"version\";s:3:\"1.0\";s:13:\"provider_name\";s:7:\"YouTube\";s:12:\"provider_url\";s:24:\"https://www.youtube.com/\";s:16:\"thumbnail_height\";i:360;s:15:\"thumbnail_width\";i:480;s:13:\"thumbnail_url\";s:48:\"https://i.ytimg.com/vi/ijUDT7dNZ1Q/hqdefault.jpg\";s:4:\"html\";s:303:\"<iframe title=\"Celebration Song - Need for Speed: Underground 2 (Legendado)\" width=\"600\" height=\"338\" src=\"https://www.youtube.com/embed/ijUDT7dNZ1Q?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>\";}', 'no'),
(680, '_site_transient_timeout_theme_roots', '1648610783', 'no'),
(681, '_site_transient_theme_roots', 'a:5:{s:5:\"curso\";s:7:\"/themes\";s:12:\"temaPontoCom\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(682, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.9.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/pt_BR/wordpress-5.9.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.9.2\";s:7:\"version\";s:5:\"5.9.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1648608985;s:15:\"version_checked\";s:5:\"5.9.2\";s:12:\"translations\";a:0:{}}', 'no'),
(683, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1648608986;s:7:\"checked\";a:5:{s:5:\"curso\";s:3:\"1.0\";s:12:\"temaPontoCom\";s:3:\"1.0\";s:12:\"twentytwenty\";s:3:\"1.9\";s:15:\"twentytwentyone\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.1\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.9.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.5.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.1.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(684, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1648609098;s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2019-08-13 18:09:11\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:2:{s:19:\"akismet/akismet.php\";s:5:\"4.2.2\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1647541506:1'),
(4, 8, '_edit_lock', '1647541563:1'),
(5, 10, '_edit_lock', '1648319506:1'),
(6, 12, '_menu_item_type', 'custom'),
(7, 12, '_menu_item_menu_item_parent', '0'),
(8, 12, '_menu_item_object_id', '12'),
(9, 12, '_menu_item_object', 'custom'),
(10, 12, '_menu_item_target', ''),
(11, 12, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(12, 12, '_menu_item_xfn', ''),
(13, 12, '_menu_item_url', 'http://localhost/projetos/wordpress/'),
(15, 13, '_menu_item_type', 'post_type'),
(16, 13, '_menu_item_menu_item_parent', '0'),
(17, 13, '_menu_item_object_id', '5'),
(18, 13, '_menu_item_object', 'page'),
(19, 13, '_menu_item_target', ''),
(20, 13, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(21, 13, '_menu_item_xfn', ''),
(22, 13, '_menu_item_url', ''),
(24, 14, '_menu_item_type', 'post_type'),
(25, 14, '_menu_item_menu_item_parent', '0'),
(26, 14, '_menu_item_object_id', '8'),
(27, 14, '_menu_item_object', 'page'),
(28, 14, '_menu_item_target', ''),
(29, 14, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(30, 14, '_menu_item_xfn', ''),
(31, 14, '_menu_item_url', ''),
(33, 15, '_menu_item_type', 'post_type'),
(34, 15, '_menu_item_menu_item_parent', '0'),
(35, 15, '_menu_item_object_id', '2'),
(36, 15, '_menu_item_object', 'page'),
(37, 15, '_menu_item_target', ''),
(38, 15, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(39, 15, '_menu_item_xfn', ''),
(40, 15, '_menu_item_url', ''),
(42, 16, '_menu_item_type', 'post_type'),
(43, 16, '_menu_item_menu_item_parent', '0'),
(44, 16, '_menu_item_object_id', '10'),
(45, 16, '_menu_item_object', 'page'),
(46, 16, '_menu_item_target', ''),
(47, 16, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(48, 16, '_menu_item_xfn', ''),
(49, 16, '_menu_item_url', ''),
(51, 17, '_menu_item_type', 'post_type'),
(52, 17, '_menu_item_menu_item_parent', '0'),
(53, 17, '_menu_item_object_id', '8'),
(54, 17, '_menu_item_object', 'page'),
(55, 17, '_menu_item_target', ''),
(56, 17, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(57, 17, '_menu_item_xfn', ''),
(58, 17, '_menu_item_url', ''),
(60, 18, '_menu_item_type', 'post_type'),
(61, 18, '_menu_item_menu_item_parent', '0'),
(62, 18, '_menu_item_object_id', '10'),
(63, 18, '_menu_item_object', 'page'),
(64, 18, '_menu_item_target', ''),
(65, 18, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(66, 18, '_menu_item_xfn', ''),
(67, 18, '_menu_item_url', ''),
(69, 19, '_menu_item_type', 'post_type'),
(70, 19, '_menu_item_menu_item_parent', '0'),
(71, 19, '_menu_item_object_id', '5'),
(72, 19, '_menu_item_object', 'page'),
(73, 19, '_menu_item_target', ''),
(74, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(75, 19, '_menu_item_xfn', ''),
(76, 19, '_menu_item_url', ''),
(78, 20, '_edit_lock', '1648319607:1'),
(79, 21, '_menu_item_type', 'post_type'),
(80, 21, '_menu_item_menu_item_parent', '0'),
(81, 21, '_menu_item_object_id', '20'),
(82, 21, '_menu_item_object', 'page'),
(83, 21, '_menu_item_target', ''),
(84, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 21, '_menu_item_xfn', ''),
(86, 21, '_menu_item_url', ''),
(87, 23, '_menu_item_type', 'post_type'),
(88, 23, '_menu_item_menu_item_parent', '0'),
(89, 23, '_menu_item_object_id', '20'),
(90, 23, '_menu_item_object', 'page'),
(91, 23, '_menu_item_target', ''),
(92, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(93, 23, '_menu_item_xfn', ''),
(94, 23, '_menu_item_url', ''),
(96, 24, '_menu_item_type', 'post_type'),
(97, 24, '_menu_item_menu_item_parent', '0'),
(98, 24, '_menu_item_object_id', '10'),
(99, 24, '_menu_item_object', 'page'),
(100, 24, '_menu_item_target', ''),
(101, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(102, 24, '_menu_item_xfn', ''),
(103, 24, '_menu_item_url', ''),
(105, 25, '_menu_item_type', 'post_type'),
(106, 25, '_menu_item_menu_item_parent', '0'),
(107, 25, '_menu_item_object_id', '8'),
(108, 25, '_menu_item_object', 'page'),
(109, 25, '_menu_item_target', ''),
(110, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(111, 25, '_menu_item_xfn', ''),
(112, 25, '_menu_item_url', ''),
(114, 26, '_menu_item_type', 'post_type'),
(115, 26, '_menu_item_menu_item_parent', '0'),
(116, 26, '_menu_item_object_id', '5'),
(117, 26, '_menu_item_object', 'page'),
(118, 26, '_menu_item_target', ''),
(119, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(120, 26, '_menu_item_xfn', ''),
(121, 26, '_menu_item_url', ''),
(123, 27, '_edit_lock', '1648217095:1'),
(124, 29, '_menu_item_type', 'post_type'),
(125, 29, '_menu_item_menu_item_parent', '0'),
(126, 29, '_menu_item_object_id', '27'),
(127, 29, '_menu_item_object', 'page'),
(128, 29, '_menu_item_target', ''),
(129, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 29, '_menu_item_xfn', ''),
(131, 29, '_menu_item_url', ''),
(140, 23, '_wp_old_date', '2022-03-24'),
(141, 24, '_wp_old_date', '2022-03-24'),
(142, 25, '_wp_old_date', '2022-03-24'),
(143, 26, '_wp_old_date', '2022-03-24'),
(144, 32, '_edit_lock', '1648598037:1'),
(147, 34, '_edit_lock', '1648592864:1'),
(150, 36, '_edit_lock', '1648598582:1'),
(153, 10, '_wp_page_template', 'general-template.php'),
(154, 20, '_wp_page_template', 'general-template.php'),
(155, 40, '_wp_attached_file', '2022/03/papel-de-parede-universo-0001-adesivo-de-parede-quartos-decorados.jpg'),
(156, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:780;s:4:\"file\";s:77:\"2022/03/papel-de-parede-universo-0001-adesivo-de-parede-quartos-decorados.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:77:\"papel-de-parede-universo-0001-adesivo-de-parede-quartos-decorados-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:78:\"papel-de-parede-universo-0001-adesivo-de-parede-quartos-decorados-1024x666.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:666;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:77:\"papel-de-parede-universo-0001-adesivo-de-parede-quartos-decorados-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:77:\"papel-de-parede-universo-0001-adesivo-de-parede-quartos-decorados-768x499.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:499;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(159, 41, '_edit_lock', '1648411049:1'),
(160, 42, '_wp_attached_file', '2022/03/wolf-g6cc1cfb92_1920.jpg'),
(161, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1078;s:4:\"file\";s:32:\"2022/03/wolf-g6cc1cfb92_1920.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"wolf-g6cc1cfb92_1920-300x168.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:168;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:33:\"wolf-g6cc1cfb92_1920-1024x575.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"wolf-g6cc1cfb92_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:32:\"wolf-g6cc1cfb92_1920-768x431.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:431;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:33:\"wolf-g6cc1cfb92_1920-1536x862.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:862;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(162, 43, '_wp_attached_file', '2022/03/ocean-g40b63d8ba_1920.jpg'),
(163, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1246;s:4:\"file\";s:33:\"2022/03/ocean-g40b63d8ba_1920.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"ocean-g40b63d8ba_1920-300x195.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"ocean-g40b63d8ba_1920-1024x665.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:665;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"ocean-g40b63d8ba_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:33:\"ocean-g40b63d8ba_1920-768x498.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:498;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:34:\"ocean-g40b63d8ba_1920-1536x997.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:997;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(164, 44, '_wp_attached_file', '2022/03/milky-way-g1388f2bf8_1920.jpg'),
(165, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1079;s:4:\"file\";s:37:\"2022/03/milky-way-g1388f2bf8_1920.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"milky-way-g1388f2bf8_1920-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"milky-way-g1388f2bf8_1920-1024x575.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:575;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"milky-way-g1388f2bf8_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"milky-way-g1388f2bf8_1920-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:38:\"milky-way-g1388f2bf8_1920-1536x863.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:863;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(168, 45, '_wp_attached_file', '2022/03/cropped-ocean-g40b63d8ba_1920.jpg'),
(169, 45, '_wp_attachment_context', 'custom-header'),
(170, 45, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1920;s:6:\"height\";i:225;s:4:\"file\";s:41:\"2022/03/cropped-ocean-g40b63d8ba_1920.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"cropped-ocean-g40b63d8ba_1920-300x35.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:35;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"cropped-ocean-g40b63d8ba_1920-1024x120.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:120;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"cropped-ocean-g40b63d8ba_1920-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"cropped-ocean-g40b63d8ba_1920-768x90.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:42:\"cropped-ocean-g40b63d8ba_1920-1536x180.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:180;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:17:\"attachment_parent\";i:43;}'),
(171, 45, '_wp_attachment_custom_header_last_used_curso', '1648410990'),
(172, 45, '_wp_attachment_is_custom_header', 'curso'),
(175, 41, '_wp_trash_meta_status', 'publish'),
(176, 41, '_wp_trash_meta_time', '1648411060'),
(179, 36, '_thumbnail_id', '40'),
(182, 34, '_thumbnail_id', '42'),
(185, 32, '_thumbnail_id', '44'),
(188, 34, '_oembed_79f9af1a1342e049d1c09f1788ab5368', '<iframe title=\"Nobody - Need for Speed: Underground 2 (Legendado)\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/eeFN8HPVXVc?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(189, 34, '_oembed_time_79f9af1a1342e049d1c09f1788ab5368', '1648592964'),
(190, 48, '_edit_lock', '1648592851:1'),
(191, 49, '_edit_lock', '1648593202:1'),
(194, 49, '_oembed_c625405a7cf4dfc3113064bfeb41775e', '<iframe title=\"Celebration Song - Need for Speed: Underground 2 (Legendado)\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/ijUDT7dNZ1Q?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>'),
(195, 49, '_oembed_time_c625405a7cf4dfc3113064bfeb41775e', '1648593255'),
(196, 32, '_oembed_05733c8c8ff1dc6fe09dd8fbc29a40c1', '{{unknown}}'),
(199, 53, '_edit_lock', '1648598069:1'),
(204, 55, '_edit_lock', '1648598791:1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_posts`
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
-- Despejando dados para a tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-03-16 23:56:16', '2022-03-17 02:56:16', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2022-03-16 23:56:16', '2022-03-17 02:56:16', '', 0, 'http://localhost/projetos/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2022-03-16 23:56:16', '2022-03-17 02:56:16', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/projetos/wordpress/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2022-03-16 23:56:16', '2022-03-17 02:56:16', '', 0, 'http://localhost/projetos/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-03-16 23:56:16', '2022-03-17 02:56:16', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/projetos/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem compartilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde enviamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2022-03-16 23:56:16', '2022-03-17 02:56:16', '', 0, 'http://localhost/projetos/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2022-03-17 15:27:08', '2022-03-17 18:27:08', '<!-- wp:paragraph -->\n<p>Blog</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2022-03-17 15:27:08', '2022-03-17 18:27:08', '', 0, 'http://localhost/projetos/wordpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2022-03-17 15:26:39', '2022-03-17 18:26:39', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-temapontocom', '', '', '2022-03-17 15:26:39', '2022-03-17 18:26:39', '', 0, 'http://localhost/projetos/wordpress/2022/03/17/wp-global-styles-temapontocom/', 0, 'wp_global_styles', '', 0),
(7, 1, '2022-03-17 15:27:08', '2022-03-17 18:27:08', '<!-- wp:paragraph -->\n<p>Blog</p>\n<!-- /wp:paragraph -->', 'Blog', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2022-03-17 15:27:08', '2022-03-17 18:27:08', '', 5, 'http://localhost/projetos/wordpress/?p=7', 0, 'revision', '', 0),
(8, 1, '2022-03-17 15:27:45', '2022-03-17 18:27:45', '<!-- wp:paragraph -->\n<p>Home</p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2022-03-17 15:27:45', '2022-03-17 18:27:45', '', 0, 'http://localhost/projetos/wordpress/?page_id=8', 0, 'page', '', 0),
(9, 1, '2022-03-17 15:27:45', '2022-03-17 18:27:45', '<!-- wp:paragraph -->\n<p>Home</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2022-03-17 15:27:45', '2022-03-17 18:27:45', '', 8, 'http://localhost/projetos/wordpress/?p=9', 0, 'revision', '', 0),
(10, 1, '2022-03-17 15:28:39', '2022-03-17 18:28:39', '<!-- wp:paragraph -->\n<p>Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi.A ordem dos tratores não altera o pão duris.Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio.Delegadis gente finis, bibendum egestas augue arcu ut est.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mais vale um bebadis conhecidiss, que um alcoolatra anonimis.Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.Casamentiss faiz malandris se pirulitá.Delegadis gente finis, bibendum egestas augue arcu ut est.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus.Quem manda na minha terra sou euzis!Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis.Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo!</p>\n<!-- /wp:paragraph -->', 'Sobre', '', 'publish', 'closed', 'closed', '', 'sobre', '', '', '2022-03-26 15:34:09', '2022-03-26 18:34:09', '', 0, 'http://localhost/projetos/wordpress/?page_id=10', 0, 'page', '', 0),
(11, 1, '2022-03-17 15:28:39', '2022-03-17 18:28:39', '<!-- wp:paragraph -->\n<p>Sobre</p>\n<!-- /wp:paragraph -->', 'Sobre', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2022-03-17 15:28:39', '2022-03-17 18:28:39', '', 10, 'http://localhost/projetos/wordpress/?p=11', 0, 'revision', '', 0),
(12, 1, '2022-03-17 15:36:10', '2022-03-17 18:36:10', '', 'Início', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2022-03-17 15:36:10', '2022-03-17 18:36:10', '', 0, 'http://localhost/projetos/wordpress/?p=12', 1, 'nav_menu_item', '', 0),
(13, 1, '2022-03-17 15:36:10', '2022-03-17 18:36:10', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2022-03-17 15:36:10', '2022-03-17 18:36:10', '', 0, 'http://localhost/projetos/wordpress/?p=13', 2, 'nav_menu_item', '', 0),
(14, 1, '2022-03-17 15:36:10', '2022-03-17 18:36:10', ' ', '', '', 'publish', 'closed', 'closed', '', '14', '', '', '2022-03-17 15:36:10', '2022-03-17 18:36:10', '', 0, 'http://localhost/projetos/wordpress/?p=14', 3, 'nav_menu_item', '', 0),
(15, 1, '2022-03-17 15:36:10', '2022-03-17 18:36:10', ' ', '', '', 'publish', 'closed', 'closed', '', '15', '', '', '2022-03-17 15:36:10', '2022-03-17 18:36:10', '', 0, 'http://localhost/projetos/wordpress/?p=15', 4, 'nav_menu_item', '', 0),
(16, 1, '2022-03-17 15:36:11', '2022-03-17 18:36:11', ' ', '', '', 'publish', 'closed', 'closed', '', '16', '', '', '2022-03-17 15:36:11', '2022-03-17 18:36:11', '', 0, 'http://localhost/projetos/wordpress/?p=16', 5, 'nav_menu_item', '', 0),
(17, 1, '2022-03-17 15:43:29', '2022-03-17 18:39:06', ' ', '', '', 'publish', 'closed', 'closed', '', '17', '', '', '2022-03-17 15:43:29', '2022-03-17 18:43:29', '', 0, 'http://localhost/projetos/wordpress/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2022-03-17 15:43:29', '2022-03-17 18:39:07', ' ', '', '', 'publish', 'closed', 'closed', '', '18', '', '', '2022-03-17 15:43:29', '2022-03-17 18:43:29', '', 0, 'http://localhost/projetos/wordpress/?p=18', 2, 'nav_menu_item', '', 0),
(19, 1, '2022-03-17 15:43:29', '2022-03-17 18:39:07', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2022-03-17 15:43:29', '2022-03-17 18:43:29', '', 0, 'http://localhost/projetos/wordpress/?p=19', 3, 'nav_menu_item', '', 0),
(20, 1, '2022-03-17 15:45:06', '2022-03-17 18:45:06', '<!-- wp:paragraph -->\n<p>Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi.A ordem dos tratores não altera o pão duris.Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio.Delegadis gente finis, bibendum egestas augue arcu ut est.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mais vale um bebadis conhecidiss, que um alcoolatra anonimis.Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.Casamentiss faiz malandris se pirulitá.Delegadis gente finis, bibendum egestas augue arcu ut est.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus.Quem manda na minha terra sou euzis!Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis.Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo!</p>\n<!-- /wp:paragraph -->', 'Contato', '', 'publish', 'closed', 'closed', '', 'contato', '', '', '2022-03-26 15:33:44', '2022-03-26 18:33:44', '', 0, 'http://localhost/projetos/wordpress/?page_id=20', 0, 'page', '', 0),
(21, 1, '2022-03-17 15:45:06', '2022-03-17 18:45:06', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2022-03-17 15:45:06', '2022-03-17 18:45:06', '', 0, 'http://localhost/projetos/wordpress/2022/03/17/21/', 4, 'nav_menu_item', '', 0),
(22, 1, '2022-03-17 15:45:06', '2022-03-17 18:45:06', '<!-- wp:paragraph -->\n<p>Contato</p>\n<!-- /wp:paragraph -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2022-03-17 15:45:06', '2022-03-17 18:45:06', '', 20, 'http://localhost/projetos/wordpress/?p=22', 0, 'revision', '', 0),
(23, 1, '2022-03-25 11:07:40', '2022-03-24 23:27:47', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2022-03-25 11:07:40', '2022-03-25 14:07:40', '', 0, 'http://localhost/projetos/wordpress/?p=23', 1, 'nav_menu_item', '', 0),
(24, 1, '2022-03-25 11:07:40', '2022-03-24 23:27:47', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2022-03-25 11:07:40', '2022-03-25 14:07:40', '', 0, 'http://localhost/projetos/wordpress/?p=24', 2, 'nav_menu_item', '', 0),
(25, 1, '2022-03-25 11:07:41', '2022-03-24 23:27:47', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2022-03-25 11:07:41', '2022-03-25 14:07:41', '', 0, 'http://localhost/projetos/wordpress/?p=25', 3, 'nav_menu_item', '', 0),
(26, 1, '2022-03-25 11:07:41', '2022-03-24 23:27:48', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2022-03-25 11:07:41', '2022-03-25 14:07:41', '', 0, 'http://localhost/projetos/wordpress/?p=26', 4, 'nav_menu_item', '', 0),
(27, 1, '2022-03-25 11:06:57', '2022-03-25 14:06:57', '<!-- wp:paragraph -->\n<p>teste</p>\n<!-- /wp:paragraph -->', 'Teste', '', 'publish', 'closed', 'closed', '', 'teste', '', '', '2022-03-25 11:06:57', '2022-03-25 14:06:57', '', 0, 'http://localhost/projetos/wordpress/?page_id=27', 0, 'page', '', 0),
(28, 1, '2022-03-25 11:06:43', '2022-03-25 14:06:43', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-curso', '', '', '2022-03-25 11:06:43', '2022-03-25 14:06:43', '', 0, 'http://localhost/projetos/wordpress/2022/03/25/wp-global-styles-curso/', 0, 'wp_global_styles', '', 0),
(29, 1, '2022-03-25 11:06:57', '2022-03-25 14:06:57', ' ', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2022-03-25 11:06:57', '2022-03-25 14:06:57', '', 0, 'http://localhost/projetos/wordpress/2022/03/25/29/', 5, 'nav_menu_item', '', 0),
(31, 1, '2022-03-25 11:06:57', '2022-03-25 14:06:57', '<!-- wp:paragraph -->\n<p>teste</p>\n<!-- /wp:paragraph -->', 'Teste', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2022-03-25 11:06:57', '2022-03-25 14:06:57', '', 27, 'http://localhost/projetos/wordpress/?p=31', 0, 'revision', '', 0),
(32, 1, '2022-03-25 16:23:08', '2022-03-25 19:23:08', '<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6YcgYLce14UAkKVryznAiDwS2RcrBUEjrmQ&amp;usqp=CAU\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Web Design - Portfólio 1', '', 'publish', 'open', 'open', '', 'web-design', '', '', '2022-03-29 20:54:15', '2022-03-29 23:54:15', '', 0, 'http://localhost/projetos/wordpress/?p=32', 0, 'post', '', 0),
(33, 1, '2022-03-25 16:23:08', '2022-03-25 19:23:08', '<!-- wp:paragraph -->\n<p>Mussum Ipsum, cacilds vidis litro abertis. Delegadis gente finis, bibendum egestas augue arcu ut est.Quem num gosta di mé, boa gentis num é.Si u mundo tá muito paradis? Toma um mé que o mundo vai girarzis!Sapien in monti palavris qui num significa nadis i pareci latim.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A ordem dos tratores não altera o pão duris.Si u mundo tá muito paradis? Toma um mé que o mundo vai girarzis!Sapien in monti palavris qui num significa nadis i pareci latim.Si num tem leite então bota uma pinga aí cumpadi!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Interagi no mé, cursus quis, vehicula ac nisi.Delegadis gente finis, bibendum egestas augue arcu ut est.Si u mundo tá muito paradis? Toma um mé que o mundo vai girarzis!Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Per aumento de cachacis, eu reclamis.Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis.Sapien in monti palavris qui num significa nadis i pareci latim.Cevadis im ampola pa arma uma pindureta.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tá deprimidis, eu conheço uma cachacis que pode alegrar sua vidis.Diuretics paradis num copo é motivis de denguis.Pra lá , depois divoltis porris, paradis.Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quem num gosta di mé, boa gentis num é.Mais vale um bebadis conhecidiss, que um alcoolatra anonimis.Quem num gosta di mim que vai caçá sua turmis!A ordem dos tratores não altera o pão duris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Si num tem leite então bota uma pinga aí cumpadi!Suco de cevadiss deixa as pessoas mais interessantis.Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis.In elementis mé pra quem é amistosis quis leo.</p>\n<!-- /wp:paragraph -->', 'Web Design', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2022-03-25 16:23:08', '2022-03-25 19:23:08', '', 32, 'http://localhost/projetos/wordpress/?p=33', 0, 'revision', '', 0),
(34, 1, '2022-03-25 16:24:14', '2022-03-25 19:24:14', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:embed {\"url\":\"https://www.youtube.com/watch?v=eeFN8HPVXVc\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=eeFN8HPVXVc\n</div></figure>\n<!-- /wp:embed -->', 'Mídias Sociais 1', '', 'publish', 'open', 'open', '', 'midias-sociais', '', '', '2022-03-29 19:29:22', '2022-03-29 22:29:22', '', 0, 'http://localhost/projetos/wordpress/?p=34', 0, 'post', '', 0),
(35, 1, '2022-03-25 16:24:14', '2022-03-25 19:24:14', '<!-- wp:paragraph -->\n<p>Mussum Ipsum, cacilds vidis litro abertis. Delegadis gente finis, bibendum egestas augue arcu ut est.Quem num gosta di mé, boa gentis num é.Si u mundo tá muito paradis? Toma um mé que o mundo vai girarzis!Sapien in monti palavris qui num significa nadis i pareci latim.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A ordem dos tratores não altera o pão duris.Si u mundo tá muito paradis? Toma um mé que o mundo vai girarzis!Sapien in monti palavris qui num significa nadis i pareci latim.Si num tem leite então bota uma pinga aí cumpadi!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Interagi no mé, cursus quis, vehicula ac nisi.Delegadis gente finis, bibendum egestas augue arcu ut est.Si u mundo tá muito paradis? Toma um mé que o mundo vai girarzis!Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Per aumento de cachacis, eu reclamis.Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis.Sapien in monti palavris qui num significa nadis i pareci latim.Cevadis im ampola pa arma uma pindureta.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tá deprimidis, eu conheço uma cachacis que pode alegrar sua vidis.Diuretics paradis num copo é motivis de denguis.Pra lá , depois divoltis porris, paradis.Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quem num gosta di mé, boa gentis num é.Mais vale um bebadis conhecidiss, que um alcoolatra anonimis.Quem num gosta di mim que vai caçá sua turmis!A ordem dos tratores não altera o pão duris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Si num tem leite então bota uma pinga aí cumpadi!Suco de cevadiss deixa as pessoas mais interessantis.Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis.In elementis mé pra quem é amistosis quis leo.</p>\n<!-- /wp:paragraph -->', 'Mídias Sociais', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2022-03-25 16:24:14', '2022-03-25 19:24:14', '', 34, 'http://localhost/projetos/wordpress/?p=35', 0, 'revision', '', 0),
(36, 1, '2022-03-25 16:25:17', '2022-03-25 19:25:17', '<!-- wp:paragraph -->\n<p>Mussum Ipsum, cacilds vidis litro abertis. Delegadis gente finis, bibendum egestas augue arcu ut est.Quem num gosta di mé, boa gentis num é.Si u mundo tá muito paradis? Toma um mé que o mundo vai girarzis!Sapien in monti palavris qui num significa nadis i pareci latim.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A ordem dos tratores não altera o pão duris.Si u mundo tá muito paradis? Toma um mé que o mundo vai girarzis!Sapien in monti palavris qui num significa nadis i pareci latim.Si num tem leite então bota uma pinga aí cumpadi!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Interagi no mé, cursus quis, vehicula ac nisi.Delegadis gente finis, bibendum egestas augue arcu ut est.Si u mundo tá muito paradis? Toma um mé que o mundo vai girarzis!Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Per aumento de cachacis, eu reclamis.Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis.Sapien in monti palavris qui num significa nadis i pareci latim.Cevadis im ampola pa arma uma pindureta.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tá deprimidis, eu conheço uma cachacis que pode alegrar sua vidis.Diuretics paradis num copo é motivis de denguis.Pra lá , depois divoltis porris, paradis.Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quem num gosta di mé, boa gentis num é.Mais vale um bebadis conhecidiss, que um alcoolatra anonimis.Quem num gosta di mim que vai caçá sua turmis!A ordem dos tratores não altera o pão duris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Si num tem leite então bota uma pinga aí cumpadi!Suco de cevadiss deixa as pessoas mais interessantis.Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis.In elementis mé pra quem é amistosis quis leo.</p>\n<!-- /wp:paragraph -->', 'Desenvolvimento Web', '', 'publish', 'open', 'open', '', 'desenvolvimento-web', '', '', '2022-03-27 18:04:45', '2022-03-27 21:04:45', '', 0, 'http://localhost/projetos/wordpress/?p=36', 0, 'post', '', 0),
(37, 1, '2022-03-25 16:25:17', '2022-03-25 19:25:17', '<!-- wp:paragraph -->\n<p>Mussum Ipsum, cacilds vidis litro abertis. Delegadis gente finis, bibendum egestas augue arcu ut est.Quem num gosta di mé, boa gentis num é.Si u mundo tá muito paradis? Toma um mé que o mundo vai girarzis!Sapien in monti palavris qui num significa nadis i pareci latim.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>A ordem dos tratores não altera o pão duris.Si u mundo tá muito paradis? Toma um mé que o mundo vai girarzis!Sapien in monti palavris qui num significa nadis i pareci latim.Si num tem leite então bota uma pinga aí cumpadi!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Interagi no mé, cursus quis, vehicula ac nisi.Delegadis gente finis, bibendum egestas augue arcu ut est.Si u mundo tá muito paradis? Toma um mé que o mundo vai girarzis!Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Per aumento de cachacis, eu reclamis.Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis.Sapien in monti palavris qui num significa nadis i pareci latim.Cevadis im ampola pa arma uma pindureta.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Tá deprimidis, eu conheço uma cachacis que pode alegrar sua vidis.Diuretics paradis num copo é motivis de denguis.Pra lá , depois divoltis porris, paradis.Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quem num gosta di mé, boa gentis num é.Mais vale um bebadis conhecidiss, que um alcoolatra anonimis.Quem num gosta di mim que vai caçá sua turmis!A ordem dos tratores não altera o pão duris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Si num tem leite então bota uma pinga aí cumpadi!Suco de cevadiss deixa as pessoas mais interessantis.Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis.In elementis mé pra quem é amistosis quis leo.</p>\n<!-- /wp:paragraph -->', 'Desenvolvimento Web', '', 'inherit', 'closed', 'closed', '', '36-revision-v1', '', '', '2022-03-25 16:25:17', '2022-03-25 19:25:17', '', 36, 'http://localhost/projetos/wordpress/?p=37', 0, 'revision', '', 0),
(38, 1, '2022-03-26 15:33:44', '2022-03-26 18:33:44', '<!-- wp:paragraph -->\n<p>Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi.A ordem dos tratores não altera o pão duris.Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio.Delegadis gente finis, bibendum egestas augue arcu ut est.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mais vale um bebadis conhecidiss, que um alcoolatra anonimis.Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.Casamentiss faiz malandris se pirulitá.Delegadis gente finis, bibendum egestas augue arcu ut est.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus.Quem manda na minha terra sou euzis!Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis.Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo!</p>\n<!-- /wp:paragraph -->', 'Contato', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2022-03-26 15:33:44', '2022-03-26 18:33:44', '', 20, 'http://localhost/projetos/wordpress/?p=38', 0, 'revision', '', 0),
(39, 1, '2022-03-26 15:34:09', '2022-03-26 18:34:09', '<!-- wp:paragraph -->\n<p>Mussum Ipsum, cacilds vidis litro abertis. Interagi no mé, cursus quis, vehicula ac nisi.A ordem dos tratores não altera o pão duris.Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio.Delegadis gente finis, bibendum egestas augue arcu ut est.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mais vale um bebadis conhecidiss, que um alcoolatra anonimis.Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.Casamentiss faiz malandris se pirulitá.Delegadis gente finis, bibendum egestas augue arcu ut est.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus.Quem manda na minha terra sou euzis!Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis.Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo!</p>\n<!-- /wp:paragraph -->', 'Sobre', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2022-03-26 15:34:09', '2022-03-26 18:34:09', '', 10, 'http://localhost/projetos/wordpress/?p=39', 0, 'revision', '', 0),
(40, 1, '2022-03-27 16:50:05', '2022-03-27 19:50:05', '', 'papel-de-parede-universo-0001-adesivo-de-parede-quartos-decorados', '', 'inherit', 'open', 'closed', '', 'papel-de-parede-universo-0001-adesivo-de-parede-quartos-decorados', '', '', '2022-03-27 16:50:05', '2022-03-27 19:50:05', '', 0, 'http://localhost/projetos/wordpress/wp-content/uploads/2022/03/papel-de-parede-universo-0001-adesivo-de-parede-quartos-decorados.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2022-03-27 16:57:39', '2022-03-27 19:57:39', '{\n    \"curso::header_image\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-03-27 19:57:29\"\n    },\n    \"curso::header_image_data\": {\n        \"value\": \"random-uploaded-image\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-03-27 19:57:29\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7cb3104e-27c2-4302-9ee2-59aad8bcc23f', '', '', '2022-03-27 16:57:39', '2022-03-27 19:57:39', '', 0, 'http://localhost/projetos/wordpress/?p=41', 0, 'customize_changeset', '', 0),
(42, 1, '2022-03-27 16:55:51', '2022-03-27 19:55:51', '', 'wolf-g6cc1cfb92_1920', '', 'inherit', 'open', 'closed', '', 'wolf-g6cc1cfb92_1920', '', '', '2022-03-27 16:55:51', '2022-03-27 19:55:51', '', 0, 'http://localhost/projetos/wordpress/wp-content/uploads/2022/03/wolf-g6cc1cfb92_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2022-03-27 16:55:53', '2022-03-27 19:55:53', '', 'ocean-g40b63d8ba_1920', '', 'inherit', 'open', 'closed', '', 'ocean-g40b63d8ba_1920', '', '', '2022-03-27 16:55:53', '2022-03-27 19:55:53', '', 0, 'http://localhost/projetos/wordpress/wp-content/uploads/2022/03/ocean-g40b63d8ba_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2022-03-27 16:55:56', '2022-03-27 19:55:56', '', 'milky-way-g1388f2bf8_1920', '', 'inherit', 'open', 'closed', '', 'milky-way-g1388f2bf8_1920', '', '', '2022-03-27 16:55:56', '2022-03-27 19:55:56', '', 0, 'http://localhost/projetos/wordpress/wp-content/uploads/2022/03/milky-way-g1388f2bf8_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2022-03-27 16:56:28', '2022-03-27 19:56:28', '', 'cropped-ocean-g40b63d8ba_1920.jpg', '', 'inherit', 'open', 'closed', '', 'cropped-ocean-g40b63d8ba_1920-jpg', '', '', '2022-03-27 16:56:28', '2022-03-27 19:56:28', '', 0, 'http://localhost/projetos/wordpress/wp-content/uploads/2022/03/cropped-ocean-g40b63d8ba_1920.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2022-03-29 19:29:22', '2022-03-29 22:29:22', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:embed {\"url\":\"https://www.youtube.com/watch?v=eeFN8HPVXVc\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=eeFN8HPVXVc\n</div></figure>\n<!-- /wp:embed -->', 'Mídias Sociais 1', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2022-03-29 19:29:22', '2022-03-29 22:29:22', '', 34, 'http://localhost/projetos/wordpress/?p=47', 0, 'revision', '', 0),
(48, 1, '2022-03-29 19:29:35', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-03-29 19:29:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/projetos/wordpress/?p=48', 0, 'post', '', 0),
(49, 1, '2022-03-29 19:34:12', '2022-03-29 22:34:12', '<!-- wp:embed {\"url\":\"https://www.youtube.com/watch?v=ijUDT7dNZ1Q\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=ijUDT7dNZ1Q\n</div></figure>\n<!-- /wp:embed -->', 'Mídias Sociais 2', '', 'publish', 'open', 'open', '', 'midias-sociais-2', '', '', '2022-03-29 19:34:12', '2022-03-29 22:34:12', '', 0, 'http://localhost/projetos/wordpress/?p=49', 0, 'post', '', 0),
(50, 1, '2022-03-29 19:34:12', '2022-03-29 22:34:12', '<!-- wp:embed {\"url\":\"https://www.youtube.com/watch?v=ijUDT7dNZ1Q\",\"type\":\"video\",\"providerNameSlug\":\"youtube\",\"responsive\":true,\"className\":\"wp-embed-aspect-16-9 wp-has-aspect-ratio\"} -->\n<figure class=\"wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">\nhttps://www.youtube.com/watch?v=ijUDT7dNZ1Q\n</div></figure>\n<!-- /wp:embed -->', 'Mídias Sociais 2', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2022-03-29 19:34:12', '2022-03-29 22:34:12', '', 49, 'http://localhost/projetos/wordpress/?p=50', 0, 'revision', '', 0),
(52, 1, '2022-03-29 20:54:15', '2022-03-29 23:54:15', '<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6YcgYLce14UAkKVryznAiDwS2RcrBUEjrmQ&amp;usqp=CAU\" alt=\"\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Web Design - Portfólio 1', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2022-03-29 20:54:15', '2022-03-29 23:54:15', '', 32, 'http://localhost/projetos/wordpress/?p=52', 0, 'revision', '', 0),
(53, 1, '2022-03-29 20:56:05', '2022-03-29 23:56:05', '<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://i.pinimg.com/550x/6a/1d/44/6a1d44842e94ef780fbcd8cf86b03b20.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->', 'Web Design - Portfólio 2', '', 'publish', 'open', 'open', '', 'web-design-portfolio-2', '', '', '2022-03-29 20:56:49', '2022-03-29 23:56:49', '', 0, 'http://localhost/projetos/wordpress/?p=53', 0, 'post', '', 0),
(54, 1, '2022-03-29 20:56:05', '2022-03-29 23:56:05', '<!-- wp:image {\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"https://i.pinimg.com/550x/6a/1d/44/6a1d44842e94ef780fbcd8cf86b03b20.jpg\" alt=\"\"/></figure>\n<!-- /wp:image -->', 'Web Design - Portfólio 2', '', 'inherit', 'closed', 'closed', '', '53-revision-v1', '', '', '2022-03-29 20:56:05', '2022-03-29 23:56:05', '', 53, 'http://localhost/projetos/wordpress/?p=54', 0, 'revision', '', 0),
(55, 1, '2022-03-29 21:06:40', '2022-03-30 00:06:40', '<!-- wp:paragraph -->\n<p>Mussum Ipsum, cacilds vidis litro abertis. Paisis, filhis, espiritis santis.Copo furadis é disculpa de bebadis, arcu quam euismod magna.Detraxit consequat et quo num tendi nada.Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Admodum accumsan disputationi eu sit. Vide electram sadipscing et per.Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio.Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo!A ordem dos tratores não altera o pão duris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mé faiz elementum girarzis, nisi eros vermeio.Paisis, filhis, espiritis santis.Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio.Mais vale um bebadis conhecidiss, que um alcoolatra anonimis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sapien in monti palavris qui num significa nadis i pareci latim.Quem num gosta di mé, boa gentis num é.Admodum accumsan disputationi eu sit. Vide electram sadipscing et per.Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum.Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus.Mé faiz elementum girarzis, nisi eros vermeio.Per aumento de cachacis, eu reclamis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl.Diuretics paradis num copo é motivis de denguis.Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis.Leite de capivaris, leite de mula manquis sem cabeça.</p>\n<!-- /wp:paragraph -->', 'Desenvolvimento Web 2', '', 'publish', 'open', 'open', '', 'desenvolvimento-web-2', '', '', '2022-03-29 21:06:40', '2022-03-30 00:06:40', '', 0, 'http://localhost/projetos/wordpress/?p=55', 0, 'post', '', 0),
(56, 1, '2022-03-29 21:06:40', '2022-03-30 00:06:40', '<!-- wp:paragraph -->\n<p>Mussum Ipsum, cacilds vidis litro abertis. Paisis, filhis, espiritis santis.Copo furadis é disculpa de bebadis, arcu quam euismod magna.Detraxit consequat et quo num tendi nada.Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Admodum accumsan disputationi eu sit. Vide electram sadipscing et per.Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio.Todo mundo vê os porris que eu tomo, mas ninguém vê os tombis que eu levo!A ordem dos tratores não altera o pão duris.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mé faiz elementum girarzis, nisi eros vermeio.Paisis, filhis, espiritis santis.Nullam volutpat risus nec leo commodo, ut interdum diam laoreet. Sed non consequat odio.Mais vale um bebadis conhecidiss, que um alcoolatra anonimis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Sapien in monti palavris qui num significa nadis i pareci latim.Quem num gosta di mé, boa gentis num é.Admodum accumsan disputationi eu sit. Vide electram sadipscing et per.Em pé sem cair, deitado sem dormir, sentado sem cochilar e fazendo pose.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vehicula non. Ut sed ex eros. Vivamus sit amet nibh non tellus tristique interdum.Praesent malesuada urna nisi, quis volutpat erat hendrerit non. Nam vulputate dapibus.Mé faiz elementum girarzis, nisi eros vermeio.Per aumento de cachacis, eu reclamis.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Mauris nec dolor in eros commodo tempor. Aenean aliquam molestie leo, vitae iaculis nisl.Diuretics paradis num copo é motivis de denguis.Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e fermentis.Leite de capivaris, leite de mula manquis sem cabeça.</p>\n<!-- /wp:paragraph -->', 'Desenvolvimento Web 2', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2022-03-29 21:06:40', '2022-03-30 00:06:40', '', 55, 'http://localhost/projetos/wordpress/?p=56', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'temaPontoCom', 'temapontocom', 0),
(3, 'Menu 1', 'menu-1', 0),
(4, 'Menu Principal', 'menu-principal', 0),
(5, 'Menu Topo', 'menu-topo', 0),
(6, 'curso', 'curso', 0),
(7, 'Adobe', 'adobe', 0),
(8, 'photoshop', 'photoshop', 0),
(9, 'facebook', 'facebook', 0),
(10, 'twitter', 'twitter', 0),
(11, 'algoritmo', 'algoritmo', 0),
(12, 'php', 'php', 0),
(13, 'Web Design', 'web-design', 0),
(14, 'Mídias Sociais', 'midias-sociais', 0),
(15, 'Desenvolvimento Web', 'desenvolvimento-web', 0),
(16, 'Web', 'web', 0),
(17, 'pothoshop', 'pothoshop', 0),
(18, 'youtube', 'youtube', 0),
(19, 'post-format-video', 'post-format-video', 0),
(20, 'post-format-image', 'post-format-image', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(6, 2, 0),
(12, 3, 0),
(13, 3, 0),
(14, 3, 0),
(15, 3, 0),
(16, 3, 0),
(17, 4, 0),
(18, 4, 0),
(19, 4, 0),
(21, 4, 0),
(23, 5, 0),
(24, 5, 0),
(25, 5, 0),
(26, 5, 0),
(28, 6, 0),
(29, 4, 0),
(32, 7, 0),
(32, 8, 0),
(32, 13, 0),
(32, 20, 0),
(34, 9, 0),
(34, 10, 0),
(34, 14, 0),
(34, 18, 0),
(34, 19, 0),
(36, 11, 0),
(36, 12, 0),
(36, 15, 0),
(49, 14, 0),
(49, 18, 0),
(49, 19, 0),
(53, 7, 0),
(53, 8, 0),
(53, 13, 0),
(53, 20, 0),
(55, 11, 0),
(55, 12, 0),
(55, 15, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_term_taxonomy`
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
-- Despejando dados para a tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 5),
(4, 4, 'nav_menu', '', 0, 5),
(5, 5, 'nav_menu', '', 0, 4),
(6, 6, 'wp_theme', '', 0, 1),
(7, 7, 'post_tag', '', 0, 2),
(8, 8, 'post_tag', '', 0, 2),
(9, 9, 'post_tag', '', 0, 1),
(10, 10, 'post_tag', '', 0, 1),
(11, 11, 'post_tag', '', 0, 2),
(12, 12, 'post_tag', '', 0, 2),
(13, 13, 'category', '', 0, 2),
(14, 14, 'category', '', 0, 2),
(15, 15, 'category', '', 0, 2),
(16, 16, 'category', '', 0, 0),
(17, 17, 'post_tag', '', 0, 0),
(18, 18, 'post_tag', '', 0, 2),
(19, 19, 'post_format', '', 0, 2),
(20, 20, 'post_format', '', 0, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'Davi'),
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
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"787fdd97c95ba51369b1fbbb3633931e8b37b8be24d509e321aab848db2f7d70\";a:4:{s:10:\"expiration\";i:1648753967;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:104:\"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.74 Safari/537.36\";s:5:\"login\";i:1648581167;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '5'),
(21, 1, 'wp_user-settings', 'libraryContent=browse'),
(22, 1, 'wp_user-settings-time', '1648414911');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wp_users`
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
-- Despejando dados para a tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'Davi', '$P$BHef9cRY5zpU3.kdDDN7a7M2kyZD4o.', 'davi', 'davimichaelsenm@gmail.com', 'http://localhost/projetos/wordpress', '2022-03-17 02:56:15', '', 0, 'Davi');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices de tabela `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices de tabela `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Índices de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices de tabela `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=686;

--
-- AUTO_INCREMENT de tabela `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT de tabela `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de tabela `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
