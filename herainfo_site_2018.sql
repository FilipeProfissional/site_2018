-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 09/06/2025 às 11:28
-- Versão do servidor: 10.11.13-MariaDB-log
-- Versão do PHP: 8.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `herainfo_site_2018`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `mr_commentmeta`
--

CREATE TABLE `mr_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mr_comments`
--

CREATE TABLE `mr_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `mr_comments`
--

INSERT INTO `mr_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2017-12-15 18:25:48', '2017-12-15 20:25:48', 'Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 1, 'online prescription tadalafil', '', 'https://ztadalafiluus.com', '132.255.133.41', '2023-12-30 11:30:58', '2023-12-30 14:30:58', '<strong>online prescription tadalafil</strong>\n\nonline prescription tadalafil', 0, '0', 'PHP/5.3.62', 'trackback', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mr_links`
--

CREATE TABLE `mr_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mr_options`
--

CREATE TABLE `mr_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `mr_options`
--

INSERT INTO `mr_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://www.herainformatica.com.br/site_2018', 'yes'),
(2, 'home', 'http://www.herainformatica.com.br', 'yes'),
(3, 'blogname', 'Hera', 'yes'),
(4, 'blogdescription', 'Sistemas de Informação', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'marcioellobo@yahoo.com.br', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:142:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:31:\"sobre/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"sobre/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"sobre/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"sobre/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"sobre/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"sobre/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"sobre/(.+?)/embed/?$\";s:38:\"index.php?sobre=$matches[1]&embed=true\";s:24:\"sobre/(.+?)/trackback/?$\";s:32:\"index.php?sobre=$matches[1]&tb=1\";s:32:\"sobre/(.+?)/page/?([0-9]{1,})/?$\";s:45:\"index.php?sobre=$matches[1]&paged=$matches[2]\";s:39:\"sobre/(.+?)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?sobre=$matches[1]&cpage=$matches[2]\";s:28:\"sobre/(.+?)(?:/([0-9]+))?/?$\";s:44:\"index.php?sobre=$matches[1]&page=$matches[2]\";s:34:\"solucoes/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"solucoes/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"solucoes/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"solucoes/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"solucoes/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"solucoes/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"solucoes/(.+?)/embed/?$\";s:41:\"index.php?solucoes=$matches[1]&embed=true\";s:27:\"solucoes/(.+?)/trackback/?$\";s:35:\"index.php?solucoes=$matches[1]&tb=1\";s:35:\"solucoes/(.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?solucoes=$matches[1]&paged=$matches[2]\";s:42:\"solucoes/(.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?solucoes=$matches[1]&cpage=$matches[2]\";s:31:\"solucoes/(.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?solucoes=$matches[1]&page=$matches[2]\";s:35:\"vantagens/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"vantagens/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"vantagens/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"vantagens/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"vantagens/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"vantagens/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"vantagens/(.+?)/embed/?$\";s:42:\"index.php?vantagens=$matches[1]&embed=true\";s:28:\"vantagens/(.+?)/trackback/?$\";s:36:\"index.php?vantagens=$matches[1]&tb=1\";s:36:\"vantagens/(.+?)/page/?([0-9]{1,})/?$\";s:49:\"index.php?vantagens=$matches[1]&paged=$matches[2]\";s:43:\"vantagens/(.+?)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?vantagens=$matches[1]&cpage=$matches[2]\";s:32:\"vantagens/(.+?)(?:/([0-9]+))?/?$\";s:48:\"index.php?vantagens=$matches[1]&page=$matches[2]\";s:38:\"onde_estamos/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"onde_estamos/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"onde_estamos/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"onde_estamos/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"onde_estamos/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"onde_estamos/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"onde_estamos/(.+?)/embed/?$\";s:45:\"index.php?onde_estamos=$matches[1]&embed=true\";s:31:\"onde_estamos/(.+?)/trackback/?$\";s:39:\"index.php?onde_estamos=$matches[1]&tb=1\";s:39:\"onde_estamos/(.+?)/page/?([0-9]{1,})/?$\";s:52:\"index.php?onde_estamos=$matches[1]&paged=$matches[2]\";s:46:\"onde_estamos/(.+?)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?onde_estamos=$matches[1]&cpage=$matches[2]\";s:35:\"onde_estamos/(.+?)(?:/([0-9]+))?/?$\";s:51:\"index.php?onde_estamos=$matches[1]&page=$matches[2]\";s:34:\"clientes/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"clientes/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"clientes/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"clientes/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"clientes/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"clientes/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"clientes/(.+?)/embed/?$\";s:41:\"index.php?clientes=$matches[1]&embed=true\";s:27:\"clientes/(.+?)/trackback/?$\";s:35:\"index.php?clientes=$matches[1]&tb=1\";s:35:\"clientes/(.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?clientes=$matches[1]&paged=$matches[2]\";s:42:\"clientes/(.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?clientes=$matches[1]&cpage=$matches[2]\";s:31:\"clientes/(.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?clientes=$matches[1]&page=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:51:\"codepress-admin-columns/codepress-admin-columns.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:37:\"post-types-order/post-types-order.php\";i:4;s:57:\"scalable-vector-graphics-svg/scalable-vector-graphics.php\";i:5;s:45:\"simple-page-ordering/simple-page-ordering.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'hera', 'yes'),
(41, 'stylesheet', 'hera', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
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
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'mr_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"manage_admin_columns\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(93, 'fresh_site', '1', 'yes'),
(94, 'WPLANG', 'pt_BR', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:18:\"orphaned_widgets_1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'cron', 'a:6:{i:1748679389;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1748679949;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1748701713;a:1:{s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1748723820;a:1:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1748729071;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(134, 'recently_activated', 'a:0:{}', 'yes'),
(138, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1513370224;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(139, 'current_theme', 'Hera', 'yes'),
(140, 'theme_mods_hera', 'a:2:{i:0;b:0;s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(141, 'theme_switched', '', 'yes'),
(153, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(155, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:25:\"marcioellobo@yahoo.com.br\";s:7:\"version\";s:6:\"5.1.19\";s:9:\"timestamp\";i:1719260947;}', 'no'),
(161, 'acf_version', '5.7.12', 'yes'),
(183, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(200, 'ac_version', '3.4.1', 'no'),
(203, 'cpac_options_solucoes__default', 'a:3:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:7:\"Título\";s:4:\"date\";s:4:\"Data\";}', 'yes'),
(204, 'cpac_options_solucoes', 'a:2:{s:5:\"title\";a:5:{s:4:\"type\";s:5:\"title\";s:5:\"label\";s:7:\"Título\";s:5:\"width\";s:0:\"\";s:10:\"width_unit\";s:1:\"%\";s:4:\"name\";s:5:\"title\";}s:4:\"date\";a:5:{s:4:\"type\";s:4:\"date\";s:5:\"label\";s:4:\"Data\";s:5:\"width\";s:0:\"\";s:10:\"width_unit\";s:1:\"%\";s:4:\"name\";s:4:\"date\";}}', 'yes'),
(205, 'cpac_options_vantagens__default', 'a:3:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:7:\"Título\";s:4:\"date\";s:4:\"Data\";}', 'yes'),
(217, 'cpac_options_parceiros__default', 'a:3:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:7:\"Título\";s:4:\"date\";s:4:\"Data\";}', 'yes'),
(218, 'cpac_options_quem_confia__default', 'a:3:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:7:\"Título\";s:4:\"date\";s:4:\"Data\";}', 'yes'),
(219, 'cpac_options_clientes__default', 'a:3:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:7:\"Título\";s:4:\"date\";s:4:\"Data\";}', 'yes'),
(220, 'cpto_options', 'a:7:{s:23:\"show_reorder_interfaces\";a:2:{s:4:\"post\";s:4:\"show\";s:10:\"attachment\";s:4:\"show\";}s:8:\"autosort\";i:1;s:9:\"adminsort\";i:1;s:18:\"use_query_ASC_DESC\";s:0:\"\";s:17:\"archive_drag_drop\";i:1;s:10:\"capability\";s:14:\"manage_options\";s:21:\"navigation_sort_apply\";i:1;}', 'yes'),
(221, 'CPT_configured', 'TRUE', 'yes'),
(222, 'cpac_options_onde_estamos__default', 'a:3:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:7:\"Título\";s:4:\"date\";s:4:\"Data\";}', 'yes'),
(224, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.1.1\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";d:1513774053;s:7:\"version\";s:5:\"4.9.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(304, 'cpac_options_sobre__default', 'a:3:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:7:\"Título\";s:4:\"date\";s:4:\"Data\";}', 'yes'),
(314, 'ac_capabilities_set', '1', 'no'),
(315, 'dismissed_update_core', 'a:1:{s:11:\"4.9.4|pt_BR\";b:1;}', 'no'),
(340, 'cpac_options_wp-users__default', 'a:6:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:8:\"username\";s:16:\"Nome de usuário\";s:4:\"name\";s:4:\"Nome\";s:5:\"email\";s:6:\"E-mail\";s:4:\"role\";s:8:\"Função\";s:5:\"posts\";s:5:\"Posts\";}', 'yes'),
(8340, 'wp_page_for_privacy_policy', '0', 'yes'),
(8341, 'show_comments_cookies_opt_in', '1', 'yes'),
(8342, 'db_upgraded', '', 'yes'),
(8346, 'can_compress_scripts', '0', 'no'),
(8354, 'cpac_options_post__default', 'a:7:{s:2:\"cb\";s:25:\"<input type=\"checkbox\" />\";s:5:\"title\";s:7:\"Título\";s:6:\"author\";s:5:\"Autor\";s:10:\"categories\";s:10:\"Categorias\";s:4:\"tags\";s:4:\"Tags\";s:8:\"comments\";s:119:\"<span class=\"vers comment-grey-bubble\" title=\"Comentários\"><span class=\"screen-reader-text\">Comentários</span></span>\";s:4:\"date\";s:4:\"Data\";}', 'no'),
(8355, 'category_children', 'a:0:{}', 'yes'),
(30893, '_site_transient_theme_roots', 'a:1:{s:4:\"hera\";s:7:\"/themes\";}', 'no'),
(47892, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1748636942;s:7:\"checked\";a:1:{s:4:\"hera\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(51805, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:64:\"http://downloads.wordpress.org/release/pt_BR/wordpress-6.8.1.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:64:\"http://downloads.wordpress.org/release/pt_BR/wordpress-6.8.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"6.8.1\";s:7:\"version\";s:5:\"6.8.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:58:\"http://downloads.wordpress.org/release/wordpress-6.8.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:58:\"http://downloads.wordpress.org/release/wordpress-6.8.1.zip\";s:10:\"no_content\";s:69:\"http://downloads.wordpress.org/release/wordpress-6.8.1-no-content.zip\";s:11:\"new_bundled\";s:70:\"http://downloads.wordpress.org/release/wordpress-6.8.1-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"6.8.1\";s:7:\"version\";s:5:\"6.8.1\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1748636942;s:15:\"version_checked\";s:6:\"5.1.19\";s:12:\"translations\";a:0:{}}', 'no'),
(60842, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1748636942;s:7:\"checked\";a:9:{s:45:\"acf-front-end-editor/acf-front-end-editor.php\";s:5:\"2.0.2\";s:51:\"codepress-admin-columns/codepress-admin-columns.php\";s:5:\"3.4.1\";s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.7.12\";s:33:\"classic-editor/classic-editor.php\";s:3:\"1.4\";s:27:\"coming-soon/coming-soon.php\";s:6:\"5.0.25\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.1.1\";s:37:\"post-types-order/post-types-order.php\";s:7:\"1.9.3.9\";s:57:\"scalable-vector-graphics-svg/scalable-vector-graphics.php\";s:3:\"3.4\";s:45:\"simple-page-ordering/simple-page-ordering.php\";s:5:\"2.3.2\";}s:8:\"response\";a:3:{s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":14:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.7\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/plugin/classic-editor.1.6.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:5:\"5.2.4\";s:16:\"requires_plugins\";a:0:{}s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"coming-soon/coming-soon.php\";O:8:\"stdClass\":14:{s:2:\"id\";s:25:\"w.org/plugins/coming-soon\";s:4:\"slug\";s:11:\"coming-soon\";s:6:\"plugin\";s:27:\"coming-soon/coming-soon.php\";s:11:\"new_version\";s:7:\"6.18.16\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/coming-soon/\";s:7:\"package\";s:61:\"http://downloads.wordpress.org/plugin/coming-soon.6.18.16.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/coming-soon/assets/icon-256x256.png?rev=2402574\";s:2:\"1x\";s:64:\"https://ps.w.org/coming-soon/assets/icon-128x128.png?rev=2402575\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/coming-soon/assets/banner-1544x500.png?rev=2683810\";s:2:\"1x\";s:66:\"https://ps.w.org/coming-soon/assets/banner-772x250.png?rev=2683809\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:5:\"6.8.1\";s:12:\"requires_php\";s:3:\"5.6\";s:16:\"requires_plugins\";a:0:{}s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:37:\"post-types-order/post-types-order.php\";O:8:\"stdClass\":14:{s:2:\"id\";s:30:\"w.org/plugins/post-types-order\";s:4:\"slug\";s:16:\"post-types-order\";s:6:\"plugin\";s:37:\"post-types-order/post-types-order.php\";s:11:\"new_version\";s:5:\"2.3.7\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/post-types-order/\";s:7:\"package\";s:64:\"http://downloads.wordpress.org/plugin/post-types-order.2.3.7.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/post-types-order/assets/icon-128x128.png?rev=1226428\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/post-types-order/assets/banner-1544x500.png?rev=3303640\";s:2:\"1x\";s:71:\"https://ps.w.org/post-types-order/assets/banner-772x250.png?rev=3303640\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"2.8\";s:6:\"tested\";s:5:\"6.8.2\";s:12:\"requires_php\";s:3:\"5.6\";s:16:\"requires_plugins\";a:0:{}s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:51:\"codepress-admin-columns/codepress-admin-columns.php\";O:8:\"stdClass\":14:{s:2:\"id\";s:37:\"w.org/plugins/codepress-admin-columns\";s:4:\"slug\";s:23:\"codepress-admin-columns\";s:6:\"plugin\";s:51:\"codepress-admin-columns/codepress-admin-columns.php\";s:11:\"new_version\";s:5:\"4.7.7\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/codepress-admin-columns/\";s:7:\"package\";s:71:\"http://downloads.wordpress.org/plugin/codepress-admin-columns.4.7.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:68:\"https://ps.w.org/codepress-admin-columns/assets/icon.svg?rev=1521754\";s:3:\"svg\";s:68:\"https://ps.w.org/codepress-admin-columns/assets/icon.svg?rev=1521754\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/codepress-admin-columns/assets/banner-1544x500.png?rev=1220017\";s:2:\"1x\";s:78:\"https://ps.w.org/codepress-admin-columns/assets/banner-772x250.png?rev=1220017\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:5:\"6.7.2\";s:12:\"requires_php\";s:3:\"7.2\";s:16:\"requires_plugins\";a:0:{}s:13:\"compatibility\";a:0:{}}s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":14:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.4.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:70:\"http://downloads.wordpress.org/plugin/advanced-custom-fields.6.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3207824\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3207824\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.8.1\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}s:13:\"compatibility\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":14:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"6.0.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:62:\"http://downloads.wordpress.org/plugin/contact-form-7.6.0.6.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";s:6:\"tested\";s:5:\"6.8.1\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}s:13:\"compatibility\";a:0:{}}s:45:\"simple-page-ordering/simple-page-ordering.php\";O:8:\"stdClass\":15:{s:2:\"id\";s:34:\"w.org/plugins/simple-page-ordering\";s:4:\"slug\";s:20:\"simple-page-ordering\";s:6:\"plugin\";s:45:\"simple-page-ordering/simple-page-ordering.php\";s:11:\"new_version\";s:5:\"2.7.4\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/simple-page-ordering/\";s:7:\"package\";s:68:\"http://downloads.wordpress.org/plugin/simple-page-ordering.2.7.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/simple-page-ordering/assets/icon-256x256.png?rev=2716033\";s:2:\"1x\";s:73:\"https://ps.w.org/simple-page-ordering/assets/icon-128x128.png?rev=2716033\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/simple-page-ordering/assets/banner-1544x500.png?rev=2716033\";s:2:\"1x\";s:75:\"https://ps.w.org/simple-page-ordering/assets/banner-772x250.png?rev=2716033\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";s:6:\"tested\";s:5:\"6.8.1\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}s:13:\"compatibility\";a:0:{}s:14:\"upgrade_notice\";s:84:\"<p>This release bumps the minimum required version of WordPress from 6.5 to 6.6.</p>\";}}}', 'no');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mr_postmeta`
--

CREATE TABLE `mr_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `mr_postmeta`
--

INSERT INTO `mr_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 4, '_edit_last', '1'),
(3, 4, '_edit_lock', '1513979313:1'),
(4, 5, '_edit_last', '1'),
(5, 5, 'field_5a34476fc2e18', 'a:14:{s:3:\"key\";s:19:\"field_5a34476fc2e18\";s:5:\"label\";s:9:\"Subtitulo\";s:4:\"name\";s:9:\"subtitulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(7, 5, 'position', 'acf_after_title'),
(8, 5, 'layout', 'no_box'),
(9, 5, 'hide_on_screen', ''),
(10, 5, '_edit_lock', '1513629368:1'),
(12, 4, 'subtitulo', 'Gestão Integrada da engenharia do gás'),
(13, 4, '_subtitulo', 'field_5a34476fc2e18'),
(14, 6, '_edit_last', '1'),
(15, 6, '_edit_lock', '1519751751:1'),
(16, 7, '_edit_last', '1'),
(17, 7, 'field_5a37d76153960', 'a:14:{s:3:\"key\";s:19:\"field_5a37d76153960\";s:5:\"label\";s:10:\"Subtítulo\";s:4:\"name\";s:9:\"subtitulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(18, 7, 'field_5a37d74d5395f', 'a:13:{s:3:\"key\";s:19:\"field_5a37d74d5395f\";s:5:\"label\";s:18:\"Texto complementar\";s:4:\"name\";s:18:\"texto_complementar\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(19, 7, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"sobre\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(20, 7, 'position', 'normal'),
(21, 7, 'layout', 'no_box'),
(22, 7, 'hide_on_screen', ''),
(23, 7, '_edit_lock', '1513620554:1'),
(24, 6, 'subtitulo', 'Nossa Missão'),
(25, 6, '_subtitulo', 'field_5a37d76153960'),
(26, 6, 'texto_complementar', 'Prestar serviços de forma ética e com qualidade crescente aos processos e sistemas de informação de nossos clientes e parceiros, permitindo o funcionamento contínuo e eficiente das suas rotinas Administrativas e Operacionais. '),
(27, 6, '_texto_complementar', 'field_5a37d74d5395f'),
(28, 8, '_edit_last', '1'),
(29, 8, '_edit_lock', '1519653962:1'),
(30, 8, 'subtitulo', 'Desenvolvimento de soluções e infraestrutura em nuvem'),
(31, 8, '_subtitulo', 'field_5a34476fc2e18'),
(32, 9, '_edit_last', '1'),
(33, 9, '_edit_lock', '1519654232:1'),
(34, 9, 'subtitulo', 'Sistema Integrado de Administração Comercial'),
(35, 9, '_subtitulo', 'field_5a34476fc2e18'),
(36, 11, '_edit_last', '1'),
(37, 11, '_edit_lock', '1519752533:1'),
(38, 11, 'subtitulo', 'Sistema de Controle de Ativos Imobiliários'),
(39, 11, '_subtitulo', 'field_5a34476fc2e18'),
(40, 12, '_edit_last', '1'),
(41, 12, 'field_5a381a61e5ba6', 'a:11:{s:3:\"key\";s:19:\"field_5a381a61e5ba6\";s:5:\"label\";s:6:\"Ícone\";s:4:\"name\";s:5:\"icone\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(44, 12, 'position', 'acf_after_title'),
(45, 12, 'layout', 'no_box'),
(46, 12, 'hide_on_screen', ''),
(47, 12, '_edit_lock', '1513632273:1'),
(55, 11, 'icone', '18'),
(56, 11, '_icone', 'field_5a381a61e5ba6'),
(61, 5, 'field_5a382571ae14c', 'a:13:{s:3:\"key\";s:19:\"field_5a382571ae14c\";s:5:\"label\";s:6:\"Resumo\";s:4:\"name\";s:6:\"resumo\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(62, 5, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"solucoes\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(63, 11, 'resumo', 'Ideal para empresas que possuem um parque de ativos que estejam diretamente relacionados com o exercício de suas atividades fins (terrenos, prédios…'),
(64, 11, '_resumo', 'field_5a382571ae14c'),
(67, 12, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"solucoes\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(68, 12, 'rule', 'a:5:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:1:\"4\";s:8:\"order_no\";i:1;s:8:\"group_no\";i:0;}'),
(69, 9, 'resumo', 'Módulo central, inicialmente criado para atender a necessidades do controle financeiro, mas que ao longo de sua atuação teve a inclusão de...'),
(70, 9, '_resumo', 'field_5a382571ae14c'),
(71, 9, 'icone', '17'),
(72, 9, '_icone', 'field_5a381a61e5ba6'),
(75, 8, 'resumo', 'Desenvolvimento de soluções em software para empresas que se enquadram no nosso perfil de negócio, assim como fornecemos infraestrutura em nuvem…'),
(76, 8, '_resumo', 'field_5a382571ae14c'),
(77, 8, 'icone', '19'),
(78, 8, '_icone', 'field_5a381a61e5ba6'),
(80, 17, '_wp_attached_file', '2017/12/icon_siacom.svg'),
(81, 18, '_wp_attached_file', '2017/12/icon_scai.svg'),
(82, 19, '_wp_attached_file', '2017/12/icon_software_nuvem.svg'),
(83, 20, '_edit_last', '1'),
(84, 20, '_edit_lock', '1513707606:1'),
(85, 21, '_edit_last', '1'),
(86, 21, 'field_5a3832ae27d9a', 'a:11:{s:3:\"key\";s:19:\"field_5a3832ae27d9a\";s:5:\"label\";s:8:\"Ícone 1\";s:4:\"name\";s:7:\"icone_1\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(87, 21, 'field_5a3832d027d9b', 'a:14:{s:3:\"key\";s:19:\"field_5a3832d027d9b\";s:5:\"label\";s:21:\"Título da vantagem 1\";s:4:\"name\";s:20:\"titulo_da_vantagem_1\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(88, 21, 'field_5a3832fd27d9c', 'a:13:{s:3:\"key\";s:19:\"field_5a3832fd27d9c\";s:5:\"label\";s:19:\"Texto da vantagem 1\";s:4:\"name\";s:19:\"texto_da_vantagem_1\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:3;}'),
(90, 21, 'position', 'acf_after_title'),
(91, 21, 'layout', 'no_box'),
(92, 21, 'hide_on_screen', 'a:2:{i:0;s:11:\"the_content\";i:1;s:14:\"featured_image\";}'),
(93, 21, '_edit_lock', '1513707631:1'),
(96, 21, 'field_5a3833b0ece32', 'a:11:{s:3:\"key\";s:19:\"field_5a3833b0ece32\";s:5:\"label\";s:8:\"Ícone 2\";s:4:\"name\";s:7:\"icone_2\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:4;}'),
(97, 21, 'field_5a3833bcece33', 'a:14:{s:3:\"key\";s:19:\"field_5a3833bcece33\";s:5:\"label\";s:21:\"Título da vantagem 2\";s:4:\"name\";s:20:\"titulo_da_vantagem_2\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:5;}'),
(98, 21, 'field_5a3833c4ece34', 'a:13:{s:3:\"key\";s:19:\"field_5a3833c4ece34\";s:5:\"label\";s:19:\"Texto da vantagem 2\";s:4:\"name\";s:19:\"texto_da_vantagem_2\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:6;}'),
(104, 21, 'field_5a3834935e9d2', 'a:14:{s:3:\"key\";s:19:\"field_5a3834935e9d2\";s:5:\"label\";s:21:\"Título da vantagem 3\";s:4:\"name\";s:20:\"titulo_da_vantagem_3\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:8;}'),
(105, 21, 'field_5a3834885e9d1', 'a:13:{s:3:\"key\";s:19:\"field_5a3834885e9d1\";s:5:\"label\";s:19:\"Texto da vantagem 3\";s:4:\"name\";s:19:\"texto_da_vantagem_3\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:9;}'),
(109, 22, '_wp_attached_file', '2017/12/icon_controle.svg'),
(110, 23, '_wp_attached_file', '2017/12/icon_registro.svg'),
(111, 24, '_wp_attached_file', '2017/12/icon_visualizacao.svg'),
(112, 20, 'icone_1', '23'),
(113, 20, '_icone_1', 'field_5a3832ae27d9a'),
(114, 20, 'titulo_da_vantagem_1', 'Registro'),
(115, 20, '_titulo_da_vantagem_1', 'field_5a3832d027d9b'),
(116, 20, 'texto_da_vantagem_1', 'Registro fotográfico das certidões, contratos, taxas, etc.'),
(117, 20, '_texto_da_vantagem_1', 'field_5a3832fd27d9c'),
(118, 20, 'icone_2', '22'),
(119, 20, '_icone_2', 'field_5a3833b0ece32'),
(120, 20, 'titulo_da_vantagem_2', 'Controle'),
(121, 20, '_titulo_da_vantagem_2', 'field_5a3833bcece33'),
(122, 20, 'texto_da_vantagem_2', 'Controle de datas e de pagamento das obrigações documentais.'),
(123, 20, '_texto_da_vantagem_2', 'field_5a3833c4ece34'),
(124, 20, 'ícone_3', '24'),
(125, 20, '_ícone_3', 'field_5a3952436bbef'),
(126, 20, 'titulo_da_vantagem_3', 'Visualização'),
(127, 20, '_titulo_da_vantagem_3', 'field_5a3834935e9d2'),
(128, 20, 'texto_da_vantagem_3', 'Visualização da Árvore hierárquica dos ativos.'),
(129, 20, '_texto_da_vantagem_3', 'field_5a3834885e9d1'),
(130, 21, 'field_5a390f8b7d49e', 'a:14:{s:3:\"key\";s:19:\"field_5a390f8b7d49e\";s:5:\"label\";s:10:\"Subtítulo\";s:4:\"name\";s:9:\"subtitulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(135, 20, 'subtitulo', 'Sistema de controle de Ativos Imobiliários'),
(136, 20, '_subtitulo', 'field_5a390f8b7d49e'),
(139, 21, 'field_5a3952436bbef', 'a:11:{s:3:\"key\";s:19:\"field_5a3952436bbef\";s:5:\"label\";s:8:\"Ícone 3\";s:4:\"name\";s:7:\"icone-3\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:7;}'),
(145, 20, 'icone-3', '24'),
(146, 20, '_icone-3', 'field_5a3952436bbef'),
(147, 21, 'rule', 'a:5:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"20\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(148, 25, '_edit_last', '1'),
(149, 25, '_edit_lock', '1513708152:1'),
(150, 26, '_edit_last', '1'),
(151, 26, 'field_5a3959198d57a', 'a:14:{s:3:\"key\";s:19:\"field_5a3959198d57a\";s:5:\"label\";s:10:\"Subtítulo\";s:4:\"name\";s:9:\"subtitulo\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(153, 26, 'position', 'acf_after_title'),
(154, 26, 'layout', 'no_box'),
(155, 26, 'hide_on_screen', 'a:1:{i:0;s:14:\"featured_image\";}'),
(156, 26, '_edit_lock', '1513773593:1'),
(158, 26, 'rule', 'a:5:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"25\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(159, 25, 'subtitulo', 'Sistema Integrado de Administração Comercial'),
(160, 25, '_subtitulo', 'field_5a3959198d57a'),
(161, 30, '_edit_last', '1'),
(164, 30, 'position', 'normal'),
(165, 30, 'layout', 'no_box'),
(166, 30, 'hide_on_screen', 'a:1:{i:0;s:14:\"featured_image\";}'),
(167, 30, '_edit_lock', '1513778703:1'),
(168, 31, '_edit_last', '2'),
(169, 31, '_edit_lock', '1557147716:2'),
(181, 37, '_wp_attached_file', '2017/12/logo_gasindur.png'),
(182, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:273;s:6:\"height\";i:73;s:4:\"file\";s:25:\"2017/12/logo_gasindur.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"logo_gasindur-150x73.png\";s:5:\"width\";i:150;s:6:\"height\";i:73;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"logo_cliente\";a:4:{s:4:\"file\";s:24:\"logo_gasindur-150x62.png\";s:5:\"width\";i:150;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(183, 38, '_wp_attached_file', '2017/12/logo_ic_supply.png'),
(184, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:272;s:6:\"height\";i:113;s:4:\"file\";s:26:\"2017/12/logo_ic_supply.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"logo_ic_supply-150x113.png\";s:5:\"width\";i:150;s:6:\"height\";i:113;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"logo_cliente\";a:4:{s:4:\"file\";s:25:\"logo_ic_supply-150x62.png\";s:5:\"width\";i:150;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 39, '_wp_attached_file', '2017/12/logo_uerj.png'),
(186, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:277;s:6:\"height\";i:146;s:4:\"file\";s:21:\"2017/12/logo_uerj.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"logo_uerj-150x146.png\";s:5:\"width\";i:150;s:6:\"height\";i:146;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"logo_cliente\";a:4:{s:4:\"file\";s:20:\"logo_uerj-150x62.png\";s:5:\"width\";i:150;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(187, 30, 'field_5a3a5f8abcf57', 'a:11:{s:3:\"key\";s:19:\"field_5a3a5f8abcf57\";s:5:\"label\";s:8:\"Logotipo\";s:4:\"name\";s:8:\"logotipo\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"1\";s:11:\"save_format\";s:3:\"url\";s:12:\"preview_size\";s:12:\"logo_cliente\";s:7:\"library\";s:3:\"all\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(190, 31, 'logotipo', '58'),
(191, 31, '_logotipo', 'field_5a3a5f8abcf57'),
(192, 42, '_edit_last', '1'),
(193, 42, '_edit_lock', '1513776468:1'),
(194, 42, 'logotipo', '38'),
(195, 42, '_logotipo', 'field_5a3a5f8abcf57'),
(196, 30, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"clientes\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(197, 43, '_edit_last', '1'),
(198, 43, '_edit_lock', '1513776539:1'),
(199, 43, 'logotipo', '39'),
(200, 43, '_logotipo', 'field_5a3a5f8abcf57'),
(201, 44, '_edit_last', '1'),
(202, 44, '_edit_lock', '1513776769:1'),
(203, 44, 'logotipo', '37'),
(204, 44, '_logotipo', 'field_5a3a5f8abcf57'),
(205, 45, '_edit_last', '1'),
(206, 45, '_edit_lock', '1513777411:1'),
(207, 46, '_wp_attached_file', '2017/12/boslan.png'),
(208, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:272;s:6:\"height\";i:87;s:4:\"file\";s:18:\"2017/12/boslan.png\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"boslan-150x87.png\";s:5:\"width\";i:150;s:6:\"height\";i:87;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"logo_cliente\";a:4:{s:4:\"file\";s:17:\"boslan-150x62.png\";s:5:\"width\";i:150;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 45, 'logotipo', '46'),
(210, 45, '_logotipo', 'field_5a3a5f8abcf57'),
(211, 48, '_edit_last', '1'),
(212, 48, 'field_5a3a6eaa87ab4', 'a:14:{s:3:\"key\";s:19:\"field_5a3a6eaa87ab4\";s:5:\"label\";s:8:\"Telefone\";s:4:\"name\";s:8:\"telefone\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:2:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:0;}'),
(213, 48, 'field_5a3a6ece87ab5', 'a:12:{s:3:\"key\";s:19:\"field_5a3a6ece87ab5\";s:5:\"label\";s:5:\"Email\";s:4:\"name\";s:5:\"email\";s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:1;}'),
(214, 48, 'field_5a3a6ee387ab6', 'a:13:{s:3:\"key\";s:19:\"field_5a3a6ee387ab6\";s:5:\"label\";s:9:\"Endereço\";s:4:\"name\";s:8:\"endereco\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";s:1:\"0\";s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:10:\"formatting\";s:2:\"br\";s:17:\"conditional_logic\";a:3:{s:6:\"status\";s:1:\"0\";s:5:\"rules\";a:1:{i:0;a:3:{s:5:\"field\";s:4:\"null\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:0:\"\";}}s:8:\"allorany\";s:3:\"all\";}s:8:\"order_no\";i:2;}'),
(216, 48, 'position', 'normal'),
(217, 48, 'layout', 'no_box'),
(218, 48, 'hide_on_screen', 'a:2:{i:0;s:11:\"the_content\";i:1;s:14:\"featured_image\";}'),
(219, 48, '_edit_lock', '1513787109:1'),
(220, 49, '_edit_last', '1'),
(221, 49, '_edit_lock', '1521115862:2'),
(222, 49, 'telefone', '21 3689.4454'),
(223, 49, '_telefone', 'field_5a3a6eaa87ab4'),
(224, 49, 'email', 'contato@herainformatica.com.br'),
(225, 49, '_email', 'field_5a3a6ece87ab5'),
(226, 49, 'endereco', 'Av.Pastor Martin Luther King Junior, 126, Torre 2000 - sl 416\r\nShopping Nova América - Del Castilho Rio de Janeiro - RJ'),
(227, 49, '_endereco', 'field_5a3a6ee387ab6'),
(228, 48, 'rule', 'a:5:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"onde_estamos\";s:8:\"order_no\";i:0;s:8:\"group_no\";i:0;}'),
(235, 4, 'resumo', 'Sistema integrado e aderente às características e necessidades gerenciais e operacionais do setor de gás'),
(236, 4, '_resumo', 'field_5a382571ae14c'),
(237, 55, '_form', '[text* your-name placeholder \'Nome(*)\']\n[email* your-email placeholder \'Email(*)\']\n[textarea your-message placeholder \'Mensagem\'] \n[submit \"Enviar\"]'),
(238, 55, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:24:\"Mensagem do site da Hera\";s:6:\"sender\";s:45:\"[your-name] <no-reply@herainformatica.com.br>\";s:9:\"recipient\";s:30:\"contato@herainformatica.com.br\";s:4:\"body\";s:155:\"Nome: [your-name]\nE-mail: [your-email]\n\n[your-message]\n-- \nEste e-mail foi enviado de um formulário de contato em Hera (http://www.herainformatica.com.br)\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(239, 55, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:0:\"\";s:6:\"sender\";s:0:\"\";s:9:\"recipient\";s:0:\"\";s:4:\"body\";s:0:\"\";s:18:\"additional_headers\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(240, 55, '_messages', 'a:23:{s:12:\"mail_sent_ok\";s:59:\"Agradecemos a sua mensagem. Entraremos em contato em breve.\";s:12:\"mail_sent_ng\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:16:\"validation_error\";s:0:\"\";s:4:\"spam\";s:74:\"Ocorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\";s:12:\"accept_terms\";s:72:\"Você deve aceitar os termos e condições antes de enviar sua mensagem.\";s:16:\"invalid_required\";s:24:\"O campo é obrigatório.\";s:16:\"invalid_too_long\";s:23:\"O campo é muito longo.\";s:17:\"invalid_too_short\";s:23:\"O campo é muito curto.\";s:12:\"invalid_date\";s:34:\"O formato de data está incorreto.\";s:14:\"date_too_early\";s:44:\"A data é anterior à mais antiga permitida.\";s:13:\"date_too_late\";s:44:\"A data é posterior à maior data permitida.\";s:13:\"upload_failed\";s:49:\"Ocorreu um erro desconhecido ao enviar o arquivo.\";s:24:\"upload_file_type_invalid\";s:59:\"Você não tem permissão para enviar esse tipo de arquivo.\";s:21:\"upload_file_too_large\";s:26:\"O arquivo é muito grande.\";s:23:\"upload_failed_php_error\";s:36:\"Ocorreu um erro ao enviar o arquivo.\";s:14:\"invalid_number\";s:34:\"O formato de número é inválido.\";s:16:\"number_too_small\";s:46:\"O número é menor do que o mínimo permitido.\";s:16:\"number_too_large\";s:46:\"O número é maior do que o máximo permitido.\";s:23:\"quiz_answer_not_correct\";s:39:\"A resposta para o quiz está incorreta.\";s:17:\"captcha_not_match\";s:35:\"O código digitado está incorreto.\";s:13:\"invalid_email\";s:45:\"O endereço de e-mail informado é inválido.\";s:11:\"invalid_url\";s:19:\"A URL é inválida.\";s:11:\"invalid_tel\";s:35:\"O número de telefone é inválido.\";}'),
(241, 55, '_additional_settings', ''),
(242, 55, '_locale', 'pt_BR'),
(243, 58, '_wp_attached_file', '2017/12/Naturgy_RGB_Principal_Positiva.png'),
(244, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1191;s:6:\"height\";i:842;s:4:\"file\";s:42:\"2017/12/Naturgy_RGB_Principal_Positiva.png\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:42:\"Naturgy_RGB_Principal_Positiva-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:42:\"Naturgy_RGB_Principal_Positiva-300x212.png\";s:5:\"width\";i:300;s:6:\"height\";i:212;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"Naturgy_RGB_Principal_Positiva-768x543.png\";s:5:\"width\";i:768;s:6:\"height\";i:543;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:43:\"Naturgy_RGB_Principal_Positiva-1024x724.png\";s:5:\"width\";i:1024;s:6:\"height\";i:724;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"logo_cliente\";a:4:{s:4:\"file\";s:41:\"Naturgy_RGB_Principal_Positiva-150x62.png\";s:5:\"width\";i:150;s:6:\"height\";i:62;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mr_posts`
--

CREATE TABLE `mr_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `mr_posts`
--

INSERT INTO `mr_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-12-15 18:25:48', '2017-12-15 20:25:48', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2017-12-15 18:25:48', '2017-12-15 20:25:48', '', 0, 'http://www.herainformatica.com.br/?p=1', 0, 'post', '', 1),
(2, 1, '2017-12-15 18:25:48', '2017-12-15 20:25:48', 'Este é o exemplo de uma página. É diferente de um post de blog porque é estática e pode aparecer em menus de navegação (na maioria dos temas). A maioria das pessoas começam com uma página \'Sobre\' que as apresenta aos potenciais visitantes do site. Você pode usar algo como:\n\n<blockquote>Oi! Sou um estudante de Biologia e gosto de esportes e natureza. Nos fins-de-semana pratico futebol com meus amigos no clube local. Eu moro em Valinhos e fiz este site para falar sobre minha cidade.</blockquote>\n\n...ou algo como:\n\n<blockquote>A empresa Logos foi fundada em 1980, e tem provido o comércio local com o que há de melhor em informatização. Localizada em Recife, nossa empresa tem se destacado como um das que também contribuem para o descarte correto de equipamentos eletrônicos substituídos.</blockquote>\n\nComo um novo usuário WordPress, vá ao seu <a href=\"http://www.herainformatica.com.br/wp-admin/\">Painel</a> para excluir este conteúdo e criar o seu. Divirta-se!', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2017-12-15 18:25:48', '2017-12-15 20:25:48', '', 0, 'http://www.herainformatica.com.br/?page_id=2', 0, 'page', '', 0),
(4, 1, '2017-12-15 20:07:06', '2017-12-15 22:07:06', 'É o resultado de anos de prestação de serviços para a Engenharia do Gás, manifestado sob a forma de um sistema integrado e aderente às características e necessidades gerenciais e operacionais, com destaque para as áreas de Medição e Regulagem:\r\n<ul>\r\n 	<li>Permite o inventário dos Ativos;</li>\r\n 	<li>Define periodicidades da manutenção;</li>\r\n 	<li>Controle e Gestão de Ordens de Serviço;</li>\r\n 	<li>Avaliação e conformidade;</li>\r\n 	<li>Apoio à análise de falhas e tomada de decisão;</li>\r\n 	<li>Controle e Rastreabilidade de equipamentos de medição;</li>\r\n 	<li>Controle de ações do Laboratório de calibração dos equipamentos, Oficina e Pintura;</li>\r\n 	<li>Previsão de recursos para planejamento orçamentário para os anos subsequentes;</li>\r\n 	<li>Controle de faturamento das atividades de manutenção (prestadores de serviço);</li>\r\n 	<li>Execução e registro de todos os detalhes técnicos em campo.</li>\r\n</ul>\r\n<h3>Diferenciais</h3>\r\n<ul>\r\n 	<li>Sistema hospedado na Nuvem;</li>\r\n 	<li>Tecnologia Web;</li>\r\n 	<li>Banco de Dados Sql Server ou Oracle;</li>\r\n 	<li>Mobilidade;</li>\r\n 	<li>Registro fotográfico das ações em campo.</li>\r\n</ul>\r\n<p class=\"p1\"><span class=\"s1\">O módulo de Solicitação de Serviço permite que todos os setores da empresa solicitem serviços e recebam feedback evolutivo da execução.</span></p>', 'Sigem Corpore', '', 'publish', 'closed', 'closed', '', 'sigem-corpore', '', '', '2017-12-22 19:22:00', '2017-12-22 21:22:00', '', 0, 'http://www.herainformatica.com.br/?post_type=solucoes&#038;p=4', 0, 'solucoes', '', 0),
(5, 1, '2017-12-15 20:07:01', '2017-12-15 22:07:01', '', 'Campos das soluções', '', 'publish', 'closed', 'closed', '', 'acf_campos-das-solucoes', '', '', '2017-12-18 18:30:52', '2017-12-18 20:30:52', '', 0, 'http://www.herainformatica.com.br/?post_type=acf&#038;p=5', 0, 'acf', '', 0),
(6, 1, '2017-12-18 12:33:20', '2017-12-18 14:33:20', 'Dispomos de cases de sucesso, com uma carteira de clientes e parceiros constituída com base em muita dedicação e conduta ética, com destaque para os negócios da: Engenharia de Gás e da Construção Civil, Manutenção de Complexos Industriais, Gestão Administrativa e Financeira em empresas de serviço, onde atuamos intensamente desde 1997.\r\n\r\nPrestamos serviços de consultoria em Sistemas de Informação, fornecendo soluções em Softwares de Gestão Operacional nestes seguimentos onde reside nossa maior expertise. Quando necessário, desenvolvemos novas soluções, geralmente em acompanhamento a ações de melhoria e reorganização de processos que estejam sendo realizadas pelo cliente.\r\n\r\nVisando o atendimento de uma carência presente em alguns de nossos clientes e parceiros e como forma de agregar qualidade aos nossos serviços, fornecemos infraestrutura em Nuvem para os parceiros que optam por hospedar os seus sistemas em nossos servidores.', 'Sobre Nós', '', 'publish', 'closed', 'closed', '', 'sobre-nos', '', '', '2018-02-26 11:13:50', '2018-02-26 14:13:50', '', 0, 'http://www.herainformatica.com.br/?post_type=sobre&#038;p=6', 0, 'sobre', '', 0),
(7, 1, '2017-12-18 12:57:57', '2017-12-18 14:57:57', '', 'Texto de Sobre', '', 'publish', 'closed', 'closed', '', 'acf_texto-de-sobre', '', '', '2017-12-18 12:57:57', '2017-12-18 14:57:57', '', 0, 'http://www.herainformatica.com.br/?post_type=acf&#038;p=7', 0, 'acf', '', 0),
(8, 1, '2017-12-18 16:03:58', '2017-12-18 18:03:58', 'Nossos servidores AWS AMAZON fornecem o desempenho e segurança necessárias para operação dos sistemas dos clientes e parceiros que nos confiam as suas bases de dados e que ficam desobrigados de arcarem com os custos e situações que envolvem a manutenção de servidores, redes de computadores, licenças de softwares etc.\r\n\r\nComo isto, nossos clientes podem se concentrar no que mais dominam (seus respectivos negócios) e nós cuidamos para que tudo continue funcionando 24 horas por dia.', 'Software em nuvem', '', 'publish', 'closed', 'closed', '', 'software-em-nuvem', '', '', '2018-02-26 11:08:09', '2018-02-26 14:08:09', '', 0, 'http://www.herainformatica.com.br/?post_type=solucoes&#038;p=8', 0, 'solucoes', '', 0),
(9, 1, '2017-12-18 16:05:29', '2017-12-18 18:05:29', 'A nossa atuação na implantação de soluções para empresas prestadoras de serviço nos permitiu desenvolver o SIACOM, que consiste em um módulo central, inicialmente criado para atender a necessidades do Controle financeiro, mas que ao longo de sua atuação teve a inclusão de módulos integrados e que caminharam para a concepção de um produto aderente às principais atividades de uma empresa de serviço:\r\n<ul>\r\n 	<li>Controle da medição e certificação;</li>\r\n 	<li>Pedido de compras;</li>\r\n 	<li>Fluxo financeiro de contratos;</li>\r\n 	<li>Ferramentas de apoio à gestão da qualidade.</li>\r\n</ul>', 'SIACOM', '', 'publish', 'closed', 'closed', '', 'siacom', '', '', '2018-02-26 11:08:39', '2018-02-26 14:08:39', '', 0, 'http://www.herainformatica.com.br/?post_type=solucoes&#038;p=9', 0, 'solucoes', '', 0),
(11, 1, '2017-12-18 16:05:54', '2017-12-18 18:05:54', 'Ideal para empresas que possuem um parque de ativos que estejam diretamente relacionados com o exercício de suas atividades fins (terrenos, prédios, fazendas, concessões de áreas...). Permite que seja feita a gestão das obrigações documentais destes ativos, apresentando diversas funcionalidades, tais como:\r\n<ul>\r\n 	<li>Registro fotográfico das Certidões, contratos, taxas, etc;</li>\r\n 	<li>Controle de datas e de pagamento das obrigações documentais;</li>\r\n 	<li>Visualização da Árvore hierárquica dos ativos (exemplo: Ativos ao longo de um gasoduto, linha de transmissão etc);</li>\r\n 	<li>Visualização geográfica dos Ativos (Google Maps);</li>\r\n 	<li>Cadastramento de proprietários e tipos de propriedade.</li>\r\n</ul>', 'SCAI', '', 'publish', 'closed', 'closed', '', 'scai', '', '', '2017-12-22 19:17:44', '2017-12-22 21:17:44', '', 0, 'http://www.herainformatica.com.br/?post_type=solucoes&#038;p=11', 0, 'solucoes', '', 0),
(12, 1, '2017-12-18 17:43:50', '2017-12-18 19:43:50', '', 'ícones das soluções', '', 'publish', 'closed', 'closed', '', 'acf_icones-das-solucoes', '', '', '2017-12-18 18:39:08', '2017-12-18 20:39:08', '', 0, 'http://www.herainformatica.com.br/?post_type=acf&#038;p=12', 0, 'acf', '', 0),
(17, 1, '2017-12-18 18:50:38', '2017-12-18 20:50:38', '', 'icon_siacom', '', 'inherit', 'open', 'closed', '', 'icon_siacom', '', '', '2017-12-18 18:50:38', '2017-12-18 20:50:38', '', 9, 'http://www.herainformatica.com.br/wp-content/uploads/2017/12/icon_siacom.svg', 0, 'attachment', 'image/svg+xml', 0),
(18, 1, '2017-12-18 18:53:25', '2017-12-18 20:53:25', '', 'icon_scai', '', 'inherit', 'open', 'closed', '', 'icon_scai', '', '', '2017-12-18 18:53:25', '2017-12-18 20:53:25', '', 11, 'http://www.herainformatica.com.br/wp-content/uploads/2017/12/icon_scai.svg', 0, 'attachment', 'image/svg+xml', 0),
(19, 1, '2017-12-18 18:56:03', '2017-12-18 20:56:03', '', 'icon_software_nuvem', '', 'inherit', 'open', 'closed', '', 'icon_software_nuvem', '', '', '2017-12-18 18:56:03', '2017-12-18 20:56:03', '', 8, 'http://www.herainformatica.com.br/wp-content/uploads/2017/12/icon_software_nuvem.svg', 0, 'attachment', 'image/svg+xml', 0),
(20, 1, '2017-12-18 19:29:13', '2017-12-18 21:29:13', '', 'Vantagens do SCAI', '', 'publish', 'closed', 'closed', '', 'vantagens-do-scai', '', '', '2017-12-19 15:56:29', '2017-12-19 17:56:29', '', 0, 'http://www.herainformatica.com.br/?post_type=vantagens&#038;p=20', 0, 'vantagens', '', 0),
(21, 1, '2017-12-18 19:29:52', '2017-12-18 21:29:52', '', 'Vantagens do SCAI', '', 'publish', 'closed', 'closed', '', 'acf_vantagens-do-scai', '', '', '2017-12-19 16:22:17', '2017-12-19 18:22:17', '', 0, 'http://www.herainformatica.com.br/?post_type=acf&#038;p=21', 0, 'acf', '', 0),
(22, 1, '2017-12-18 19:43:31', '2017-12-18 21:43:31', '', 'icon_controle', '', 'inherit', 'open', 'closed', '', 'icon_controle', '', '', '2017-12-18 19:43:31', '2017-12-18 21:43:31', '', 20, 'http://www.herainformatica.com.br/wp-content/uploads/2017/12/icon_controle.svg', 0, 'attachment', 'image/svg+xml', 0),
(23, 1, '2017-12-18 19:43:32', '2017-12-18 21:43:32', '', 'icon_registro', '', 'inherit', 'open', 'closed', '', 'icon_registro', '', '', '2017-12-18 19:43:32', '2017-12-18 21:43:32', '', 20, 'http://www.herainformatica.com.br/wp-content/uploads/2017/12/icon_registro.svg', 0, 'attachment', 'image/svg+xml', 0),
(24, 1, '2017-12-18 19:43:32', '2017-12-18 21:43:32', '', 'icon_visualizacao', '', 'inherit', 'open', 'closed', '', 'icon_visualizacao', '', '', '2017-12-18 19:43:32', '2017-12-18 21:43:32', '', 20, 'http://www.herainformatica.com.br/wp-content/uploads/2017/12/icon_visualizacao.svg', 0, 'attachment', 'image/svg+xml', 0),
(25, 1, '2017-12-19 16:22:51', '2017-12-19 18:22:51', '<ul>\r\n 	<li>Controle da medição e certificação</li>\r\n 	<li>Pedido de compras</li>\r\n 	<li>Fluxo financeiro de contratos</li>\r\n 	<li>Ferramentas de apoio à gestão da qualidade</li>\r\n</ul>', 'Vantagens do SIACOM', '', 'publish', 'closed', 'closed', '', 'vantagens-do-siacom', '', '', '2017-12-19 16:25:45', '2017-12-19 18:25:45', '', 0, 'http://www.herainformatica.com.br/?post_type=vantagens&#038;p=25', 0, 'vantagens', '', 0),
(26, 1, '2017-12-19 16:24:15', '2017-12-19 18:24:15', '', 'Vantagens do SIACOM', '', 'publish', 'closed', 'closed', '', 'acf_vantagens-do-siacom', '', '', '2017-12-19 16:24:48', '2017-12-19 18:24:48', '', 0, 'http://www.herainformatica.com.br/?post_type=acf&#038;p=26', 0, 'acf', '', 0),
(30, 1, '2017-12-20 10:44:45', '2017-12-20 12:44:45', '', 'Clientes', '', 'publish', 'closed', 'closed', '', 'acf_clientes', '', '', '2017-12-20 11:29:48', '2017-12-20 13:29:48', '', 0, 'http://www.herainformatica.com.br/?post_type=acf&#038;p=30', 0, 'acf', '', 0),
(31, 1, '2017-12-20 11:05:37', '2017-12-20 13:05:37', 'Sistema de gestão de ativo imobiliário;\r\nSistematização do banco de dados do arquivo central;\r\nSistema de gestão e avaliação de projetos de construção;\r\nSistema de inspeção de clientes residenciais e comerciais;\r\nSistema de inspeção de clientes industriais.\r\n<h5>GNSPS Gas Natural São Paulo Sul</h5>\r\nSistema integrado de gestão da manutenção de equipamentos de medição e regulagem.\r\n<h5>CEG / CEG RIO</h5>\r\nSistema integrado de gestão da manutenção de equipamentos de medição e regulagem.', 'Naturgy', '', 'publish', 'closed', 'closed', '', 'naturgy', '', '', '2019-05-06 10:02:53', '2019-05-06 13:02:53', '', 0, 'http://www.herainformatica.com.br/?post_type=clientes&#038;p=31', 1, 'clientes', '', 0),
(37, 1, '2017-12-20 11:01:26', '2017-12-20 13:01:26', '', 'logo_gasindur', '', 'inherit', 'open', 'closed', '', 'logo_gasindur', '', '', '2017-12-20 11:01:26', '2017-12-20 13:01:26', '', 31, 'http://www.herainformatica.com.br/wp-content/uploads/2017/12/logo_gasindur.png', 0, 'attachment', 'image/png', 0),
(38, 1, '2017-12-20 11:01:27', '2017-12-20 13:01:27', '', 'logo_ic_supply', '', 'inherit', 'open', 'closed', '', 'logo_ic_supply', '', '', '2017-12-20 11:01:27', '2017-12-20 13:01:27', '', 31, 'http://www.herainformatica.com.br/wp-content/uploads/2017/12/logo_ic_supply.png', 0, 'attachment', 'image/png', 0),
(39, 1, '2017-12-20 11:01:27', '2017-12-20 13:01:27', '', 'logo_uerj', '', 'inherit', 'open', 'closed', '', 'logo_uerj', '', '', '2017-12-20 11:01:27', '2017-12-20 13:01:27', '', 31, 'http://www.herainformatica.com.br/wp-content/uploads/2017/12/logo_uerj.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2017-12-20 11:29:40', '2017-12-20 13:29:40', 'Gestão de pedidos de compra e gerenciamento de contratos;\r\nControle de medição e faturamento de contratos.', 'IC SUPPLY Engenharia', '', 'publish', 'closed', 'closed', '', 'ic-supply-engenharia', '', '', '2017-12-20 11:37:16', '2017-12-20 13:37:16', '', 0, 'http://www.herainformatica.com.br/?post_type=clientes&#038;p=42', 2, 'clientes', '', 0),
(43, 1, '2017-12-20 11:30:47', '2017-12-20 13:30:47', 'Sistema de controle de associados.', 'Celeiro Comum dos Servidores da UERJ', '', 'publish', 'closed', 'closed', '', 'celeiro-comum-dos-servidores-da-uerj', '', '', '2017-12-20 11:37:16', '2017-12-20 13:37:16', '', 0, 'http://www.herainformatica.com.br/?post_type=clientes&#038;p=43', 3, 'clientes', '', 0),
(44, 1, '2017-12-20 11:31:54', '2017-12-20 13:31:54', 'Sistema de controle da manutenção de empreiteiras.', 'Gas INDUR', '', 'publish', 'closed', 'closed', '', 'gas-indur', '', '', '2017-12-20 11:37:16', '2017-12-20 13:37:16', '', 0, 'http://www.herainformatica.com.br/?post_type=clientes&#038;p=44', 4, 'clientes', '', 0),
(45, 1, '2017-12-20 11:45:21', '2017-12-20 13:45:21', 'Sistema de Controle de Materiais', 'BOSLAN Tecnologia de Projetos Ltda', '', 'publish', 'closed', 'closed', '', 'boslan-tecnologia-de-projetos-ltda', '', '', '2017-12-20 11:46:04', '2017-12-20 13:46:04', '', 0, 'http://www.herainformatica.com.br/?post_type=clientes&#038;p=45', 5, 'clientes', '', 0),
(46, 1, '2017-12-20 11:45:16', '2017-12-20 13:45:16', '', 'boslan', '', 'inherit', 'open', 'closed', '', 'boslan', '', '', '2017-12-20 11:45:16', '2017-12-20 13:45:16', '', 45, 'http://www.herainformatica.com.br/wp-content/uploads/2017/12/boslan.png', 0, 'attachment', 'image/png', 0),
(48, 1, '2017-12-20 12:09:18', '2017-12-20 14:09:18', '', 'Info contato', '', 'publish', 'closed', 'closed', '', 'acf_info-contato', '', '', '2017-12-20 12:13:07', '2017-12-20 14:13:07', '', 0, 'http://www.herainformatica.com.br/?post_type=acf&#038;p=48', 0, 'acf', '', 0),
(49, 1, '2017-12-20 12:10:15', '2017-12-20 14:10:15', '', 'Informações de contato', '', 'publish', 'closed', 'closed', '', 'informacoes-de-contato', '', '', '2017-12-20 12:13:19', '2017-12-20 14:13:19', '', 0, 'http://www.herainformatica.com.br/?post_type=onde_estamos&#038;p=49', 0, 'onde_estamos', '', 0),
(51, 1, '2017-12-22 19:06:04', '2017-12-22 21:06:04', 'É o resultado de anos de prestação de serviços para a Engenharia do Gás, manifestado sob a forma de um sistema integrado e aderente às características e necessidades gerenciais e operacionais, com destaque para as áreas de Medição e Regulagem:\n<ul>\n 	<li>Permite o inventário dos Ativos</li>\n 	<li>Define periodicidades da manutenção</li>\n 	<li>Controle e Gestão de Ordens de Serviço</li>\n 	<li>Avaliação e conformidade</li>\n 	<li>Apoio à análise de falhas e tomada de decisão</li>\n 	<li>Controle e Rastreabilidade de equipamentos de medição</li>\n 	<li>Controle de ações do Laboratório de calibração dos equipamentos, Oficina e Pintura</li>\n 	<li>Previsão de recursos para planejamento orçamentário para os anos subsequentes</li>\n 	<li>Controle de faturamento das atividades de manutenção (prestadores de serviço)</li>\n 	<li>Execução e registro de todos os detalhes técnicos em campo</li>\n</ul>\n<h3></h', 'Sigem Corpore', '', 'inherit', 'closed', 'closed', '', '4-autosave-v1', '', '', '2017-12-22 19:06:04', '2017-12-22 21:06:04', '', 4, 'http://www.herainformatica.com.br/2017/12/22/4-autosave-v1/', 0, 'revision', '', 0),
(52, 1, '2017-12-22 19:17:28', '2017-12-22 21:17:28', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium similique magni ut sequi rem, odit fuga asperiores. Voluptas distinctio ab sapiente repellendus iure ex, atque nihil voluptatum eveniet reiciendis neque.\n<ul>\n 	<li>Registro fotográfico das Certidões, contratos, taxas, etc;</li>\n 	<li>Controle de datas e de pagamento das obrigações documentais;</li>\n 	<li>Visualização da Árvore hierárquica dos ativos (exemplo: Ativos ao longo de um gasoduto, linha de transmissão etc);</li>\n 	<li>Visualização geográfica dos Ativos (Google Maps);</li>\n 	<li>Cadastramento de proprietários e tipos de propriedade.</li>\n</ul>', 'SCAI', '', 'inherit', 'closed', 'closed', '', '11-autosave-v1', '', '', '2017-12-22 19:17:28', '2017-12-22 21:17:28', '', 11, 'http://www.herainformatica.com.br/2017/12/22/11-autosave-v1/', 0, 'revision', '', 0),
(53, 1, '2017-12-22 19:20:30', '2017-12-22 21:20:30', '', 'SIACOM', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2017-12-22 19:20:30', '2017-12-22 21:20:30', '', 9, 'http://www.herainformatica.com.br/2017/12/22/9-autosave-v1/', 0, 'revision', '', 0),
(55, 1, '2018-02-26 11:19:16', '2018-02-26 14:19:16', '[text* your-name placeholder \'Nome(*)\']\r\n[email* your-email placeholder \'Email(*)\']\r\n[textarea your-message placeholder \'Mensagem\'] \r\n[submit \"Enviar\"]\n1\nMensagem do site da Hera\n[your-name] <no-reply@herainformatica.com.br>\ncontato@herainformatica.com.br\nNome: [your-name]\r\nE-mail: [your-email]\r\n\r\n[your-message]\r\n-- \r\nEste e-mail foi enviado de um formulário de contato em Hera (http://www.herainformatica.com.br)\n\n\n\n\n\n\n\n\n\n\n\n\n\nAgradecemos a sua mensagem. Entraremos em contato em breve.\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\n\nOcorreu um erro ao tentar enviar sua mensagem. Tente novamente mais tarde.\nVocê deve aceitar os termos e condições antes de enviar sua mensagem.\nO campo é obrigatório.\nO campo é muito longo.\nO campo é muito curto.\nO formato de data está incorreto.\nA data é anterior à mais antiga permitida.\nA data é posterior à maior data permitida.\nOcorreu um erro desconhecido ao enviar o arquivo.\nVocê não tem permissão para enviar esse tipo de arquivo.\nO arquivo é muito grande.\nOcorreu um erro ao enviar o arquivo.\nO formato de número é inválido.\nO número é menor do que o mínimo permitido.\nO número é maior do que o máximo permitido.\nA resposta para o quiz está incorreta.\nO código digitado está incorreto.\nO endereço de e-mail informado é inválido.\nA URL é inválida.\nO número de telefone é inválido.', 'contato_01', '', 'publish', 'closed', 'closed', '', 'formulario-de-contato-1_copy', '', '', '2018-02-26 14:58:55', '2018-02-26 17:58:55', '', 0, 'http://www.herainformatica.com.br/?post_type=wpcf7_contact_form&#038;p=55', 0, 'wpcf7_contact_form', '', 0),
(57, 2, '2019-05-06 10:01:40', '2019-05-06 13:01:40', '<img class=\"alignnone size-medium wp-image-58\" src=\"http://www.herainformatica.com.br/site_2018/wp-content/uploads/2017/12/Naturgy_RGB_Principal_Positiva-300x212.png\" alt=\"\" width=\"300\" height=\"212\" />Sistema de gestão de ativo imobiliário;\nSistematização do banco de dados do arquivo central;\nSistema de gestão e avaliação de projetos de construção;\nSistema de inspeção de clientes residenciais e comerciais;\nSistema de inspeção de clientes industriais.\n<h5>GNSPS Gas Natural São Paulo Sul</h5>\nSistema integrado de gestão da manutenção de equipamentos de medição e regulagem.\n<h5>CEG / CEG RIO</h5>\nSistema integrado de gestão da manutenção de equipamentos de medição e regulagem.', 'Naturgy', '', 'inherit', 'closed', 'closed', '', '31-autosave-v1', '', '', '2019-05-06 10:01:40', '2019-05-06 13:01:40', '', 31, 'http://www.herainformatica.com.br/31-autosave-v1/', 0, 'revision', '', 0),
(58, 2, '2019-05-06 09:14:31', '2019-05-06 12:14:31', '', 'Naturgy_RGB_Principal_Positiva', '', 'inherit', 'open', 'closed', '', 'naturgy_rgb_principal_positiva', '', '', '2019-05-06 09:14:31', '2019-05-06 12:14:31', '', 31, 'http://www.herainformatica.com.br/site_2018/wp-content/uploads/2017/12/Naturgy_RGB_Principal_Positiva.png', 0, 'attachment', 'image/png', 0),
(59, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"solucoes\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:0:{}s:11:\"description\";s:0:\"\";}', 'Campos das soluções', 'campos-das-solucoes', 'publish', 'closed', 'closed', '', 'group_5cd026541b557', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 0, 'http://www.herainformatica.com.br/?post_type=acf-field-group&p=59', 0, 'acf-field-group', '', 0),
(60, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";}', 'Subtitulo', 'subtitulo', 'publish', 'closed', 'closed', '', 'field_5a34476fc2e18', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 59, 'http://www.herainformatica.com.br/?post_type=acf-field&p=60', 0, 'acf-field', '', 0),
(61, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Resumo', 'resumo', 'publish', 'closed', 'closed', '', 'field_5a382571ae14c', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 59, 'http://www.herainformatica.com.br/?post_type=acf-field&p=61', 1, 'acf-field', '', 0),
(62, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"clientes\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:14:\"featured_image\";}s:11:\"description\";s:0:\"\";}', 'Clientes', 'clientes', 'publish', 'closed', 'closed', '', 'group_5cd0265422caf', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 0, 'http://www.herainformatica.com.br/?post_type=acf-field-group&p=62', 0, 'acf-field-group', '', 0),
(63, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:12:\"preview_size\";s:12:\"logo_cliente\";s:7:\"library\";s:3:\"all\";s:13:\"return_format\";s:3:\"url\";s:9:\"min_width\";i:0;s:10:\"min_height\";i:0;s:8:\"min_size\";i:0;s:9:\"max_width\";i:0;s:10:\"max_height\";i:0;s:8:\"max_size\";i:0;s:10:\"mime_types\";s:0:\"\";}', 'Logotipo', 'logotipo', 'publish', 'closed', 'closed', '', 'field_5a3a5f8abcf57', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 62, 'http://www.herainformatica.com.br/?post_type=acf-field&p=63', 0, 'acf-field', '', 0),
(64, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:7:{s:8:\"location\";a:1:{i:0;a:2:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"solucoes\";}i:1;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"!=\";s:5:\"value\";s:1:\"4\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:0:{}s:11:\"description\";s:0:\"\";}', 'ícones das soluções', 'icones-das-solucoes', 'publish', 'closed', 'closed', '', 'group_5cd0265426139', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 0, 'http://www.herainformatica.com.br/?post_type=acf-field-group&p=64', 0, 'acf-field-group', '', 0),
(65, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:13:\"return_format\";s:3:\"url\";s:9:\"min_width\";i:0;s:10:\"min_height\";i:0;s:8:\"min_size\";i:0;s:9:\"max_width\";i:0;s:10:\"max_height\";i:0;s:8:\"max_size\";i:0;s:10:\"mime_types\";s:0:\"\";}', 'Ícone', 'icone', 'publish', 'closed', 'closed', '', 'field_5a381a61e5ba6', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 64, 'http://www.herainformatica.com.br/?post_type=acf-field&p=65', 0, 'acf-field', '', 0),
(66, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"onde_estamos\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:2:{i:0;s:11:\"the_content\";i:1;s:14:\"featured_image\";}s:11:\"description\";s:0:\"\";}', 'Info contato', 'info-contato', 'publish', 'closed', 'closed', '', 'group_5cd0265429839', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 0, 'http://www.herainformatica.com.br/?post_type=acf-field-group&p=66', 0, 'acf-field-group', '', 0),
(67, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";}', 'Telefone', 'telefone', 'publish', 'closed', 'closed', '', 'field_5a3a6eaa87ab4', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 66, 'http://www.herainformatica.com.br/?post_type=acf-field&p=67', 0, 'acf-field', '', 0),
(68, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_5a3a6ece87ab5', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 66, 'http://www.herainformatica.com.br/?post_type=acf-field&p=68', 1, 'acf-field', '', 0),
(69, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Endereço', 'endereco', 'publish', 'closed', 'closed', '', 'field_5a3a6ee387ab6', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 66, 'http://www.herainformatica.com.br/?post_type=acf-field&p=69', 2, 'acf-field', '', 0),
(70, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"sobre\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:0:{}s:11:\"description\";s:0:\"\";}', 'Texto de Sobre', 'texto-de-sobre', 'publish', 'closed', 'closed', '', 'group_5cd02654614ad', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 0, 'http://www.herainformatica.com.br/?post_type=acf-field-group&p=70', 0, 'acf-field-group', '', 0),
(71, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";}', 'Subtítulo', 'subtitulo', 'publish', 'closed', 'closed', '', 'field_5a37d76153960', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 70, 'http://www.herainformatica.com.br/?post_type=acf-field&p=71', 0, 'acf-field', '', 0),
(72, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Texto complementar', 'texto_complementar', 'publish', 'closed', 'closed', '', 'field_5a37d74d5395f', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 70, 'http://www.herainformatica.com.br/?post_type=acf-field&p=72', 1, 'acf-field', '', 0),
(73, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"20\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:2:{i:0;s:11:\"the_content\";i:1;s:14:\"featured_image\";}s:11:\"description\";s:0:\"\";}', 'Vantagens do SCAI', 'vantagens-do-scai', 'publish', 'closed', 'closed', '', 'group_5cd0265465cfd', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 0, 'http://www.herainformatica.com.br/?post_type=acf-field-group&p=73', 0, 'acf-field-group', '', 0),
(74, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:13:\"return_format\";s:3:\"url\";s:9:\"min_width\";i:0;s:10:\"min_height\";i:0;s:8:\"min_size\";i:0;s:9:\"max_width\";i:0;s:10:\"max_height\";i:0;s:8:\"max_size\";i:0;s:10:\"mime_types\";s:0:\"\";}', 'Ícone 1', 'icone_1', 'publish', 'closed', 'closed', '', 'field_5a3832ae27d9a', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 73, 'http://www.herainformatica.com.br/?post_type=acf-field&p=74', 1, 'acf-field', '', 0),
(75, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";}', 'Título da vantagem 1', 'titulo_da_vantagem_1', 'publish', 'closed', 'closed', '', 'field_5a3832d027d9b', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 73, 'http://www.herainformatica.com.br/?post_type=acf-field&p=75', 2, 'acf-field', '', 0),
(76, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Texto da vantagem 1', 'texto_da_vantagem_1', 'publish', 'closed', 'closed', '', 'field_5a3832fd27d9c', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 73, 'http://www.herainformatica.com.br/?post_type=acf-field&p=76', 3, 'acf-field', '', 0),
(77, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:13:\"return_format\";s:3:\"url\";s:9:\"min_width\";i:0;s:10:\"min_height\";i:0;s:8:\"min_size\";i:0;s:9:\"max_width\";i:0;s:10:\"max_height\";i:0;s:8:\"max_size\";i:0;s:10:\"mime_types\";s:0:\"\";}', 'Ícone 2', 'icone_2', 'publish', 'closed', 'closed', '', 'field_5a3833b0ece32', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 73, 'http://www.herainformatica.com.br/?post_type=acf-field&p=77', 4, 'acf-field', '', 0),
(78, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";}', 'Título da vantagem 2', 'titulo_da_vantagem_2', 'publish', 'closed', 'closed', '', 'field_5a3833bcece33', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 73, 'http://www.herainformatica.com.br/?post_type=acf-field&p=78', 5, 'acf-field', '', 0),
(79, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Texto da vantagem 2', 'texto_da_vantagem_2', 'publish', 'closed', 'closed', '', 'field_5a3833c4ece34', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 73, 'http://www.herainformatica.com.br/?post_type=acf-field&p=79', 6, 'acf-field', '', 0),
(80, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";}', 'Título da vantagem 3', 'titulo_da_vantagem_3', 'publish', 'closed', 'closed', '', 'field_5a3834935e9d2', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 73, 'http://www.herainformatica.com.br/?post_type=acf-field&p=80', 8, 'acf-field', '', 0),
(81, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:2:\"br\";}', 'Texto da vantagem 3', 'texto_da_vantagem_3', 'publish', 'closed', 'closed', '', 'field_5a3834885e9d1', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 73, 'http://www.herainformatica.com.br/?post_type=acf-field&p=81', 9, 'acf-field', '', 0),
(82, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";}', 'Subtítulo', 'subtitulo', 'publish', 'closed', 'closed', '', 'field_5a390f8b7d49e', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 73, 'http://www.herainformatica.com.br/?post_type=acf-field&p=82', 0, 'acf-field', '', 0),
(83, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:13:\"return_format\";s:3:\"url\";s:9:\"min_width\";i:0;s:10:\"min_height\";i:0;s:8:\"min_size\";i:0;s:9:\"max_width\";i:0;s:10:\"max_height\";i:0;s:8:\"max_size\";i:0;s:10:\"mime_types\";s:0:\"\";}', 'Ícone 3', 'icone-3', 'publish', 'closed', 'closed', '', 'field_5a3952436bbef', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 73, 'http://www.herainformatica.com.br/?post_type=acf-field&p=83', 7, 'acf-field', '', 0),
(84, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"post\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"25\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";a:1:{i:0;s:14:\"featured_image\";}s:11:\"description\";s:0:\"\";}', 'Vantagens do SIACOM', 'vantagens-do-siacom', 'publish', 'closed', 'closed', '', 'group_5cd0265474405', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 0, 'http://www.herainformatica.com.br/?post_type=acf-field-group&p=84', 0, 'acf-field-group', '', 0),
(85, 2, '2019-05-06 09:19:32', '2019-05-06 12:19:32', 'a:11:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:10:\"formatting\";s:4:\"html\";s:9:\"maxlength\";s:0:\"\";}', 'Subtítulo', 'subtitulo', 'publish', 'closed', 'closed', '', 'field_5a3959198d57a', '', '', '2019-05-06 09:19:32', '2019-05-06 12:19:32', '', 84, 'http://www.herainformatica.com.br/?post_type=acf-field&p=85', 0, 'acf-field', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mr_termmeta`
--

CREATE TABLE `mr_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mr_terms`
--

CREATE TABLE `mr_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `mr_terms`
--

INSERT INTO `mr_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mr_term_relationships`
--

CREATE TABLE `mr_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `mr_term_relationships`
--

INSERT INTO `mr_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mr_term_taxonomy`
--

CREATE TABLE `mr_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `mr_term_taxonomy`
--

INSERT INTO `mr_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `mr_usermeta`
--

CREATE TABLE `mr_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `mr_usermeta`
--

INSERT INTO `mr_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'marcioellobo@yahoo.com.br'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'mr_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(12, 1, 'mr_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '0'),
(15, 1, 'session_tokens', 'a:1:{s:64:\"5411ab7f24019e99bd020f70d4d9cb41a615d16e4c05aed364bf7ba0e177ee55\";a:4:{s:10:\"expiration\";i:1595007553;s:2:\"ip\";s:14:\"179.106.64.250\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.116 Safari/537.36\";s:5:\"login\";i:1594834753;}}'),
(16, 1, 'mr_dashboard_quick_press_last_post_id', '86'),
(17, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"179.106.64.0\";}'),
(18, 1, 'mr_user-settings', 'editor=tinymce&libraryContent=browse'),
(19, 1, 'mr_user-settings-time', '1513976836'),
(21, 1, 'mr_ac_preferences_settings', 'a:1:{s:11:\"list_screen\";s:8:\"solucoes\";}'),
(24, 2, 'nickname', 'ricardo'),
(25, 2, 'first_name', 'Ricardo'),
(26, 2, 'last_name', 'Sampaio'),
(27, 2, 'description', ''),
(28, 2, 'rich_editing', 'true'),
(29, 2, 'syntax_highlighting', 'true'),
(30, 2, 'comment_shortcuts', 'false'),
(31, 2, 'admin_color', 'fresh'),
(32, 2, 'use_ssl', '0'),
(33, 2, 'show_admin_bar_front', 'true'),
(34, 2, 'locale', ''),
(35, 2, 'mr_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(36, 2, 'mr_user_level', '10'),
(37, 2, 'dismissed_wp_pointers', ''),
(38, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(39, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(42, 2, 'mr_dashboard_quick_press_last_post_id', '56'),
(43, 2, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"177.192.61.0\";}'),
(44, 2, 'closedpostboxes_onde_estamos', 'a:0:{}'),
(45, 2, 'metaboxhidden_onde_estamos', 'a:8:{i:0;s:6:\"acf_26\";i:1;s:6:\"acf_21\";i:2;s:6:\"acf_12\";i:3;s:5:\"acf_5\";i:4;s:12:\"postimagediv\";i:5;s:6:\"acf_30\";i:6;s:5:\"acf_7\";i:7;s:7:\"slugdiv\";}'),
(47, 1, 'ac_preferences_check-review', 'a:2:{s:14:\"dismiss-review\";s:1:\"1\";s:18:\"first-login-review\";s:10:\"1513631191\";}'),
(48, 2, 'ac_preferences_check-review', 'a:1:{s:18:\"first-login-review\";s:10:\"1521115786\";}'),
(49, 1, 'ac_preferences_check-addon-available', 'a:1:{s:14:\"dismiss-notice\";s:1:\"1\";}'),
(50, 2, 'mr_user-settings', 'editor=tinymce&libraryContent=browse&urlbutton=none&align=none'),
(51, 2, 'mr_user-settings-time', '1557147738'),
(52, 2, 'session_tokens', 'a:3:{s:64:\"03d47a8b320ac6913ccd236d7862ce8cc8a9ddcb55d9c1c4cd40be70a3ac5892\";a:4:{s:10:\"expiration\";i:1557317938;s:2:\"ip\";s:14:\"177.192.61.245\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36\";s:5:\"login\";i:1557145138;}s:64:\"1aceeafde5281b4446f8d93ac45a139c4b7f61f74ca2d63d26b30ff7d3ad8701\";a:4:{s:10:\"expiration\";i:1557317940;s:2:\"ip\";s:14:\"177.192.61.245\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36\";s:5:\"login\";i:1557145140;}s:64:\"264cc08820350a29035aa7a7ecb2d183db690a59301bd91c54beda50843f19ea\";a:4:{s:10:\"expiration\";i:1557318812;s:2:\"ip\";s:14:\"177.192.61.245\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36\";s:5:\"login\";i:1557146012;}}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `mr_users`
--

CREATE TABLE `mr_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `mr_users`
--

INSERT INTO `mr_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'lobo', '$P$B80Mnm/2raWLIdNe6KvN/IaO.JOy0j/', 'marcioelloboyahoo-com-br', 'marcioellobo@yahoo.com.br', '', '2017-12-15 20:25:48', '', 0, 'Lobo'),
(2, 'ricardo', '$P$BJ9QeIBthk24mWx550jr3OdfIMAXN91', 'ricardo', 'ricardo@herainfor.com.br', '', '2018-02-27 14:29:30', '', 0, 'Ricardo Sampaio');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `mr_commentmeta`
--
ALTER TABLE `mr_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `mr_comments`
--
ALTER TABLE `mr_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Índices de tabela `mr_links`
--
ALTER TABLE `mr_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Índices de tabela `mr_options`
--
ALTER TABLE `mr_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Índices de tabela `mr_postmeta`
--
ALTER TABLE `mr_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `mr_posts`
--
ALTER TABLE `mr_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Índices de tabela `mr_termmeta`
--
ALTER TABLE `mr_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `mr_terms`
--
ALTER TABLE `mr_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Índices de tabela `mr_term_relationships`
--
ALTER TABLE `mr_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Índices de tabela `mr_term_taxonomy`
--
ALTER TABLE `mr_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Índices de tabela `mr_usermeta`
--
ALTER TABLE `mr_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Índices de tabela `mr_users`
--
ALTER TABLE `mr_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `mr_commentmeta`
--
ALTER TABLE `mr_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mr_comments`
--
ALTER TABLE `mr_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `mr_links`
--
ALTER TABLE `mr_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mr_options`
--
ALTER TABLE `mr_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60854;

--
-- AUTO_INCREMENT de tabela `mr_postmeta`
--
ALTER TABLE `mr_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT de tabela `mr_posts`
--
ALTER TABLE `mr_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT de tabela `mr_termmeta`
--
ALTER TABLE `mr_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `mr_terms`
--
ALTER TABLE `mr_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `mr_term_taxonomy`
--
ALTER TABLE `mr_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `mr_usermeta`
--
ALTER TABLE `mr_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT de tabela `mr_users`
--
ALTER TABLE `mr_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
