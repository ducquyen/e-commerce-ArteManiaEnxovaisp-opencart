-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 01/07/2016 às 12:30
-- Versão do servidor: 10.1.10-MariaDB
-- Versão do PHP: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bitnami_opencart`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_address`
--

CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_address`
--

INSERT INTO `oc_address` (`address_id`, `customer_id`, `firstname`, `lastname`, `company`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `custom_field`) VALUES
(2, 24, 'Artur', 'Schaefer', '', 'Rua Virginia Paganini Tozzi', '', 'MARILANDIA', '29724-000', 30, 447, '{"2":"4"}'),
(1, 24, 'Artur', 'Schaefer', '', 'Rua Virginia Paganini Tozzi', '', 'MARILANDIA', '29725-000', 30, 447, '{"2":"3"}'),
(3, 24, 'Artur', 'Schaefer', '', 'Rua Virginia Paganini Tozzi', '', 'MARILANDIA', '29725-000', 30, 447, '{"2":"3"}'),
(4, 24, 'Artur', 'Schaefer', '', 'Rua Virginia Paganini Tozzi', '', 'MARILANDIA', '2973810', 30, 447, '{"2":"3"}'),
(5, 24, 'Artur', 'Schaefer', '', 'Rua Quarenta e Sete', 'Jardim São Paulo(Zona Leste)', 'São Paulo', '08465-312 ', 30, 464, '{"2":"3"}'),
(6, 26, 'Apresentação', 'Hoje', '', 'Rua Hermes Santório', 'Jardim América', 'Cariacica', '29140-970', 30, 447, '{"2":"3"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_affiliate`
--

CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_affiliate`
--

INSERT INTO `oc_affiliate` (`affiliate_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `company`, `website`, `address_1`, `address_2`, `city`, `postcode`, `country_id`, `zone_id`, `code`, `commission`, `tax`, `payment`, `cheque`, `paypal`, `bank_name`, `bank_branch_number`, `bank_swift_code`, `bank_account_name`, `bank_account_number`, `ip`, `status`, `approved`, `date_added`) VALUES
(1, 'Artur', 'Schaefer', 'artur.schaefer21@gmail.com', '2737241761', '2737241761', '547dab5615125f28531d071787645dad4bdb6b65', 'CaKuVJAzO', '', '', 'Rua Virginia Paganini Tozzi', '', 'MARILANDIA', '29725-000', 30, 447, '5771bbd62795a', '10.00', '12156544727', 'cheque', 'Artur Schaefer', '', '', '', '', '', '', '127.0.0.1', 1, 1, '2016-06-27 20:51:21');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_affiliate_activity`
--

CREATE TABLE `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_affiliate_activity`
--

INSERT INTO `oc_affiliate_activity` (`activity_id`, `affiliate_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 1, 'login', '{"affiliate_id":"1","name":"Artur Schaefer"}', '127.0.0.1', '2016-06-27 20:52:08');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_affiliate_login`
--

CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_affiliate_transaction`
--

CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_api`
--

CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `key` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_api`
--

INSERT INTO `oc_api` (`api_id`, `name`, `key`, `status`, `date_added`, `date_modified`) VALUES
(1, 'Default', 'a3Wje3QbLk8Jg79vgYMGHxyeKtq2eHRLTKTmp7rTqhuuItj3apN4jhpKHNRFBVc7kM989jkabbLuEcHEx4JlqTbPjlQMrbaPbbF0rfc1ZrCQhxm6wfXJSflzzf4voBtTEVGaS34SP39XPn7gBvOt5HBmQq23EgM4VgbL5N0ptmOSLU2Y1OlbMU7BvVBlnuSs482vf8bijpRdThyFBjjSGIs2R5vkXZnMTweseWm2OJiN7AKo99qVndJ3tXUvCGcW', 1, '2016-04-09 00:42:54', '2016-04-09 00:42:54');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_api_ip`
--

CREATE TABLE `oc_api_ip` (
  `api_ip_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_api_ip`
--

INSERT INTO `oc_api_ip` (`api_ip_id`, `api_id`, `ip`) VALUES
(1, 1, '127.0.0.1');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_api_session`
--

CREATE TABLE `oc_api_session` (
  `api_session_id` int(11) NOT NULL,
  `api_id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `session_name` varchar(32) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_api_session`
--

INSERT INTO `oc_api_session` (`api_session_id`, `api_id`, `token`, `session_id`, `session_name`, `ip`, `date_added`, `date_modified`) VALUES
(1, 1, 'i0XTZ8QyDWSTcnsIDsgjsCbGlahV5Qyh', 'rm383f9620qr0lehthvrofd336', 'temp_session_577645ca3c790', '127.0.0.1', '2016-07-01 07:28:26', '2016-07-01 07:28:26');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_attribute`
--

CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_attribute`
--

INSERT INTO `oc_attribute` (`attribute_id`, `attribute_group_id`, `sort_order`) VALUES
(4, 3, 1),
(14, 7, 0),
(13, 7, 0),
(12, 7, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_attribute_description`
--

CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_attribute_description`
--

INSERT INTO `oc_attribute_description` (`attribute_id`, `language_id`, `name`) VALUES
(4, 1, 'test 1'),
(14, 2, 'Amarelo'),
(13, 2, 'Preto'),
(12, 2, 'Branco'),
(4, 2, 'test 1'),
(14, 1, 'Amarelo'),
(13, 1, 'Preto'),
(12, 1, 'Branco');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_attribute_group`
--

CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_attribute_group`
--

INSERT INTO `oc_attribute_group` (`attribute_group_id`, `sort_order`) VALUES
(3, 2),
(7, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_attribute_group_description`
--

CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_attribute_group_description`
--

INSERT INTO `oc_attribute_group_description` (`attribute_group_id`, `language_id`, `name`) VALUES
(3, 1, 'Memory'),
(7, 1, 'Cor'),
(7, 2, 'Cor'),
(3, 2, 'Memory');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_banner`
--

CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_banner`
--

INSERT INTO `oc_banner` (`banner_id`, `name`, `status`) VALUES
(6, 'HP Products', 1),
(7, 'Home Page Slideshow', 1),
(8, 'Manufacturers', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_banner_image`
--

CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_banner_image`
--

INSERT INTO `oc_banner_image` (`banner_image_id`, `banner_id`, `link`, `image`, `sort_order`) VALUES
(111, 7, '', '', 0),
(117, 8, 'http://www.buettner.com.br/', 'catalog/Fabricantes/buettner.gif', 0),
(116, 8, 'http://www.martcollection.com.br/', 'catalog/Fabricantes/logo-mart-vd.png', 0),
(115, 8, 'http://www.juma.com.br/', 'catalog/Fabricantes/juma.png', 0),
(114, 8, 'http://www.bernadetecasa.com.br/', 'catalog/Fabricantes/bernadete.png', 0),
(113, 8, 'http://www.tapetessaocarlos.com.br/', 'catalog/Fabricantes/sao_carlos.png', 0),
(110, 7, 'http://localhost/opencart/cama/cama-casal/cama-england', 'catalog/Banners/teste_fundo.png', 0),
(112, 8, 'http://www.dell.com.br/', 'catalog/demo/manufacturer/dell.png', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_banner_image_description`
--

CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_banner_image_description`
--

INSERT INTO `oc_banner_image_description` (`banner_image_id`, `language_id`, `banner_id`, `title`) VALUES
(111, 2, 7, 'Teste'),
(117, 1, 8, 'Buettner'),
(117, 2, 8, 'Buettner'),
(111, 1, 7, 'Teste'),
(116, 2, 8, 'Mart Collection'),
(116, 1, 8, 'Mart Collection'),
(115, 2, 8, 'Juma'),
(110, 2, 7, '2345'),
(115, 1, 8, 'Juma'),
(114, 2, 8, 'Bernadette '),
(114, 1, 8, 'Bernadette '),
(113, 2, 8, 'Tapetes São Carlos'),
(110, 1, 7, '2345'),
(112, 2, 8, 'Dell'),
(113, 1, 8, 'Tapetes São Carlos'),
(112, 1, 8, 'Dell');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_cart`
--

CREATE TABLE `oc_cart` (
  `cart_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `session_id` varchar(32) NOT NULL,
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `option` text NOT NULL,
  `quantity` int(5) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_cart`
--

INSERT INTO `oc_cart` (`cart_id`, `customer_id`, `session_id`, `product_id`, `recurring_id`, `option`, `quantity`, `date_added`) VALUES
(1, 26, 'rm383f9620qr0lehthvrofd336', 56, 0, '[]', 1, '2016-07-01 07:16:24');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_category`
--

CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_category`
--

INSERT INTO `oc_category` (`category_id`, `image`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`) VALUES
(25, '', 0, 1, 1, 3, 1, '2009-01-31 01:04:25', '2016-04-09 12:43:56'),
(27, '', 20, 0, 0, 2, 1, '2009-01-31 01:55:34', '2016-04-09 12:50:28'),
(20, '', 0, 1, 1, 1, 1, '2009-01-05 21:49:43', '2016-04-09 12:40:38'),
(24, '', 0, 1, 1, 5, 1, '2009-01-20 02:36:26', '2016-04-09 12:47:27'),
(18, '', 0, 1, 0, 2, 1, '2009-01-05 21:49:15', '2016-05-04 15:57:52'),
(17, '', 0, 1, 1, 4, 1, '2009-01-03 21:08:57', '2016-05-05 15:44:30'),
(26, '', 20, 0, 0, 1, 1, '2009-01-31 01:55:14', '2016-04-09 12:50:51'),
(61, '', 24, 0, 1, 0, 1, '2016-04-09 12:53:30', '2016-04-09 12:53:30'),
(60, '', 24, 0, 1, 0, 1, '2016-04-09 12:53:02', '2016-04-09 12:53:02'),
(59, '', 24, 0, 1, 0, 1, '2016-04-09 12:52:29', '2016-04-09 12:52:29'),
(33, '', 0, 1, 1, 6, 1, '2009-02-03 14:17:55', '2016-05-05 16:27:13'),
(45, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:16', '2016-05-04 16:33:45'),
(46, '', 18, 0, 0, 0, 1, '2010-09-24 18:29:31', '2016-05-04 15:58:49'),
(57, '', 0, 1, 1, 3, 1, '2011-04-26 08:53:16', '2016-04-09 12:45:10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_category_description`
--

CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_category_description`
--

INSERT INTO `oc_category_description` (`category_id`, `language_id`, `name`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(60, 2, 'Meninas', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Meninas', '', ''),
(60, 1, 'Meninas', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Meninas', '', ''),
(20, 2, 'Decoração', '&lt;p&gt;Tudo que você precisa para deixar a sua casa com seu estilo! Vasos, quadros, taças, abajur, e muito mais!&lt;br&gt;&lt;/p&gt;\r\n', 'Decoração', 'Example of category description', ''),
(61, 2, 'Meninos', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Meninos', '', ''),
(17, 2, 'Móveis', '&lt;p&gt;Cômodas, mesas, sofás, baús e muitos outros itens! Confira todos!&lt;br&gt;&lt;/p&gt;', 'Móveis', '', ''),
(24, 2, 'Roupas', '&lt;p&gt;Roupinhas para crianças e bebês. Mais do que lindas, perfeitas!&lt;br&gt;&lt;/p&gt;', 'Roupas', '', ''),
(33, 1, 'Tapetes', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Tapetes', '', ''),
(33, 2, 'Tapetes', '&lt;p&gt;Tapetes de vários tamanhos, cores e formatos. Confira!&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Tapetes', '', ''),
(46, 1, 'Solteiro', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Solteiro', '', ''),
(59, 1, 'Bebês', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bebês', '', ''),
(59, 2, 'Bebês', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Bebês', '', ''),
(27, 1, 'Vasos Decorativos', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Vasos Decorativos', '', ''),
(26, 1, 'Espelho', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Espelho', '', ''),
(17, 1, 'Móveis', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Móveis', '', ''),
(25, 1, 'Mesa', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Mesa', '', ''),
(24, 1, 'Roupas', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Roupas', '', ''),
(20, 1, 'Decoração', '&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n', 'Decoração', 'Example of category description', ''),
(61, 1, 'Meninos', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Meninos', '', ''),
(46, 2, 'Solteiro', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Solteiro', '', ''),
(45, 1, 'Casal', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Casal', '', ''),
(45, 2, 'Casal', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Casal', '', ''),
(27, 2, 'Vasos Decorativos', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Vasos Decorativos', '', ''),
(26, 2, 'Espelho', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Espelho', '', ''),
(18, 1, 'Cama', '&lt;br&gt;', 'Cama', '', ''),
(18, 2, 'Cama', 'Jogos de cama pra camas de vários tamanhos. Confira nossos itens! Você vai amar!&lt;br&gt;\r\n', 'Cama', '', ''),
(25, 2, 'Mesa', '&lt;p&gt;Jogos de mesa com várias peças diferentes. Confira nossos itens!&lt;br&gt;&lt;/p&gt;', 'Mesa', '', ''),
(57, 2, 'Banho', '&lt;p&gt;Jogos de banheiro completos! Toalhas de rosto e normais, jogos de banheiro e muito mais!&lt;br&gt;&lt;/p&gt;', 'Banho', '', ''),
(57, 1, 'Banho', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'Banho', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_category_filter`
--

CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_category_filter`
--

INSERT INTO `oc_category_filter` (`category_id`, `filter_id`) VALUES
(17, 4),
(17, 5),
(17, 6),
(17, 10),
(18, 1),
(18, 2),
(33, 3),
(33, 7),
(33, 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_category_path`
--

CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_category_path`
--

INSERT INTO `oc_category_path` (`category_id`, `path_id`, `level`) VALUES
(25, 25, 0),
(61, 24, 0),
(61, 61, 1),
(60, 24, 0),
(60, 60, 1),
(59, 24, 0),
(59, 59, 1),
(20, 20, 0),
(27, 27, 1),
(27, 20, 0),
(26, 26, 1),
(26, 20, 0),
(24, 24, 0),
(18, 18, 0),
(45, 45, 1),
(45, 18, 0),
(46, 46, 1),
(46, 18, 0),
(17, 17, 0),
(33, 33, 0),
(57, 57, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_category_to_layout`
--

CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_category_to_layout`
--

INSERT INTO `oc_category_to_layout` (`category_id`, `store_id`, `layout_id`) VALUES
(20, 0, 0),
(18, 0, 0),
(25, 0, 0),
(57, 0, 0),
(17, 0, 0),
(24, 0, 0),
(33, 0, 0),
(46, 0, 0),
(45, 0, 0),
(27, 0, 0),
(26, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_category_to_store`
--

CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_category_to_store`
--

INSERT INTO `oc_category_to_store` (`category_id`, `store_id`) VALUES
(17, 0),
(18, 0),
(20, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(33, 0),
(45, 0),
(46, 0),
(57, 0),
(59, 0),
(60, 0),
(61, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_country`
--

CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_country`
--

INSERT INTO `oc_country` (`country_id`, `name`, `iso_code_2`, `iso_code_3`, `address_format`, `postcode_required`, `status`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', '', 0, 1),
(2, 'Albania', 'AL', 'ALB', '', 0, 1),
(3, 'Algeria', 'DZ', 'DZA', '', 0, 1),
(4, 'American Samoa', 'AS', 'ASM', '', 0, 1),
(5, 'Andorra', 'AD', 'AND', '', 0, 1),
(6, 'Angola', 'AO', 'AGO', '', 0, 1),
(7, 'Anguilla', 'AI', 'AIA', '', 0, 1),
(8, 'Antarctica', 'AQ', 'ATA', '', 0, 1),
(9, 'Antigua and Barbuda', 'AG', 'ATG', '', 0, 1),
(10, 'Argentina', 'AR', 'ARG', '', 0, 1),
(11, 'Armenia', 'AM', 'ARM', '', 0, 1),
(12, 'Aruba', 'AW', 'ABW', '', 0, 1),
(13, 'Australia', 'AU', 'AUS', '', 0, 1),
(14, 'Austria', 'AT', 'AUT', '', 0, 1),
(15, 'Azerbaijan', 'AZ', 'AZE', '', 0, 1),
(16, 'Bahamas', 'BS', 'BHS', '', 0, 1),
(17, 'Bahrain', 'BH', 'BHR', '', 0, 1),
(18, 'Bangladesh', 'BD', 'BGD', '', 0, 1),
(19, 'Barbados', 'BB', 'BRB', '', 0, 1),
(20, 'Belarus', 'BY', 'BLR', '', 0, 1),
(21, 'Belgium', 'BE', 'BEL', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 0, 1),
(22, 'Belize', 'BZ', 'BLZ', '', 0, 1),
(23, 'Benin', 'BJ', 'BEN', '', 0, 1),
(24, 'Bermuda', 'BM', 'BMU', '', 0, 1),
(25, 'Bhutan', 'BT', 'BTN', '', 0, 1),
(26, 'Bolivia', 'BO', 'BOL', '', 0, 1),
(27, 'Bosnia and Herzegovina', 'BA', 'BIH', '', 0, 1),
(28, 'Botswana', 'BW', 'BWA', '', 0, 1),
(29, 'Bouvet Island', 'BV', 'BVT', '', 0, 1),
(30, 'Brasil', 'BR', 'BRA', '', 1, 1),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', '', 0, 1),
(32, 'Brunei Darussalam', 'BN', 'BRN', '', 0, 1),
(33, 'Bulgaria', 'BG', 'BGR', '', 0, 1),
(34, 'Burkina Faso', 'BF', 'BFA', '', 0, 1),
(35, 'Burundi', 'BI', 'BDI', '', 0, 1),
(36, 'Cambodia', 'KH', 'KHM', '', 0, 1),
(37, 'Cameroon', 'CM', 'CMR', '', 0, 1),
(38, 'Canada', 'CA', 'CAN', '', 0, 1),
(39, 'Cape Verde', 'CV', 'CPV', '', 0, 1),
(40, 'Cayman Islands', 'KY', 'CYM', '', 0, 1),
(41, 'Central African Republic', 'CF', 'CAF', '', 0, 1),
(42, 'Chad', 'TD', 'TCD', '', 0, 1),
(43, 'Chile', 'CL', 'CHL', '', 0, 1),
(44, 'China', 'CN', 'CHN', '', 0, 1),
(45, 'Christmas Island', 'CX', 'CXR', '', 0, 1),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', '', 0, 1),
(47, 'Colombia', 'CO', 'COL', '', 0, 1),
(48, 'Comoros', 'KM', 'COM', '', 0, 1),
(49, 'Congo', 'CG', 'COG', '', 0, 1),
(50, 'Cook Islands', 'CK', 'COK', '', 0, 1),
(51, 'Costa Rica', 'CR', 'CRI', '', 0, 1),
(52, 'Cote D''Ivoire', 'CI', 'CIV', '', 0, 1),
(53, 'Croatia', 'HR', 'HRV', '', 0, 1),
(54, 'Cuba', 'CU', 'CUB', '', 0, 1),
(55, 'Cyprus', 'CY', 'CYP', '', 0, 1),
(56, 'Czech Republic', 'CZ', 'CZE', '', 0, 1),
(57, 'Denmark', 'DK', 'DNK', '', 0, 1),
(58, 'Djibouti', 'DJ', 'DJI', '', 0, 1),
(59, 'Dominica', 'DM', 'DMA', '', 0, 1),
(60, 'Dominican Republic', 'DO', 'DOM', '', 0, 1),
(61, 'East Timor', 'TL', 'TLS', '', 0, 1),
(62, 'Ecuador', 'EC', 'ECU', '', 0, 1),
(63, 'Egypt', 'EG', 'EGY', '', 0, 1),
(64, 'El Salvador', 'SV', 'SLV', '', 0, 1),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', '', 0, 1),
(66, 'Eritrea', 'ER', 'ERI', '', 0, 1),
(67, 'Estonia', 'EE', 'EST', '', 0, 1),
(68, 'Ethiopia', 'ET', 'ETH', '', 0, 1),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', '', 0, 1),
(70, 'Faroe Islands', 'FO', 'FRO', '', 0, 1),
(71, 'Fiji', 'FJ', 'FJI', '', 0, 1),
(72, 'Finland', 'FI', 'FIN', '', 0, 1),
(74, 'France, Metropolitan', 'FR', 'FRA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(75, 'French Guiana', 'GF', 'GUF', '', 0, 1),
(76, 'French Polynesia', 'PF', 'PYF', '', 0, 1),
(77, 'French Southern Territories', 'TF', 'ATF', '', 0, 1),
(78, 'Gabon', 'GA', 'GAB', '', 0, 1),
(79, 'Gambia', 'GM', 'GMB', '', 0, 1),
(80, 'Georgia', 'GE', 'GEO', '', 0, 1),
(81, 'Germany', 'DE', 'DEU', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(82, 'Ghana', 'GH', 'GHA', '', 0, 1),
(83, 'Gibraltar', 'GI', 'GIB', '', 0, 1),
(84, 'Greece', 'GR', 'GRC', '', 0, 1),
(85, 'Greenland', 'GL', 'GRL', '', 0, 1),
(86, 'Grenada', 'GD', 'GRD', '', 0, 1),
(87, 'Guadeloupe', 'GP', 'GLP', '', 0, 1),
(88, 'Guam', 'GU', 'GUM', '', 0, 1),
(89, 'Guatemala', 'GT', 'GTM', '', 0, 1),
(90, 'Guinea', 'GN', 'GIN', '', 0, 1),
(91, 'Guinea-Bissau', 'GW', 'GNB', '', 0, 1),
(92, 'Guyana', 'GY', 'GUY', '', 0, 1),
(93, 'Haiti', 'HT', 'HTI', '', 0, 1),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', '', 0, 1),
(95, 'Honduras', 'HN', 'HND', '', 0, 1),
(96, 'Hong Kong', 'HK', 'HKG', '', 0, 1),
(97, 'Hungary', 'HU', 'HUN', '', 0, 1),
(98, 'Iceland', 'IS', 'ISL', '', 0, 1),
(99, 'India', 'IN', 'IND', '', 0, 1),
(100, 'Indonesia', 'ID', 'IDN', '', 0, 1),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', '', 0, 1),
(102, 'Iraq', 'IQ', 'IRQ', '', 0, 1),
(103, 'Ireland', 'IE', 'IRL', '', 0, 1),
(104, 'Israel', 'IL', 'ISR', '', 0, 1),
(105, 'Italy', 'IT', 'ITA', '', 0, 1),
(106, 'Jamaica', 'JM', 'JAM', '', 0, 1),
(107, 'Japan', 'JP', 'JPN', '', 0, 1),
(108, 'Jordan', 'JO', 'JOR', '', 0, 1),
(109, 'Kazakhstan', 'KZ', 'KAZ', '', 0, 1),
(110, 'Kenya', 'KE', 'KEN', '', 0, 1),
(111, 'Kiribati', 'KI', 'KIR', '', 0, 1),
(112, 'North Korea', 'KP', 'PRK', '', 0, 1),
(113, 'South Korea', 'KR', 'KOR', '', 0, 1),
(114, 'Kuwait', 'KW', 'KWT', '', 0, 1),
(115, 'Kyrgyzstan', 'KG', 'KGZ', '', 0, 1),
(116, 'Lao People''s Democratic Republic', 'LA', 'LAO', '', 0, 1),
(117, 'Latvia', 'LV', 'LVA', '', 0, 1),
(118, 'Lebanon', 'LB', 'LBN', '', 0, 1),
(119, 'Lesotho', 'LS', 'LSO', '', 0, 1),
(120, 'Liberia', 'LR', 'LBR', '', 0, 1),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', '', 0, 1),
(122, 'Liechtenstein', 'LI', 'LIE', '', 0, 1),
(123, 'Lithuania', 'LT', 'LTU', '', 0, 1),
(124, 'Luxembourg', 'LU', 'LUX', '', 0, 1),
(125, 'Macau', 'MO', 'MAC', '', 0, 1),
(126, 'FYROM', 'MK', 'MKD', '', 0, 1),
(127, 'Madagascar', 'MG', 'MDG', '', 0, 1),
(128, 'Malawi', 'MW', 'MWI', '', 0, 1),
(129, 'Malaysia', 'MY', 'MYS', '', 0, 1),
(130, 'Maldives', 'MV', 'MDV', '', 0, 1),
(131, 'Mali', 'ML', 'MLI', '', 0, 1),
(132, 'Malta', 'MT', 'MLT', '', 0, 1),
(133, 'Marshall Islands', 'MH', 'MHL', '', 0, 1),
(134, 'Martinique', 'MQ', 'MTQ', '', 0, 1),
(135, 'Mauritania', 'MR', 'MRT', '', 0, 1),
(136, 'Mauritius', 'MU', 'MUS', '', 0, 1),
(137, 'Mayotte', 'YT', 'MYT', '', 0, 1),
(138, 'Mexico', 'MX', 'MEX', '', 0, 1),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', '', 0, 1),
(140, 'Moldova, Republic of', 'MD', 'MDA', '', 0, 1),
(141, 'Monaco', 'MC', 'MCO', '', 0, 1),
(142, 'Mongolia', 'MN', 'MNG', '', 0, 1),
(143, 'Montserrat', 'MS', 'MSR', '', 0, 1),
(144, 'Morocco', 'MA', 'MAR', '', 0, 1),
(145, 'Mozambique', 'MZ', 'MOZ', '', 0, 1),
(146, 'Myanmar', 'MM', 'MMR', '', 0, 1),
(147, 'Namibia', 'NA', 'NAM', '', 0, 1),
(148, 'Nauru', 'NR', 'NRU', '', 0, 1),
(149, 'Nepal', 'NP', 'NPL', '', 0, 1),
(150, 'Netherlands', 'NL', 'NLD', '', 0, 1),
(151, 'Netherlands Antilles', 'AN', 'ANT', '', 0, 1),
(152, 'New Caledonia', 'NC', 'NCL', '', 0, 1),
(153, 'New Zealand', 'NZ', 'NZL', '', 0, 1),
(154, 'Nicaragua', 'NI', 'NIC', '', 0, 1),
(155, 'Niger', 'NE', 'NER', '', 0, 1),
(156, 'Nigeria', 'NG', 'NGA', '', 0, 1),
(157, 'Niue', 'NU', 'NIU', '', 0, 1),
(158, 'Norfolk Island', 'NF', 'NFK', '', 0, 1),
(159, 'Northern Mariana Islands', 'MP', 'MNP', '', 0, 1),
(160, 'Norway', 'NO', 'NOR', '', 0, 1),
(161, 'Oman', 'OM', 'OMN', '', 0, 1),
(162, 'Pakistan', 'PK', 'PAK', '', 0, 1),
(163, 'Palau', 'PW', 'PLW', '', 0, 1),
(164, 'Panama', 'PA', 'PAN', '', 0, 1),
(165, 'Papua New Guinea', 'PG', 'PNG', '', 0, 1),
(166, 'Paraguay', 'PY', 'PRY', '', 0, 1),
(167, 'Peru', 'PE', 'PER', '', 0, 1),
(168, 'Philippines', 'PH', 'PHL', '', 0, 1),
(169, 'Pitcairn', 'PN', 'PCN', '', 0, 1),
(170, 'Poland', 'PL', 'POL', '', 0, 1),
(171, 'Portugal', 'PT', 'PRT', '', 0, 1),
(172, 'Puerto Rico', 'PR', 'PRI', '', 0, 1),
(173, 'Qatar', 'QA', 'QAT', '', 0, 1),
(174, 'Reunion', 'RE', 'REU', '', 0, 1),
(175, 'Romania', 'RO', 'ROM', '', 0, 1),
(176, 'Russian Federation', 'RU', 'RUS', '', 0, 1),
(177, 'Rwanda', 'RW', 'RWA', '', 0, 1),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', '', 0, 1),
(179, 'Saint Lucia', 'LC', 'LCA', '', 0, 1),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', '', 0, 1),
(181, 'Samoa', 'WS', 'WSM', '', 0, 1),
(182, 'San Marino', 'SM', 'SMR', '', 0, 1),
(183, 'Sao Tome and Principe', 'ST', 'STP', '', 0, 1),
(184, 'Saudi Arabia', 'SA', 'SAU', '', 0, 1),
(185, 'Senegal', 'SN', 'SEN', '', 0, 1),
(186, 'Seychelles', 'SC', 'SYC', '', 0, 1),
(187, 'Sierra Leone', 'SL', 'SLE', '', 0, 1),
(188, 'Singapore', 'SG', 'SGP', '', 0, 1),
(189, 'Slovak Republic', 'SK', 'SVK', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}', 0, 1),
(190, 'Slovenia', 'SI', 'SVN', '', 0, 1),
(191, 'Solomon Islands', 'SB', 'SLB', '', 0, 1),
(192, 'Somalia', 'SO', 'SOM', '', 0, 1),
(193, 'South Africa', 'ZA', 'ZAF', '', 0, 1),
(194, 'South Georgia &amp; South Sandwich Islands', 'GS', 'SGS', '', 0, 1),
(195, 'Spain', 'ES', 'ESP', '', 0, 1),
(196, 'Sri Lanka', 'LK', 'LKA', '', 0, 1),
(197, 'St. Helena', 'SH', 'SHN', '', 0, 1),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', '', 0, 1),
(199, 'Sudan', 'SD', 'SDN', '', 0, 1),
(200, 'Suriname', 'SR', 'SUR', '', 0, 1),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', '', 0, 1),
(202, 'Swaziland', 'SZ', 'SWZ', '', 0, 1),
(203, 'Sweden', 'SE', 'SWE', '{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}', 1, 1),
(204, 'Switzerland', 'CH', 'CHE', '', 0, 1),
(205, 'Syrian Arab Republic', 'SY', 'SYR', '', 0, 1),
(206, 'Taiwan', 'TW', 'TWN', '', 0, 1),
(207, 'Tajikistan', 'TJ', 'TJK', '', 0, 1),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', '', 0, 1),
(209, 'Thailand', 'TH', 'THA', '', 0, 1),
(210, 'Togo', 'TG', 'TGO', '', 0, 1),
(211, 'Tokelau', 'TK', 'TKL', '', 0, 1),
(212, 'Tonga', 'TO', 'TON', '', 0, 1),
(213, 'Trinidad and Tobago', 'TT', 'TTO', '', 0, 1),
(214, 'Tunisia', 'TN', 'TUN', '', 0, 1),
(215, 'Turkey', 'TR', 'TUR', '', 0, 1),
(216, 'Turkmenistan', 'TM', 'TKM', '', 0, 1),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', '', 0, 1),
(218, 'Tuvalu', 'TV', 'TUV', '', 0, 1),
(219, 'Uganda', 'UG', 'UGA', '', 0, 1),
(220, 'Ukraine', 'UA', 'UKR', '', 0, 1),
(221, 'United Arab Emirates', 'AE', 'ARE', '', 0, 1),
(222, 'United Kingdom', 'GB', 'GBR', '', 1, 1),
(223, 'United States', 'US', 'USA', '{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}', 0, 1),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', '', 0, 1),
(225, 'Uruguay', 'UY', 'URY', '', 0, 1),
(226, 'Uzbekistan', 'UZ', 'UZB', '', 0, 1),
(227, 'Vanuatu', 'VU', 'VUT', '', 0, 1),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', '', 0, 1),
(229, 'Venezuela', 'VE', 'VEN', '', 0, 1),
(230, 'Viet Nam', 'VN', 'VNM', '', 0, 1),
(231, 'Virgin Islands (British)', 'VG', 'VGB', '', 0, 1),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', '', 0, 1),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', '', 0, 1),
(234, 'Western Sahara', 'EH', 'ESH', '', 0, 1),
(235, 'Yemen', 'YE', 'YEM', '', 0, 1),
(237, 'Democratic Republic of Congo', 'CD', 'COD', '', 0, 1),
(238, 'Zambia', 'ZM', 'ZMB', '', 0, 1),
(239, 'Zimbabwe', 'ZW', 'ZWE', '', 0, 1),
(242, 'Montenegro', 'ME', 'MNE', '', 0, 1),
(243, 'Serbia', 'RS', 'SRB', '', 0, 1),
(244, 'Aaland Islands', 'AX', 'ALA', '', 0, 1),
(245, 'Bonaire, Sint Eustatius and Saba', 'BQ', 'BES', '', 0, 1),
(246, 'Curacao', 'CW', 'CUW', '', 0, 1),
(247, 'Palestinian Territory, Occupied', 'PS', 'PSE', '', 0, 1),
(248, 'South Sudan', 'SS', 'SSD', '', 0, 1),
(249, 'St. Barthelemy', 'BL', 'BLM', '', 0, 1),
(250, 'St. Martin (French part)', 'MF', 'MAF', '', 0, 1),
(251, 'Canary Islands', 'IC', 'ICA', '', 0, 1),
(252, 'Ascension Island (British)', 'AC', 'ASC', '', 0, 1),
(253, 'Kosovo, Republic of', 'XK', 'UNK', '', 0, 1),
(254, 'Isle of Man', 'IM', 'IMN', '', 0, 1),
(255, 'Tristan da Cunha', 'TA', 'SHN', '', 0, 1),
(256, 'Guernsey', 'GG', 'GGY', '', 0, 1),
(257, 'Jersey', 'JE', 'JEY', '', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_coupon`
--

CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_coupon`
--

INSERT INTO `oc_coupon` (`coupon_id`, `name`, `code`, `type`, `discount`, `logged`, `shipping`, `total`, `date_start`, `date_end`, `uses_total`, `uses_customer`, `status`, `date_added`) VALUES
(4, '-10% Discount', '2222', 'P', '10.0000', 0, 0, '0.0000', '2014-01-01', '2020-01-01', 10, '10', 0, '2009-01-27 13:55:03'),
(5, 'Free Shipping', '3333', 'P', '0.0000', 0, 1, '100.0000', '2014-01-01', '2014-02-01', 10, '10', 0, '2009-03-14 21:13:53'),
(6, '-10.00 Discount', '1111', 'F', '10.0000', 0, 0, '10.0000', '2014-01-01', '2020-01-01', 100000, '10000', 0, '2009-03-14 21:15:18');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_coupon_category`
--

CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_coupon_history`
--

CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_coupon_product`
--

CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_currency`
--

CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_currency`
--

INSERT INTO `oc_currency` (`currency_id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_place`, `value`, `status`, `date_modified`) VALUES
(1, 'Real', 'BRL', 'R$', '', '2', 1.00000000, 0, '2016-07-01 12:28:09'),
(2, 'Real_BRL', 'BRL', 'R$', '', '2', 1.00000000, 1, '2016-07-01 12:28:09'),
(3, 'Euro', 'EUR', '', '€', '2', 0.28110000, 0, '2016-07-01 12:04:48');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer`
--

CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_customer`
--

INSERT INTO `oc_customer` (`customer_id`, `customer_group_id`, `store_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `password`, `salt`, `cart`, `wishlist`, `newsletter`, `address_id`, `custom_field`, `ip`, `status`, `approved`, `safe`, `token`, `date_added`) VALUES
(26, 1, 0, 'Apresentação', 'Hoje', 'apresenta@hoje.com', '9999999', '', '89ef435fb4ac2eaee72008f4efbb9345b71fbbdc', 'mngFRAzID', NULL, NULL, 1, 0, '{"1":"2"}', '127.0.0.1', 1, 1, 1, '', '2016-07-01 07:05:40'),
(24, 1, 0, 'Artur', 'Schaefer', 'artur.schaefer@hotmail.com', '27 99850-3478', '', 'bba751e9807a2202d7a3cc5d6fa51bc187d0b2ae', 'WURHiDJrB', NULL, NULL, 0, 0, '{"1":"1"}', '127.0.0.1', 1, 1, 1, '', '2016-04-11 23:09:12');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_activity`
--

CREATE TABLE `oc_customer_activity` (
  `activity_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_customer_activity`
--

INSERT INTO `oc_customer_activity` (`activity_id`, `customer_id`, `key`, `data`, `ip`, `date_added`) VALUES
(1, 17, 'forgotten', '{"customer_id":"17","name":"Artur Schaefer"}', '127.0.0.1', '2016-04-11 21:47:05'),
(2, 24, 'login', '{"customer_id":"24","name":"Artur Schaefer"}', '127.0.0.1', '2016-04-11 23:09:22'),
(3, 24, 'login', '{"customer_id":"24","name":"Artur Schaefer"}', '127.0.0.1', '2016-04-20 14:46:52'),
(4, 24, 'login', '{"customer_id":"24","name":"Artur Schaefer"}', '127.0.0.1', '2016-05-11 16:19:11'),
(5, 24, 'address_add', '{"customer_id":"24","name":"Artur Schaefer"}', '127.0.0.1', '2016-05-11 16:19:41'),
(6, 24, 'order_account', '{"customer_id":"24","name":"Artur Schaefer","order_id":1}', '127.0.0.1', '2016-05-11 16:20:05'),
(7, 24, 'login', '{"customer_id":"24","name":"Artur Schaefer"}', '127.0.0.1', '2016-05-19 14:53:30'),
(8, 24, 'login', '{"customer_id":"24","name":"Artur Schaefer"}', '127.0.0.1', '2016-05-19 15:43:50'),
(9, 24, 'order_account', '{"customer_id":"24","name":"Artur Schaefer","order_id":2}', '127.0.0.1', '2016-05-19 15:44:39'),
(10, 24, 'login', '{"customer_id":"24","name":"Artur Schaefer"}', '127.0.0.1', '2016-06-29 12:49:25'),
(11, 24, 'address_add', '{"customer_id":"24","name":"Artur Schaefer"}', '127.0.0.1', '2016-06-29 12:50:21'),
(12, 24, 'order_account', '{"customer_id":"24","name":"Artur Schaefer","order_id":3}', '127.0.0.1', '2016-06-29 12:50:55'),
(13, 24, 'login', '{"customer_id":"24","name":"Artur Schaefer"}', '127.0.0.1', '2016-06-29 18:06:58'),
(14, 24, 'address_add', '{"customer_id":"24","name":"Artur Schaefer"}', '127.0.0.1', '2016-06-29 18:07:55'),
(15, 24, 'address_add', '{"customer_id":"24","name":"Artur Schaefer"}', '127.0.0.1', '2016-06-29 18:08:41'),
(16, 24, 'address_add', '{"customer_id":"24","name":"Artur Schaefer"}', '127.0.0.1', '2016-06-29 18:09:18'),
(17, 24, 'order_account', '{"customer_id":"24","name":"Artur Schaefer","order_id":4}', '127.0.0.1', '2016-06-29 18:10:51'),
(18, 26, 'login', '{"customer_id":"26","name":"Apresenta\\u00e7\\u00e3o Hoje"}', '127.0.0.1', '2016-07-01 07:16:13'),
(19, 26, 'address_add', '{"customer_id":"26","name":"Apresenta\\u00e7\\u00e3o Hoje"}', '127.0.0.1', '2016-07-01 07:17:11');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_group`
--

CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_customer_group`
--

INSERT INTO `oc_customer_group` (`customer_group_id`, `approval`, `sort_order`) VALUES
(1, 0, 1),
(2, 1, 1),
(3, 0, 0),
(4, 1, 0),
(5, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_group_description`
--

CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_customer_group_description`
--

INSERT INTO `oc_customer_group_description` (`customer_group_id`, `language_id`, `name`, `description`) VALUES
(1, 2, 'Padrão', 'Cliente padrão. \r\nQue pode vir a realizar compras ou não.'),
(1, 1, 'Default', 'test'),
(2, 1, 'Especial', ''),
(2, 2, 'Especial', 'Cliente que tem privilégios na hora da compra. Sua venda é autorizada automaticamente.'),
(3, 1, 'Pessoa Jurídica ', ''),
(4, 1, 'Pessoa Jurídica ', ''),
(5, 1, 'Pessoa Jurídica ', 'hiuhoho');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_history`
--

CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_ip`
--

CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_customer_ip`
--

INSERT INTO `oc_customer_ip` (`customer_ip_id`, `customer_id`, `ip`, `date_added`) VALUES
(1, 24, '127.0.0.1', '2016-04-11 23:09:22'),
(2, 26, '127.0.0.1', '2016-07-01 07:16:13');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_login`
--

CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_customer_login`
--

INSERT INTO `oc_customer_login` (`customer_login_id`, `email`, `ip`, `total`, `date_added`, `date_modified`) VALUES
(4, 'artur.schaefer2@gmail.com', '127.0.0.1', 4, '2016-06-29 17:49:07', '2016-06-29 23:06:06'),
(2, '', '127.0.0.1', 1, '2016-04-12 02:42:45', '2016-04-12 02:42:45'),
(6, 'artur.schaefer21@gmail.com', '127.0.0.1', 2, '2016-06-29 23:05:44', '2016-06-29 23:05:52');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_online`
--

CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_reward`
--

CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_customer_reward`
--

INSERT INTO `oc_customer_reward` (`customer_reward_id`, `customer_id`, `order_id`, `description`, `points`, `date_added`) VALUES
(2, 24, 3, 'Pedido nº: #3', 30, '2016-07-01 07:28:40');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_transaction`
--

CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_customer_wishlist`
--

CREATE TABLE `oc_customer_wishlist` (
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_custom_field`
--

CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_custom_field`
--

INSERT INTO `oc_custom_field` (`custom_field_id`, `type`, `value`, `location`, `status`, `sort_order`) VALUES
(1, 'radio', '', 'account', 1, 6),
(2, 'radio', '', 'address', 1, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_custom_field_customer_group`
--

CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_custom_field_customer_group`
--

INSERT INTO `oc_custom_field_customer_group` (`custom_field_id`, `customer_group_id`, `required`) VALUES
(1, 2, 1),
(1, 1, 1),
(2, 2, 1),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_custom_field_description`
--

CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_custom_field_description`
--

INSERT INTO `oc_custom_field_description` (`custom_field_id`, `language_id`, `name`) VALUES
(1, 2, 'Renda'),
(1, 1, 'Renda'),
(2, 1, 'Residência'),
(2, 2, 'Residência');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_custom_field_value`
--

CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_custom_field_value`
--

INSERT INTO `oc_custom_field_value` (`custom_field_value_id`, `custom_field_id`, `sort_order`) VALUES
(2, 1, 0),
(1, 1, 0),
(3, 2, 0),
(4, 2, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_custom_field_value_description`
--

CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_custom_field_value_description`
--

INSERT INTO `oc_custom_field_value_description` (`custom_field_value_id`, `language_id`, `custom_field_id`, `name`) VALUES
(2, 2, 1, 'Abaixo de 76 salários minímos '),
(2, 1, 1, 'Acima de 6 salários minímos '),
(1, 2, 1, 'Abaixo de 5 salários minímos '),
(1, 1, 1, 'Abaixo de 5 salários minímos '),
(3, 1, 2, 'Aluguel'),
(3, 2, 2, 'Aluguel'),
(4, 1, 2, 'Própria'),
(4, 2, 2, 'Própria');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_download`
--

CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_download`
--

INSERT INTO `oc_download` (`download_id`, `filename`, `mask`, `date_added`) VALUES
(1, 'Captura de tela de 2016-06-27 20-56-11.png.42qe2MHxA0xSUGD8VFGLrL1MwceC5Rof', 'Captura de tela de 2016-06-27 20-56-11.png', '2016-06-27 20:56:47');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_download_description`
--

CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_download_description`
--

INSERT INTO `oc_download_description` (`download_id`, `language_id`, `name`) VALUES
(1, 1, 'Mesa Quadrada'),
(1, 2, 'Mesa Quadrada');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_event`
--

CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_event`
--

INSERT INTO `oc_event` (`event_id`, `code`, `trigger`, `action`) VALUES
(1, 'voucher', 'post.order.history.add', 'total/voucher/send');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_extension`
--

CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_extension`
--

INSERT INTO `oc_extension` (`extension_id`, `type`, `code`) VALUES
(1, 'payment', 'cod'),
(2, 'total', 'shipping'),
(3, 'total', 'sub_total'),
(4, 'total', 'tax'),
(5, 'total', 'total'),
(6, 'module', 'banner'),
(7, 'module', 'carousel'),
(8, 'total', 'credit'),
(9, 'shipping', 'flat'),
(10, 'total', 'handling'),
(11, 'total', 'low_order_fee'),
(12, 'total', 'coupon'),
(13, 'module', 'category'),
(14, 'module', 'account'),
(15, 'total', 'reward'),
(16, 'total', 'voucher'),
(17, 'payment', 'free_checkout'),
(18, 'module', 'featured'),
(19, 'module', 'slideshow'),
(20, 'captcha', 'google_captcha'),
(22, 'feed', 'google_sitemap'),
(23, 'analytics', 'google_analytics'),
(24, 'module', 'filter'),
(25, 'module', 'onwebchat'),
(26, 'shipping', 'correios'),
(27, 'module', 'bestseller'),
(28, 'module', 'validar'),
(29, 'payment', 'boleto_cef_sigcb'),
(30, 'shipping', 'weight'),
(31, 'shipping', 'item');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_filter`
--

CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_filter`
--

INSERT INTO `oc_filter` (`filter_id`, `filter_group_id`, `sort_order`) VALUES
(2, 1, 0),
(1, 1, 0),
(3, 2, 0),
(4, 3, 0),
(5, 3, 0),
(6, 3, 0),
(7, 2, 0),
(8, 2, 0),
(9, 2, 0),
(10, 3, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_filter_description`
--

CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_filter_description`
--

INSERT INTO `oc_filter_description` (`filter_id`, `language_id`, `filter_group_id`, `name`) VALUES
(2, 1, 1, 'Solteiro'),
(1, 2, 1, 'Casal'),
(1, 1, 1, 'Casal'),
(2, 2, 1, 'Solteiro'),
(3, 2, 2, 'Liso'),
(3, 1, 2, 'Liso'),
(4, 2, 3, 'Provencal'),
(4, 1, 3, 'Provencal'),
(5, 2, 3, 'Vintage'),
(5, 1, 3, 'Vintage'),
(6, 2, 3, 'Rustico'),
(6, 1, 3, 'Rustico'),
(7, 1, 2, 'Desenhado'),
(7, 2, 2, 'Desenhado'),
(8, 1, 2, 'Rustico'),
(8, 2, 2, 'Rustico'),
(9, 1, 2, 'Carpete'),
(9, 2, 2, 'Carpete'),
(10, 1, 3, 'Moderno'),
(10, 2, 3, 'Moderno');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_filter_group`
--

CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_filter_group`
--

INSERT INTO `oc_filter_group` (`filter_group_id`, `sort_order`) VALUES
(1, 0),
(2, 0),
(3, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_filter_group_description`
--

CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_filter_group_description`
--

INSERT INTO `oc_filter_group_description` (`filter_group_id`, `language_id`, `name`) VALUES
(1, 1, 'TipoEnxoval'),
(1, 2, 'TipoEnxoval'),
(2, 2, 'MaterialTapete'),
(2, 1, 'MaterialTapete'),
(3, 1, 'TipoMovel'),
(3, 2, 'TipoMovel');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_geo_zone`
--

CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_geo_zone`
--

INSERT INTO `oc_geo_zone` (`geo_zone_id`, `name`, `description`, `date_modified`, `date_added`) VALUES
(3, 'UK VAT Zone', 'UK VAT', '2010-02-26 22:33:24', '2009-01-06 23:26:25'),
(4, 'UK Shipping', 'UK Shipping Zones', '2010-12-15 15:18:13', '2009-06-23 01:14:53');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_information`
--

CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_information`
--

INSERT INTO `oc_information` (`information_id`, `bottom`, `sort_order`, `status`) VALUES
(3, 1, 3, 1),
(4, 1, 1, 1),
(5, 1, 4, 1),
(6, 1, 2, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_information_description`
--

CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_information_description`
--

INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(4, 2, 'Sobre Nós', '&lt;p&gt;Nosso lema é: &lt;span style=&quot;font-weight: bold;&quot;&gt;Conforto e Beleza Para Seu Lar!&lt;br&gt;&lt;/span&gt;&lt;br&gt;Obrigado pelo seu interesse em nos conhecer. As grandes amizades costumam começar assim, num primeiro aperto de mãos, numa atitude gentil, em meia dúzia de palavras sinceras que revelam a alma e nos dizem: siga em frente, você está num lugar seguro.&lt;br&gt;&lt;br&gt;Nossos princípios partem do conceito de família e amizade. Baseada em valores éticos, de responsabilidade social e contaminada pela paixão ao trabalho. A inovação e o bem estar do cliente, satisfeito com nossos produtos, é o que mais prezamos. Excelência no atendimento é algo essencial e queremos o melhor para você!&lt;br&gt;&lt;br&gt;No início, em 1990, começamos com entregas residenciais, no interior do Espirito Santo, na zona rural de Marilândia. Depois, foi criada a loja, no centro de Marilândia. Onde está em plena atividade e expansão nos dias de hoje.&lt;br&gt;&lt;br&gt;Com a responsabilidade de ser referência no mercado, se permite ter ao seu lado parceiros que também advogam os mesmos princípios. É este o perfil dos nossos franqueados, dos nossos fornecedores, todos consagrados em seus segmentos, dos nossos colaboradores, dos nossos amigos e clientes. Negócios são negócios, mas aqui as amizades nunca ficam à parte. O sucesso de um é o sucesso do coletivo.&lt;br&gt;&lt;br&gt;Entre e fique à vontade. &lt;span style=&quot;font-weight: bold;&quot;&gt;Este site foi feito para você!&lt;/span&gt;&lt;/p&gt;', 'Sobre Nós', '', ''),
(3, 2, 'Política de Privacidade', '&lt;p style=&quot;text-align: justify;&quot;&gt;A Política de Privacidade e Segurança abaixo constitui parte integrante dos Termos e Condições de Uso.&amp;nbsp;&amp;nbsp; &lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;1. Identificação &lt;/span&gt;&lt;br&gt;Este site é de propriedade, mantido, e operado por ARTE MANIA ENXOVAIS, com endereço na Rua Virginia Paganini Tozi, Nº 17 - Centro Marilândia, Espirito Santo.&lt;/p&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;2. Contato – CALM (Central de Atendimento ARTE MANIA ENXOVAIS)&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;Caso o Usuário necessite de qualquer informação, esclarecimento ou atendimento com relação a esta Política de Privacidade e Segurança, a ARTE MANIA ENXOVAIS disponibiliza o CALM para receber todas as comunicações que o Usuário desejar fazer. O CALM opera por meios dos canais de comunicação listados abaixo: (a) Presencialmente, em qualquer uma das lojas físicas ARTE MANIA ENXOVAIS, durante os horários de funcionamento; (b) Pelos telefones (027) 3724-1761, de segunda a sexta, das 08:00 às 17:00, e aos sábados das 08:00 às 12:00; e (c) Por correspondência endereçada à ARTE MANIA ENXOVAIS, Rua Virginia Paganini Tozi, sempre acompanhada das informações de contato do consumidor, para que possamos finalizar o atendimento. Em todos os casos, o Usuário receberá, pelo mesmo canal de comunicação, uma confirmação imediata do recebimento da sua demanda, que será tratada e respondida em um prazo máximo de 5 (cinco) dias. Além disso, a ARTE MANIA ENXOVAIS disponibiliza neste site uma seção de FAQ (Perguntas mais frequentes), bem como suas demais políticas: Política de Trocas e Devoluções, Política de Pagamentos, Política de Entrega de Produtos, e, finalmente, os Termos e Condições de Uso deste Site. Todos estes documentos podem ser consultados online ou baixados pelos usuários em formato PDF para consulta off-line e arquivo.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;3. Informações gerais&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;A&amp;nbsp; ARTE MANIA ENXOVAIS toma todas as medidas necessárias para proteger a privacidade do Usuário, em atendimento à legislação em vigor. Este documento detalha as formas de coleta, guarda, utilização, compartilhamento e divulgação de seus dados pessoais, bem como aponta claramente as medidas tomadas para assegurar a proteção dos dados coletados.&amp;nbsp;&amp;nbsp; &lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;4. Coleta, utilização e guarda dos dados&lt;/span&gt;&lt;br&gt;Coleta de dados: Conta de Acesso. Para a criação de uma Conta de Acesso no Site, o Usuário deve preencher um cadastro, que pode variar de complexidade de acordo com as operações que pretende fazer. Desta forma, um cadastro simples composto de endereço de e-mail e CEP será requerido para o envio de mensagens publicitárias e promocionais ao Usuário sobre produtos, serviços, promoções e/ou novidades da ARTE MANIA ENXOVAIS. Uma Conta de Acesso básica poderá ser feita pelo Usuário a qualquer momento, para inscrições em cursos, por exemplo, mediante preenchimento de formulário contendo nome completo, endereço de e-mail, número de telefone, CEP, sexo, documento de identidade, CPF e criação de uma senha. Para a realização de Compras, o Usuário deverá criar uma Conta de Acesso completa, fornecendo nome completo, endereço de e-mail, número de telefone, CPF, endereço completo (estado, cidade, bairro, rua, número, complemento, informações extras). Os dados fornecidos pelos Usuários serão armazenados e utilizados pela ARTE MANIA ENXOVAIS, por si ou por terceiros por ela contratados, para fornecer os produtos do Site, realizar as transações comerciais, processar pagamentos a elas relacionados, compartilhar dados, enviar e-mails de ofertas, produtos, serviços e campanhas de marketing, armazenar o histórico de produtos visualizados, promover campanhas de retargeting, personalizar páginas do Site, verificar dados bancários para evitar fraudes (dados não serão armazenados) e realizar entregas e devolução. Os dados poderão ser compartilhados com terceiros contratados pela ARTE MANIA ENXOVAIS nos termos desta Política, ressaltando-se que a criação de cada Conta de Acesso ou qualquer cadastro no Site, para o qual seja necessário o envio de qualquer dado pessoal do Usuário, pressupõe o consentimento expresso quanto à coleta, uso, armazenamento e tratamento de dados pessoais. O Usuário é responsável, nas esferas civil e criminal, pela veracidade e atualização dos dados fornecidos (inclusive os dados pessoais) e a ARTE MANIA ENXOVAIS se exime de qualquer reponsabilidade por danos decorrentes do reenchimento incompleto, impreciso ou inexato do cadastro pelo Usuário, sob qualquer meio ou forma, ou, ainda, pelo uso desse cadastro de forma indevida por qualquer terceiro não autorizado a usar tais dados ou, ainda, por terceiros que tenham, devida ou&amp;nbsp; indevidamente, obtido os dados do Usuário para acesso no Site, agindo como se ele fosse. &lt;br&gt;Coleta de dados: Cookies. Visando oferecer a melhor experiência de navegação e Compras ao Usuário, a ARTE MANIA ENXOVAIS utiliza-se de tecnologias para coletar e armazenar informações relacionadas à visita do Usuário no Site e isso pode incluir o envio de um ou mais cookies ou identificadores anônimos que coletam dados relativos às preferências de navegação e às páginas visitadas pelo Usuário. Desta forma, a apresentação do Site fica personalizada e alinhada aos interesses pessoais do Usuário. A utilização destes dados fica restrita ao objetivo indicado e a ARTE MANIA ENXOVAIS se compromete a não utilizar ou permitir a utilização de tais dados com outra finalidade. Ademais, a coleta, guarda e tratamento destes dados é absolutamente automatizada, não havendo nenhuma possibilidade de contato humano com os dados em questão. O Usuário pode e poderá, a qualquer tempo, caso discorde da política de cookies acima, utilizar as ferramentas de seu navegador que impedem a instalação de cookies e ainda apagar quaisquer cookies existentes em seu dispositivo de conexão com a internet. Neste caso, algumas funcionalidades do Site poderão apresentar erros. A ARTE MANIA ENXOVAIS poderá ainda utilizar-se de outras tecnologias para a coleta de dados de navegação dos Usuários, comprometendo-se a guardá-los, tratá-los e utilizá-los em conformidade com este Política. &lt;br&gt;Coleta de dados: Registros de acesso. A ARTE MANIA ENXOVAIS manterá em sua base de dados todas as informações relativas aos acessos do Usuário ao Site, incluindo, mas não se limitando ao endereço IP, às páginas acessadas, aos horários e datas de acesso, e o dispositivo de acesso utilizado, nos termos da legislação vigente. Tais registros poderão ser utilizados em investigações internas ou públicas para averiguação de práticas que possam gerar quaisquer prejuízos à ARTE MANIA ENXOVAIS, inclusive a prática de crimes em ambientes virtuais. Coleta de dados: Outras formas. A ARTE MANIA ENXOVAIS poderá coletar dados pessoais do Usuário, que não os identificados aqui, que sejam inseridos pelo Usuário e sobre o Usuário voluntariamente no processo de navegação do Site ou quando entrar em contato com o CALM (Central de Atendimento ARTE MANIA ENXOVAIS). Finalmente, a ARTE MANIA ENXOVAIS poderá acessar bases de dados públicas ou privadas para confirmar a veracidade dos dados pessoais informados pelo Usuário, inclusive dados relacionados ao pagamento da Compra. &lt;br&gt;Utilização de dados: E-mail. A ARTE MANIA ENXOVAIS utilizará o e-mail do Usuário prioritariamente para enviar informações sobre suas Compras (confirmação de Compra e atualizações da situação). O e-mail cadastrado também será utilizado para comunicação relacionada aos cursos em que o Cliente estiver inscrito e para recuperação da senha de acesso do Cliente, em caso de perda ou esquecimento da senha. &lt;br&gt;Utilização de dados: Publicidade via mala direta, e-mail, MMS ou SMS. No momento do cadastro de seus dados de contato, o Usuário terá a opção de aceitar ou proibir o envio de mensagens publicitárias. Ademais, a qualquer momento, o Usuário poderá alterar sua decisão, por meio de acesso à sua Conta no Site ou de contato com o CALM (Central de Atendimento ARTE MANIA ENXOVAIS) ou, ainda, no campo de descadastro existente nas newsletters enviadas pela ARTE MANIA ENXOVAIS, sendo que nesse caso o descadastramento da base de dados poderá demorar até 5 (cinco) dias para ser efetivada. &lt;br&gt;Utilização dos dados: Outras formas. Além das formas expostas acima, a ARTE MANIA ENXOVAIS poderá, a seu exclusivo critério, utilizar os dados pessoais do Usuário nas seguintes formas: (i) atualização de cadastro; (ii) garantia da segurança do Usuário; (iii) resposta a solicitações do próprio Usuário; (iv) informação acerca de alterações nos Termos e Condições de Uso ou das Políticas; (v) elaboração de estatísticas com relação ao uso do Site, garantido o anonimato do Usuário, inclusive para fins de aperfeiçoamento e entendimento do perfil dos Usuários para a melhoria do Site; (vi) aperfeiçoamento de ferramentas de interatividade entre o Site e o Usuário, garantido seu anonimato; (vii) cumprimento de ordens judiciais; e (viii) defesa dos direitos da ARTE MANIA ENXOVAIS contra o Usuário em procedimentos judiciais ou administrativos. &lt;br&gt;Guarda dos dados. A ARTE MANIA ENXOVAIS guardará todos os dados coletados em suas bases de dados protegidas e seguras. Tais dados serão acessados apenas por processos computadorizados automatizados, profissionais autorizados e nos casos listados nesta Política. Caso o Usuário requeira a exclusão de seus dados da base de dados, a ARTE MANIA ENXOVAIS se reserva o seu direito de manter os dados em questão em cópias de salvaguarda por até 6 (seis) meses, a fim de cumprir obrigações legais de guarda obrigatória.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;5. Compartilhamento e divulgação dos dados &lt;/span&gt;&lt;br&gt;A ARTE MANIA ENXOVAIS tem a confidencialidade dos dados pessoais do Usuário como prioridade em seus negócios. Assim, assume o compromisso de não divulgar, compartilhar, dar acesso a, facilitar acesso a, alugar, vender, trocar ou de qualquer outra forma disponibilizar tais informações a terceiros, sob nenhum pretexto, exceto nos casos autorizados expressamente pelo Usuário, inclusive nos casos indicados abaixo.&amp;nbsp;&amp;nbsp; Com o único intuito de permitir a concretização de Compras no Site, a ARTE MANIA ENXOVAIS poderá compartilhar dados pessoais dos Usuários com seus parceiros comerciais, como empresas processadoras de pagamentos, administradoras de cartão de crédito e transportadoras. Neste caso, serão compartilhados apenas os dados pessoais imprescindíveis para que o parceiro comercial da ARTE MANIA ENXOVAIS desempenhe sua atividade (cobrança, entrega, etc.). Ademais, tais parceiros comerciais serão obrigados, por meio de contratos de confidencialidade, a não arquivar, manter em arquivo, compilar, copiar, reproduzir ou compartilhar tais dados com quem quer que seja.&amp;nbsp;&amp;nbsp; A outra hipótese de divulgação de dados pessoais é por meio de uma determinação judicial. Também neste caso, a divulgação ocorrerá apenas na medida necessária para cumprir a determinação judicial, permanecendo sigilosos os dados não requeridos pela autoridade em questão.&amp;nbsp;&amp;nbsp; &lt;/p&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;6. Dados transmitidos sem solicitação da ARTE MANIA ENXOVAIS &lt;/span&gt;&lt;br&gt;A ARTE MANIA ENXOVAIS solicita ao Usuário que não envie à ARTE MANIA ENXOVAIS quaisquer informações comerciais, criações pessoais, ideias, fotografias, projetos, conceitos, etc (Conteúdos Não Solicitados). Tais Conteúdos Não Solicitados serão sumariamente descartados, sem qualquer leitura ou incorporação às bases de dados da ARTE MANIA ENXOVAIS. Nos termos da Lei de Direitos Autorais, não são suscetíveis de proteção no Brasil as ideias, concepções abstratas, projetos, planos e esquemas. Desta forma, o eventual uso pela ARTE MANIA ENXOVAIS de quaisquer Conteúdos Não Solicitados será decorrente de desenvolvimento interno e independente e poderá ocorrer livremente, não sendo devida ou exigida qualquer autorização ou compensação ao usuário ou consumidor. A ARTE MANIA ENXOVAIS desenvolve de forma independente todas as suas políticas e atividades, rechaçando desde já qualquer acusação ou alegação de aproveitamento de Conteúdos Não Solicitados. &lt;/p&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;7. Medidas de segurança&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;Recursos tecnológicos. A ARTE MANIA ENXOVAIS adota recursos tecnológicos avançados para garantir a segurança de todos os dados pessoais coletados e armazenados. Nem mesmo os funcionários da ARTE MANIA ENXOVAIS têm livre acesso à base de dados dos Usuários, sendo este limitado apenas àquelas pessoas cujas funções exigem o contato com dados pessoais. Entre as medidas de segurança implementadas, estão a utilização de modernas forma de criptografia e a instalação de barreiras contra o acesso indevido à base de dados (firewalls). Tais medidas podem ser verificadas pelo Usuário acessando o Site pela visualização do “cadeado de segurança” em seu navegador de internet. &lt;br&gt;Sigilo da senha. A ARTE MANIA ENXOVAIS recomenda que o Usuário mantenha sua senha sob total sigilo, evitando a sua divulgação a terceiros. A ARTE MANIA ENXOVAIS nunca solicitará ao Usuário que informe sua senha fora do Site, por telefone, e-mail ou por qualquer outro meio de comunicação. A senha do Usuário deverá ser usada exclusivamente no momento do acesso à Conta do Usuário no Site. Caso o Usuário suspeite que sua senha tenha sido exposta a terceiros, a ARTE MANIA ENXOVAIS recomenda a imediata substituição da senha. &lt;br&gt;E-mails suspeitos. A ARTE MANIA ENXOVAIS envia ao Usuário apenas e-mails com mensagens publicitárias, divulgando produtos e serviços ou atualizando informações. A ARTE MANIA ENXOVAIS não envia mensagens (i) solicitando dados pessoais do Usuário; (ii) solicitando a senha ou dados financeiros do Usuário; (iii) com arquivos anexos exceto documentos em PDF; ou (iv) com links para download de arquivos. Caso receba um e-mail com tais características, desconsidere-o e entre em contato com o CALM (Central de Atendimento ARTE MANIA ENXOVAIS). &lt;br&gt;Cartões de crédito. A ARTE MANIA ENXOVAIS não armazena em sua base de dados informações financeiras do Usuário, como as informações referentes a cartões de crédito. O procedimento de aprovação do pagamento ocorre entre o Usuário, os bancos e as administradoras de cartões, sem intervenção da ARTE MANIA ENXOVAIS. &lt;br&gt;Impossibilidade de responsabilização. Em que pese os maiores esforços da ARTE MANIA ENXOVAIS, o atual estágio da tecnologia não permite que se crie uma base de dados absolutamente segura contra ataques. Desta forma, a ARTE MANIA ENXOVAIS exime-se de qualquer responsabilidade por danos eventualmente causados por terceiros, inclusive por invasões no Site ou na base de dados, por vírus ou por vazamento de informações, a menos que fique comprovada exclusiva culpa da ARTE MANIA ENXOVAIS. &lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;8. Direitos das pessoas sobre os dados coletados &lt;/span&gt;&lt;br&gt;A&amp;nbsp; ARTE MANIA ENXOVAIS permite que o Usuário faça diferentes tipos de cadastro, contendo mais ou menos informações de acordo com seu próprio objetivo no Site. Assim, o Usuário tem a possibilidade de escolher a forma de cadastro, devendo preenchê-lo com informações verídicas e atualizadas. O Usuário declara ser o legítimo titular de seus dados pessoais e poderá, a qualquer momento, utilizar as ferramentas do Site para editá-los, atualizá-los ou removê-los preventivamente de nossa base de dados. A ARTE MANIA ENXOVAIS manterá os dados preventivamente removidos em sigilo pelo prazo de seis meses, para atender obrigações legais de guarda obrigatória, descartando-os definitivamente após tal período. A ARTE MANIA ENXOVAIS disponibiliza ainda ferramentas para que o Usuário possa determinar alguns usos de seus dados pessoais, como a autorização para envio de peças de publicidade.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;9. Uso de dados em caso de alteração de controle da ARTE MANIA ENXOVAIS&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;Os dados coletados podem ser eventualmente transferidos a um terceiro em caso de alteração do controle, de uma aquisição, de uma incorporação, de uma fusão ou de uma venda de ativos da ARTE MANIA ENXOVAIS sob qualquer meio ou forma.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;10. Política de dados de menores&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;O Site não é direcionado a menores de 18 (dezoito) anos. No entanto, o acesso ao Site não é proibido aos menores, uma vez que não há qualquer conteúdo restrito por questões etárias. Os formulários e questionários do site da ARTE MANIA ENXOVAIS não visam obter dados de menores. Caso tais dados sejam inseridos por menores, seu representante legal poderá contatar o CALM (Central de Atendimento ARTE MANIA ENXOVAIS) para retificar, modificar ou remover tais dados.&lt;/p&gt;', 'Política de Privacidade', '', ''),
(6, 2, 'Informações de entrega', '&lt;p&gt;\r\n	Entregamos nos arredores Marilândia e Colatina.&lt;br&gt;O prazo para entrega dos produtos varia de acordo com região de entrega, volume e peso do pedido.&lt;br&gt;Os pedidos serão processados em até 2 (dois) dias úteis após a confirmação do pagamento junto as instituições financeiras.&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;Custos com frete&lt;/span&gt;&lt;br&gt;O frete será calculado automaticamente pelo sistema direto no carrinho de compras, de acordo com a opção escolhida, seja ela PAC ou SEDEX variando de acordo com o peso total das mercadorias, o volume da caixa e o local de entrega.&lt;/p&gt;\r\n', 'Informações de entrega', '', ''),
(4, 1, 'About Us', '&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n', 'Sobre Nós', '', ''),
(3, 1, 'Política de Privacidade', '&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n', 'Política de Privacidade', '', ''),
(6, 1, 'Informações de entrega', '&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n', 'Informações de entrega', '', ''),
(5, 1, 'Termos e condições', '&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n', 'Termos e condições', '', '');
INSERT INTO `oc_information_description` (`information_id`, `language_id`, `title`, `description`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(5, 2, 'Termos e condições', '&lt;p style=&quot;text-align: justify;&quot;&gt;Sumário &lt;br&gt;&lt;a href=&quot;#apresentacao&quot;&gt;1. Apresentação e definições&lt;/a&gt; &lt;br&gt;2. Regras de utilização do site &lt;br&gt;3. Cadastro de clientes &lt;br&gt;4. Dados pessoais, privacidade e segurança &lt;br&gt;5. Oferta de produtos &lt;br&gt;6. Estoque &lt;br&gt;7. Promoções&lt;br&gt;8. Pagamento &lt;br&gt;9. Preço &lt;br&gt;10. Acompanhamento da Compra &lt;br&gt;11. Entrega &lt;br&gt;12. Arrependimento, trocas e devoluções &lt;br&gt;13. Garantias &lt;br&gt;14. Responsabilidades &lt;br&gt;15. Links para outros websites &lt;br&gt;16. Aplicações de Internet ou vírus de computador &lt;br&gt;17. Direitos de Propriedade Intelectual &lt;br&gt;18. Comunicações e CALM &lt;br&gt;19. Duração &lt;br&gt;20. Atualizações destes Termos e Condições &lt;br&gt;21. Registro Público&lt;br&gt;22. Idioma&lt;br&gt;23. Diversos&lt;br&gt;24. Lei aplicável e Foro de Eleição&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;&lt;a href=&quot;apresentacao&quot;&gt;1. Apresentação e definições&lt;/a&gt;&lt;/span&gt;&lt;br&gt;&lt;br&gt;Este site é de propriedade, mantido, e operado por [ARTE MANIA ENXOVAIS ], com endereço na Rua Virginia Paganini Tozi e endereço de e-mail contato@artemaniaenxovais.com.br. Este documento relaciona os termos e condições que devem ser observados pela [ARTE MANIA ENXOVAIS ] e pelos Usuários (conforme definição abaixo) na utilização do Site, de suas ferramentas e de suas funcionalidades. A [ARTE MANIA ENXOVAIS ] faculta acesso e utilização do Site a quaisquer Usuários. O Usuário declara ter lido e aceito estes Termos e Condições de Uso e das Políticas antes de ter iniciado a utilização do Site. Caso o Usuário não aceite estes Termos e Condições de Uso, não lhe será permitido acesso a áreas restritas do Site. Para os fins destes Termos e Condições de Uso, bem como das Políticas, os termos abaixo terão os seguintes significados: CALM. Central de Atendimento [ARTE MANIA ENXOVAIS ] é o serviço de atendimento ao consumidor disponibilizado pela [ARTE MANIA ENXOVAIS ] por meio de diversos canais de comunicação, indicados em cada uma das Políticas e no item 18 destes Termos e Condições de Uso;&lt;br&gt;Clientes. Usuários que preencheram o cadastro e detêm uma Conta de Acesso; &lt;br&gt;Compra. Transação por meio da qual um Cliente adquire um produto oferecido à venda no Site, mediante a realização de pagamento do valor do produto; &lt;br&gt;Conta de Acesso. Credencial definida pelo nome de usuário (login) e senha de um visitante cadastrado (Cliente), pessoal e intransferível, que permite acesso à área restrita e às funcionalidades exclusivas no Site, tais como acesso e alteração de dados pessoais, inscrição e cancelamento de participação em cursos, criação, edição e remoção de listas de desejos, entre outras; &lt;br&gt;Marca. Quaisquer sinais distintivos de titularidade da e/ou licenciados à [ARTE MANIA ENXOVAIS ], que sejam utilizados na identificação do Site, de seu conteúdo ou de serviço prestado pela [ARTE MANIA ENXOVAIS ]. Políticas. As políticas que complementam e integram estes Termos e Condições de Uso, nominalmente Política de Trocas e Devoluções, Política de Pagamentos, Política de Entrega de Produtos e a Política de Privacidade e Segurança, todas disponíveis no Site; &lt;br&gt;Propriedade Intelectual da [ARTE MANIA ENXOVAIS ]. Todos os bens de propriedade intelectual de titularidade da [ARTE MANIA ENXOVAIS ], de qualquer empresa pertencente a seu grupo econômico, ou, ainda, de terceiro, cujo uso seja licenciado e/ou autorizado à [ARTE MANIA ENXOVAIS ], incluindo mas não se limitando a Marcas, patentes, invenções ou modelos de utilidade, desenhos industriais, know-how, segredos de negócio, ilustrações, fotografias e/ou conteúdos de qualquer tela do Site ou quaisquer obras intelectuais ou outros conteúdos que estejam inseridos em qualquer obra intelectual ou qualquer bem protegido por direitos de propriedade intelectual. Site. O website de propriedade, mantido e operado por [ARTE MANIA ENXOVAIS ], hospedado no domínio [artemaniaenxovais.com.br] e todas as páginas nele compreendidas; e &lt;br&gt;Usuários. Quaisquer pessoas que acessem o Site, incluindo visitantes anônimos e Clientes.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;2. Regras de utilização do Site&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;O Usuário obriga-se a utilizar o Site respeitando e observando estes Termos e Condições de Uso, bem como a legislação vigente, os costumes e a ordem pública. Desta forma, o Usuário concorda que não poderá: (i) lesar direitos de terceiros, independentemente de sua natureza, em qualquer momento, inclusive no decorrer do uso do Site; (ii) executar atos que limitem ou impeçam o acesso e a utilização do Site, em condições adequadas, aos demais Usuários; (iii) acessar ilicitamente o Site ou sistemas informáticos de terceiros relacionados ao Site ou à [ARTE MANIA ENXOVAIS ] sob qualquer meio ou forma; (iv) difundir programas ou vírus informáticos suscetíveis de causar danos de qualquer natureza, inclusive em equipamentos e sistemas da [ARTE MANIA ENXOVAIS ] ou de terceiros; (v) utilizar mecanismos que não os expressamente habilitados ou recomendados no Site para obtenção de informações, conteúdos e serviços; (vi) realizar quaisquer atos que de alguma forma possam implicar qualquer prejuízo ou dano à [ARTE MANIA ENXOVAIS ] ou a outros Usuários; (vii) acessar áreas de programação do Site, bases de dados ou qualquer outro conjunto de informações que escape às áreas públicas ou restritas do Site; (viii) realizar ou permitir engenharia reversa, traduzir, modificar, alterar a linguagem, compilar, descompilar, modificar, reproduzir, alugar, sublocar, divulgar, transmitir, distribuir, usar ou, de outra maneira, dispor do Site ou das ferramentas e funcionalidades nele disponibilizadas sob qualquer meio ou forma, inclusive de modo a violar direitos da [ARTE MANIA ENXOVAIS ] (inclusive de Propriedade Intelectual da [ARTE MANIA ENXOVAIS ]) e/ou de terceiros; (ix) praticar ou participar de qualquer ato que constitua uma violação de qualquer direito da [ARTE MANIA ENXOVAIS ] (inclusive de Propriedade Intelectual da [ARTE MANIA ENXOVAIS ]) ou de terceiros ou ainda de qualquer lei aplicável, ou agir sob qualquer meio ou forma que possa contribuir com tal violação; (x) interferir na segurança ou cometer usos indevidos contra o Site ou qualquer recurso do sistema, rede ou serviço conectado ou que possa ser acessado por meio do Site, devendo acessar o Site apenas para fins lícitos e autorizados; (xi) utilizar o domínio da [ARTE MANIA ENXOVAIS ] para criar links ou atalhos a serem disponibilizados em e-mails não solicitados (mensagens spam) ou em websites de terceiros ou do próprio Usuário ou, ainda, para realizar qualquer tipo de ação que possa vir a prejudicar a [ARTE MANIA ENXOVAIS ] ou terceiros; (xii) utilizar aplicativos automatizados de coleta e seleção de dados para realizar operações massificadas ou para quaisquer finalidades ou, ainda, para coletar e transferir quaisquer dados que possam ser extraídos do Site para fins não permitidos ou ilícitos, (xiii) utilizar as ferramentas e funcionalidades do Site para difundir mensagens não relacionadas com o Site ou com as finalidades do Site, incluindo mensagens de cunho racista, étnico, político, religioso, cultural ou depreciativo, difamatório e/ou calunioso de qualquer pessoa ou grupo social. O Usuário concorda em indenizar, defender e isentar a [ARTE MANIA ENXOVAIS ] de qualquer reclamação, notificação, intimação ou ação judicial ou extrajudicial, ou ainda de qualquer responsabilidade, dano, custo ou despesa decorrente de qualquer violação e/ou infração cometida pelo Usuário ou qualquer pessoa agindo em seu nome, com seu consentimento ou tolerância, em relação ao Site (inclusive com relação a qualquer disposição destes Termos e Condições de Uso), inclusive qualquer pessoa que tenha obtido os dados do Usuário relacionados a sua Conta de Acesso ou a sua navegação no Site. A [ARTE MANIA ENXOVAIS ] poderá, a seu exclusivo critério, bloquear, restringir, desabilitar ou impedir o acesso de qualquer Usuário ao Site, total ou parcialmente, sem qualquer aviso prévio, sempre que for detectada uma conduta inadequada do Usuário, sem prejuízo das medidas administrativas, extrajudiciais e judiciais que julgar convenientes.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;3. Cadastro de Clientes&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;Para obter acesso ao conteúdo completo e a todas as ferramentas e funcionalidades do Site, incluindo a possibilidade de efetuar Compras, o Usuário deverá criar uma Conta com dados pessoais, os quais serão armazenados e utilizados para identificação das Compras, a serem usados nos termos da Política de Privacidade e Segurança, ressaltando-se que a criação de cada Conta pressupõe o consentimento expresso sobre coleta, uso, armazenamento e tratamento de dados pessoais pela [ARTE MANIA ENXOVAIS ] e/ou por terceiros por ela contratados para realizar qualquer procedimento ou processo relacionado às Compras, inclusive processamento de pagamentos, entregas, devoluções etc.. A cada Cliente é permitida a criação de apenas uma Conta de Acesso e a [ARTE MANIA ENXOVAIS ] se reserva o direito de suspender ou cancelar quaisquer Contas de Acesso em duplicidade. Ao completar a sua Conta de Acesso, o Cliente declara que as informações&amp;nbsp; fornecidas são completas, verdadeiras, atuais e precisas, sendo de total responsabilidade do Cliente a atualização dos dados de sua Conta de Acesso sempre que houver modificação de nome, endereço ou qualquer outra informação relevante. A [ARTE MANIA ENXOVAIS ] poderá recusar, suspender ou cancelar a Conta de Acesso de um Cliente sempre que suspeitar que as informações fornecidas são falsas, incompletas, desatualizadas ou imprecisas ou ainda nos casos indicados nas leis e regulamentos aplicáveis, nestes Termos e Condições ou em qualquer Política do Site, mesmo que previamente aceito. O Cliente, no momento da criação de sua Conta de Acesso, determinará seu nome de usuário e sua senha de acesso. É de exclusiva responsabilidade do Cliente a manutenção do sigilo do nome de usuário e/ou da senha de acesso relativos à sua Conta de Acesso, devendo o Cliente comunicar imediatamente a [ARTE MANIA ENXOVAIS ] em caso de perda, divulgação ou roubo da senha ou ainda de uso não autorizado de sua Conta. Menores (idade inferior a 18 anos) não poderão utilizar o Site, a menos que sejam representados e/ou assistidos por seus pais ou responsáveis legais e por estes autorizados no momento da criação da Conta. A efetivação de uma Conta em nome de um menor pressupõe a representação deste menor por uma pessoa maior de 18 anos, que será reputada responsável civil e criminalmente por qualquer Compra realizada, violação cometida ou declaração falsa, incompleta, desatualizada ou imprecisa prestada pelo menor de 18 anos.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;4. Dados pessoais, privacidade e segurança &lt;/span&gt;&lt;br&gt;A [ARTE MANIA ENXOVAIS ] dispõe de uma política específica para regular a coleta, guarda e utilização de dados pessoais, bem como a sua segurança: Política de Privacidade e Segurança. Essa política específica integra inseparavelmente estes Termos e Condições de Uso, ressaltando-se que os dados de utilização do Site serão arquivados nos termos da legislação em vigor.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;5. Oferta de produtos&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;Informações. A [ARTE MANIA ENXOVAIS ] disponibilizará no Site, para cada produto, uma página descritiva, da qual constarão informações relativas às suas características, composição, eventuais riscos que possa oferecer à saúde e à segurança, prazo de validade, origem, disponibilidade em estoque, condições de pagamento e preço total à vista. &lt;br&gt;Território. O Site tem ferramentas de geolocalização manuais (por meio de informação prestada pelo próprio Usuário) e automáticas (por meio de cookies) que determinam o conteúdo a ser apresentado para cada usuário. No entanto, em virtude de limitações de tais ferramentas, é possível que o Usuário acesse conteúdo (oferta de produtos, inclusive) direcionado a uma zona geográfica diferente daquela onde está localizado. Em qualquer caso, a oferta de produtos será sempre limitada ao território em que a [ARTE MANIA ENXOVAIS ] disponibiliza entrega, nos termos do item 3 da Política de Entrega de Produtos, não sendo válida para as localidades não incluídas neste território. A [ARTE MANIA ENXOVAIS ] poderá, a seu exclusivo critério, alterar este território, incluindo ou excluindo localidades. Em caso de dúvida, o usuário poderá consultar a Política de Entrega de Produtos ou entrar em contato com o CALM (Central de Atendimento [ARTE MANIA ENXOVAIS ]).&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;6. Estoque&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;A [ARTE MANIA ENXOVAIS ] possui uma grande quantidade de itens cadastrados no Site. Por motivos alheios à vontade e ao controle da [ARTE MANIA ENXOVAIS ], é possível que alguns destes itens fiquem temporariamente indisponíveis, em virtude de peculiaridades, sazonalidades ou problemas na cadeia de fornecimento. A [ARTE MANIA ENXOVAIS ] compromete-se a engajar seus melhores esforços para manter a disponibilidade da maior quantidade possível de itens. Observamos ainda que o Site e as lojas físicas da [ARTE MANIA ENXOVAIS ] possuem estoques separados, sendo possível que um item indisponível no site esteja disponível em uma loja física e vice-versa. Em caso de Compra de um produto indisponível em estoque por falha na atualização do Site, a [ARTE MANIA ENXOVAIS ] entrará em contato com o Cliente visando à imediata solução do problema, pelo reembolso do valor pago, pela escolha de produto equivalente ou pela determinação de aguardar a disponibilidade do produto.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;7. Promoções&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;Realização. A [ARTE MANIA ENXOVAIS ] poderá, a qualquer momento, por motivos puramente comerciais e a seu exclusivo critério, criar e manter campanhas promocionais, oferecendo determinados produtos a preços inferiores aos usualmente praticados ou com a incidência de descontos. &lt;br&gt;Condições. As promoções não serão cumulativas e poderão ser limitadas: (i) a uma determinada quantidade de produtos em promoção; (ii) a um determinado período de tempo; (iii) a aceitação de condições especiais, como a impossibilidade de troca do produto. As condições de validade das promoções serão claramente veiculadas por todos os meios de divulgação das promoções e a [ARTE MANIA ENXOVAIS ] recomenda a sua atenta leitura pelo Usuário. Em caso de dúvidas, o Usuário pode entrar em contato com o CALM (Central de Atendimento [ARTE MANIA ENXOVAIS ]). &lt;br&gt;Lojas físicas. As condições de promoções para produtos do Site podem não ser aplicáveis para produtos vendidos pela [ARTE MANIA ENXOVAIS ] nas lojas físicas. Em caso de dúvidas, o Usuário pode entrar em contato com o CALM (Central de Atendimento [ARTE MANIA ENXOVAIS ]). &lt;br&gt;Território. As promoções para Compras no Site serão restritas ao território em que a [ARTE MANIA ENXOVAIS ] disponibiliza entrega, nos termos do item 3 da Política de Entrega de Produtos, não sendo válida para as localidades não incluídas neste território. &lt;br&gt;Trocas. Nos casos de trocas (quando autorizadas pelas condições da promoção) ou devoluções de produtos adquiridos no Site por valores ou condições promocionais, será considerado como valor de compra aquele efetivamente pago pelo Cliente, ficando descartado para este fim o valor originalmente cobrado pelo produto em questão.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;8. Pagamentos&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;A [ARTE MANIA ENXOVAIS ] dispõe de uma política específica para regular os meios de pagamento de Compras: Política de Pagamentos. Essa política específica integra inseparavelmente estes Termos e Condições de Uso.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;9. Preço&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;O Site apresenta preços válidos apenas para compras finalizadas online, com entrega no território em que a [ARTE MANIA ENXOVAIS ] disponibiliza entrega, nos termos do item 3 da Política de Entrega de Produtos, não sendo válida para as localidades não incluídas neste território. Em tais preços, já estão contabilizados todos os impostos incidentes, ficando excluídas apenas as despesas de frete, que serão incluídas no momento da finalização da Compra. A [ARTE MANIA ENXOVAIS ] é uma empresa com atividades em diversos países e em múltiplas plataformas, físicas e virtuais. Assim, pode existir diferença de preços dos produtos entre diferentes lojas físicas, territórios e plataformas de atuação da [ARTE MANIA ENXOVAIS ], em vista de situações particulares da localidade, de tributação e de logística. Este diferença não poderá ser usada contra a [ARTE MANIA ENXOVAIS ] para obrigar que uma plataforma reduza seu preço para equipará-lo ao de outra. A [ARTE MANIA ENXOVAIS ] reserva-se o direito de revisar, aprimorar, modificar e/ou atualizar os preços praticados pelo Site, atendendo a critérios de necessidade, conveniência ou flutuações do mercado, sem necessidade de comunicação prévia. Todos os preços e condições veiculados no Site são válidos apenas para compras realizadas no próprio Site, não sendo aplicáveis a (i) quaisquer outros sites; (ii) lojas físicas da [ARTE MANIA ENXOVAIS ]; (iii) lojas físicas de parceiros da [ARTE MANIA ENXOVAIS ]. Da mesma forma, preços e condições relativos às lojas físicas não são válidos para o Site.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;10. Acompanhamento da Compra&amp;nbsp;&lt;/span&gt;&amp;nbsp; &lt;/p&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;Além de enviar e-mails informando as alterações mais importantes no tratamento e entrega de uma Compra, a [ARTE MANIA ENXOVAIS ] disponibiliza no Site uma ferramenta que permite aos Clientes acompanhar passo a passo a situação de sua Compra (efetuada, em análise, em trânsito, cancelada, entregue, etc.). Havendo dúvida quanto à situação apresentada pela ferramenta, o Cliente poderá entrar em contato com a [ARTE MANIA ENXOVAIS ] por meio dos canais de atendimento do CALM (Central de Atendimento [ARTE MANIA ENXOVAIS ]).&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;11. Entrega&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;A [ARTE MANIA ENXOVAIS ] dispõe de uma Política específica para regular os procedimentos de entrega de produtos adquiridos pelos Clientes no Site: Política de Entrega de Produtos. Essa política específica integra inseparavelmente estes Termos e Condições de Uso.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;12. Arrependimento, trocas e devoluções&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;A [ARTE MANIA ENXOVAIS ] dispõe de uma política específica para regular as trocas e devoluções de produtos adquiridos pelos Clientes no Site: Política de Trocas e Devoluções. Há, nesta política, igualmente disposições sobre o Direito de Arrependimento. Essa política específica integra inseparavelmente estes Termos e Condições de Uso.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;13. Garantias&amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;br&gt;Apesar dos melhores esforços da [ARTE MANIA ENXOVAIS ] no sentido de fornecer informações precisas, atualizadas, corretas e completas, o Site poderá conter erros técnicos, inconsistências ou erros tipográficos. O Site, seu conteúdo, suas funcionalidades e ferramentas são disponibilizados pela [ARTE MANIA ENXOVAIS ] tal qual expostos e oferecidos na Internet, sem qualquer garantia, expressa ou implícita, quanto aos seguintes itens: (i) atendimento, pelo Site ou por seu conteúdo das expectativas dos Usuários; (ii) continuidade do acesso ao Site ou a seu conteúdo; (iii) adequação da qualidade do Site ou de seu conteúdo para um determinado fim; e (iv) a correção de defeitos, erros ou falhas no Site ou em seu conteúdo. A [ARTE MANIA ENXOVAIS ] se reserva o direito de unilateralmente modificar, a qualquer momento e sem aviso prévio, o Site bem como a configuração, a apresentação, o desenho, o conteúdo, as funcionalidades, as ferramentas ou qualquer outro elemento do Site, inclusive o seu cancelamento. &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;14. Responsabilidades&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;A [ARTE MANIA ENXOVAIS ] engaja seus melhores esforços para informar, atender e proteger o Usuário. O Usuário é o único responsável pela utilização do Site, de suas ferramentas e funcionalidades. Em nenhuma hipótese, a [ARTE MANIA ENXOVAIS ] ou seus diretores, representantes, agentes, empregados, sócios, parceiros ou prestadores de serviço serão responsabilizados por qualquer dano emergente, indireto, punitivo ou expiatório, lucros cessantes ou outros prejuízos monetários relacionados a qualquer reclamação, ação judicial ou outro procedimento tomado em relação à utilização do Site, seu conteúdo, funcionalidades e/ou ferramentas. Notadamente, fica excluída a responsabilidade da [ARTE MANIA ENXOVAIS ] sobre as seguintes circunstâncias, entre outras: (i) danos e prejuízos que o Usuário possa experimentar pela indisponibilidade ou funcionamento parcial do Site e/ou de todos ou alguns de seus serviços, informações, conteúdos, funcionalidade e/ou ferramentas, bem como pela incorreção ou inexatidão de qualquer destes elementos; (ii) danos e prejuízos que o Usuário possa experimentar em sites de internet acessíveis por links incluídos no Site; (iii) diferenças de preços entre os artigos disponibilizados no Site e aqueles expostos à venda em outros sites da [ARTE MANIA ENXOVAIS ], de qualquer empresa do grupo econômico da [ARTE MANIA ENXOVAIS ] ou em lojas físicas [ARTE MANIA ENXOVAIS ] em todo o território nacional; (iv) danos e prejuízos que o Usuário possa experimentar em decorrência do uso do Site em desconformidade com estes Termos e Condições de Uso ou com as Políticas; (v) danos e prejuízos que o Usuário possa experimentar em decorrência do uso do Site em desconformidade com a lei, com os costumes ou com a ordem pública; (vi) danos e prejuízos que o Usuário possa experimentar em decorrência de falhas no Site, inclusive decorrentes de falhas no sistema, no servidor ou na conexão de rede, ou ainda de interações maliciosas como vírus, softwares que possam danificar o equipamento ou acessar informações do equipamento do Usuário; (vii) danos e prejuízos que o Usuário possa experimentar em decorrência de distorções que as imagens dos produtos possam apresentar, ressaltado o caráter meramente ilustrativo de tais imagens; entre outros. A responsabilidade da [ARTE MANIA ENXOVAIS ] por vício dos produtos oferecidos à venda no Site está detalhada na Política de Trocas e Devoluções.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;15. Links para outros websites&amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;br&gt;O Site pode conter links para sites de terceiros, os quais são inseridos apenas para conveniência do Usuário. A inclusão de tais links não implica qualquer vínculo, monitoramento ou responsabilidade da [ARTE MANIA ENXOVAIS ] sobre os sites, respectivos conteúdos ou titulares. O acesso aos sites vinculados a tais links não é regido por esses Termos e Condições de Uso e não se encontra protegido pelas Políticas. A [ARTE MANIA ENXOVAIS ] recomenda que o Usuário consulte os termos e condições de uso estabelecidos por cada site vinculado aos links inseridos no Site. A [ARTE MANIA ENXOVAIS ] não será responsável, direta ou indiretamente, por quaisquer danos ou prejuízos causados ou relacionados à utilização de qualquer informação, conteúdo, bens ou serviços disponibilizados no Site ou em qualquer site de terceiros acessado por meio dos links disponibilizados no Site.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;16. Aplicações de Internet ou vírus de computador&amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;br&gt;Em virtude de dificuldades técnicas, aplicações de Internet ou problemas de transmissão, é possível ocorrer cópias inexatas ou incompletas das informações contidas no Site. Vírus de computador ou outros programas danosos também poderão ser baixados inadvertidamente do Site. A [ARTE MANIA ENXOVAIS ] não será responsável por qualquer aplicação, vírus de computador ou outros arquivos danosos ou invasivos ou programas que possam prejudicar ou afetar a utilização do computador ou outro bem dos Usuários devido ao acesso, utilização ou navegação no Site, ou ainda pelo download de qualquer material nele contido, sendo recomendada a instalação de aplicativos antivírus ou protetores adequados.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;17. Direitos de Propriedade Intelectual&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;Marcas. O Usuário não está autorizado a utilizar, sob qualquer forma ou pretexto, as Marcas, suas reproduções parciais ou integrais ou ainda suas imitações, independentemente da destinação de tal uso. O Usuário compromete-se a não contestar a validade de qualquer Marca ou de qualquer outro sinal distintivo depositado ou registrado pela [ARTE MANIA ENXOVAIS ] ou por quaisquer empresas a ela vinculadas, sob qualquer forma, no Brasil ou no exterior. O Usuário compromete-se a se abster de fazer qualquer uso das Marcas ou de suas variações (incluindo erros de ortografia ou variações fonéticas) como nome de domínio ou parte de nome de domínio ou em qualquer nome de empresa, de qualquer tipo ou natureza, sob qualquer meio ou forma, inclusive por meio da criação de nomes de domínio ou e-mails. Todas as outras marcas, nomes de produtos, ou nomes de companhias que aparecem no site são de propriedade exclusiva de seus respectivos titulares. &lt;br&gt;Propriedade do conteúdo. Todo o conteúdo do Site - incluindo o nome de domínio [leroymerlin.com.br], programas, bases de dados, arquivos, textos, fotos, layouts, cabeçalhos e demais elementos - foi criado, desenvolvido ou cedido à [ARTE MANIA ENXOVAIS ], é de propriedade da [ARTE MANIA ENXOVAIS ] ou a ela licenciado e encontra-se protegido pelas leis brasileiras e tratados internacionais que versam sobre direitos de propriedade intelectual. &lt;br&gt;Proibição de utilização. O Usuário, ao acessar o Site, atesta que respeitará a existência e a extensão dos direitos de Propriedade Intelectual da [ARTE MANIA ENXOVAIS ], bem como de todos os direitos de terceiros que sejam usados, a qualquer título, no Site ou que venham a ser disponibilizados no Site. O acesso ao Site e a sua regular utilização pelo Usuário não lhe confere qualquer direito ou prerrogativa sobre o qualquer Propriedade Intelectual, Marca ou outro conteúdo nele inserido. É vedada a utilização, exploração, imitação, reprodução, integral ou parcial, de qualquer conteúdo sem a autorização prévia e por escrito da [ARTE MANIA ENXOVAIS ]. É igualmente vedada a criação de quaisquer obras derivadas de qualquer Propriedade Intelectual da [ARTE MANIA ENXOVAIS ] sem a autorização prévia e por escrito da [ARTE MANIA ENXOVAIS ]. É expressamente proibido ao Usuário reproduzir, distribuir, modificar, exibir e criar trabalhos derivados ou qualquer outra forma de utilização de qualquer Propriedade Intelectual ou outro conteúdo deste Site e dos materiais veiculados no ou pelo Site. O Usuário que violar as proibições contidas na legislação sobre propriedade intelectual e nestes Termos e Condições de Uso serão responsabilizados, civil e criminalmente, pelas infrações cometidas. A [ARTE MANIA ENXOVAIS ] não concede nenhuma autorização relacionada ao conteúdo do Site para qualquer fim. O Usuário assume toda e qualquer responsabilidade pela utilização indevida de qualquer Propriedade Intelectual ou Marcas da [ARTE MANIA ENXOVAIS ] ou de terceiros, tanto de caráter civil quanto criminal. As fotos e imagens utilizadas no Site podem não refletir seu tamanho original ou situação atual do cenário reproduzido, sendo meramente ilustrativas. &lt;br&gt;Conteúdo enviado pelo Cliente. Ao enviar qualquer conteúdo ao Site, o Cliente retém a titularidade de seus direitos sobre dito conteúdo (textos, vídeos, imagens, áudio, entre outros), cedendo à [ARTE MANIA ENXOVAIS ] uma licença de caráter gratuito, irrevogável, mundial e não exclusivo para a reprodução, modificação, tradução e exibição, sob qualquer meio ou forma, inclusive no Site, declarando, ainda, o Cliente ser titular de todos os direitos relacionados ao referido conteúdo.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;18. Comunicações e CALM&amp;nbsp; &amp;nbsp;&lt;/span&gt;&lt;br&gt;A [ARTE MANIA ENXOVAIS ] disponibiliza um CALM para receber todas as comunicações que o Usuário desejar fazer. O CALM opera por meios dos canais de comunicação listados abaixo:&amp;nbsp;&amp;nbsp; &lt;br&gt;(a) Presencialmente, em qualquer uma das lojas físicas [ARTE MANIA ENXOVAIS ], durante os horários de funcionamento; &lt;br&gt;(b) Pelos telefones (27)3724-1761. Segunda à Sexta das 08h00 às 17h00 e Sábados, 08h00 às 12h00. Domingos e feriados fechamos.&lt;br&gt;(c) Por correspondência endereçada à [ARTE MANIA ENXOVAIS ], [ENDEREÇO COMPLETO AQUI], sempre acompanhada das informações de contato do consumidor, para que possamos finalizar o atendimento. Em todos os casos, o Usuário receberá, pelo mesmo canal de comunicação, uma confirmação imediata do recebimento da sua demanda, que será tratada e respondida em um prazo máximo de 5 (cinco) dias.&amp;nbsp;&amp;nbsp; Além disso, a [ARTE MANIA ENXOVAIS ] disponibiliza neste site uma seção de FAQ (Perguntas mais frequentes), bem como suas políticas que complementam e integram estes Termos e Condições de Uso: Política de Trocas e Devoluções, Política de Entrega de Produtos, Política de Privacidade e Segurança e Política de Pagamentos. Todos estes documentos podem ser consultados online ou baixados pelos usuários em formato PDF para consulta off-line e arquivo. Da mesma forma, todas as comunicações que a [ARTE MANIA ENXOVAIS ] desejar fazer ao Usuário deverão ser realizadas por meio do e-mail cadastrado ou utilizado pelo Usuário em qualquer comunicação com a [ARTE MANIA ENXOVAIS ]. Excepcionalmente, a [ARTE MANIA ENXOVAIS ] poderá comunicar-se com o Usuário por outros meios de comunicação, como telefone celular, SMS, MMS ou correspondência física.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;19. Duração&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;/span&gt;Estes Termos e Condições de Uso e as Políticas têm duração indefinida e permanecerão em vigor enquanto o Site estiver ativo. A redação aplicável é aquela da atualização imediatamente anterior ao acesso ou à Compra. Da mesma forma, o acesso e a utilização do Site e dos recursos por ele oferecidos têm, em principio, duração indeterminada, a exclusivo critério da [ARTE MANIA ENXOVAIS ]. A [ARTE MANIA ENXOVAIS ] reserva-se, no entanto, o direito de suspender e/ou cancelar, de forma unilateral e a qualquer momento, o acesso ao Site ou a algumas de suas partes ou a alguns de seus recursos, sem necessidade de prévio aviso.&amp;nbsp; &lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;&lt;br&gt;20. Atualizações destes Termos e Condições &lt;/span&gt;&lt;br&gt;A [ARTE MANIA ENXOVAIS ] poderá unilateralmente revisar, aprimorar, modificar e/ou atualizar, a qualquer momento, qualquer cláusula ou disposição contidas nestes Termos e Condições de Uso ou nas Políticas. A versão atualizada valerá para o uso do Site e para as Compras realizadas a partir de sua divulgação pela [ARTE MANIA ENXOVAIS ]. A continuidade de acesso ou utilização deste Site, depois da divulgação de quaisquer modificações, confirmará a aceitação dos novos Termos e Condições de Uso ou das novas Políticas pelos Usuários. Caso um Cliente não esteja de acordo com uma determinada alteração das Políticas ou dos Termos e Condições de Uso, poderá rescindir seu vínculo com a [ARTE MANIA ENXOVAIS ] por meio de pedido de exclusão da Conta no Site ou de contato com o CALM (Central de Atendimento [ARTE MANIA ENXOVAIS ]). Esta rescisão não eximirá, no entanto, o Cliente de cumprir com todas as obrigações assumidas sob as versões precedentes das Políticas e dos Termos e Condições de Uso.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;21. Registro Público &lt;/span&gt;&lt;br&gt;Estes Termos e Condições de Uso, bem como todas as Políticas, encontram-se registrados em Cartório de Registro de Títulos e Documentos da Comarca da Capital do Estado de Marilândia. Eventuais atualizações destes Termos e Condições de Uso, bem como de qualquer das Políticas, serão imediatamente registradas no mesmo cartório.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: justify;&quot;&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;22. Idioma&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;Toda a documentação legal do Site, incluindo os presentes Termos e Condições de Uso, foi elaborada em língua portuguesa. A [ARTE MANIA ENXOVAIS ] poderá, a seu exclusivo critério, disponibilizar traduções de tais documentos no Site apenas para conveniência do Usuário, a seu exclusivo critério. A versão portuguesa destes Termos e Condições de Uso e das Políticas é a única consentida pela [ARTE MANIA ENXOVAIS ]. Em caso de contradição ou divergência entre a versão em português e eventual tradução para qualquer outro idioma, prevalecerá sempre a versão em língua portuguesa.&amp;nbsp; &amp;nbsp;&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;23. Diversos&amp;nbsp;&amp;nbsp; &lt;/span&gt;&lt;br&gt;Horário oficial. Nas Compras realizadas pelo Site, deverá ser considerado oficial o horário de Brasília, inclusive nos períodos de horário de verão. &lt;br&gt;Aplicabilidade parcial. Caso a [ARTE MANIA ENXOVAIS ] não consiga fazer valer ou cumprir qualquer cláusula ou condição contida nestes Termos e Condições de Uso ou nas Políticas, tal fato não configurará desistência, tolerância ou novação dessa cláusula ou condição destes Termos ou de qualquer Política. Se alguma cláusula ou condição contida nestes Termos e Condições de Uso ou nas Políticas for declarada inexequível, no todo ou parcialmente, tal inexequibilidade não afetará as demais cláusulas dos Termos e Condições de Uso e das Políticas. Neste caso, a [ARTE MANIA ENXOVAIS ] fará as adaptações necessárias para que reflitam, da forma mais próxima possível, os termos da provisão declarada inexequível. &lt;br&gt;Características dos produtos e riscos à saúde: A [ARTE MANIA ENXOVAIS ] inclui na página de oferta de cada produto as informações relativas às suas características e aos riscos que podem representar à saúde e à segurança dos consumidores. Antes de comprar um produto, o Cliente deve ler atentamente em sua página a descrição do uso e manuseio, bem como a indicação de faixa etária. Em caso de dúvida, deverá contatar o CALM (Central de Atendimento [ARTE MANIA ENXOVAIS ]). &lt;br&gt;Caso fortuito e força maior. Nenhuma das Partes será responsabilizada perante a outra quando o descumprimento ou o cumprimento extemporâneo de uma obrigação prevista nas Políticas ou nestes Termos e Condições de Uso for causado por casos fortuitos ou eventos de força maior, enquanto perduraram as suas consequências. Princípio de respeito aos Clientes e Usuários. A [ARTE MANIA ENXOVAIS ] tem como princípio de sua atuação nos ambientes físicos e virtuais o respeito ao Usuário, agindo sempre em conformidade com as disposições do Código de Proteção e Defesa do Consumidor (Lei Federal n. 8078/90), do Marco Civil da Internet (Lei Federal n. 12965/14) e das demais normas referentes ao comércio de produtos em ambiente eletrônico.&amp;nbsp;&amp;nbsp; &lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;span style=&quot;font-weight: bold;&quot;&gt;24. Lei aplicável e Foro de Eleição &lt;/span&gt;&lt;br&gt;O Site é controlado, operado e administrado pela [ARTE MANIA ENXOVAIS ] na cidade de [CIDADE AQUI], Estado de Pernambuco, Brasil, podendo ser acessado por qualquer dispositivo conectado à Internet, independentemente de sua localização geográfica. Em vista das diferenças que podem existir entre as legislações locais e nacionais, ao acessar o Site, o Usuário concorda que a legislação aplicável para fins destes Termos e Condições de Uso será aquela vigente na República Federativa do Brasil. A [ARTE MANIA ENXOVAIS ] e o Usuário concordam que o Foro Central da Comarca de [CIDADE AQUI], PE, Brasil, será o único competente para dirimir qualquer questão ou controvérsia oriunda ou resultante do uso do Site, renunciando expressamente a qualquer outro, por mais privilegiado que seja, ou venha a ser.&lt;/p&gt;', 'Termos e condições', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_information_to_layout`
--

CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_information_to_layout`
--

INSERT INTO `oc_information_to_layout` (`information_id`, `store_id`, `layout_id`) VALUES
(4, 0, 0),
(3, 0, 0),
(5, 0, 0),
(6, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_information_to_store`
--

CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_information_to_store`
--

INSERT INTO `oc_information_to_store` (`information_id`, `store_id`) VALUES
(3, 0),
(4, 0),
(5, 0),
(6, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_language`
--

CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_language`
--

INSERT INTO `oc_language` (`language_id`, `name`, `code`, `locale`, `image`, `directory`, `sort_order`, `status`) VALUES
(1, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 0),
(2, 'Português (BR)', 'pt-br', 'pt_BR.UTF-8, pt_BR, UTF-8', 'br.png', 'portuguese-br', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_layout`
--

CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_layout`
--

INSERT INTO `oc_layout` (`layout_id`, `name`) VALUES
(1, 'Home'),
(2, 'Product'),
(3, 'Category'),
(4, 'Default'),
(5, 'Manufacturer'),
(6, 'Account'),
(7, 'Checkout'),
(8, 'Contact'),
(9, 'Sitemap'),
(10, 'Affiliate'),
(11, 'Information'),
(12, 'Compare'),
(13, 'Search');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_layout_module`
--

CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_layout_module`
--

INSERT INTO `oc_layout_module` (`layout_module_id`, `layout_id`, `code`, `position`, `sort_order`) VALUES
(2, 4, '0', 'content_top', 0),
(3, 4, '0', 'content_top', 1),
(20, 5, '0', 'column_left', 2),
(69, 10, 'affiliate', 'column_right', 1),
(68, 6, 'account', 'column_right', 1),
(119, 1, 'onwebchat', 'content_top', 1),
(117, 1, 'featured.28', 'content_top', 2),
(75, 3, 'filter', 'column_left', 2),
(74, 3, 'category', 'column_left', 1),
(118, 1, 'carousel.29', 'content_top', 3),
(116, 1, 'bestseller.33', 'content_bottom', 0),
(115, 1, 'slideshow.27', 'content_top', 1),
(120, 2, 'bestseller.33', 'content_bottom', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_layout_route`
--

CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_layout_route`
--

INSERT INTO `oc_layout_route` (`layout_route_id`, `layout_id`, `store_id`, `route`) VALUES
(38, 6, 0, 'account/%'),
(17, 10, 0, 'affiliate/%'),
(54, 3, 0, 'product/category'),
(63, 1, 0, 'common/home'),
(64, 2, 0, 'product/product'),
(24, 11, 0, 'information/information'),
(23, 7, 0, 'checkout/%'),
(31, 8, 0, 'information/contact'),
(32, 9, 0, 'information/sitemap'),
(34, 4, 0, ''),
(45, 5, 0, 'product/manufacturer'),
(52, 12, 0, 'product/compare'),
(53, 13, 0, 'product/search');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_length_class`
--

CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_length_class`
--

INSERT INTO `oc_length_class` (`length_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '10.00000000'),
(3, '0.39370000');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_length_class_description`
--

CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_length_class_description`
--

INSERT INTO `oc_length_class_description` (`length_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Centimeter', 'cm'),
(2, 1, 'Millimeter', 'mm'),
(3, 1, 'Inch', 'in'),
(1, 2, 'Centimeter', 'cm'),
(2, 2, 'Millimeter', 'mm'),
(3, 2, 'Inch', 'in');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_location`
--

CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_location`
--

INSERT INTO `oc_location` (`location_id`, `name`, `address`, `telephone`, `fax`, `geocode`, `image`, `open`, `comment`) VALUES
(1, 'Arte Mania Enxovais', 'Rua Virginia Paganini Tozzi, Nº 17, Centro \r\nMarilândia - ES\r\nCEP: 29725-000', '(27) 3724-1761', '', 'Rua Virginia Paganini Tozzi, Nº ', '', 'Segunda à sexta: 08:00 - 17:00\r\nSábado: 08:00 - 12:00\r\nDomingos e feriados: Fechado', 'Em caso de dúvidas mande um e-mail para artur.schaefer@hotmail.com.\r\nOu nos procure no Facebook: www.facebook.com/artemaniaenxovais.enxovais');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_manufacturer`
--

CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_manufacturer`
--

INSERT INTO `oc_manufacturer` (`manufacturer_id`, `name`, `image`, `sort_order`) VALUES
(12, 'Bernadette', '', 0),
(13, 'Juma', '', 0),
(14, 'Mart Collection', '', 0),
(15, 'São Carlos', '', 0),
(11, 'Andreza', '', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_manufacturer_to_store`
--

CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_manufacturer_to_store`
--

INSERT INTO `oc_manufacturer_to_store` (`manufacturer_id`, `store_id`) VALUES
(11, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_marketing`
--

CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_modification`
--

CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_modification`
--

INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(6, 'Mapa de vendas no Brasil', 'mapa-vendas-brasil', 'OpenCart Brasil', '1.1', 'http://www.opencartbrasil.com.br', '<?xml version="1.0" encoding="UTF-8"?>\r<modification>\r  <name>Mapa de vendas no Brasil</name>\r  <code>mapa-vendas-brasil</code>\r  <version>1.1</version>\r  <author>OpenCart Brasil</author>\r  <link>http://www.opencartbrasil.com.br</link>\r  <file path="admin/controller/common/dashboard.php">\r	<operation>\r	  <search><![CDATA[$data[''map''] = $this->load->controller(''dashboard/map'');]]></search>\r	  <add position="replace">\r			<![CDATA[$data[''map''] = $this->load->controller(''dashboard/map_brazil'');]]>\r	  </add>\r	</operation>\r  </file>\r</modification>', 1, '2016-04-27 13:31:14'),
(7, 'admin autocomplete improved', 'adminautocomplete2+', 'kuulind meedia>', '2.1', 'http://kuulind.eu', '<?xml version="1.0" encoding="UTF-8"?>\n<modification>\n	<name>admin autocomplete improved</name>\n	<version>2.1</version>\n	<link>http://kuulind.eu</link>\n	<author>kuulind meedia></author>\n	<code>adminautocomplete2+</code>\n	<file path="admin/controller/common/header.php">\n		<operation>\n			<search><![CDATA[$data[''styles''] = $this->document->getStyles();]]></search>\n			<add position="before"><![CDATA[\n		$this->document->addScript(HTTPS_SERVER .''view/javascript/bootstrap-switch.min.js'');\n		$this->document->addScript(HTTPS_SERVER .''view/javascript/admin-powersearch-kl.js'');\n		$this->document->addStyle(HTTPS_SERVER .''view/stylesheet/bootstrap-switch.min.css'');\n      				]]></add>\n		</operation>\n	</file>\n	<file path="admin/view/template/catalog/product_list.tpl">\n		<operation>\n			<search regex="true"><![CDATA[\n/(\\$\\(''input\\[name=\\\\''(filter_[^\\\\]+).+{)(\\n.+)(\\n.+)(\\n.+)/]]></search>\n			<add><![CDATA[$1$3\nvar searchStatus = $(this).parent().find("input[name=''switch'']").prop(''checked'');\n		var callbackUrl = ''index.php?route=catalog/product/autocomplete&token=<?php echo $token; ?>&$2='';\n		callbackUrl += searchStatus ? ''%'' : '''';\n		callbackUrl += encodeURIComponent(request);$4\nurl:callbackUrl,]]></add>\n		</operation>\n</file>\n<file path="admin/view/template/catalog/product_form.tpl">\n		<operation>\n		<search regex="true"><![CDATA[\n/(\\$\\(''input\\[name=\\\\''([^\\\\]+).+{)(\\n.+)(\\n.+)(\\n.+)/]]></search>\n			<add><![CDATA[$1$3\n			var searchStatus = $(this).parent().parent().find("input[name=''switch'']").prop(''checked'');\n		var searchTerm = ''$2'';\n		var queryStr;\n		if(searchTerm == ''related''){\n		queryStr = ''product'';\n		} else if(searchTerm.indexOf(''product_attribute'') != -1){\n		queryStr = ''attribute'';\n		} else{\n		queryStr = searchTerm;\n		}\n		var callbackUrl = ''index.php?route=catalog/'';\n		callbackUrl += queryStr;\n		callbackUrl += ''/autocomplete&token=<?php echo $token; ?>&filter_name='';\n		callbackUrl += searchStatus ? ''%'' : '''';\n		if(searchTerm.indexOf(''product_attribute'') != -1 ) callbackUrl += ''%'';\n		callbackUrl += encodeURIComponent(request);\n		$4\n			url:callbackUrl,]]></add>\n		</operation>\n	</file>\n</modification>\n', 1, '2016-05-19 14:35:18'),
(8, 'Gerenciador de arquivos com múltiplos uploads habilitado', 'multiplos-uploads-habilitado', 'OpenCart Brasil', '1.0', 'http://www.opencartbrasil.com.br', '<?xml version="1.0" encoding="UTF-8"?>\r<modification>\r  <name>Gerenciador de arquivos com múltiplos uploads habilitado</name>\r  <code>multiplos-uploads-habilitado</code>\r  <version>1.0</version>\r  <author>OpenCart Brasil</author>\r  <link>http://www.opencartbrasil.com.br</link>\r  <file path="admin/language/english/common/filemanager.php">\r    <operation>\r      <search><![CDATA[// Text]]></search>\r      <add position="after"><![CDATA[\r$_[''text_uploaded_multiple''] = ''Success: Your %d files have been uploaded!'';\r      ]]></add>\r    </operation>\r  </file>\r  <file path="admin/language/portuguese-br/common/filemanager.php">\r    <operation>\r      <search><![CDATA[// Text]]></search>\r      <add position="after"><![CDATA[\r$_[''text_uploaded_multiple''] = ''Seus %d arquivos foram enviados!'';\r      ]]></add>\r    </operation>\r  </file>\r  <file path="admin/controller/common/filemanager.php">\r    <operation>\r      <search><![CDATA[public function upload() {]]></search>\r      <add position="before"><![CDATA[\r	private function convertFilesRequest($files_request, $field_name) {\r		$data = array();\r		$files = $files_request[$field_name];\r\r		if (isset($files[''name''][0])) {\r			foreach ($files as $key => $values) {\r				foreach ($values as $i => $v) {\r					$data[$i][$key] = $v;\r				}\r			}\r		} else {\r			foreach ($files as $key => $v) {\r				$data[0][$key] = $v;\r			}\r		}\r\r		return $data;\r	}\r\r	public function multiple_upload() {\r		$this->load->language(''common/filemanager'');\r		$json = array();\r		$uploaded = 0;\r		// Check user has permission\r		if (!$this->user->hasPermission(''modify'', ''common/filemanager'')) {\r			$json[''error''] = $this->language->get(''error_permission'');\r		}\r		// Make sure we have the correct directory\r		if (isset($this->request->get[''directory''])) {\r			$directory = rtrim(DIR_IMAGE . ''catalog/'' . str_replace(array(''../'', ''..\\\\'', ''..''), '''', $this->request->get[''directory'']), ''/'');\r		} else {\r			$directory = DIR_IMAGE . ''catalog'';\r		}\r		// Check its a directory\r		if (!is_dir($directory)) {\r			$json[''error''] = $this->language->get(''error_directory'');\r		}\r		if (!$json) {\r			$files = $this->convertFilesRequest($this->request->files, ''file'');\r\r			foreach ($files as $file) {\r				if (!empty($file[''name'']) && is_file($file[''tmp_name''])) {\r					// Sanitize the filename\r					$filename = basename(html_entity_decode($file[''name''], ENT_QUOTES, ''UTF-8''));\r					// Validate the filename length\r					if ((utf8_strlen($filename) < 3) || (utf8_strlen($filename) > 255)) {\r						$json[''error''] = $this->language->get(''error_filename'');\r					}\r					// Allowed file extension types\r					$allowed = array(\r						''jpg'',\r						''jpeg'',\r						''gif'',\r						''png''\r					);\r					if (!in_array(utf8_strtolower(utf8_substr(strrchr($filename, ''.''), 1)), $allowed)) {\r						$json[''error''] = $this->language->get(''error_filetype'');\r					}\r					// Allowed file mime types\r					$allowed = array(\r						''image/jpeg'',\r						''image/pjpeg'',\r						''image/png'',\r						''image/x-png'',\r						''image/gif''\r					);\r					if (!in_array($file[''type''], $allowed)) {\r						$json[''error''] = $this->language->get(''error_filetype'');\r					}\r					// Check to see if any PHP files are trying to be uploaded\r					$content = file_get_contents($file[''tmp_name'']);\r					if (preg_match(''/\\<\\?php/i'', $content)) {\r						$json[''error''] = $this->language->get(''error_filetype'');\r					}\r					// Return any upload error\r					if ($file[''error''] != UPLOAD_ERR_OK) {\r						$json[''error''] = $this->language->get(''error_upload_'' . $file[''error'']);\r					}\r				} else {\r					$json[''error''] = $this->language->get(''error_upload'');\r				}\r				\r				if (!$json) {\r					move_uploaded_file($file[''tmp_name''], $directory . ''/'' . $filename);\r					$uploaded++;\r				}\r				$json = array();\r			}\r		}\r		if (!$json) {\r			if ($uploaded > 1) {\r				$json[''success''] = sprintf($this->language->get(''text_uploaded_multiple''), $uploaded);\r			} else {\r				$json[''success''] = sprintf($this->language->get(''text_uploaded''));\r			}\r		}\r		$this->response->addHeader(''Content-Type: application/json'');\r		$this->response->setOutput(json_encode($json));\r	}\r      ]]></add>\r    </operation>\r  </file>\r  <file path="admin/view/template/common/filemanager.tpl">\r    <operation>\r      <search><![CDATA[$(''body'').prepend(''<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" value="" /></form>'');]]></search>\r      <add position="replace"><![CDATA[$(''body'').prepend(''<form enctype="multipart/form-data" id="form-upload" style="display: none;"><input type="file" name="file" value="" multiple /></form>'');]]></add>\r    </operation>\r    <operation>\r      <search><![CDATA[timer = setInterval(function() {]]></search>\r      <add position="after"><![CDATA[\r		var files_input = $(''#form-upload input[name=\\''file\\'']'')[0];\r	  ]]></add>\r    </operation>\r    <operation>\r      <search><![CDATA[if ($(''#form-upload input[name=\\''file\\'']'').val() != '''') {]]></search>\r      <add position="after"><![CDATA[\r			// Append multi files to form data\r			var form_data = new FormData();\r			var files = files_input.files;\r			for (var i = 0; i < files.length; i++) {\r				var f = files[i];\r				form_data.append(''file[]'', f);\r			}\r	  ]]></add>\r    </operation>\r    <operation>\r      <search><![CDATA[url: ''index.php?route=common/filemanager/upload&token=<?php echo $token; ?>&directory=<?php echo $directory; ?>'',]]></search>\r      <add position="replace"><![CDATA[url: ''index.php?route=common/filemanager/multiple_upload&token=<?php echo $token; ?>&directory=<?php echo $directory; ?>'',]]></add>\r    </operation>\r    <operation>\r      <search><![CDATA[data: new FormData($(''#form-upload'')[0]),]]></search>\r      <add position="replace"><![CDATA[data: form_data,]]></add>\r    </operation>\r  </file>\r</modification>', 1, '2016-05-19 15:07:40'),
(5, 'Instalador sem FTP', 'instalador-sem-ftp', 'OpenCart Brasil', '1.3', 'http://www.opencartbrasil.com.br', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n  <name>Instalador sem FTP</name>\n  <code>instalador-sem-ftp</code>\n  <version>1.3</version>\n  <author>OpenCart Brasil</author>\n  <link>http://www.opencartbrasil.com.br</link>\n  <file path="admin/controller/extension/installer.php">\n    <operation>\n      <search>\n	    <![CDATA[public function ftp() {]]>\n      </search>\n      <add position="replace">\n        <![CDATA[public function oldftp() {]]>\n      </add>\n    </operation>\n    <operation>\n      <search>\n	    <![CDATA[public function sql() {]]>\n      </search>\n      <add position="before">\n        <![CDATA[\n	public function ftp() {\n		$this->load->language(''extension/installer'');\n\n		$json = array();\n\n		if (!$this->user->hasPermission(''modify'', ''extension/installer'')) {\n			$json[''error''] = $this->language->get(''error_permission'');\n		}\n		\n		if (VERSION == ''2.0.0.0'') {\n		    $directory = DIR_DOWNLOAD  . str_replace(array(''../'', ''..\\\\'', ''..''), '''', $this->request->post[''path'']) . ''/upload/'';\n		} else {\n			$directory = DIR_UPLOAD . str_replace(array(''../'', ''..\\\\'', ''..''), '''', $this->request->post[''path'']) . ''/upload/'';\n		}\n\n		if (!is_dir($directory)) {\n			$json[''error''] = $this->language->get(''error_directory'');\n		}\n\n		if (!$json) {\n			$files = array();\n\n			$path = array($directory . ''*'');\n\n			while (count($path) != 0) {\n				$next = array_shift($path);\n\n				foreach ((array)glob($next) as $file) {\n					if (is_dir($file)) {\n						$path[] = $file . ''/*'';\n					}\n\n					$files[] = $file;\n				}\n			}\n\n			if ($this->config->get(''config_ftp_status'')) {\n				$connection = ftp_connect($this->config->get(''config_ftp_hostname''), $this->config->get(''config_ftp_port''));\n\n				if ($connection) {\n					$login = ftp_login($connection, $this->config->get(''config_ftp_username''), $this->config->get(''config_ftp_password''));\n\n					if ($login) {\n						if ($this->config->get(''config_ftp_root'')) {\n							$root = ftp_chdir($connection, $this->config->get(''config_ftp_root''));\n						} else {\n							$root = ftp_chdir($connection, ''/'');\n						}\n\n						ftp_pasv($connection, true);\n\n						if ($root) {\n							foreach ($files as $file) {\n								$destination = substr($file, strlen($directory));\n\n								if (substr($destination, 0, 5) == ''admin'') {\n									$destination = basename(DIR_APPLICATION) . substr($destination, 5);\n								}\n\n								if (substr($destination, 0, 7) == ''catalog'') {\n									$destination = basename(DIR_CATALOG) . substr($destination, 7);\n								}\n\n								if (substr($destination, 0, 5) == ''image'') {\n									$destination = basename(DIR_IMAGE) . substr($destination, 5);\n								}\n\n								if (substr($destination, 0, 6) == ''system'') {\n									$destination = basename(DIR_SYSTEM) . substr($destination, 6);\n								}\n\n								if (is_dir($file)) {\n									$list = ftp_nlist($connection, substr($destination, 0, strrpos($destination, ''/'')));\n\n									$list_data = array();\n\n									foreach ($list as $list) {\n										$list_data[] = basename($list);\n									}\n\n									if (!in_array(basename($destination), $list_data)) {\n										if (!ftp_mkdir($connection, $destination)) {\n											$json[''error''] = sprintf($this->language->get(''error_ftp_directory''), $destination);\n										}\n									}\n								}\n\n								if (is_file($file)) {\n									if (!ftp_put($connection, $destination, $file, FTP_BINARY)) {\n										$json[''error''] = sprintf($this->language->get(''error_ftp_file''), $file);\n									}\n								}\n							}\n						} else {\n							$json[''error''] = sprintf($this->language->get(''error_ftp_root''), $root);\n						}\n					} else {\n						$json[''error''] = sprintf($this->language->get(''error_ftp_login''), $this->config->get(''config_ftp_username''));\n					}\n\n					ftp_close($connection);\n				} else {\n					$json[''error''] = sprintf($this->language->get(''error_ftp_connection''), $this->config->get(''config_ftp_hostname''), $this->config->get(''config_ftp_port''));\n				}\n			} else {\n				$root = dirname(DIR_APPLICATION) . ''/'';\n\n				foreach ($files as $file) {\n					$destination = substr($file, strlen($directory));\n\n					if (substr($destination, 0, 5) == ''admin'') {\n						$destination = DIR_APPLICATION . substr($destination, 5);\n					} else if (substr($destination, 0, 7) == ''catalog'') {\n						$destination = DIR_CATALOG . substr($destination, 7);\n					} else if (substr($destination, 0, 5) == ''image'') {\n						$destination = DIR_IMAGE . substr($destination, 5);\n					} else if (substr($destination, 0, 6) == ''system'') {\n						$destination = DIR_SYSTEM . substr($destination, 6);\n					} else {\n						$destination = $root.$destination;\n					}\n\n					if (is_dir($file)) {\n						if (!file_exists($destination)) {\n							if (!mkdir($destination)) {\n								$json[''error''] = sprintf($this->language->get(''error_ftp_directory''), $destination);\n							}\n						}\n					}\n\n					if (is_file($file)) {\n						if (!copy($file, $destination)) {\n							$json[''error''] = sprintf($this->language->get(''error_ftp_file''), $file);\n						}\n					}\n				}\n			}\n		}\n\n		$this->response->addHeader(''Content-Type: application/json'');\n		$this->response->setOutput(json_encode($json));\n	}\n		]]>\n      </add>\n    </operation>\n  </file>\n</modification>\n', 1, '2016-04-09 01:19:43'),
(9, 'Editor e calendário traduzidos na administração', 'summernote-datetimepicker-pt-br', 'OpenCart Brasil', '1.1', 'http://www.opencartbrasil.com.br', '<?xml version="1.0" encoding="UTF-8"?>\r<modification>\r  <name>Editor e calendário traduzidos na administração</name>\r  <code>summernote-datetimepicker-pt-br</code>\r  <version>1.1</version>\r  <author>OpenCart Brasil</author>\r  <link>http://www.opencartbrasil.com.br</link>\r  <file path="admin/view/template/common/header.tpl">\r	<operation>\r	  <search><![CDATA[<script src="view/javascript/jquery/datetimepicker/moment.js" type="text/javascript"></script>]]></search>\r	  <add position="replace">\r			<![CDATA[<script src="view/javascript/jquery/datetimepicker/moment.min.js" type="text/javascript"></script>\r<script src="view/javascript/jquery/datetimepicker/locale/pt-br.js" type="text/javascript"></script>]]>\r	  </add>\r	</operation>\r  </file>\r</modification>', 1, '2016-05-19 15:21:43'),
(10, 'AIRCode Username in Header', 'aircode_username_in_header', 'Nayden Panchev', '1.0', 'http://aircode-bg.net/', '<?xml version="1.0" encoding="utf-8"?>\n<modification>\n    <code>aircode_username_in_header</code>\n    <name>AIRCode Username in Header</name>\n    <version>1.0</version>\n    <author>Nayden Panchev</author>\n    <link>http://aircode-bg.net/</link>\n	<file path="catalog/controller/common/header.php">\n        <operation>\n            <search>\n			<![CDATA[$data[''telephone''] = $this->config->get(''config_telephone'');]]>\n            </search>\n            <add position="after">\n			<![CDATA[\n            if($data[''logged''])\n            {\n                $data[''text_account_2''] = $this->customer->getFirstName();\n            }\n            else\n            {\n                $data[''text_account_2''] = $data[''text_account''];\n            }\n            ]]>\n            </add>\n        </operation>\n    </file>    \n    <file path="catalog/view/theme/default/template/common/header.tpl">\n        <operation>\n            <search>\n			<![CDATA[<span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account; ?></span>]]>\n            </search>\n            <add position="replace">\n			<![CDATA[\n            <span class="hidden-xs hidden-sm hidden-md"><?php echo $text_account_2; ?></span>\n            ]]>\n            </add>\n        </operation>\n    </file>\n</modification>\n', 1, '2016-05-19 15:36:54'),
(11, 'Validação CPF e CNPJ', 'Validação CPF e CNPJ', 'Opencart Master', '1.0.0', 'http://www.opencartmaster.com.br', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n	<name>Validação CPF e CNPJ</name>\r\n	<code>Validação CPF e CNPJ</code>\r\n	<version>1.0.0</version>\r\n	<author>Opencart Master</author>\r\n	<link>http://www.opencartmaster.com.br</link>\r\n\r\n	\r\n	<file path="catalog/controller/account/register.php">\r\n	<operation>\r\n	<search trim="true"><![CDATA[ class ControllerAccountRegister extends Controller { ]]></search>\r\n	<add position="before"><![CDATA[\r\n\r\nclass ValidaCPFCNPJ\r\n{\r\n	\r\n	function __construct ( $valor = null ) {\r\n	\r\n		$this->valor = preg_replace( ''/[^0-9]/'', '''', $valor );\r\n		\r\n		\r\n		$this->valor = (string)$this->valor;\r\n	}\r\n\r\n	\r\n	protected function verifica_cpf_cnpj () {\r\n		\r\n		if ( strlen( $this->valor ) === 11 ) {\r\n			return ''CPF'';\r\n		} \r\n	\r\n		elseif ( strlen( $this->valor ) === 14 ) {\r\n			return ''CNPJ'';\r\n		} \r\n		\r\n		else {\r\n			return false;\r\n		}\r\n	}\r\n\r\n	\r\n	protected function calc_digitos_posicoes( $digitos, $posicoes = 10, $soma_digitos = 0 ) {\r\n		\r\n		for ( $i = 0; $i < strlen( $digitos ); $i++  ) {\r\n			\r\n			$soma_digitos = $soma_digitos + ( $digitos[$i] * $posicoes );\r\n\r\n			\r\n			$posicoes--;\r\n\r\n			\r\n			if ( $posicoes < 2 ) {\r\n				// Retorno a posição para 9\r\n				$posicoes = 9;\r\n			}\r\n		}\r\n\r\n		$soma_digitos = $soma_digitos % 11;\r\n\r\n		\r\n		if ( $soma_digitos < 2 ) {\r\n		\r\n			$soma_digitos = 0;\r\n		} else {\r\n		\r\n			$soma_digitos = 11 - $soma_digitos;\r\n		}\r\n\r\n		\r\n		$cpf = $digitos . $soma_digitos;\r\n\r\n		\r\n		//return $cpf;\r\n		\r\n		if ($cpf == "11111111111") {\r\n		return false;\r\n		}elseif ($cpf == "22222222222"){\r\n		return false;\r\n		}elseif ($cpf == "33333333333"){\r\n		return false;\r\n		}elseif ($cpf == "44444444444"){\r\n		return false;\r\n		}elseif ($cpf == "55555555555"){\r\n		return false;\r\n		}elseif ($cpf == "66666666666"){\r\n		return false;\r\n		}elseif ($cpf == "77777777777"){\r\n		return false;\r\n		}elseif ($cpf == "88888888888"){\r\n		return false;\r\n		}elseif ($cpf == "99999999999"){\r\n		return false;\r\n		}elseif ($cpf == "00000000000"){\r\n		return false;\r\n		}else {\r\n		return $cpf;\r\n		}\r\n		\r\n		\r\n	}\r\n\r\n	\r\n	protected function valida_cpf() {\r\n		\r\n		$digitos = substr($this->valor, 0, 9);\r\n\r\n		$novo_cpf = $this->calc_digitos_posicoes( $digitos );\r\n\r\n		\r\n		$novo_cpf = $this->calc_digitos_posicoes( $novo_cpf, 11 );\r\n\r\n		\r\n		if ( $novo_cpf === $this->valor ) {\r\n			\r\n			return true;\r\n		} else {\r\n			\r\n			return false;\r\n		}\r\n	}\r\n\r\n	\r\n	protected function valida_cnpj () {\r\n		\r\n		$cnpj_original = $this->valor;\r\n\r\n		\r\n		$primeiros_numeros_cnpj = substr( $this->valor, 0, 12 );\r\n\r\n		\r\n		$primeiro_calculo = $this->calc_digitos_posicoes( $primeiros_numeros_cnpj, 5 );\r\n\r\n	\r\n		$segundo_calculo = $this->calc_digitos_posicoes( $primeiro_calculo, 6 );\r\n\r\n		\r\n		$cnpj = $segundo_calculo;\r\n\r\n		\r\n		if ( $cnpj === $cnpj_original ) {\r\n			return true;\r\n		}\r\n	}\r\n\r\n	\r\n	public function valida () {\r\n		\r\n		if ( $this->verifica_cpf_cnpj() === ''CPF'' ) {\r\n			\r\n			return $this->valida_cpf();\r\n		} \r\n		\r\n		elseif ( $this->verifica_cpf_cnpj() === ''CNPJ'' ) {\r\n			\r\n			return $this->valida_cnpj();\r\n		} \r\n		\r\n		else {\r\n			return false;\r\n		}\r\n	}\r\n\r\n	\r\n	public function formata() {\r\n		\r\n		$formatado = false;\r\n\r\n		\r\n		if ( $this->verifica_cpf_cnpj() === ''CPF'' ) {\r\n			\r\n			if ( $this->valida_cpf() ) {\r\n				// Formata o CPF ###.###.###-##\r\n				$formatado  = substr( $this->valor, 0, 3 ) . ''.'';\r\n				$formatado .= substr( $this->valor, 3, 3 ) . ''.'';\r\n				$formatado .= substr( $this->valor, 6, 3 ) . ''-'';\r\n				$formatado .= substr( $this->valor, 9, 2 ) . '''';\r\n			}\r\n		} \r\n		\r\n		elseif ( $this->verifica_cpf_cnpj() === ''CNPJ'' ) {\r\n			\r\n			if ( $this->valida_cnpj() ) {\r\n				// Formata o CNPJ ##.###.###/####-##\r\n				$formatado  = substr( $this->valor,  0,  2 ) . ''.'';\r\n				$formatado .= substr( $this->valor,  2,  3 ) . ''.'';\r\n				$formatado .= substr( $this->valor,  5,  3 ) . ''/'';\r\n				$formatado .= substr( $this->valor,  8,  4 ) . ''-'';\r\n				$formatado .= substr( $this->valor, 12, 14 ) . '''';\r\n			}\r\n		} \r\n\r\n		\r\n		return $formatado;\r\n	}\r\n}\r\n	\r\n	\r\n	]]></add>\r\n	\r\n	</operation>\r\n\r\n	<operation>\r\n	<search trim="true"><![CDATA[ if ((utf8_strlen($this->request->post[''password'']) < 4) || (utf8_strlen($this->request->post[''password'']) > 20)) { ]]></search>\r\n	<add position="before"><![CDATA[\r\n	\r\n	 //validação Opencart Master\r\n	 $ativo_module = $this->config->get(''validar_status'');\r\n	 $ativo_cpf = $this->config->get(''validar_ativo'');\r\n	 $ativo_cnpj = $this->config->get(''validar_ativo1'');\r\n	 $ativo_misto = $this->config->get(''validar_ativo2'');\r\n	 $val_cpf = $this->config->get(''validar_cpf'');\r\n	 $val_cnpj = $this->config->get(''validar_cnpj'');\r\n	 $val_misto = $this->config->get(''validar_misto'');\r\n	 \r\n	 if (($ativo_cpf)  && (!$ativo_cnpj) && ($ativo_module)){\r\n	 $cpf = new ValidaCPFCNPJ($this->request->post[''custom_field''][$custom_field[''location'']][$val_cpf] ); \r\n	\r\n	if ($cpf->valida()) { \r\n	\r\n	 } else {\r\n	\r\n$this->error[''custom_field''][$val_cpf] = "Atenção: o campo CPF está Inválido!";\r\n	 \r\n	 }\r\n	 \r\n	 } elseif (($ativo_cnpj) && (!$ativo_cpf) && ($ativo_module)){\r\n	 $cnpj = new ValidaCPFCNPJ($this->request->post[''custom_field''][$custom_field[''location'']][$val_cnpj] ); \r\n	\r\n	if ($cnpj->valida()) { \r\n	\r\n	 } else {\r\n	\r\n$this->error[''custom_field''][$val_cnpj] = "Atenção: o campo CNPJ está Inválido!";\r\n	 \r\n	 }\r\n	 \r\n	 }elseif (($ativo_misto) && ($ativo_module)){\r\n	 $misto = new ValidaCPFCNPJ($this->request->post[''custom_field''][$custom_field[''location'']][$val_misto] ); \r\n	\r\n	if ($misto->valida()) { \r\n	\r\n	 } else {\r\n	\r\n$this->error[''custom_field''][$val_misto] = "Atenção: o campo CPF / CNPJ  está Inválido!";\r\n	 \r\n	 }\r\n	 \r\n	 }  elseif (($ativo_cnpj) && ($ativo_cpf) && ($ativo_module)){\r\n	 $cnpj = new ValidaCPFCNPJ($this->request->post[''custom_field''][$custom_field[''location'']][$val_cnpj] ); \r\n	 $cpf = new ValidaCPFCNPJ($this->request->post[''custom_field''][$custom_field[''location'']][$val_cpf] ); \r\n	if ( $cpf->valida() && !$cnpj->valida()) { \r\n	 } \r\n	 elseif ( !$cpf->valida() && $cnpj->valida()){ \r\n	\r\n	 } else {\r\n	$this->error[''custom_field''][$val_cnpj] = "Atenção: o campo CNPJ está Inválido!";\r\n	 $this->error[''custom_field''][$val_cpf] = "Atenção: o campo CPF está Inválido!";\r\n	 }\r\n	 \r\n	 }\r\n	\r\n		\r\n	]]></add>\r\n	</operation>\r\n	\r\n	</file>\r\n	\r\n	<file path="catalog/controller/checkout/register.php">\r\n	<operation>\r\n	<search trim="true"><![CDATA[ class ControllerCheckoutRegister extends Controller { ]]></search>\r\n	<add position="before"><![CDATA[\r\n\r\nclass ValidaCPFCNPJ\r\n{\r\n	\r\n	function __construct ( $valor = null ) {\r\n	\r\n		$this->valor = preg_replace( ''/[^0-9]/'', '''', $valor );\r\n		\r\n		\r\n		$this->valor = (string)$this->valor;\r\n	}\r\n\r\n	\r\n	protected function verifica_cpf_cnpj () {\r\n		\r\n		if ( strlen( $this->valor ) === 11 ) {\r\n			return ''CPF'';\r\n		} \r\n	\r\n		elseif ( strlen( $this->valor ) === 14 ) {\r\n			return ''CNPJ'';\r\n		} \r\n		\r\n		else {\r\n			return false;\r\n		}\r\n	}\r\n\r\n	\r\n	protected function calc_digitos_posicoes( $digitos, $posicoes = 10, $soma_digitos = 0 ) {\r\n		\r\n		for ( $i = 0; $i < strlen( $digitos ); $i++  ) {\r\n			\r\n			$soma_digitos = $soma_digitos + ( $digitos[$i] * $posicoes );\r\n\r\n			\r\n			$posicoes--;\r\n\r\n			\r\n			if ( $posicoes < 2 ) {\r\n				// Retorno a posição para 9\r\n				$posicoes = 9;\r\n			}\r\n		}\r\n\r\n		$soma_digitos = $soma_digitos % 11;\r\n\r\n		\r\n		if ( $soma_digitos < 2 ) {\r\n		\r\n			$soma_digitos = 0;\r\n		} else {\r\n		\r\n			$soma_digitos = 11 - $soma_digitos;\r\n		}\r\n\r\n		\r\n		$cpf = $digitos . $soma_digitos;\r\n\r\n		\r\n		if ($cpf == "11111111111") {\r\n		return false;\r\n		}elseif ($cpf == "22222222222"){\r\n		return false;\r\n		}elseif ($cpf == "33333333333"){\r\n		return false;\r\n		}elseif ($cpf == "44444444444"){\r\n		return false;\r\n		}elseif ($cpf == "55555555555"){\r\n		return false;\r\n		}elseif ($cpf == "66666666666"){\r\n		return false;\r\n		}elseif ($cpf == "77777777777"){\r\n		return false;\r\n		}elseif ($cpf == "88888888888"){\r\n		return false;\r\n		}elseif ($cpf == "99999999999"){\r\n		return false;\r\n		}elseif ($cpf == "00000000000"){\r\n		return false;\r\n		}else {\r\n		return $cpf;\r\n		}\r\n	}\r\n\r\n	\r\n	protected function valida_cpf() {\r\n		\r\n		$digitos = substr($this->valor, 0, 9);\r\n\r\n		$novo_cpf = $this->calc_digitos_posicoes( $digitos );\r\n\r\n		\r\n		$novo_cpf = $this->calc_digitos_posicoes( $novo_cpf, 11 );\r\n\r\n		\r\n		if ( $novo_cpf === $this->valor ) {\r\n			\r\n			return true;\r\n		} else {\r\n			\r\n			return false;\r\n		}\r\n	}\r\n\r\n	\r\n	protected function valida_cnpj () {\r\n		\r\n		$cnpj_original = $this->valor;\r\n\r\n		\r\n		$primeiros_numeros_cnpj = substr( $this->valor, 0, 12 );\r\n\r\n		\r\n		$primeiro_calculo = $this->calc_digitos_posicoes( $primeiros_numeros_cnpj, 5 );\r\n\r\n	\r\n		$segundo_calculo = $this->calc_digitos_posicoes( $primeiro_calculo, 6 );\r\n\r\n		\r\n		$cnpj = $segundo_calculo;\r\n\r\n		\r\n		if ( $cnpj === $cnpj_original ) {\r\n			return true;\r\n		}\r\n	}\r\n\r\n	\r\n	public function valida () {\r\n		\r\n		if ( $this->verifica_cpf_cnpj() === ''CPF'' ) {\r\n			\r\n			return $this->valida_cpf();\r\n		} \r\n		\r\n		elseif ( $this->verifica_cpf_cnpj() === ''CNPJ'' ) {\r\n			\r\n			return $this->valida_cnpj();\r\n		} \r\n		\r\n		else {\r\n			return false;\r\n		}\r\n	}\r\n\r\n	\r\n	public function formata() {\r\n		\r\n		$formatado = false;\r\n\r\n		\r\n		if ( $this->verifica_cpf_cnpj() === ''CPF'' ) {\r\n			\r\n			if ( $this->valida_cpf() ) {\r\n				// Formata o CPF ###.###.###-##\r\n				$formatado  = substr( $this->valor, 0, 3 ) . ''.'';\r\n				$formatado .= substr( $this->valor, 3, 3 ) . ''.'';\r\n				$formatado .= substr( $this->valor, 6, 3 ) . ''-'';\r\n				$formatado .= substr( $this->valor, 9, 2 ) . '''';\r\n			}\r\n		} \r\n		\r\n		elseif ( $this->verifica_cpf_cnpj() === ''CNPJ'' ) {\r\n			\r\n			if ( $this->valida_cnpj() ) {\r\n				// Formata o CNPJ ##.###.###/####-##\r\n				$formatado  = substr( $this->valor,  0,  2 ) . ''.'';\r\n				$formatado .= substr( $this->valor,  2,  3 ) . ''.'';\r\n				$formatado .= substr( $this->valor,  5,  3 ) . ''/'';\r\n				$formatado .= substr( $this->valor,  8,  4 ) . ''-'';\r\n				$formatado .= substr( $this->valor, 12, 14 ) . '''';\r\n			}\r\n		} \r\n\r\n		\r\n		return $formatado;\r\n	}\r\n}\r\n	\r\n	\r\n	]]></add>\r\n	\r\n	</operation>\r\n\r\n	<operation>\r\n	<search trim="true"><![CDATA[ foreach ($custom_fields as $custom_field) { ]]></search>\r\n	<add position="after"><![CDATA[\r\n	\r\n		  //validação Opencart Master\r\n	 $ativo_module = $this->config->get(''validar_status'');\r\n	 $ativo_cpf = $this->config->get(''validar_ativo'');\r\n	 $ativo_cnpj = $this->config->get(''validar_ativo1'');\r\n	 $ativo_misto = $this->config->get(''validar_ativo2'');\r\n	 $val_cpf = $this->config->get(''validar_cpf'');\r\n	 $val_cnpj = $this->config->get(''validar_cnpj'');\r\n	 $val_misto = $this->config->get(''validar_misto'');\r\n	 \r\n	 if (($ativo_cpf)  && (!$ativo_cnpj) && ($ativo_module)){\r\n	  $cpf = new ValidaCPFCNPJ($this->request->post[''custom_field''][''account''] [$val_cpf]); \r\n	\r\n	if ($cpf->valida()) { \r\n	\r\n	 } else {\r\n	\r\n$json[''error''][''custom_field'' . $val_cpf] = sprintf($this->language->get(''error_custom_field''), $custom_field[''name'']);\r\n	 \r\n	 }\r\n	 \r\n	 } elseif (($ativo_cnpj) && (!$ativo_cpf) && ($ativo_module)){\r\n	 $cnpj = new ValidaCPFCNPJ($this->request->post[''custom_field''][$custom_field[''location'']][$val_cnpj] ); \r\n	\r\n	if ($cnpj->valida()) { \r\n	\r\n	 } else {\r\n	\r\n$json[''error''][''custom_field'' . $val_cnpj] =sprintf($this->language->get(''error_custom_field''), $custom_field[''name'']);\r\n	 \r\n	 }\r\n	 \r\n	 }elseif (($ativo_misto) && ($ativo_module)){\r\n	 $misto = new ValidaCPFCNPJ($this->request->post[''custom_field''][$custom_field[''location'']][$val_misto] ); \r\n	\r\n	if ($misto->valida()) { \r\n	\r\n	 } else {\r\n	\r\n$json[''error''][''custom_field'' . $val_misto] = sprintf($this->language->get(''error_custom_field''), $custom_field[''name'']);\r\n	 \r\n	 }\r\n	 \r\n	 } elseif (($ativo_cnpj) && ($ativo_cpf) && ($ativo_module)){\r\n	 $cnpj = new ValidaCPFCNPJ($this->request->post[''custom_field''][''account''] [$val_cnpj]); \r\n	 $cpf = new ValidaCPFCNPJ($this->request->post[''custom_field''][''account''] [$val_cpf]); \r\n	if ( $cpf->valida() && !$cnpj->valida() || !$cpf->valida() && $cnpj->valida()) { \r\n	 } \r\n	 else {\r\n	$json[''error''][''custom_field'' . $val_cnpj] =sprintf($this->language->get(''error_custom_field''), $custom_field[''name'']);\r\n	$json[''error''][''custom_field'' . $val_cpf] =sprintf($this->language->get(''error_custom_field''), $custom_field[''name'']);\r\n	 }\r\n	 \r\n	 }\r\n\r\n		\r\n	]]></add>\r\n	</operation>\r\n	\r\n	</file>\r\n\r\n</modification>\r\n', 1, '2016-05-19 15:38:43');
INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(12, 'Status do Pedido Interativo', 'status_pedido_interativo', 'César Henrique', '1.0', 'http://www.mdemidia.com.br', '<?xml version="1.0" encoding="UTF-8"?>\r\n<modification>\r\n    <name>Status do Pedido Interativo</name>\r\n    <version>1.0</version>\r\n    <author>César Henrique</author>\r\n    <link>http://www.mdemidia.com.br</link>\r\n    <code>status_pedido_interativo</code>\r\n	    <file path="catalog/view/theme/*/template/account/order_info.tpl">\r\n			<operation>\r\n				<search><![CDATA[<h2><?php echo $heading_title; ?></h2>]]></search>\r\n				<add position="before"><![CDATA[\r\n	  <div class="row shop-tracking-status">\r\n    <div class="col-md-12">\r\n        <div class="well">\r\n		<?php foreach ($histories as $history) {\r\n			$status = $history[''status''];\r\n		}?>\r\n            <h4>Status do Pedido: <?php echo $status; ?></h4>\r\n			\r\n			<?php if ($status == ''Cancelado'') {?>\r\n            <div class="order-status">\r\n                <div class="order-status-timeline">\r\n                    <!-- class names: c0 c1 c2 c3 and c4 -->\r\n                    <div class="order-status-timeline-completion c0"></div>\r\n                </div>\r\n                <div class="image-order-status cancelado img-circle">\r\n                    <span class="status off">Pedido Realizado</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-active img-circle">\r\n                    <span class="status off">Aguardando Pagamento</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n				<div class="image-order-status image-order-status-pago img-circle">\r\n                    <span class="status off">Pagamento Confirmado</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-intransit img-circle">\r\n                    <span class="status off">Enviado</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-delivered img-circle">\r\n                    <span class="status off">Entregue</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-completed img-circle">\r\n                    <span class="status off">Completo</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n            </div>\r\n			<?php } else if ($status == ''Processando'') {?>\r\n            <div class="order-status">\r\n                <div class="order-status-timeline">\r\n                    <!-- class names: c0 c1 c2 c3 and c4 -->\r\n                    <div class="order-status-timeline-completion c0"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-new active img-circle">\r\n                    <span class="status on">Pedido Realizado</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-active img-circle">\r\n                    <span class="status off">Aguardando Pagamento</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n				<div class="image-order-status image-order-status-pago img-circle">\r\n                    <span class="status off">Pagamento Confirmado</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-intransit img-circle">\r\n                    <span class="status off">Enviado</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n\r\n                <div class="image-order-status image-order-status-delivered img-circle">\r\n                    <span class="status off">Entregue</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-completed img-circle">\r\n                    <span class="status off">Completo</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n            </div>\r\n			<?php } else if ($status == ''Aguardando Pagamento'') {?>\r\n            <div class="order-status">\r\n                <div class="order-status-timeline">\r\n                    <!-- class names: c0 c1 c2 c3 and c4 -->\r\n                    <div class="order-status-timeline-completion c1"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-new active img-circle">\r\n                    <span class="status on">Pedido Realizado</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-active active img-circle">\r\n                    <span class="status on">Aguardando Pagamento</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n				<div class="image-order-status image-order-status-pago img-circle">\r\n                    <span class="status off">Pagamento Confirmado</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-intransit img-circle">\r\n                    <span class="status off">Enviado</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-delivered img-circle">\r\n                    <span class="status off">Entregue</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-completed img-circle">\r\n                    <span class="status off">Completo</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n            </div>\r\n			<?php } else if ($status == ''Pagamento Confirmado'') {?>\r\n            <div class="order-status">\r\n                <div class="order-status-timeline">\r\n                    <!-- class names: c0 c1 c2 c3 and c4 -->\r\n                    <div class="order-status-timeline-completion c2"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-new active img-circle">\r\n                    <span class="status on">Pedido Realizado</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-active active img-circle">\r\n                    <span class="status on">Aguardando Pagamento</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n				<div class="image-order-status image-order-status-pago active img-circle">\r\n                    <span class="status on">Pagamento Confirmado</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-intransit img-circle">\r\n                    <span class="status off">Enviado</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-delivered img-circle">\r\n                    <span class="status off">Entregue</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-completed img-circle">\r\n                    <span class="status off">Completo</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n            </div>\r\n			<?php } else if ($status == ''Enviado'') {?>\r\n            <div class="order-status">\r\n                <div class="order-status-timeline">\r\n                    <!-- class names: c0 c1 c2 c3 and c4 -->\r\n                    <div class="order-status-timeline-completion c3"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-new active img-circle">\r\n                    <span class="status on">Pedido Realizado</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-active active img-circle">\r\n                    <span class="status on">Aguardando Pagamento</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n				<div class="image-order-status image-order-status-pago active img-circle">\r\n                    <span class="status on">Pagamento Confirmado</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-intransit active img-circle">\r\n                    <span class="status on">Enviado</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-delivered img-circle">\r\n                    <span class="status off">Entregue</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-completed img-circle">\r\n                    <span class="status off">Completo</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n            </div>\r\n			<?php } else if ($status == ''Entregue'') {?>\r\n            <div class="order-status">\r\n                <div class="order-status-timeline">\r\n                    <!-- class names: c0 c1 c2 c3 and c4 -->\r\n                    <div class="order-status-timeline-completion c4"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-new active img-circle">\r\n                    <span class="status on">Pedido Realizado</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-active active img-circle">\r\n                    <span class="status on">Aguardando Pagamento</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n				<div class="image-order-status image-order-status-pago active img-circle">\r\n                    <span class="status on">Pagamento Confirmado</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-intransit active img-circle">\r\n                    <span class="status on">Enviado</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n\r\n                <div class="image-order-status image-order-status-delivered active img-circle">\r\n                    <span class="status on">Entregue</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-completed img-circle">\r\n                    <span class="status off">Completo</span>\r\n                    <div class="icon grey"></div>\r\n                </div>\r\n            </div>\r\n			<?php } else if ($status == ''Completo'') {?>\r\n            <div class="order-status">\r\n                <div class="order-status-timeline">\r\n                    <!-- class names: c0 c1 c2 c3 and c4 -->\r\n                    <div class="order-status-timeline-completion c5"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-new active img-circle">\r\n                    <span class="status on">Pedido Realizado</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-active active img-circle">\r\n                    <span class="status on">Aguardando Pagamento</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n				<div class="image-order-status image-order-status-pago img-circle">\r\n                    <span class="status on">Pagamento Confirmado</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-intransit active img-circle">\r\n                    <span class="status on">Enviado</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-delivered active img-circle">\r\n                    <span class="status on">Entregue</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n                <div class="image-order-status image-order-status-completed active img-circle">\r\n                    <span class="status on">Completo</span>\r\n                    <div class="icon"></div>\r\n                </div>\r\n            </div>\r\n			<?php } ?>\r\n			<h5>Última Atualização: <?php echo $history[''date_added'']; ?></h5>\r\n        </div>\r\n    </div>\r\n\r\n</div> <!-- fim -->]]></add>\r\n		</operation>\r\n		<operation>\r\n		<search><![CDATA[<?php echo $footer; ?>]]></search>\r\n		<add position="before"><![CDATA[\r\n<style type="text/css">\r\n	 @import url("http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css");\r\n	 @import url("catalog/view/theme/default/stylesheet/font-awesome-4.4.0/css/font-awesome.min.css");\r\n.shop-tracking-status .form-horizontal{margin-bottom:50px}\r\n.shop-tracking-status .order-status{margin-top:50px;position:relative;margin-bottom:100px}\r\n.shop-tracking-status .order-status-timeline{height:12px;border:1px solid #aaa;border-radius:7px;background:#eee;box-shadow:0px 0px 5px 0px #C2C2C2 inset}.shop-tracking-status .order-status-timeline .order-status-timeline-completion{height:8px;margin:1px;border-radius:7px;background:#009933;width:0px}\r\n.shop-tracking-status .order-status-timeline .order-status-timeline-completion.c1{width:22%}\r\n.shop-tracking-status .order-status-timeline .order-status-timeline-completion.c2{width:40%}\r\n.shop-tracking-status .order-status-timeline .order-status-timeline-completion.c3{width:60%}\r\n.shop-tracking-status .order-status-timeline .order-status-timeline-completion.c4{width:80%}\r\n.shop-tracking-status .order-status-timeline .order-status-timeline-completion.c5{width:100%}\r\n.shop-tracking-status .image-order-status{border:1px solid #ddd;padding:7px;box-shadow:0px 0px 10px 0px #999;background-color:#fdfdfd;position:absolute;margin-top:-35px}.shop-tracking-status .image-order-status.disabled{filter:url("data:image/svg+xml;utf8,<svg%20xmlns=''http://www.w3.org/2000/svg''><filter%20id=''grayscale''><feColorMatrix%20type=''matrix''%20values=''0.3333%200.3333%200.3333%200%200%200.3333%200.3333%200.3333%200%200%200.3333%200.3333%200.3333%200%200%200%200%200%201%200''/></filter></svg>#grayscale");filter:grayscale(100%);-webkit-filter:grayscale(100%);-moz-filter:grayscale(100%);-ms-filter:grayscale(100%);-o-filter:grayscale(100%);filter:gray;}\r\n.shop-tracking-status .image-order-status.active{box-shadow:0px 0px 10px 0px #009933}\r\n.on{color:#009933;}\r\n.off{color:#bbb;}\r\n.shop-tracking-status .image-order-status .icon{height:40px;width:40px;background-size:contain;background-repeat:no-repeat}\r\n.shop-tracking-status .image-order-status .status{position:absolute;top:60px;left:0px;}\r\n.shop-tracking-status .image-order-status-new{left:0}.shop-tracking-status .image-order-status-new .icon{background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAAABHNCSVQICAgIfAhkiAAAA+JJREFUWIXtll+I1FUUxz/n3vv7/WZmZ/+OphuWlliQZn8f2igxyCSIRMgeFNrUDVlUCIoeit4KeujN1CxZN5HAkiCo6CUq0NRU1KUgoqhlFcvd1f0z7Tgzv9+9PfyG2dl1Vpsa8KH9wuHec+/9nfu9557fORdmMYv/O+Rak70vpJcaP3gzDPNrnLg8DjvlS4cCgupGBS1yxFl56bn3xo7XRGDflqYlfpA6qJS+c/mja1LNbe1EUYggGD8A5aNMAtEBykyK6ATKC1A6ILTO/fB1j/Sf+ugvG3HRin2lc1f20HUJ7O9qvk0S/ollKzpb5y26Q40MnHVnD38mTgDncFEeowSjwdOC0YKnwUzrJ5ItZB57w104vteFg6fVz+dGc0XLto3vjvdU7qcrlQNdyQUkk8fvXd3dtviB1Xr8Qh+nv/lYCoUr2CjE2ggloERQCrQSlBK0AjWtLy5P4fJPclPHi5L/4xStidAbHsuvevpBM/DpyWLfVR54v6thXjKVPLls5ab29iUd2o39ihc0UIwmnWSdBWtBGUR7sahYKLWiDYguG042z6eQG6evdy2iNL9dGJtw1m7q3JM9WCbQszE9N2hMHWtbsHShOHJDA33pR555jea5t5IbOTd5X6JANIiKBQ1K4g1FynMSBygAQUOGyMGXO9bjbCGXDPxENpcPcazv3JM9JHs3N7UZY4cB/CB1Pizmv7v9vifX3bN6G9HIL+AszllwLrbqXKyX+v9kzM/cRXbkIl998PJFXHgmsvYJALFsVcZEbwOgZM2VYn5F0Jh5avmqrUSjv2OLE9hiDhdeKYsNp+nF3HXH8n+epXHOIu5euaFFtB62Si8WOOoUO6f8BQe2zzn8+ObdD6czC6+ZH/4Lvt2/PTd0/seNnbsqYgBgX3fTQ2LtUaV1UUR5ojTORjWYdjPOiMS2HC5voygAeH5PVqYQcCAfdje3ABRtdKlj7asMHOupbrFG3Hz/Or7/fAee0m0AnvjFZ3cNZgFMmSU4do9eBujdkiaRSpNMpetCIEg2ArChZL8S5qrVJSht8JMNdSGgjTfj3IwEtPHwE/XxgDZ+7QSM9ggS9fGA+fceuJEEPI+gTjFg/PIV+EDhWgQCoBXiimf8FLhackEViEKpctG9BRgDLgFRNQLNQMYpb3C4/8zczMKO0nBFknGVCceVdVd1TdwO9fdhxRsC5pf2jEokphDQJd374vTEW9idrwthS43nrQqHGfnkxMQ7QALwqHiHTM/5rUCm1AbEd1YPFAAFZIlPfh4oViMAkARaSpvPGKQ1IiS+j1FgHCYft9erevWqijNXqlncaPwNorOPpsGntkIAAAAASUVORK5CYII=);}\r\n.shop-tracking-status .image-order-status-active{left:18%}.shop-tracking-status .image-order-status-active .icon{background-image: url(data:image/png;base64,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);}\r\n.shop-tracking-status .image-order-status-pago{left:36%}.shop-tracking-status .image-order-status-pago .icon{background-image: url(data:image/png;base64,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);}\r\n.shop-tracking-status .image-order-status-intransit{left:56%}.shop-tracking-status .image-order-status-intransit .icon{background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAYAAABXAvmHAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA9dpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wUmlnaHRzPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvcmlnaHRzLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcFJpZ2h0czpNYXJrZWQ9IkZhbHNlIiB4bXBNTTpPcmlnaW5hbERvY3VtZW50SUQ9ImFkb2JlOmRvY2lkOnBob3Rvc2hvcDpjMmY4Njc2Mi02MmNkLTExZGYtOGJjNS1hMWFiNzQ2MTIxODIiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6ODI0OTQ1MTJFRTdCMTFERkFGNjZCMDk0NkMyREY1QUQiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6ODI0OTQ1MTFFRTdCMTFERkFGNjZCMDk0NkMyREY1QUQiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNSBXaW5kb3dzIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6RDAxODVEODIxQUJEREYx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);}\r\n.shop-tracking-status .image-order-status-delivered{left:76%}.shop-tracking-status .image-order-status-delivered .icon{background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAYAAACqaXHeAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA2ZpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMC1jMDYwIDYxLjEzNDc3NywgMjAxMC8wMi8xMi0xNzozMjowMCAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDowMTgwMTE3NDA3MjA2ODExOEY2MkQyNTFFNDI0N0U3NSIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDo3QzFCN0QwOUE1QUIxMUUwQjY1QUI1MUU1QzI1OUYyNCIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo3QzFCN0QwOEE1QUIxMUUwQjY1QUI1MUU1QzI1OUYyNCIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M1IE1hY2ludG9zaCI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOkZCN0YxMTc0MDcyMDY4MTE4NzFDREEyRkNEOTI0OThCIiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjAxODAxMTc0MDcyMDY4MTE4RjYyRDI1MUU0MjQ3RTc1Ii8+IDwvcmRmOkRlc2NyaXB0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);}\r\n.shop-tracking-status .image-order-status-completed{right:0px}.shop-tracking-status .image-order-status-completed .icon{background-image: url(data:image/png;base64,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);}\r\n.cancelado{left:0;background-repeat:no-repeat;background-size: contain;background-image: url(data:image/png;base64,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);}\r\n.well{background-color:#fff;}\r\n.grey {-webkit-filter: grayscale(100%);-moz-filter: grayscale(100%);-ms-filter: grayscale(100%);-o-filter: grayscale(100%);filter: grayscale(100%);}\r\n    </style>		\r\n		]]></add>\r\n		</operation>\r\n	</file>\r\n	<file path="catalog/language/portuguese-br/portuguese-br.php">\r\n		<operation>\r\n			<search><![CDATA[$_[''date_format_short'']     = ''d/m/Y'';]]></search>\r\n			<add position="replace"><![CDATA[$_[''date_format_short'']     = ''d/m/Y H:i'';]]></add>\r\n		</operation>\r\n	</file>\r\n\r\n</modification>', 1, '2016-05-19 15:43:18');
INSERT INTO `oc_modification` (`modification_id`, `name`, `code`, `author`, `version`, `link`, `xml`, `status`, `date_added`) VALUES
(14, 'Boleto Caixa - Segunda Via', 'boleto-caixa-segunda-via', 'Ibrahim Brumate', '1.1', 'http://www.opencartbrasil.com.br', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n    <name>Boleto Caixa - Segunda Via</name>\r\n	<code>boleto-caixa-segunda-via</code>\r\n	<version>1.1</version>\r\n	<author>Ibrahim Brumate</author>\r\n	<link>http://www.opencartbrasil.com.br</link>\r\n\r\n	<file path="catalog/model/account/order.php">\r\n		<operation>\r\n        	<search><![CDATA[''payment_method''          => $order_query->row[''payment_method''],]]></search>\r\n        	<add position="after">\r\n        		<![CDATA[\r\n         			''payment_code''          => $order_query->row[''payment_code''],\r\n         		]]>\r\n     		</add>\r\n      	</operation>\r\n   </file>\r\n\r\n   <file path="catalog/controller/account/order.php">\r\n		<operation>\r\n        	<search><![CDATA[$order_info = $this->model_account_order->getOrder($order_id);]]></search>\r\n         	<add position="after">\r\n         		<![CDATA[\r\n         			$encryption = new Encryption($this->config->get(''config_encryption''));\r\n         			$data[''order_id_encryption''] = $encryption->encrypt($order_id);\r\n         		]]>\r\n         	</add>\r\n		</operation>\r\n		<operation>\r\n        	<search><![CDATA[$data[''payment_method''] = $order_info[''payment_method''];]]></search>\r\n         	<add position="after">\r\n         		<![CDATA[\r\n         			$data[''payment_code''] = $order_info[''payment_code''];\r\n         		]]>\r\n         	</add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path="catalog/view/theme/*/template/account/order_info.tpl">\r\n		<operation>\r\n        	<search><![CDATA[<div class="buttons clearfix">]]></search>\r\n        	<add position="before" offset="1">\r\n        		<![CDATA[\r\n			        <?php if (($payment_code == "boleto_cef_sigcb") && ($histories[(sizeof($histories) - 1)][''status''] == "Aguardando Pagamento")) { ?>\r\n			        <h3>Finalizar Pagamento</h3>\r\n			        <table class="table table-bordered table-hover">\r\n			          <thead>\r\n			            <tr>\r\n			              <td class="text-left">M&eacute;todo de Pagamento</td>\r\n			              <td class="text-left">A&ccedil;&atilde;o</td>\r\n			            </tr>\r\n			          </thead>\r\n			          <tbody>\r\n			            <tr>\r\n			              <td class="text-left"><?php echo $payment_method; ?></td>\r\n			              <td class="text-left"><a href="index.php?route=payment/boleto_cef_sigcb/callback&order_id=<?php echo $order_id_encryption; ?>" target="_blank">Gerar 2ª Via do Boleto</a></td>\r\n			            </tr>\r\n			          </tbody>\r\n			        </table>\r\n			        <?php } ?>\r\n        		]]>\r\n        	</add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2016-06-29 12:28:30'),
(15, 'Auto Completar Endereço Brasil', 'auto-complete-address-brazil', 'Ibrahim Brumate', '1.4.1', 'http://www.opencartbrasil.com.br', '<?xml version="1.0" encoding="UTF-8"?>\r\n<modification>\r\n	<name>Auto Completar Endereço Brasil</name>\r\n	<code>auto-complete-address-brazil</code>	\r\n	<version>1.4.1</version>\r\n	<author>Ibrahim Brumate</author>\r\n    <link>http://www.opencartbrasil.com.br</link>\r\n	\r\n	<file path="catalog/model/localisation/zone.php">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[public function getZone($zone_id) {]]>\r\n			</search>\r\n			<add position="before">\r\n				<![CDATA[\r\n					public function getZonesByEstado($estado) {\r\n						if(strlen($estado) <= 2){\r\n							$query = $this->db->query("SELECT zone_id FROM " . DB_PREFIX . "zone WHERE country_id = ''30'' AND code = ''".$estado."'' AND status = ''1'' ORDER BY name");\r\n							$zone_id = $query->row[''zone_id''];\r\n						}else{\r\n							$zone_id = '''';\r\n						}\r\n						return $zone_id;\r\n					}\r\n				]]>\r\n			</add>\r\n		</operation> \r\n	</file>\r\n	\r\n	<file path="catalog/controller/account/register.php">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[public function customfield() {]]>\r\n			</search>\r\n			<add position="before">\r\n				<![CDATA[\r\n					public function estado_autocompletar() {\r\n						$this->load->model(''localisation/zone'');\r\n						$code = $this->model_localisation_zone->getZonesByEstado($this->request->get[''estado'']);\r\n						if ($code != '''') {\r\n							$output = $code;\r\n						}else{\r\n							$output = '''';\r\n						}\r\n						$this->response->setOutput($output);\r\n					}\r\n				]]>\r\n			</add>\r\n		</operation> \r\n	</file>\r\n	\r\n	<file path="catalog/view/theme/*/template/account/register.tpl|catalog/view/theme/*/template/affiliate/register.tpl">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[<?php echo $footer; ?>]]>\r\n			</search>\r\n			<add position="before">\r\n				<![CDATA[\r\n					<script type="text/javascript">\r\n						$(function(){\r\n							$(''#input-postcode'').blur(function(){\r\n								var cep = $.trim($(''#input-postcode'').val().replace(''-'', ''''));\r\n				\r\n								$.getJSON("https://viacep.com.br/ws/"+cep+"/json/", function(data) {\r\n									var resultadoCEP = data;\r\n									if(resultadoCEP["logradouro"] != "" && resultadoCEP["logradouro"] != undefined){\r\n										$(''#input-address-1'').val(unescape(resultadoCEP["logradouro"]));\r\n										$(''#input-address-2'').val(unescape(resultadoCEP["bairro"]));\r\n										$(''#input-city'').val(unescape(resultadoCEP["localidade"]));\r\n\r\n										$(''#input-country'').find(''option[value="30"]'').attr(''selected'', true);\r\n										$.post(''index.php?route=account/register/estado_autocompletar&estado='' + unescape(resultadoCEP[''uf'']), function(zone_id){\r\n											$.ajax({\r\n												url: ''index.php?route=account/account/country&country_id=30'',\r\n												dataType: ''json'',\r\n												beforeSend: function() {\r\n													$(''#input-country'').after(''<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>'');\r\n												},\r\n												complete: function() {\r\n													$(''.wait'').remove();\r\n												},			\r\n												success: function(json) {\r\n													if (json[''postcode_required''] == ''1'') {\r\n														$(''input[name=\\''postcode\\'']'').parent().parent().addClass(''required'');\r\n													} else {\r\n														$(''input[name=\\''postcode\\'']'').parent().parent().removeClass(''required'');\r\n													}\r\n			\r\n													var html = ''<option value=""><?php echo $text_select; ?></option>'';\r\n			\r\n													if (json[''zone''] != '''') {\r\n														for (i = 0; i < json[''zone''].length; i++) {\r\n															html += ''<option value="'' + json[''zone''][i][''zone_id''] + ''"'';\r\n															\r\n															if (json[''zone''][i][''zone_id''] == zone_id) {\r\n																html += '' selected="selected"'';\r\n															}\r\n											\r\n															html += ''>'' + json[''zone''][i][''name''] + ''</option>'';\r\n														}\r\n													} else {\r\n														html += ''<option value="0" selected="selected"><?php echo $text_none; ?></option>'';\r\n													}\r\n			\r\n													$(''#input-zone'').html(html);\r\n												}\r\n											});\r\n										});\r\n									} else if (resultadoCEP.erro) {\r\n										$(''#input-postcode'').val('''');\r\n										alert(''CEP não encontrado!'');\r\n										$(''#input-postcode'').focus();\r\n									}\r\n								});\r\n							});\r\n						});\r\n						$(document).ready(function() {\r\n							if ($(''#input-postcode'').val().length==8 || $(''#input-postcode'').val().length==9) {\r\n								$(''#input-postcode'').trigger(''blur'');\r\n							}\r\n						});\r\n					</script>\r\n				]]>\r\n			</add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search>\r\n				<![CDATA[<label class="col-sm-2 control-label" for="input-postcode"><?php echo $entry_postcode; ?></label>]]>\r\n			</search>\r\n			<add position="before" offset="1">\r\n				<![CDATA[<!-- ]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[<label class="col-sm-2 control-label" for="input-country"><?php echo $entry_country; ?></label>]]>\r\n			</search>\r\n			<add position="before" offset="1">\r\n				<![CDATA[ -->]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[<label class="col-sm-2 control-label" for="input-address-1"><?php echo $entry_address_1; ?></label>]]>\r\n			</search>\r\n			<add position="before" offset="1">\r\n				<![CDATA[\r\n					<div class="form-group required">\r\n						<label class="col-sm-2 control-label" for="input-postcode"><?php echo $entry_postcode; ?></label>\r\n						<div class="col-sm-10">\r\n						  <input type="text" name="postcode" value="<?php echo $postcode; ?>" placeholder="<?php echo $entry_postcode; ?>" id="input-postcode" class="form-control" />\r\n						  <?php if ($error_postcode) { ?>\r\n						  <div class="text-danger"><?php echo $error_postcode; ?></div>\r\n						  <?php } ?>\r\n						</div>\r\n					</div>\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path="catalog/view/theme/*/template/account/address_form.tpl|catalog/view/theme/*/template/affiliate/edit.tpl">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[<?php echo $footer; ?>]]>\r\n			</search>\r\n			<add position="before">\r\n				<![CDATA[\r\n					<script type="text/javascript">\r\n						$(function(){\r\n							$(''#input-postcode'').blur(function(){\r\n								var cep = $.trim($(''#input-postcode'').val().replace(''-'', ''''));\r\n				\r\n								$.getJSON("https://viacep.com.br/ws/"+cep+"/json/", function(data) {\r\n									var resultadoCEP = data;\r\n									if(resultadoCEP["logradouro"] != "" && resultadoCEP["logradouro"] != undefined){\r\n										$(''#input-address-1'').val(unescape(resultadoCEP["logradouro"]));\r\n										$(''#input-address-2'').val(unescape(resultadoCEP["bairro"]));\r\n										$(''#input-city'').val(unescape(resultadoCEP["localidade"]));\r\n\r\n										$(''#input-country'').find(''option[value="30"]'').attr(''selected'', true);\r\n										$.post(''index.php?route=account/register/estado_autocompletar&estado='' + unescape(resultadoCEP[''uf'']), function(zone_id){\r\n											$.ajax({\r\n												url: ''index.php?route=account/account/country&country_id=30'',\r\n												dataType: ''json'',\r\n												beforeSend: function() {\r\n													$(''#input-country'').after(''<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>'');\r\n												},\r\n												complete: function() {\r\n													$(''.wait'').remove();\r\n												},			\r\n												success: function(json) {\r\n													if (json[''postcode_required''] == ''1'') {\r\n														$(''input[name=\\''postcode\\'']'').parent().parent().addClass(''required'');\r\n													} else {\r\n														$(''input[name=\\''postcode\\'']'').parent().parent().removeClass(''required'');\r\n													}\r\n			\r\n													var html = ''<option value=""><?php echo $text_select; ?></option>'';\r\n			\r\n													if (json[''zone''] != '''') {\r\n														for (i = 0; i < json[''zone''].length; i++) {\r\n															html += ''<option value="'' + json[''zone''][i][''zone_id''] + ''"'';\r\n															\r\n															if (json[''zone''][i][''zone_id''] == zone_id) {\r\n																html += '' selected="selected"'';\r\n															}\r\n											\r\n															html += ''>'' + json[''zone''][i][''name''] + ''</option>'';\r\n														}\r\n													} else {\r\n														html += ''<option value="0" selected="selected"><?php echo $text_none; ?></option>'';\r\n													}\r\n			\r\n													$(''#input-zone'').html(html);\r\n												}\r\n											});\r\n										});\r\n									} else if (resultadoCEP.erro) {\r\n										$(''#input-postcode'').val('''');\r\n										alert(''CEP não encontrado!'');\r\n										$(''#input-postcode'').focus();\r\n									}\r\n								});\r\n							});\r\n						});\r\n					</script>\r\n				]]>\r\n			</add>\r\n		</operation>\r\n		\r\n		<operation>\r\n			<search>\r\n				<![CDATA[<label class="col-sm-2 control-label" for="input-postcode"><?php echo $entry_postcode; ?></label>]]>\r\n			</search>\r\n			<add position="before" offset="1">\r\n				<![CDATA[<!-- ]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[<label class="col-sm-2 control-label" for="input-country"><?php echo $entry_country; ?></label>]]>\r\n			</search>\r\n			<add position="before" offset="1">\r\n				<![CDATA[ -->]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[<label class="col-sm-2 control-label" for="input-address-1"><?php echo $entry_address_1; ?></label>]]>\r\n			</search>\r\n			<add position="before" offset="1">\r\n				<![CDATA[\r\n					<div class="form-group required">\r\n						<label class="col-sm-2 control-label" for="input-postcode"><?php echo $entry_postcode; ?></label>\r\n						<div class="col-sm-10">\r\n						  <input type="text" name="postcode" value="<?php echo $postcode; ?>" placeholder="<?php echo $entry_postcode; ?>" id="input-postcode" class="form-control" />\r\n						  <?php if ($error_postcode) { ?>\r\n						  <div class="text-danger"><?php echo $error_postcode; ?></div>\r\n						  <?php } ?>\r\n						</div>\r\n					</div>\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path="catalog/view/theme/*/template/checkout/register.tpl|catalog/view/theme/*/template/checkout/guest.tpl">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[$(''#collapse-payment-address select[name=\\''country_id\\'']'').trigger(''change'');]]>\r\n			</search>\r\n			<add position="after" offset="1">\r\n				<![CDATA[\r\n					<script type="text/javascript">\r\n						$(function(){\r\n							$(''#input-payment-postcode'').blur(function(){\r\n								var cep = $.trim($(''#input-payment-postcode'').val().replace(''-'', ''''));\r\n				\r\n								$.getJSON("https://viacep.com.br/ws/"+cep+"/json/", function(data) {\r\n									var resultadoCEP = data;\r\n									if(resultadoCEP["logradouro"] != "" && resultadoCEP["logradouro"] != undefined){\r\n										$(''#input-payment-address-1'').val(unescape(resultadoCEP["logradouro"]));\r\n										$(''#input-payment-address-2'').val(unescape(resultadoCEP["bairro"]));\r\n										$(''#input-payment-city'').val(unescape(resultadoCEP["localidade"]));\r\n\r\n										$(''#input-payment-country'').find(''option[value="30"]'').attr(''selected'', true);\r\n										$.post(''index.php?route=account/register/estado_autocompletar&estado='' + unescape(resultadoCEP[''uf'']), function(zone_id){\r\n											$.ajax({\r\n												url: ''index.php?route=account/account/country&country_id=30'',\r\n												dataType: ''json'',\r\n												beforeSend: function() {\r\n													$(''#input-payment-country'').after(''<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>'');\r\n												},\r\n												complete: function() {\r\n													$(''.wait'').remove();\r\n												},			\r\n												success: function(json) {\r\n													if (json[''postcode_required''] == ''1'') {\r\n														$(''#collapse-payment-address input[name=\\''postcode\\'']'').parent().parent().addClass(''required'');\r\n													} else {\r\n														$(''#collapse-payment-address input[name=\\''postcode\\'']'').parent().parent().removeClass(''required'');\r\n													}\r\n			\r\n													var html = ''<option value=""><?php echo $text_select; ?></option>'';\r\n			\r\n													if (json[''zone''] != '''') {\r\n														for (i = 0; i < json[''zone''].length; i++) {\r\n															html += ''<option value="'' + json[''zone''][i][''zone_id''] + ''"'';\r\n															\r\n															if (json[''zone''][i][''zone_id''] == zone_id) {\r\n																html += '' selected="selected"'';\r\n															}\r\n											\r\n															html += ''>'' + json[''zone''][i][''name''] + ''</option>'';\r\n														}\r\n													} else {\r\n														html += ''<option value="0" selected="selected"><?php echo $text_none; ?></option>'';\r\n													}\r\n			\r\n													$(''#input-payment-zone'').html(html);\r\n												}\r\n											});\r\n										});\r\n									} else if (resultadoCEP.erro) {\r\n										$(''#input-payment-postcode'').val('''');\r\n										alert(''CEP não encontrado!'');\r\n										$(''#input-payment-postcode'').focus();\r\n									}\r\n								});\r\n							});\r\n						});\r\n						$(document).ready(function() {\r\n							if ($(''#input-payment-postcode'').val().length==8 || $(''#input-payment-postcode'').val().length==9) {\r\n								$(''#input-payment-postcode'').trigger(''blur'');\r\n							}\r\n						});\r\n					</script>\r\n				]]>\r\n			</add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search>\r\n				<![CDATA[<label class="control-label" for="input-payment-postcode"><?php echo $entry_postcode; ?></label>]]>\r\n			</search>\r\n			<add position="before" offset="1">\r\n				<![CDATA[<!-- ]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[<label class="control-label" for="input-payment-country"><?php echo $entry_country; ?></label>]]>\r\n			</search>\r\n			<add position="before" offset="1">\r\n				<![CDATA[ -->]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[<label class="control-label" for="input-payment-address-1"><?php echo $entry_address_1; ?></label>]]>\r\n			</search>\r\n			<add position="before" offset="1">\r\n				<![CDATA[\r\n					<div class="form-group required">\r\n						<label class="control-label" for="input-payment-postcode"><?php echo $entry_postcode; ?></label>\r\n						<input type="text" name="postcode" value="<?php echo $postcode; ?>" placeholder="<?php echo $entry_postcode; ?>" id="input-payment-postcode" class="form-control" />\r\n					</div>\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path="catalog/view/theme/*/template/checkout/payment_address.tpl">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[$(''#collapse-payment-address select[name=\\''country_id\\'']'').trigger(''change'');]]>\r\n			</search>\r\n			<add position="after" offset="1">\r\n				<![CDATA[\r\n					<script type="text/javascript">\r\n						$(function(){\r\n							$(''#input-payment-postcode'').blur(function(){\r\n								var cep = $.trim($(''#input-payment-postcode'').val().replace(''-'', ''''));\r\n				\r\n								$.getJSON("https://viacep.com.br/ws/"+cep+"/json/", function(data) {\r\n									var resultadoCEP = data;\r\n									if(resultadoCEP["logradouro"] != "" && resultadoCEP["logradouro"] != undefined){\r\n										$(''#input-payment-address-1'').val(unescape(resultadoCEP["logradouro"]));\r\n										$(''#input-payment-address-2'').val(unescape(resultadoCEP["bairro"]));\r\n										$(''#input-payment-city'').val(unescape(resultadoCEP["localidade"]));\r\n\r\n										$(''#input-payment-country'').find(''option[value="30"]'').attr(''selected'', true);\r\n										$.post(''index.php?route=account/register/estado_autocompletar&estado='' + unescape(resultadoCEP[''uf'']), function(zone_id){\r\n											$.ajax({\r\n												url: ''index.php?route=account/account/country&country_id=30'',\r\n												dataType: ''json'',\r\n												beforeSend: function() {\r\n													$(''#input-payment-country'').after(''<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>'');\r\n												},\r\n												complete: function() {\r\n													$(''.wait'').remove();\r\n												},			\r\n												success: function(json) {\r\n													if (json[''postcode_required''] == ''1'') {\r\n														$(''#collapse-payment-address input[name=\\''postcode\\'']'').parent().parent().addClass(''required'');\r\n													} else {\r\n														$(''#collapse-payment-address input[name=\\''postcode\\'']'').parent().parent().removeClass(''required'');\r\n													}\r\n			\r\n													var html = ''<option value=""><?php echo $text_select; ?></option>'';\r\n			\r\n													if (json[''zone''] != '''') {\r\n														for (i = 0; i < json[''zone''].length; i++) {\r\n															html += ''<option value="'' + json[''zone''][i][''zone_id''] + ''"'';\r\n															\r\n															if (json[''zone''][i][''zone_id''] == zone_id) {\r\n																html += '' selected="selected"'';\r\n															}\r\n											\r\n															html += ''>'' + json[''zone''][i][''name''] + ''</option>'';\r\n														}\r\n													} else {\r\n														html += ''<option value="0" selected="selected"><?php echo $text_none; ?></option>'';\r\n													}\r\n			\r\n													$(''#input-payment-zone'').html(html);\r\n												}\r\n											});\r\n										});\r\n									} else if (resultadoCEP.erro) {\r\n										$(''#input-payment-postcode'').val('''');\r\n										alert(''CEP não encontrado!'');\r\n										$(''#input-payment-postcode'').focus();\r\n									}\r\n								});\r\n							});\r\n						});\r\n						$(document).ready(function() {\r\n							if ($(''#input-payment-postcode'').val().length==8 || $(''#input-payment-postcode'').val().length==9) {\r\n								$(''#input-payment-postcode'').trigger(''blur'');\r\n							}\r\n						});\r\n					</script>\r\n				]]>\r\n			</add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search>\r\n				<![CDATA[<label class="col-sm-2 control-label" for="input-payment-postcode"><?php echo $entry_postcode; ?></label>]]>\r\n			</search>\r\n			<add position="before" offset="1">\r\n				<![CDATA[<!-- ]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[<label class="col-sm-2 control-label" for="input-payment-country"><?php echo $entry_country; ?></label>]]>\r\n			</search>\r\n			<add position="before" offset="1">\r\n				<![CDATA[ -->]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[<label class="col-sm-2 control-label" for="input-payment-address-1"><?php echo $entry_address_1; ?></label>]]>\r\n			</search>\r\n			<add position="before" offset="1">\r\n				<![CDATA[\r\n					<div class="form-group required">\r\n				      <label class="col-sm-2 control-label" for="input-payment-postcode"><?php echo $entry_postcode; ?></label>\r\n				      <div class="col-sm-10">\r\n				        <input type="text" name="postcode" value="" placeholder="<?php echo $entry_postcode; ?>" id="input-payment-postcode" class="form-control" />\r\n				      </div>\r\n				    </div>\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n\r\n	<file path="catalog/view/theme/*/template/checkout/guest_shipping.tpl|catalog/view/theme/*/template/checkout/shipping_address.tpl">\r\n		<operation>\r\n			<search>\r\n				<![CDATA[$(''#collapse-shipping-address select[name=\\''country_id\\'']'').trigger(''change'');]]>\r\n			</search>\r\n			<add position="after" offset="1">\r\n				<![CDATA[\r\n					<script type="text/javascript">\r\n						$(function(){\r\n							$(''#input-shipping-postcode'').blur(function(){\r\n								var cep = $.trim($(''#input-shipping-postcode'').val().replace(''-'', ''''));\r\n				\r\n								$.getJSON("https://viacep.com.br/ws/"+cep+"/json/", function(data) {\r\n									var resultadoCEP = data;\r\n									if(resultadoCEP["logradouro"] != "" && resultadoCEP["logradouro"] != undefined){\r\n										$(''#input-shipping-address-1'').val(unescape(resultadoCEP["logradouro"]));\r\n										$(''#input-shipping-address-2'').val(unescape(resultadoCEP["bairro"]));\r\n										$(''#input-shipping-city'').val(unescape(resultadoCEP["localidade"]));\r\n\r\n										$(''#input-shipping-country'').find(''option[value="30"]'').attr(''selected'', true);\r\n										$.post(''index.php?route=account/register/estado_autocompletar&estado='' + unescape(resultadoCEP[''uf'']), function(zone_id){\r\n											$.ajax({\r\n												url: ''index.php?route=account/account/country&country_id=30'',\r\n												dataType: ''json'',\r\n												beforeSend: function() {\r\n													$(''#input-shipping-country'').after(''<span class="wait">&nbsp;<img src="catalog/view/theme/default/image/loading.gif" alt="" /></span>'');\r\n												},\r\n												complete: function() {\r\n													$(''.wait'').remove();\r\n												},			\r\n												success: function(json) {\r\n													if (json[''postcode_required''] == ''1'') {\r\n														$(''#collapse-shipping-address input[name=\\''postcode\\'']'').parent().parent().addClass(''required'');\r\n													} else {\r\n														$(''#collapse-shipping-address input[name=\\''postcode\\'']'').parent().parent().removeClass(''required'');\r\n													}\r\n			\r\n													var html = ''<option value=""><?php echo $text_select; ?></option>'';\r\n			\r\n													if (json[''zone''] != '''') {\r\n														for (i = 0; i < json[''zone''].length; i++) {\r\n															html += ''<option value="'' + json[''zone''][i][''zone_id''] + ''"'';\r\n															\r\n															if (json[''zone''][i][''zone_id''] == zone_id) {\r\n																html += '' selected="selected"'';\r\n															}\r\n											\r\n															html += ''>'' + json[''zone''][i][''name''] + ''</option>'';\r\n														}\r\n													} else {\r\n														html += ''<option value="0" selected="selected"><?php echo $text_none; ?></option>'';\r\n													}\r\n			\r\n													$(''#input-shipping-zone'').html(html);\r\n												}\r\n											});\r\n										});\r\n									} else if (resultadoCEP.erro) {\r\n										$(''#input-shipping-postcode'').val('''');\r\n										alert(''CEP não encontrado!'');\r\n										$(''#input-shipping-postcode'').focus();\r\n									}\r\n								});\r\n							});\r\n						});\r\n						$(document).ready(function() {\r\n							if ($(''#input-shipping-postcode'').val().length==8 || $(''#input-shipping-postcode'').val().length==9) {\r\n								$(''#input-shipping-postcode'').trigger(''blur'');\r\n							}\r\n						});\r\n					</script>\r\n				]]>\r\n			</add>\r\n		</operation>\r\n\r\n		<operation>\r\n			<search>\r\n				<![CDATA[<label class="col-sm-2 control-label" for="input-shipping-postcode"><?php echo $entry_postcode; ?></label>]]>\r\n			</search>\r\n			<add position="before" offset="1">\r\n				<![CDATA[<!-- ]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[<label class="col-sm-2 control-label" for="input-shipping-country"><?php echo $entry_country; ?></label>]]>\r\n			</search>\r\n			<add position="before" offset="1">\r\n				<![CDATA[ -->]]>\r\n			</add>\r\n		</operation>\r\n		<operation>\r\n			<search>\r\n				<![CDATA[<label class="col-sm-2 control-label" for="input-shipping-address-1"><?php echo $entry_address_1; ?></label>]]>\r\n			</search>\r\n			<add position="before" offset="1">\r\n				<![CDATA[\r\n					<div class="form-group required">\r\n				      <label class="col-sm-2 control-label" for="input-shipping-postcode"><?php echo $entry_postcode; ?></label>\r\n				      <div class="col-sm-10">\r\n				        <input type="text" name="postcode" value="" placeholder="<?php echo $entry_postcode; ?>" id="input-shipping-postcode" class="form-control" />\r\n				      </div>\r\n				    </div>\r\n				]]>\r\n			</add>\r\n		</operation>\r\n	</file>\r\n</modification>', 1, '2016-06-29 12:28:36'),
(16, 'PagSeguro Checkout Transparente', '19676', 'Valdeir Psr', '1.3.0', 'http://www.valdeirsantana.com.br', '<?xml version="1.0" encoding="utf-8"?>\r\n<modification>\r\n  <name>PagSeguro Checkout Transparente</name>\r\n  <code>19676</code>\r\n  <version>1.3.0</version>\r\n  <author>Valdeir Psr</author>\r\n  <link>http://www.valdeirsantana.com.br</link>\r\n  <file path="catalog/controller/checkout/checkout.php">\r\n    <operation>\r\n      <search><![CDATA[$this->load->language(''checkout/checkout'');]]></search>\r\n      <add position="after"><![CDATA[\r\n        //Verifica se está em modo de teste\r\n        if (!$this->config->get(''pagseguro_modo_teste'')) {\r\n          $this->document->addScript(''https://stc.pagseguro.uol.com.br/pagseguro/api/v2/checkout/pagseguro.directpayment.js'');\r\n        } else {\r\n          $this->document->addScript(''https://stc.sandbox.pagseguro.uol.com.br/pagseguro/api/v2/checkout/pagseguro.directpayment.js'');\r\n        }\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n  <file path="catalog/view/theme/*/template/common/footer.tpl">\r\n    <operation error="skip">\r\n      <search><![CDATA[<p><?php echo $powered; ?></p>]]></search>\r\n      <add position="after"><![CDATA[\r\n        <div style="position:absolute;left:-9999px;top:-9999px;"><h1><a href="//www.valdeirsantana.com.br">Valdeir Santana / OpenCart / Lojas Virtuais / Arastta</a></h1></div>\r\n      ]]></add>\r\n    </operation>\r\n  </file>\r\n</modification>', 1, '2016-06-29 12:43:41');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_module`
--

CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_module`
--

INSERT INTO `oc_module` (`module_id`, `name`, `code`, `setting`) VALUES
(30, 'Category', 'banner', '{"name":"Category","banner_id":"6","width":"182","height":"182","status":"1"}'),
(29, 'Home Page', 'carousel', '{"name":"Home Page","banner_id":"8","width":"130","height":"100","status":"1"}'),
(28, 'Home Page', 'featured', '{"name":"Home Page","product":["43","40","42","30"],"limit":"4","width":"200","height":"200","status":"1"}'),
(27, 'Home Page', 'slideshow', '{"name":"Home Page","banner_id":"7","width":"1140","height":"380","status":"1"}'),
(31, 'Banner 1', 'banner', '{"name":"Banner 1","banner_id":"6","width":"182","height":"182","status":"1"}'),
(33, 'Home', 'bestseller', '{"name":"Home","limit":"5","width":"200","height":"200","status":"1"}');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_option`
--

CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_option`
--

INSERT INTO `oc_option` (`option_id`, `type`, `sort_order`) VALUES
(1, 'radio', 1),
(2, 'checkbox', 2),
(4, 'text', 3),
(5, 'select', 4),
(6, 'textarea', 5),
(7, 'file', 6),
(8, 'date', 7),
(9, 'time', 8),
(10, 'datetime', 9),
(11, 'select', 10),
(12, 'date', 11),
(13, 'select', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_option_description`
--

CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_option_description`
--

INSERT INTO `oc_option_description` (`option_id`, `language_id`, `name`) VALUES
(1, 1, 'Radio'),
(2, 1, 'Checkbox'),
(4, 1, 'Text'),
(6, 1, 'Textarea'),
(8, 1, 'Date'),
(7, 1, 'File'),
(5, 1, 'Select'),
(9, 1, 'Time'),
(10, 1, 'Date &amp; Time'),
(12, 1, 'Delivery Date'),
(11, 1, 'Size'),
(1, 2, 'Radio'),
(2, 2, 'Checkbox'),
(4, 2, 'Text'),
(6, 2, 'Textarea'),
(8, 2, 'Date'),
(7, 2, 'File'),
(5, 2, 'Select'),
(9, 2, 'Time'),
(10, 2, 'Date &amp; Time'),
(12, 2, 'Delivery Date'),
(11, 2, 'Size'),
(13, 1, 'Cor'),
(13, 2, 'Cor');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_option_value`
--

CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_option_value`
--

INSERT INTO `oc_option_value` (`option_value_id`, `option_id`, `image`, `sort_order`) VALUES
(43, 1, '', 3),
(32, 1, '', 1),
(45, 2, '', 4),
(44, 2, '', 3),
(42, 5, '', 4),
(41, 5, '', 3),
(39, 5, '', 1),
(40, 5, '', 2),
(31, 1, '', 2),
(23, 2, '', 1),
(24, 2, '', 2),
(46, 11, '', 1),
(47, 11, '', 2),
(48, 11, '', 3),
(49, 13, 'catalog/Produtos/bancoAmpulheta/gd_principal (3).jpg', 0),
(50, 13, 'catalog/Produtos/bancoAmpulheta/gd_principal (1).jpg', 0),
(51, 13, 'catalog/Produtos/bancoAmpulheta/gd_principal.jpg', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_option_value_description`
--

CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_option_value_description`
--

INSERT INTO `oc_option_value_description` (`option_value_id`, `language_id`, `option_id`, `name`) VALUES
(43, 1, 1, 'Large'),
(32, 1, 1, 'Small'),
(45, 1, 2, 'Checkbox 4'),
(44, 1, 2, 'Checkbox 3'),
(31, 1, 1, 'Medium'),
(42, 1, 5, 'Yellow'),
(41, 1, 5, 'Green'),
(39, 1, 5, 'Red'),
(40, 1, 5, 'Blue'),
(23, 1, 2, 'Checkbox 1'),
(24, 1, 2, 'Checkbox 2'),
(48, 1, 11, 'Large'),
(47, 1, 11, 'Medium'),
(46, 1, 11, 'Small'),
(43, 2, 1, 'Large'),
(32, 2, 1, 'Small'),
(45, 2, 2, 'Checkbox 4'),
(44, 2, 2, 'Checkbox 3'),
(31, 2, 1, 'Medium'),
(42, 2, 5, 'Yellow'),
(41, 2, 5, 'Green'),
(39, 2, 5, 'Red'),
(40, 2, 5, 'Blue'),
(23, 2, 2, 'Checkbox 1'),
(24, 2, 2, 'Checkbox 2'),
(48, 2, 11, 'Large'),
(47, 2, 11, 'Medium'),
(46, 2, 11, 'Small'),
(49, 1, 13, 'Amarelo'),
(49, 2, 13, 'Amarelo'),
(50, 1, 13, 'Branco'),
(50, 2, 13, 'Branco'),
(51, 1, 13, 'Preta'),
(51, 2, 13, 'Preta');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order`
--

CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_order`
--

INSERT INTO `oc_order` (`order_id`, `invoice_no`, `invoice_prefix`, `store_id`, `store_name`, `store_url`, `customer_id`, `customer_group_id`, `firstname`, `lastname`, `email`, `telephone`, `fax`, `custom_field`, `payment_firstname`, `payment_lastname`, `payment_company`, `payment_address_1`, `payment_address_2`, `payment_city`, `payment_postcode`, `payment_country`, `payment_country_id`, `payment_zone`, `payment_zone_id`, `payment_address_format`, `payment_custom_field`, `payment_method`, `payment_code`, `shipping_firstname`, `shipping_lastname`, `shipping_company`, `shipping_address_1`, `shipping_address_2`, `shipping_city`, `shipping_postcode`, `shipping_country`, `shipping_country_id`, `shipping_zone`, `shipping_zone_id`, `shipping_address_format`, `shipping_custom_field`, `shipping_method`, `shipping_code`, `comment`, `total`, `order_status_id`, `affiliate_id`, `commission`, `marketing_id`, `tracking`, `language_id`, `currency_id`, `currency_code`, `currency_value`, `ip`, `forwarded_ip`, `user_agent`, `accept_language`, `date_added`, `date_modified`) VALUES
(1, 1, 'INV-2016-00', 0, 'Arte Mania Enxovais', 'http://127.0.0.1:80/opencart/', 24, 1, 'Artur', 'Schaefer', 'artur.schaefer@hotmail.com', '27 99850-3478', '', '{"1":"1"}', 'Artur', 'Schaefer', '', 'Rua Virginia Paganini Tozzi', '', 'MARILANDIA', '29725-000', 'Brasil', 30, 'Espírito Santo', 447, '', '{"2":"3"}', 'Pagar quando retirar na loja', 'cod', 'Artur', 'Schaefer', '', 'Rua Virginia Paganini Tozzi', '', 'MARILANDIA', '29725-000', 'Brasil', 30, 'Espírito Santo', 447, '', '{"2":"3"}', 'Frete fixo', 'flat.flat', 'Por favor. Rápido.', '105.0000', 1, 0, '0.0000', 0, '', 2, 2, 'BRL', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.94 Safari/537.36', 'pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', '2016-05-11 16:20:02', '2016-05-11 16:20:05'),
(2, 0, 'INV-2016-00', 0, 'Arte Mania Enxovais', 'http://127.0.0.1:80/opencart/', 24, 1, 'Artur', 'Schaefer', 'artur.schaefer@hotmail.com', '27 99850-3478', '', '{"1":"1"}', 'Artur', 'Schaefer', '', 'Rua Virginia Paganini Tozzi', '', 'MARILANDIA', '29725-000', 'Brasil', 30, 'Espírito Santo', 447, '', '{"2":"3"}', 'Pagar quando retirar na loja', 'cod', 'Artur', 'Schaefer', '', 'Rua Virginia Paganini Tozzi', '', 'MARILANDIA', '29725-000', 'Brasil', 30, 'Espírito Santo', 447, '', '{"2":"3"}', 'Frete fixo', 'flat.flat', '', '205.0000', 1, 0, '0.0000', 0, '', 2, 2, 'BRL', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/50.0.2661.102 Safari/537.36', 'pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', '2016-05-19 15:44:36', '2016-05-19 15:44:39'),
(3, 3, 'INV-2016-00', 0, 'Arte Mania Enxovais', 'http://127.0.0.1:80/opencart/', 24, 1, 'Artur', 'Schaefer', 'artur.schaefer@hotmail.com', '27 99850-3478', '', '{"1":"1"}', 'Artur', 'Schaefer', '', 'Rua Virginia Paganini Tozzi', '', 'MARILANDIA', '29724-000', 'Brasil', 30, 'Espírito Santo', 447, '', '{"2":"4"}', 'Boleto CAIXA E. FEDERAL', 'boleto_cef_sigcb', 'Artur', 'Schaefer', '', 'Rua Virginia Paganini Tozzi', '', 'MARILANDIA', '29725-000', 'Brasil', 30, 'Espírito Santo', 447, '', '{"2":"3"}', 'PAC. Entrega em até 5 dias úteis', 'correios.41106', '', '212.2500', 1, 0, '0.0000', 0, '', 2, 2, 'BRL', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', '2016-06-29 12:50:46', '2016-06-29 12:50:55'),
(4, 2, 'INV-2016-00', 0, 'Arte Mania Enxovais', 'http://localhost:80/opencart/', 24, 1, 'Artur', 'Schaefer', 'artur.schaefer@hotmail.com', '27 99850-3478', '', '{"1":"1"}', 'Artur', 'Schaefer', '', 'Rua Virginia Paganini Tozzi', '', 'MARILANDIA', '29725-000', 'Brasil', 30, 'Espírito Santo', 447, '', '{"2":"3"}', 'Boleto CAIXA E. FEDERAL', 'boleto_cef_sigcb', 'Artur', 'Schaefer', '', 'Rua Quarenta e Sete', 'Jardim São Paulo(Zona Leste)', 'São Paulo', '08465-312 ', 'Brasil', 30, 'São Paulo', 464, '', '{"2":"3"}', 'Frete fixo', 'flat.flat', '', '305.0000', 1, 0, '0.0000', 0, '', 2, 2, 'BRL', '1.00000000', '127.0.0.1', '', 'Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.106 Safari/537.36', 'pt-BR,pt;q=0.8,en-US;q=0.6,en;q=0.4', '2016-06-29 18:10:47', '2016-06-29 18:10:51');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_custom_field`
--

CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_history`
--

CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_order_history`
--

INSERT INTO `oc_order_history` (`order_history_id`, `order_id`, `order_status_id`, `notify`, `comment`, `date_added`) VALUES
(1, 1, 1, 0, '', '2016-05-11 16:20:05'),
(2, 2, 1, 0, '', '2016-05-19 15:44:39'),
(3, 3, 1, 0, '', '2016-06-29 12:50:55'),
(4, 4, 1, 0, '', '2016-06-29 18:10:51');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_option`
--

CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_order_option`
--

INSERT INTO `oc_order_option` (`order_option_id`, `order_id`, `order_product_id`, `product_option_id`, `product_option_value_id`, `name`, `value`, `type`) VALUES
(1, 1, 1, 227, 17, 'Cor', 'Amarelo', 'select'),
(2, 3, 3, 227, 19, 'Cor', 'Preta', 'select');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_product`
--

CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_order_product`
--

INSERT INTO `oc_order_product` (`order_product_id`, `order_id`, `product_id`, `name`, `model`, `quantity`, `price`, `total`, `tax`, `reward`) VALUES
(1, 1, 63, 'Banco Ampulheta', '001', 1, '100.0000', '100.0000', '0.0000', 30),
(2, 2, 52, 'Bouclê', 'boucle_01', 1, '200.0000', '200.0000', '0.0000', 0),
(3, 3, 63, 'Banco Ampulheta', '001', 1, '100.0000', '100.0000', '0.0000', 30),
(4, 4, 57, 'Mesa Quadrada Branca', '002', 3, '100.0000', '300.0000', '0.0000', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_recurring`
--

CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_recurring_transaction`
--

CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_status`
--

CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_order_status`
--

INSERT INTO `oc_order_status` (`order_status_id`, `language_id`, `name`) VALUES
(2, 1, 'Processing'),
(3, 1, 'Shipped'),
(7, 1, 'Canceled'),
(5, 1, 'Complete'),
(8, 1, 'Denied'),
(9, 1, 'Canceled Reversal'),
(10, 1, 'Failed'),
(11, 1, 'Refunded'),
(12, 1, 'Reversed'),
(13, 1, 'Chargeback'),
(1, 1, 'Pending'),
(16, 1, 'Voided'),
(15, 1, 'Processed'),
(14, 1, 'Expired'),
(2, 2, 'Processing'),
(3, 2, 'Shipped'),
(7, 2, 'Canceled'),
(5, 2, 'Complete'),
(8, 2, 'Denied'),
(9, 2, 'Canceled Reversal'),
(10, 2, 'Failed'),
(11, 2, 'Refunded'),
(12, 2, 'Reversed'),
(13, 2, 'Chargeback'),
(1, 2, 'Pending'),
(16, 2, 'Voided'),
(15, 2, 'Processed'),
(14, 2, 'Expired');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_total`
--

CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_order_total`
--

INSERT INTO `oc_order_total` (`order_total_id`, `order_id`, `code`, `title`, `value`, `sort_order`) VALUES
(1, 1, 'sub_total', 'Sub-total', '100.0000', 1),
(2, 1, 'shipping', 'Frete fixo', '5.0000', 3),
(3, 1, 'total', 'Total', '105.0000', 9),
(4, 2, 'sub_total', 'Sub-total', '200.0000', 1),
(5, 2, 'shipping', 'Frete fixo', '5.0000', 3),
(6, 2, 'total', 'Total', '205.0000', 9),
(7, 3, 'sub_total', 'Sub-total', '100.0000', 1),
(8, 3, 'shipping', 'PAC. Entrega em até 5 dias úteis', '112.2500', 3),
(9, 3, 'total', 'Total', '212.2500', 9),
(10, 4, 'sub_total', 'Sub-total', '300.0000', 1),
(11, 4, 'shipping', 'Frete fixo', '5.0000', 3),
(12, 4, 'total', 'Total', '305.0000', 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_order_voucher`
--

CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product`
--

CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_product`
--

INSERT INTO `oc_product` (`product_id`, `model`, `sku`, `upc`, `ean`, `jan`, `isbn`, `mpn`, `location`, `quantity`, `stock_status_id`, `image`, `manufacturer_id`, `shipping`, `price`, `points`, `tax_class_id`, `date_available`, `weight`, `weight_class_id`, `length`, `width`, `height`, `length_class_id`, `subtract`, `minimum`, `sort_order`, `status`, `viewed`, `date_added`, `date_modified`) VALUES
(66, '002', '', '', '', '', '', '', '', 1, 6, 'catalog/Produtos/Vasos/vasoFibraCircular/gd_0_1.jpg', 14, 1, '70.0000', 0, 0, '2016-05-05', '1.00000000', 1, '40.00000000', '40.00000000', '30.00000000', 1, 1, 1, 1, 1, 0, '2016-05-05 16:29:56', '2016-05-05 16:30:26'),
(63, '001', '', '', '', '', '', '', '', 8, 6, 'catalog/Produtos/bancoAmpulheta/gd_principal (1).jpg', 14, 1, '100.0000', 1000, 0, '2016-05-05', '5.00000000', 1, '60.00000000', '60.00000000', '60.00000000', 1, 1, 1, 1, 1, 19, '2016-05-05 16:05:13', '2016-06-27 21:05:36'),
(64, '001', '', '', '', '', '', '', '', 7, 6, 'catalog/Produtos/Tapetes/carpeteResidencial/phpThumb_generated_thumbnailjpg (2).jpg', 15, 1, '20.0000', 0, 0, '2016-05-04', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2016-05-05 16:22:36', '2016-06-27 21:06:51'),
(65, '002', '', '', '', '', '', '', '', 1, 6, 'catalog/Produtos/Tapetes/carpeteEmpresarial/phpThumb_generated_thumbnailjpg (1).jpg', 15, 1, '30.0000', 0, 0, '2016-05-05', '0.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 2, '2016-05-05 16:26:40', '2016-05-11 16:02:58'),
(55, 'hack21902', '', '', '', '', '', '', '', 3, 6, 'catalog/Produtos/Criado Mudo/hack.jpg', 14, 1, '275.0000', 0, 0, '2016-04-11', '20.00000000', 1, '200.00000000', '50.00000000', '100.00000000', 1, 1, 1, 1, 1, 1, '2016-04-11 16:41:42', '2016-05-11 16:04:25'),
(56, '001', '', '', '', '', '', '', '', 10, 6, 'catalog/Produtos/Mesas/mesaRetangular/gd_principal.jpg', 14, 1, '150.0000', 0, 0, '2016-05-04', '34.00000000', 1, '200.00000000', '150.00000000', '130.00000000', 1, 1, 1, 1, 1, 4, '2016-05-05 15:42:34', '2016-06-27 20:57:24'),
(57, '002', '', '', '', '', '', '', '', 7, 6, 'catalog/Produtos/Mesas/mesaRetangular/gd_principal (1).jpg', 14, 1, '150.0000', 0, 0, '2016-05-04', '34.00000000', 1, '200.00000000', '150.00000000', '130.00000000', 1, 1, 1, 1, 1, 13, '2016-05-05 15:43:35', '2016-06-27 21:09:15'),
(58, '001', '', '', '', '', '', '', '', 5, 6, 'catalog/Produtos/Mesas/mesaCircular/gd_principal.jpg', 14, 1, '160.0000', 0, 0, '2016-05-05', '5.00000000', 1, '30.00000000', '30.00000000', '140.00000000', 1, 1, 1, 1, 1, 2, '2016-05-05 15:53:17', '2016-05-11 16:01:44'),
(59, '002', '', '', '', '', '', '', '', 3, 6, 'catalog/Produtos/Mesas/mesaCircular/gd_principal (4).jpg', 14, 1, '160.0000', 0, 0, '2016-05-05', '5.00000000', 1, '30.00000000', '30.00000000', '140.00000000', 1, 1, 1, 1, 1, 0, '2016-05-05 15:54:27', '2016-05-05 15:56:23'),
(60, '001', '', '', '', '', '', '', '', 7, 6, 'catalog/Produtos/Mesas/mesaCircular/gd_principal (1).jpg', 14, 1, '180.0000', 0, 0, '2016-05-05', '4.00000000', 1, '100.00000000', '90.00000000', '130.00000000', 1, 1, 1, 1, 1, 0, '2016-05-05 16:00:07', '0000-00-00 00:00:00'),
(61, '002', '', '', '', '', '', '', '', 7, 6, 'catalog/Produtos/Mesas/mesaCircular/gd_principal (1).jpg', 14, 1, '180.0000', 0, 0, '2016-05-05', '4.00000000', 1, '100.00000000', '90.00000000', '130.00000000', 1, 1, 1, 1, 1, 0, '2016-05-05 16:00:14', '2016-05-05 16:01:08'),
(62, '003', '', '', '', '', '', '', '', 5, 6, 'catalog/Produtos/Mesas/mesaTriangular/gd_principal (20).jpg', 14, 1, '180.0000', 0, 0, '2016-05-05', '4.00000000', 1, '100.00000000', '90.00000000', '130.00000000', 1, 1, 1, 1, 1, 0, '2016-05-05 16:01:16', '2016-05-05 16:01:55'),
(51, 'soft_01', '', '', '', '', '', '', '', 5, 6, 'catalog/Produtos/Soft/fofo.jpg', 15, 1, '250.0000', 0, 0, '2016-04-11', '17.00000000', 1, '200.00000000', '400.00000000', '0.00000000', 1, 1, 1, 1, 1, 29, '2016-04-11 13:35:23', '2016-05-11 16:06:08'),
(52, 'boucle_01', '', '', '', '', '', '', '', 0, 6, 'catalog/Produtos/Bouclê/main.jpg', 15, 1, '200.0000', 0, 0, '2016-04-11', '17.00000000', 1, '200.00000000', '200.00000000', '0.00000000', 1, 1, 1, 1, 1, 66, '2016-04-11 13:42:47', '2016-05-11 16:02:36'),
(53, 'england_01', '', '', '', '', '', '', '', 10, 6, 'catalog/Produtos/England/Colcha_England.jpg', 11, 1, '400.0000', 0, 0, '2016-04-11', '7.00000000', 1, '300.00000000', '300.00000000', '4.00000000', 1, 1, 1, 1, 1, 9, '2016-04-11 13:49:50', '2016-05-11 16:04:44'),
(54, 'criado_01', '', '', '', '', '', '', '', 4, 6, 'catalog/Produtos/Criado Mudo/comoda.jpg', 14, 1, '176.0000', 0, 0, '2016-04-11', '19.00000000', 1, '0.00000000', '0.00000000', '0.00000000', 1, 1, 1, 1, 1, 1, '2016-04-11 16:39:27', '2016-05-04 16:35:37'),
(67, '002', '', '', '', '', '', '', '', 10, 6, 'catalog/Produtos/Vasos/vasoFibraQuadrado/gd_0 (1).jpg', 14, 1, '60.0000', 0, 0, '2016-05-05', '2.00000000', 1, '50.00000000', '50.00000000', '40.00000000', 1, 1, 1, 1, 1, 3, '2016-05-05 16:34:11', '2016-05-05 16:34:42'),
(68, '002', '', '', '', '', '', '', '', 5, 6, 'catalog/Produtos/Vasos/vasoQuadradoMenor/gd_0.jpg', 14, 1, '50.0000', 0, 0, '2016-05-05', '0.00000000', 1, '40.00000000', '40.00000000', '25.00000000', 1, 1, 1, 1, 1, 0, '2016-05-05 16:37:00', '2016-05-11 16:05:45');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_attribute`
--

CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_product_attribute`
--

INSERT INTO `oc_product_attribute` (`product_id`, `attribute_id`, `language_id`, `text`) VALUES
(52, 4, 2, 'soijdioasjdoasja'),
(63, 14, 1, 'Cor Amarela ideal para ambientes iluminados'),
(52, 4, 1, 'hsoiashdoiashodi'),
(63, 14, 2, 'Cor Amarela ideal para ambientes iluminados'),
(63, 13, 2, 'Cor Preta ideal para ambientes neutros'),
(63, 13, 1, 'Cor Preta ideal para ambientes neutros'),
(63, 12, 2, 'Cor Branca ideal para ambientes neutros'),
(63, 12, 1, 'Cor Branca ideal para ambientes neutros');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_description`
--

CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_product_description`
--

INSERT INTO `oc_product_description` (`product_id`, `language_id`, `name`, `description`, `tag`, `meta_title`, `meta_description`, `meta_keyword`) VALUES
(51, 1, 'Soft Master', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Soft Master', '', ''),
(51, 2, 'Soft Master', '&lt;p&gt;Tapete com fios macios. Ideal para sua sala de estar. Proporciona o aconchego que seu lar merece.&lt;/p&gt;', '', 'Soft Master', '', ''),
(52, 1, 'Bouclê', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Bouclê', '', ''),
(52, 2, 'Bouclê', '&lt;p&gt;Ideal para sua sala de estar. Proporciona o aconchego que seu lar merece.&lt;br&gt;&lt;/p&gt;', '', 'Bouclê', '', ''),
(53, 1, 'Conjunto England', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Conjunto England', '', ''),
(53, 2, 'Conjunto England', '&lt;p&gt;Jogo de cama completo.&lt;/p&gt;&lt;p&gt;Possui uma colcha e quatro fronhas. Essencial para um sono de qualidade.&lt;/p&gt;', '', 'Conjunto England', '', ''),
(54, 1, 'Cômoda ', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Cômoda ', '', ''),
(54, 2, 'Criado Mudo ', '&lt;p&gt;Lindo criado mudo. Ótimo para deixar o ambiente com seu estilo!&lt;/p&gt;', '', 'Criado Mudo ', '', ''),
(55, 1, 'Cômoda', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Cômoda', '', ''),
(55, 2, 'Cômoda', '&lt;p&gt;Linda cômoda em estilo retro.&amp;nbsp;&lt;/p&gt;', '', 'Cômoda', '', ''),
(56, 2, 'Mesa Quadrada Preta', '&lt;p&gt;Mesa quadrada com design lindo e moderno. Ótimo para salas de estar e escritórios.&lt;/p&gt;', '', 'mesaQuadradaPreta', '', ''),
(56, 1, 'Mesa Quadrada Preta', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'mesaQuadradaPreta', '', ''),
(57, 1, 'Mesa Quadrada Branca', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'mesaQuadradaBranca', '', ''),
(57, 2, 'Mesa Quadrada Branca', '&lt;p&gt;&lt;span style=&quot;line-height: 17.1428px;&quot;&gt;Mesa quadrada com design lindo e moderno. Ótimo para salas de estar e escritórios.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', '', 'mesaQuadradaBranca', '', ''),
(58, 1, 'Mesa Circular Branca', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Mesa Circular', '', ''),
(58, 2, 'Mesa Circular Branca', '&lt;span style=&quot;color: rgb(115, 116, 116); font-family: RobotoCondensedRegular; font-size: 13px; line-height: 17.1428px;&quot;&gt;Mesa circular com design lindo e moderno. Ótimo para salas de estar e escritórios.&lt;/span&gt;&lt;p&gt;&lt;/p&gt;&lt;div class=&quot;row&quot; style=&quot;box-sizing: border-box; margin-right: -10px; margin-left: -10px; color: rgb(115, 116, 116); font-family: RobotoCondensedRegular; font-size: 13px; font-style: normal; font-variant: normal; font-weight: 300; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;div class=&quot;row&quot; style=&quot;box-sizing: border-box; margin-right: -10px; margin-left: -10px; color: rgb(115, 116, 116); font-family: RobotoCondensedRegular; font-size: 13px; font-style: normal; font-variant: normal; font-weight: 300; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;/div&gt;', '', 'Mesa Circular', '', ''),
(59, 1, 'Mesa Circular Preta', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Mesa Circular Preta', '', ''),
(59, 2, 'Mesa Circular Preta', '&lt;span style=&quot;color: rgb(115, 116, 116); font-family: RobotoCondensedRegular; font-size: 13px; line-height: 17.1428px;&quot;&gt;Mesa circular com design lindo e moderno. Ótimo para salas de estar e escritórios.&lt;/span&gt;&lt;p&gt;&lt;/p&gt;&lt;div class=&quot;row&quot; style=&quot;box-sizing: border-box; margin-right: -10px; margin-left: -10px; color: rgb(115, 116, 116); font-family: RobotoCondensedRegular; font-size: 13px; font-style: normal; font-variant: normal; font-weight: 300; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;/div&gt;&lt;p&gt;&lt;/p&gt;&lt;div class=&quot;row&quot; style=&quot;box-sizing: border-box; margin-right: -10px; margin-left: -10px; color: rgb(115, 116, 116); font-family: RobotoCondensedRegular; font-size: 13px; font-style: normal; font-variant: normal; font-weight: 300; letter-spacing: normal; line-height: 20.8px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;/div&gt;', '', 'Mesa Circular Preta', '', ''),
(60, 1, 'Mesa Triangular Branca', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Mesa Triangular Branca', '', ''),
(60, 2, 'Mesa Triangular Preta', '&lt;p&gt;Mesa triangular admiravelmente linda. Estonteante. Ideal para ambientes que precisam de um toque moderno e despojado.&lt;/p&gt;', '', 'Mesa Triangular Branca', '', ''),
(61, 1, 'Mesa Triangular Branca', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Mesa Triangular Branca', '', ''),
(61, 2, 'Mesa Triangular Branca', '&lt;p&gt;Mesa triangular admiravelmente linda. Estonteante. Ideal para ambientes que precisam de um toque moderno e despojado.&lt;/p&gt;', '', 'Mesa Triangular preta', '', ''),
(62, 1, 'Mesa Triangular Branca', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Mesa Triangular Branca', '', ''),
(62, 2, 'Mesa Triangular Amarela', '&lt;p&gt;Mesa triangular admiravelmente linda. Estonteante. Ideal para ambientes que precisam de um toque moderno e despojado.&lt;/p&gt;', '', 'Mesa Triangular Amarela', '', ''),
(63, 1, 'Banco Ampulheta', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Banco Ampulheta', '', ''),
(63, 2, 'Banco Ampulheta', '&lt;p&gt;Banco moderno e com design esplendido. &amp;nbsp;Essencial para um ambiente vintage com toque moderno.&lt;/p&gt;', '', 'Banco Ampulheta', '', ''),
(64, 2, 'Carpete Residencial', '&lt;p&gt;Carpete voltado para lares.&lt;/p&gt;', '', 'Carpete Residencial', '', ''),
(64, 1, 'Carpete Residencial', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Carpete Residencial', '', ''),
(65, 1, 'Carpete Empresarial', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Carpete Empresarial', '', ''),
(65, 2, 'Carpete Empresarial', '&lt;p&gt;Carpete voltado para empresas. Tons mais sóbrios e material mais resistente&lt;br&gt;&lt;/p&gt;', '', 'Carpete Empresarial', '', ''),
(66, 1, 'Vaso Fibra/Cerâmica Circular ', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Vaso Fibra/Cerâmica Circular ', '', ''),
(66, 2, 'Vaso Fibra/Cerâmica Circular ', '&lt;p&gt;Vaso Fibra e Cerâmica com formato circular&amp;nbsp;&lt;br&gt;&lt;/p&gt;', '', 'Vaso Fibra/Cerâmica Circular ', '', ''),
(67, 1, 'Vaso Fibra/Cerâmica Retangular ', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Vaso Fibra/Cerâmica Retangular', '', ''),
(67, 2, 'Vaso Fibra/Cerâmica Retangular', '&lt;p&gt;Vaso Fibra e Cerâmica em formato Retangular&lt;br&gt;&lt;/p&gt;', '', 'Vaso Fibra/Cerâmica Retangular', '', ''),
(68, 1, 'Vaso Menor', '&lt;p&gt;&lt;br&gt;&lt;/p&gt;', '', 'Vaso Menor', '', ''),
(68, 2, 'Vaso Quadrado Menor', '&lt;p&gt;Vaso quadrado menor&lt;br&gt;&lt;/p&gt;', '', 'Vaso Menor', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_discount`
--

CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_product_discount`
--

INSERT INTO `oc_product_discount` (`product_discount_id`, `product_id`, `customer_group_id`, `quantity`, `priority`, `price`, `date_start`, `date_end`) VALUES
(449, 52, 2, 10, 0, '190.0000', '2016-05-11', '2016-07-31'),
(457, 63, 2, 3, 0, '33.0000', '2016-05-10', '2016-09-09'),
(460, 57, 1, 3, 0, '50.0000', '2016-05-11', '2016-07-31'),
(450, 65, 2, 5, 0, '140.0000', '2016-05-11', '2016-08-31'),
(458, 64, 2, 3, 0, '6.0000', '2016-05-11', '2016-08-29'),
(452, 55, 2, 4, 0, '95.0000', '2016-05-11', '2016-08-29');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_filter`
--

CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_product_filter`
--

INSERT INTO `oc_product_filter` (`product_id`, `filter_id`) VALUES
(51, 3),
(52, 3),
(53, 1),
(54, 5),
(56, 10),
(57, 10),
(58, 10),
(59, 10),
(60, 10),
(61, 10),
(62, 10),
(63, 5),
(64, 9),
(65, 9);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_image`
--

CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_product_image`
--

INSERT INTO `oc_product_image` (`product_image_id`, `product_id`, `image`, `sort_order`) VALUES
(2471, 68, 'catalog/Produtos/Vasos/vasoQuadradoMenor/gd_principal.jpg', 0),
(2470, 68, 'catalog/Produtos/Vasos/vasoQuadradoMenor/gd_principal (1).jpg', 0),
(2469, 68, 'catalog/Produtos/Vasos/vasoQuadradoMenor/gd_0.jpg', 0),
(2448, 67, 'catalog/Produtos/Vasos/vasoFibraQuadrado/gd_0.jpg', 0),
(2447, 67, 'catalog/Produtos/Vasos/vasoFibraQuadrado/gd_principal (1).jpg', 0),
(2446, 67, 'catalog/Produtos/Vasos/vasoFibraQuadrado/gd_principal.jpg', 0),
(2442, 66, 'catalog/Produtos/Vasos/vasoFibraCircular/gd_principal.jpg', 0),
(2476, 51, 'catalog/Produtos/Soft/fofo2.jpg', 0),
(2465, 53, 'catalog/Produtos/England/Colcha_England_Cores.jpg', 0),
(2458, 65, 'catalog/Produtos/Tapetes/carpeteEmpresarial/phpThumb_generated_thumbnailjpg (6).jpg', 0),
(2459, 65, 'catalog/Produtos/Tapetes/carpeteEmpresarial/phpThumb_generated_thumbnailjpg (2).jpg', 0),
(2484, 63, 'catalog/Produtos/bancoAmpulheta/gd_principal (3).jpg', 0),
(2457, 65, 'catalog/Produtos/Tapetes/carpeteEmpresarial/phpThumb_generated_thumbnailjpg.jpg', 0),
(2489, 64, 'catalog/Produtos/Tapetes/carpeteResidencial/phpThumb_generated_thumbnailjpg (5).jpg', 0),
(2488, 64, 'catalog/Produtos/Tapetes/carpeteResidencial/phpThumb_generated_thumbnailjpg.jpg', 0),
(2487, 64, 'catalog/Produtos/Tapetes/carpeteResidencial/phpThumb_generated_thumbnailjpg (4).jpg', 0),
(2486, 64, 'catalog/Produtos/Tapetes/carpeteResidencial/phpThumb_generated_thumbnailjpg (1).jpg', 0),
(2485, 64, 'catalog/Produtos/Tapetes/carpeteResidencial/phpThumb_generated_thumbnailjpg (3).jpg', 0),
(2456, 52, 'catalog/Produtos/Bouclê/01.jpg', 0),
(2483, 63, 'catalog/Produtos/bancoAmpulheta/gd_principal.jpg', 0),
(2475, 51, 'catalog/Produtos/Soft/fofo3.jpg', 0),
(2474, 51, 'catalog/Produtos/Soft/pai_Filho_TapeteFofo3.jpg', 0),
(2473, 51, 'catalog/Produtos/Soft/pai_Filho_TapeteFofo.jpg', 0),
(2472, 51, 'catalog/Produtos/Soft/pai_Filho_TapeteFofo2.jpg', 0),
(2454, 52, 'catalog/Produtos/Bouclê/02.jpg', 0),
(2455, 52, 'catalog/Produtos/Bouclê/03.jpg', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_option`
--

CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_product_option`
--

INSERT INTO `oc_product_option` (`product_option_id`, `product_id`, `option_id`, `value`, `required`) VALUES
(227, 63, 13, '', 1),
(228, 67, 13, '', 1),
(229, 68, 13, '', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_option_value`
--

CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_product_option_value`
--

INSERT INTO `oc_product_option_value` (`product_option_value_id`, `product_option_id`, `product_id`, `option_id`, `option_value_id`, `quantity`, `subtract`, `price`, `price_prefix`, `points`, `points_prefix`, `weight`, `weight_prefix`) VALUES
(23, 229, 68, 13, 50, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(22, 229, 68, 13, 51, 0, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(20, 228, 67, 13, 50, 6, 1, '15.0000', '+', 0, '+', '0.00000000', '+'),
(21, 228, 67, 13, 51, 4, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(17, 227, 63, 13, 49, 2, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(18, 227, 63, 13, 50, 3, 1, '0.0000', '+', 0, '+', '0.00000000', '+'),
(19, 227, 63, 13, 51, 3, 1, '0.0000', '+', 0, '+', '0.00000000', '+');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_recurring`
--

CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_related`
--

CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_product_related`
--

INSERT INTO `oc_product_related` (`product_id`, `related_id`) VALUES
(52, 63),
(52, 65),
(56, 58),
(56, 59),
(56, 60),
(56, 61),
(56, 62),
(57, 58),
(57, 59),
(58, 56),
(58, 57),
(58, 60),
(58, 61),
(58, 62),
(59, 56),
(59, 57),
(59, 59),
(59, 60),
(59, 61),
(59, 62),
(60, 56),
(60, 58),
(60, 59),
(61, 56),
(61, 58),
(61, 59),
(62, 56),
(62, 58),
(62, 59),
(63, 52),
(64, 65),
(65, 52),
(65, 64);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_reward`
--

CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_product_reward`
--

INSERT INTO `oc_product_reward` (`product_reward_id`, `product_id`, `customer_group_id`, `points`) VALUES
(555, 63, 1, 30),
(554, 63, 2, 50);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_special`
--

CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_product_special`
--

INSERT INTO `oc_product_special` (`product_special_id`, `product_id`, `customer_group_id`, `priority`, `price`, `date_start`, `date_end`) VALUES
(444, 53, 2, 0, '140.0000', '2016-05-11', '2016-07-30'),
(443, 58, 2, 0, '140.0000', '2016-05-11', '2016-07-31'),
(451, 57, 1, 0, '100.0000', '2016-05-11', '2016-08-31'),
(447, 68, 2, 0, '45.0000', '2016-05-11', '2016-07-31'),
(448, 51, 2, 0, '240.0000', '2016-05-11', '2016-07-31');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_to_category`
--

CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_product_to_category`
--

INSERT INTO `oc_product_to_category` (`product_id`, `category_id`) VALUES
(51, 33),
(52, 33),
(53, 45),
(54, 17),
(55, 17),
(56, 17),
(57, 17),
(58, 17),
(59, 17),
(60, 17),
(61, 17),
(62, 17),
(63, 17),
(64, 33),
(65, 33),
(66, 27),
(67, 20),
(67, 27),
(68, 20),
(68, 27);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_to_download`
--

CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_product_to_download`
--

INSERT INTO `oc_product_to_download` (`product_id`, `download_id`) VALUES
(56, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_to_layout`
--

CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_product_to_layout`
--

INSERT INTO `oc_product_to_layout` (`product_id`, `store_id`, `layout_id`) VALUES
(51, 0, 0),
(52, 0, 0),
(53, 0, 0),
(54, 0, 0),
(55, 0, 0),
(56, 0, 0),
(57, 0, 0),
(58, 0, 0),
(59, 0, 0),
(60, 0, 0),
(61, 0, 0),
(62, 0, 0),
(63, 0, 0),
(64, 0, 0),
(65, 0, 0),
(66, 0, 0),
(67, 0, 0),
(68, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_product_to_store`
--

CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_product_to_store`
--

INSERT INTO `oc_product_to_store` (`product_id`, `store_id`) VALUES
(51, 0),
(52, 0),
(53, 0),
(54, 0),
(55, 0),
(56, 0),
(57, 0),
(58, 0),
(59, 0),
(60, 0),
(61, 0),
(62, 0),
(63, 0),
(64, 0),
(65, 0),
(66, 0),
(67, 0),
(68, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_recurring`
--

CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) UNSIGNED NOT NULL,
  `cycle` int(10) UNSIGNED NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) UNSIGNED NOT NULL,
  `trial_cycle` int(10) UNSIGNED NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_recurring_description`
--

CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_return`
--

CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_return_action`
--

CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_return_action`
--

INSERT INTO `oc_return_action` (`return_action_id`, `language_id`, `name`) VALUES
(1, 2, 'Reembolso'),
(2, 2, 'Depósito de crédito'),
(3, 2, 'Repor envio'),
(1, 1, 'Refunded'),
(2, 1, 'Credit Issued'),
(3, 1, 'Replacement Sent');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_return_history`
--

CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_return_reason`
--

CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_return_reason`
--

INSERT INTO `oc_return_reason` (`return_reason_id`, `language_id`, `name`) VALUES
(2, 2, 'Recebeu item errado'),
(3, 2, 'Erro de compra'),
(4, 2, 'Culpa, por favor preencha os detalhes'),
(5, 2, 'Outro, por favor preencha os detalhes'),
(1, 2, 'Perdeu a entrega'),
(2, 1, 'Received Wrong Item'),
(3, 1, 'Order Error'),
(4, 1, 'Faulty, please supply details'),
(5, 1, 'Other, please supply details'),
(1, 1, 'Dead On Arrival');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_return_status`
--

CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_return_status`
--

INSERT INTO `oc_return_status` (`return_status_id`, `language_id`, `name`) VALUES
(1, 2, 'Pendente'),
(3, 2, 'Completo'),
(2, 2, 'Esperando Produtos'),
(1, 1, 'Pending'),
(3, 1, 'Complete'),
(2, 1, 'Awaiting Products');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_review`
--

CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_review`
--

INSERT INTO `oc_review` (`review_id`, `product_id`, `customer_id`, `author`, `text`, `rating`, `status`, `date_added`, `date_modified`) VALUES
(1, 57, 0, 'Batman', 'Ficou muito bonita na minha sala.\r\nLindo! TDB!', 4, 1, '2016-05-05 15:50:29', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_setting`
--

CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_setting`
--

INSERT INTO `oc_setting` (`setting_id`, `store_id`, `code`, `key`, `value`, `serialized`) VALUES
(1, 0, 'shipping', 'shipping_sort_order', '3', 0),
(2, 0, 'sub_total', 'sub_total_sort_order', '1', 0),
(3, 0, 'sub_total', 'sub_total_status', '1', 0),
(4, 0, 'tax', 'tax_status', '1', 0),
(5, 0, 'total', 'total_sort_order', '9', 0),
(6, 0, 'total', 'total_status', '1', 0),
(7, 0, 'tax', 'tax_sort_order', '5', 0),
(8, 0, 'free_checkout', 'free_checkout_sort_order', '1', 0),
(9, 0, 'cod', 'cod_sort_order', '5', 0),
(10, 0, 'cod', 'cod_total', '0.01', 0),
(11, 0, 'cod', 'cod_order_status_id', '1', 0),
(12, 0, 'cod', 'cod_geo_zone_id', '0', 0),
(13, 0, 'cod', 'cod_status', '1', 0),
(14, 0, 'shipping', 'shipping_status', '1', 0),
(15, 0, 'shipping', 'shipping_estimator', '1', 0),
(27, 0, 'coupon', 'coupon_sort_order', '4', 0),
(28, 0, 'coupon', 'coupon_status', '1', 0),
(34, 0, 'flat', 'flat_sort_order', '1', 0),
(35, 0, 'flat', 'flat_status', '1', 0),
(36, 0, 'flat', 'flat_geo_zone_id', '0', 0),
(37, 0, 'flat', 'flat_tax_class_id', '9', 0),
(41, 0, 'flat', 'flat_cost', '5.00', 0),
(42, 0, 'credit', 'credit_sort_order', '7', 0),
(43, 0, 'credit', 'credit_status', '1', 0),
(53, 0, 'reward', 'reward_sort_order', '2', 0),
(54, 0, 'reward', 'reward_status', '1', 0),
(146, 0, 'category', 'category_status', '1', 0),
(158, 0, 'account', 'account_status', '1', 0),
(159, 0, 'affiliate', 'affiliate_status', '1', 0),
(1558, 0, 'google_analytics', 'google_analytics_code', '&lt;script&gt;\r\n  (function(i,s,o,g,r,a,m){i[''GoogleAnalyticsObject'']=r;i[r]=i[r]||function(){\r\n  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n  })(window,document,''script'',''https://www.google-analytics.com/analytics.js'',''ga'');\r\n\r\n  ga(''create'', ''UA-76148181-1'', ''auto'');\r\n  ga(''send'', ''pageview'');\r\n\r\n&lt;/script&gt;', 0),
(5329, 0, 'onwebchat', 'onwebchat_chat_id', '3f5b4579e4831858debfa4225734fd70/1/1', 0),
(5328, 0, 'filter', 'filter_status', '1', 0),
(5717, 0, 'config', 'config_robots', 'abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai''hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg', 0),
(5726, 0, 'config', 'config_error_display', '1', 0),
(5727, 0, 'config', 'config_error_log', '1', 0),
(5728, 0, 'config', 'config_error_filename', 'error.log', 0),
(1557, 0, 'google_sitemap', 'google_sitemap_status', '1', 0),
(5330, 0, 'onwebchat', 'onwebchat_status', '1', 0),
(5718, 0, 'config', 'config_compression', '0', 0),
(5719, 0, 'config', 'config_secure', '1', 0),
(5720, 0, 'config', 'config_password', '1', 0),
(5721, 0, 'config', 'config_shared', '0', 0),
(5722, 0, 'config', 'config_encryption', 'ZoSYxZeFPhzNv41p6QnYD85suVxT3u5oZ3Kb9GGwO2QOjomFxHRleTJqLwIHzQSoSxl6tgLJ5ECo6HlleDiTRfsYIvyvxaYPWlHw8GYMrjQfuTDQemDsCh2g8XCWmsJzW5sa8pTnTaeGl0Ms9ehBy2XokZLEt78mYHpUNfZ4NXD0bZGAenLn51pfQORB4czBF4fhFGH06CT7pjcvSbEkrFLY8boGmWigysoMqUHJGXdqb6ZFlCCgmDtf8l6C80O7NrGWePL0EUP21s51szIFqGoxE104UZHiIxo6g3V5rCaD12dLdtM6VJPYRBrPw7pg1I7GXlIMcZtA8VtWrWikgzOCel1PphKxxs90XIFbNjUpel8M3fHb7MTqP0erLEMR822aX3t9fcXeMqpBiyVYyr0cT2TonjLcJBIUgDwRH2oBb9bmpJkrk599Ni0h6BBn83tuB3yA0TiUKhzApXkQSdJJkP7eufoSDNqYteAntKI9V5vDpL7MkG38udJ67tYOKZrTbfQNJudGQGiEJYOH9XOAZs6Zd1COT4zk6LymFa6B1srRmxw5vtkXBT7V5tqF5O4MDio87RxZBk6YzjdS6CoarB3a5otn6FrTR0BMdywGOBlh8sSuU8i12nv756gWrDmVbhaO1kgU52X8SUnlGcL3b3kV7p6p813zkyezHYnQHVNQdvgAOfSrbaNwml7VBPZc2FYUuaK7GM4Ox5G89oX944rKhdYjgwDcModzjmiSTtNWl6LD7f4oM5YipXnbQCNT8fPldvAZm6GkNsBOO1ZACSc0FGdHOx0cedepEhkTHiubLKegrclpTHjgZgmAoMnpLH495tRv741i32ty4gmyguxWWdDek8gqUAYaSmjuIi9o7NPZwVUlMkmslyxB8oaVRW9Vrl7lzbvqTChOjE6VebloeLkdrUKVJv18culn2oNxPky4UKBVvAPblnooTW3JW1Ja8id37VUsR4ekke3W7N5UReZrJzyHn3XTIxf63h37PR5YvZQ72NQmcdgz', 0),
(5723, 0, 'config', 'config_file_max_size', '300000', 0),
(5724, 0, 'config', 'config_file_ext_allowed', 'zip\r\ntxt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc', 0),
(5725, 0, 'config', 'config_file_mime_allowed', 'text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\n&quot;application/zip&quot;\r\napplication/x-zip\r\n&quot;application/x-zip&quot;\r\napplication/x-zip-compressed\r\n&quot;application/x-zip-compressed&quot;\r\napplication/rar\r\n&quot;application/rar&quot;\r\napplication/x-rar\r\n&quot;application/x-rar&quot;\r\napplication/x-rar-compressed\r\n&quot;application/x-rar-compressed&quot;\r\napplication/octet-stream\r\n&quot;application/octet-stream&quot;\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf', 0),
(94, 0, 'voucher', 'voucher_sort_order', '8', 0),
(95, 0, 'voucher', 'voucher_status', '1', 0),
(5601, 0, 'correios', 'correios_declarar_valor', 's', 0),
(103, 0, 'free_checkout', 'free_checkout_status', '1', 0),
(104, 0, 'free_checkout', 'free_checkout_order_status_id', '1', 0),
(5716, 0, 'config', 'config_seo_url', '1', 0),
(5715, 0, 'config', 'config_maintenance', '0', 0),
(5711, 0, 'config', 'config_mail_smtp_password', '', 0),
(5712, 0, 'config', 'config_mail_smtp_port', '25', 0),
(5713, 0, 'config', 'config_mail_smtp_timeout', '5', 0),
(5714, 0, 'config', 'config_mail_alert', '', 0),
(5710, 0, 'config', 'config_mail_smtp_username', '', 0),
(5709, 0, 'config', 'config_mail_smtp_hostname', '', 0),
(5708, 0, 'config', 'config_mail_parameter', '', 0),
(5707, 0, 'config', 'config_mail_protocol', 'mail', 0),
(5706, 0, 'config', 'config_ftp_status', '0', 0),
(5705, 0, 'config', 'config_ftp_root', '/proftpd', 0),
(5704, 0, 'config', 'config_ftp_password', '', 0),
(5703, 0, 'config', 'config_ftp_username', '', 0),
(5702, 0, 'config', 'config_ftp_port', '21', 0),
(5701, 0, 'config', 'config_ftp_hostname', '127.0.0.1', 0),
(5700, 0, 'config', 'config_image_location_height', '50', 0),
(5699, 0, 'config', 'config_image_location_width', '268', 0),
(5698, 0, 'config', 'config_image_cart_height', '47', 0),
(5697, 0, 'config', 'config_image_cart_width', '47', 0),
(5696, 0, 'config', 'config_image_wishlist_height', '47', 0),
(5695, 0, 'config', 'config_image_wishlist_width', '47', 0),
(5694, 0, 'config', 'config_image_compare_height', '90', 0),
(5693, 0, 'config', 'config_image_compare_width', '90', 0),
(5692, 0, 'config', 'config_image_related_height', '80', 0),
(5691, 0, 'config', 'config_image_related_width', '80', 0),
(5690, 0, 'config', 'config_image_additional_height', '74', 0),
(5689, 0, 'config', 'config_image_additional_width', '74', 0),
(5688, 0, 'config', 'config_image_product_height', '228', 0),
(5687, 0, 'config', 'config_image_product_width', '228', 0),
(5686, 0, 'config', 'config_image_popup_height', '500', 0),
(5685, 0, 'config', 'config_image_popup_width', '500', 0),
(5684, 0, 'config', 'config_image_thumb_height', '228', 0),
(5683, 0, 'config', 'config_image_thumb_width', '228', 0),
(5682, 0, 'config', 'config_image_category_height', '80', 0),
(5679, 0, 'config', 'config_logo', 'catalog/logo.png', 0),
(5681, 0, 'config', 'config_image_category_width', '80', 0),
(5680, 0, 'config', 'config_icon', 'catalog/cart.png', 0),
(5678, 0, 'config', 'config_captcha_page', '["review","contact"]', 1),
(5677, 0, 'config', 'config_captcha', 'google_captcha', 0),
(5676, 0, 'config', 'config_return_status_id', '2', 0),
(5675, 0, 'config', 'config_return_id', '5', 0),
(5674, 0, 'config', 'config_affiliate_mail', '1', 0),
(5673, 0, 'config', 'config_affiliate_id', '4', 0),
(5672, 0, 'config', 'config_affiliate_commission', '5', 0),
(5671, 0, 'config', 'config_affiliate_auto', '0', 0),
(5670, 0, 'config', 'config_affiliate_approval', '1', 0),
(5669, 0, 'config', 'config_stock_checkout', '0', 0),
(5668, 0, 'config', 'config_stock_warning', '0', 0),
(5667, 0, 'config', 'config_stock_display', '0', 0),
(5666, 0, 'config', 'config_api_id', '1', 0),
(5665, 0, 'config', 'config_order_mail', '0', 0),
(5664, 0, 'config', 'config_fraud_status_id', '7', 0),
(5663, 0, 'config', 'config_complete_status', '["5","3"]', 1),
(5662, 0, 'config', 'config_processing_status', '["5","1","2","12","3"]', 1),
(5661, 0, 'config', 'config_order_status_id', '1', 0),
(5660, 0, 'config', 'config_checkout_id', '5', 0),
(5659, 0, 'config', 'config_checkout_guest', '0', 0),
(5658, 0, 'config', 'config_cart_weight', '1', 0),
(5657, 0, 'config', 'config_invoice_prefix', 'INV-2016-00', 0),
(5656, 0, 'config', 'config_account_mail', '0', 0),
(5655, 0, 'config', 'config_account_id', '3', 0),
(5654, 0, 'config', 'config_login_attempts', '5', 0),
(5653, 0, 'config', 'config_customer_price', '0', 0),
(5652, 0, 'config', 'config_customer_group_display', '["1"]', 1),
(5651, 0, 'config', 'config_customer_group_id', '1', 0),
(5650, 0, 'config', 'config_customer_online', '0', 0),
(5649, 0, 'config', 'config_tax_customer', 'shipping', 0),
(5648, 0, 'config', 'config_tax_default', 'shipping', 0),
(5647, 0, 'config', 'config_tax', '1', 0),
(5646, 0, 'config', 'config_voucher_max', '1000', 0),
(5645, 0, 'config', 'config_voucher_min', '1', 0),
(5644, 0, 'config', 'config_review_mail', '1', 0),
(5643, 0, 'config', 'config_review_guest', '1', 0),
(5642, 0, 'config', 'config_review_status', '1', 0),
(5641, 0, 'config', 'config_limit_admin', '20', 0),
(5640, 0, 'config', 'config_product_description_length', '100', 0),
(5639, 0, 'config', 'config_product_limit', '15', 0),
(5638, 0, 'config', 'config_product_count', '1', 0),
(5637, 0, 'config', 'config_weight_class_id', '1', 0),
(5636, 0, 'config', 'config_length_class_id', '1', 0),
(5635, 0, 'config', 'config_currency_auto', '1', 0),
(5634, 0, 'config', 'config_currency', 'BRL', 0),
(5633, 0, 'config', 'config_admin_language', 'pt-br', 0),
(5632, 0, 'config', 'config_language', 'pt-br', 0),
(5631, 0, 'config', 'config_zone_id', '447', 0),
(5630, 0, 'config', 'config_country_id', '30', 0),
(5628, 0, 'config', 'config_open', 'Segunda à sexta: 08:00 - 17:00\r\nSábado: 08:00 - 12:00\r\nDomingos e feriados: Fechado', 0),
(5629, 0, 'config', 'config_comment', 'Em caso de dúvidas mande um e-mail para artur.schaefer@hotmail.com. \r\nOu nos procure no Facebook: www.facebook.com/artemaniaenxovais.enxovais\r\n', 0),
(5627, 0, 'config', 'config_image', 'catalog/logos.png', 0),
(5626, 0, 'config', 'config_fax', '', 0),
(5625, 0, 'config', 'config_telephone', '(27) 3724-1761', 0),
(5623, 0, 'config', 'config_geocode', 'Rua Virginia Paganini Tozzi, Nº 17,Marilândia - ES,29725-000', 0),
(5624, 0, 'config', 'config_email', 'artur.schaefer@hotmail.com', 0),
(5622, 0, 'config', 'config_address', 'Rua Virginia Paganini Tozzi, Nº 17, Centro\r\nMarilândia - ES\r\nCEP: 29725-000', 0),
(5621, 0, 'config', 'config_owner', 'Artur Schaefer', 0),
(5327, 0, 'google_captcha', 'google_captcha_status', '1', 0),
(5325, 0, 'google_captcha', 'google_captcha_key', '6Lc39BwTAAAAAAPnQwGV8SNWCOh96RYAlPIpWaNG', 0),
(5326, 0, 'google_captcha', 'google_captcha_secret', '6Lc39BwTAAAAAEVN4M-q9r1j0eXZR1uluzjFsoga', 0),
(5620, 0, 'config', 'config_name', 'Arte Mania Enxovais', 0),
(1559, 0, 'google_analytics', 'google_analytics_status', '1', 0),
(5619, 0, 'config', 'config_layout_id', '1', 0),
(5618, 0, 'config', 'config_template', 'megashop', 0),
(5617, 0, 'config', 'config_meta_keyword', '', 0),
(5616, 0, 'config', 'config_meta_description', 'Conforto e beleza para seu lar!', 0),
(5600, 0, 'correios', 'correios_aviso_recebimento', 's', 0),
(5599, 0, 'correios', 'correios_contrato_senha', '', 0),
(5598, 0, 'correios', 'correios_contrato_codigo', '', 0),
(5597, 0, 'correios', 'correios_total_81850', '', 0),
(5596, 0, 'correios', 'correios_total_81833', '', 0),
(5595, 0, 'correios', 'correios_total_81868', '', 0),
(5594, 0, 'correios', 'correios_total_81035', '', 0),
(5593, 0, 'correios', 'correios_total_81027', '', 0),
(5592, 0, 'correios', 'correios_total_81019', '', 0),
(5591, 0, 'correios', 'correios_total_41300', '', 0),
(5590, 0, 'correios', 'correios_total_41068', '', 0),
(5589, 0, 'correios', 'correios_total_40606', '', 0),
(5588, 0, 'correios', 'correios_total_40568', '', 0),
(5587, 0, 'correios', 'correios_total_40444', '', 0),
(5586, 0, 'correios', 'correios_total_40436', '', 0),
(5585, 0, 'correios', 'correios_total_40096', '', 0),
(5584, 0, 'correios', 'correios_total_40126', '', 0),
(5583, 0, 'correios', 'correios_total_41262', '', 0),
(5582, 0, 'correios', 'correios_41262', '1', 0),
(5581, 0, 'correios', 'correios_total_41106', '', 0),
(5579, 0, 'correios', 'correios_total_40290', '', 0),
(5580, 0, 'correios', 'correios_41106', '1', 0),
(5578, 0, 'correios', 'correios_40290', '1', 0),
(5577, 0, 'correios', 'correios_total_40169', '', 0),
(5576, 0, 'correios', 'correios_40169', '1', 0),
(5575, 0, 'correios', 'correios_total_40215', '', 0),
(5574, 0, 'correios', 'correios_40215', '1', 0),
(5573, 0, 'correios', 'correios_total_40045', '', 0),
(5572, 0, 'correios', 'correios_40045', '1', 0),
(5571, 0, 'correios', 'correios_total_40010', '400', 0),
(5570, 0, 'correios', 'correios_40010', '1', 0),
(5569, 0, 'correios', 'correios_postcode', '29725-000', 0),
(5447, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_demonstrativo3', '', 0),
(5446, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_demonstrativo2', '', 0),
(5445, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_demonstrativo1', '', 0),
(5444, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_nosso_numero_const2', '', 0),
(5443, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_nosso_numero_const1', '', 0),
(5442, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_nosso_numero3', '', 0),
(5441, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_nosso_numero2', '', 0),
(5440, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_nosso_numero1', '', 0),
(5439, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_taxa_boleto', '3', 0),
(5438, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_dia_prazo_pg', '4', 0),
(5437, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_carteira', '', 0),
(5436, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_conta_cedente', '', 0),
(5435, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_conta', '1234-5', 0),
(5434, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_agencia', '', 0),
(5433, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_cedente', '', 0),
(5432, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_cidade_uf', 'MARILÂNDIA', 0),
(5431, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_endereco', 'Rua Virginia Paganini Tozzi', 0),
(5430, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_cpf_cnpj', '10001000010000100001', 0),
(5429, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_identificacao', 'Arte Mania Enxovais', 0),
(5428, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_logo', '', 0),
(5427, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_order_status_id', '1', 0),
(5448, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_instrucoes1', 'Sr. (Sra.) caixa, não receba esse pagamento caso o boleto esteja vencido.', 0),
(5449, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_instrucoes2', '', 0),
(5450, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_instrucoes3', '', 0),
(5451, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_instrucoes4', '', 0),
(5452, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_geo_zone_id', '0', 0),
(5453, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_status', '1', 0),
(5454, 0, 'boleto_cef_sigcb', 'boleto_cef_sigcb_sort_order', '', 0),
(5615, 0, 'config', 'config_meta_title', 'Arte Mania Enxovais', 0),
(5602, 0, 'correios', 'correios_adicional', '10', 0),
(5603, 0, 'correios', 'correios_prazo_adicional', '10', 0),
(5604, 0, 'correios', 'correios_tax_class_id', '0', 0),
(5605, 0, 'correios', 'correios_geo_zone_id', '0', 0),
(5606, 0, 'correios', 'correios_status', '1', 0),
(5607, 0, 'correios', 'correios_sort_order', '0', 0),
(5608, 0, 'weight', 'weight_tax_class_id', '0', 0),
(5609, 0, 'weight', 'weight_status', '1', 0),
(5610, 0, 'weight', 'weight_sort_order', '', 0),
(5611, 0, 'weight', 'weight_4_rate', '', 0),
(5612, 0, 'weight', 'weight_4_status', '0', 0),
(5613, 0, 'weight', 'weight_3_rate', '', 0),
(5614, 0, 'weight', 'weight_3_status', '0', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_stock_status`
--

CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_stock_status`
--

INSERT INTO `oc_stock_status` (`stock_status_id`, `language_id`, `name`) VALUES
(7, 1, 'In Stock'),
(8, 1, 'Pre-Order'),
(5, 1, 'Out Of Stock'),
(6, 1, '2-3 Days'),
(7, 2, 'In Stock'),
(8, 2, 'Pre-Order'),
(5, 2, 'Out Of Stock'),
(6, 2, '2-3 Days');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_store`
--

CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_tax_class`
--

CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_tax_class`
--

INSERT INTO `oc_tax_class` (`tax_class_id`, `title`, `description`, `date_added`, `date_modified`) VALUES
(9, 'Taxable Goods', 'Taxed goods', '2009-01-06 23:21:53', '2011-09-23 14:07:50'),
(10, 'Downloadable Products', 'Downloadable', '2011-09-21 22:19:39', '2011-09-22 10:27:36');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_tax_rate`
--

CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_tax_rate`
--

INSERT INTO `oc_tax_rate` (`tax_rate_id`, `geo_zone_id`, `name`, `rate`, `type`, `date_added`, `date_modified`) VALUES
(86, 3, 'VAT (20%)', '20.0000', 'P', '2011-03-09 21:17:10', '2011-09-22 22:24:29'),
(87, 3, 'Eco Tax (-2.00)', '2.0000', 'F', '2011-09-21 21:49:23', '2011-09-23 00:40:19');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_tax_rate_to_customer_group`
--

CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_tax_rate_to_customer_group`
--

INSERT INTO `oc_tax_rate_to_customer_group` (`tax_rate_id`, `customer_group_id`) VALUES
(86, 1),
(87, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_tax_rule`
--

CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_tax_rule`
--

INSERT INTO `oc_tax_rule` (`tax_rule_id`, `tax_class_id`, `tax_rate_id`, `based`, `priority`) VALUES
(121, 10, 86, 'payment', 1),
(120, 10, 87, 'store', 0),
(128, 9, 86, 'shipping', 1),
(127, 9, 87, 'shipping', 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_upload`
--

CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_url_alias`
--

CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_url_alias`
--

INSERT INTO `oc_url_alias` (`url_alias_id`, `query`, `keyword`) VALUES
(858, 'category_id=20', 'decoracao'),
(868, 'category_id=26', 'decoracao-espelho'),
(867, 'category_id=27', 'decoracao-vasos-decorativos'),
(875, 'manufacturer_id=14', 'mart-collection'),
(855, 'information_id=4', 'sobre-nos'),
(924, 'product_id=60', 'mesaTriangularPreta'),
(900, 'category_id=46', 'cama-solteiro'),
(898, 'category_id=18', 'cama'),
(903, 'category_id=45', 'cama-casal'),
(860, 'category_id=25', 'mesa'),
(871, 'category_id=61', 'roupas-meninos'),
(870, 'category_id=60', 'roupas-meninas'),
(869, 'category_id=59', 'roupas-bebe'),
(861, 'category_id=57', 'banho'),
(916, 'category_id=17', 'moveis'),
(863, 'category_id=24', 'roupas'),
(940, 'category_id=33', 'tapetes'),
(944, 'product_id=66', 'vasoCircular'),
(946, 'product_id=67', 'vasoQuadrado'),
(958, 'product_id=68', 'vasoMenor'),
(952, 'product_id=65', 'carpeteEmpresarial'),
(965, 'product_id=64', 'carpeteResidencial'),
(964, 'product_id=63', 'bancoAmpulheta'),
(926, 'product_id=61', 'mesaTriangularBranca'),
(928, 'product_id=62', 'mesaTriangularAmarela'),
(923, 'product_id=59', 'mesaCircularPreta'),
(967, 'product_id=57', 'mesaQuadradaBranco'),
(906, 'product_id=54', 'moveis-criado-mudo'),
(955, 'product_id=53', 'cama-england'),
(951, 'product_id=52', 'tapete_boucle'),
(959, 'product_id=51', 'tapete_soft'),
(876, 'manufacturer_id=15', 'são-carlos'),
(949, 'product_id=58', 'mesaCircularBranca'),
(961, 'product_id=56', 'mesaQuadradaPreta'),
(954, 'product_id=55', 'moveis-hack'),
(874, 'manufacturer_id=13', 'juma'),
(873, 'manufacturer_id=12', 'bernadette'),
(872, 'manufacturer_id=11', 'andreza'),
(854, 'information_id=3', 'politica-de-privacidade'),
(885, 'information_id=5', 'termos-e-condicoes'),
(853, 'information_id=6', 'informacoes-de-entrega');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_user`
--

CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_user`
--

INSERT INTO `oc_user` (`user_id`, `user_group_id`, `username`, `password`, `salt`, `firstname`, `lastname`, `email`, `image`, `code`, `ip`, `status`, `date_added`) VALUES
(1, 1, 'artur', 'f21c5601912f9aa43390305c5d451cb712820cd9', 'QJ8UbAx8J', 'Artur', 'Schaefer', 'artur.schaefer@hotmail.com', '', '', '127.0.0.1', 1, '2016-04-09 00:42:54');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_user_group`
--

CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_user_group`
--

INSERT INTO `oc_user_group` (`user_group_id`, `name`, `permission`) VALUES
(1, 'Administrator', '{"access":["analytics\\/google_analytics","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","common\\/menu","common\\/profile","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/layout","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/openbay","extension\\/payment","extension\\/shipping","extension\\/total","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","module\\/account","module\\/affiliate","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/carousel","module\\/category","module\\/ebay_listing","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/pp_button","module\\/pp_login","module\\/slideshow","module\\/special","module\\/store","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cheque","payment\\/cod","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","shipping\\/auspost","shipping\\/citylink","shipping\\/fedex","shipping\\/flat","shipping\\/free","shipping\\/item","shipping\\/parcelforce_48","shipping\\/pickup","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps","shipping\\/weight","tool\\/backup","tool\\/error_log","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission","captcha\\/google_captcha","feed\\/google_sitemap","feed\\/google_sitemap","analytics\\/google_analytics","dashboard\\/map_brazil","module\\/filter","module\\/onwebchat","shipping\\/correios","module\\/bestseller","module\\/validar","payment\\/boleto_cef_sigcb","shipping\\/weight","shipping\\/item"],"modify":["analytics\\/google_analytics","captcha\\/basic_captcha","captcha\\/google_captcha","catalog\\/attribute","catalog\\/attribute_group","catalog\\/category","catalog\\/download","catalog\\/filter","catalog\\/information","catalog\\/manufacturer","catalog\\/option","catalog\\/product","catalog\\/recurring","catalog\\/review","common\\/column_left","common\\/filemanager","common\\/menu","common\\/profile","common\\/stats","customer\\/custom_field","customer\\/customer","customer\\/customer_group","design\\/banner","design\\/layout","extension\\/analytics","extension\\/captcha","extension\\/feed","extension\\/fraud","extension\\/installer","extension\\/modification","extension\\/module","extension\\/openbay","extension\\/payment","extension\\/shipping","extension\\/total","feed\\/google_base","feed\\/google_sitemap","feed\\/openbaypro","fraud\\/fraudlabspro","fraud\\/ip","fraud\\/maxmind","localisation\\/country","localisation\\/currency","localisation\\/geo_zone","localisation\\/language","localisation\\/length_class","localisation\\/location","localisation\\/order_status","localisation\\/return_action","localisation\\/return_reason","localisation\\/return_status","localisation\\/stock_status","localisation\\/tax_class","localisation\\/tax_rate","localisation\\/weight_class","localisation\\/zone","marketing\\/affiliate","marketing\\/contact","marketing\\/coupon","marketing\\/marketing","module\\/account","module\\/affiliate","module\\/amazon_login","module\\/amazon_pay","module\\/banner","module\\/bestseller","module\\/carousel","module\\/category","module\\/ebay_listing","module\\/featured","module\\/filter","module\\/google_hangouts","module\\/html","module\\/information","module\\/latest","module\\/pp_button","module\\/pp_login","module\\/slideshow","module\\/special","module\\/store","openbay\\/amazon","openbay\\/amazon_listing","openbay\\/amazon_product","openbay\\/amazonus","openbay\\/amazonus_listing","openbay\\/amazonus_product","openbay\\/ebay","openbay\\/ebay_profile","openbay\\/ebay_template","openbay\\/etsy","openbay\\/etsy_product","openbay\\/etsy_shipping","openbay\\/etsy_shop","payment\\/amazon_login_pay","payment\\/authorizenet_aim","payment\\/authorizenet_sim","payment\\/bank_transfer","payment\\/bluepay_hosted","payment\\/bluepay_redirect","payment\\/cheque","payment\\/cod","payment\\/firstdata","payment\\/firstdata_remote","payment\\/free_checkout","payment\\/g2apay","payment\\/globalpay","payment\\/globalpay_remote","payment\\/klarna_account","payment\\/klarna_invoice","payment\\/liqpay","payment\\/nochex","payment\\/paymate","payment\\/paypoint","payment\\/payza","payment\\/perpetual_payments","payment\\/pp_express","payment\\/pp_payflow","payment\\/pp_payflow_iframe","payment\\/pp_pro","payment\\/pp_pro_iframe","payment\\/pp_standard","payment\\/realex","payment\\/realex_remote","payment\\/sagepay_direct","payment\\/sagepay_server","payment\\/sagepay_us","payment\\/securetrading_pp","payment\\/securetrading_ws","payment\\/skrill","payment\\/twocheckout","payment\\/web_payment_software","payment\\/worldpay","report\\/affiliate","report\\/affiliate_activity","report\\/affiliate_login","report\\/customer_activity","report\\/customer_credit","report\\/customer_login","report\\/customer_online","report\\/customer_order","report\\/customer_reward","report\\/marketing","report\\/product_purchased","report\\/product_viewed","report\\/sale_coupon","report\\/sale_order","report\\/sale_return","report\\/sale_shipping","report\\/sale_tax","sale\\/order","sale\\/recurring","sale\\/return","sale\\/voucher","sale\\/voucher_theme","setting\\/setting","setting\\/store","shipping\\/auspost","shipping\\/citylink","shipping\\/fedex","shipping\\/flat","shipping\\/free","shipping\\/item","shipping\\/parcelforce_48","shipping\\/pickup","shipping\\/royal_mail","shipping\\/ups","shipping\\/usps","shipping\\/weight","tool\\/backup","tool\\/error_log","tool\\/upload","total\\/coupon","total\\/credit","total\\/handling","total\\/klarna_fee","total\\/low_order_fee","total\\/reward","total\\/shipping","total\\/sub_total","total\\/tax","total\\/total","total\\/voucher","user\\/api","user\\/user","user\\/user_permission","captcha\\/google_captcha","feed\\/google_sitemap","feed\\/google_sitemap","analytics\\/google_analytics","dashboard\\/map_brazil","module\\/filter","module\\/onwebchat","shipping\\/correios","module\\/bestseller","module\\/validar","payment\\/boleto_cef_sigcb","shipping\\/weight","shipping\\/item"]}'),
(10, 'Demonstration', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_voucher`
--

CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_voucher_history`
--

CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_voucher_theme`
--

CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_voucher_theme`
--

INSERT INTO `oc_voucher_theme` (`voucher_theme_id`, `image`) VALUES
(8, 'catalog/demo/canon_eos_5d_2.jpg'),
(7, 'catalog/demo/gift-voucher-birthday.jpg'),
(6, 'catalog/demo/apple_logo.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_voucher_theme_description`
--

CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_voucher_theme_description`
--

INSERT INTO `oc_voucher_theme_description` (`voucher_theme_id`, `language_id`, `name`) VALUES
(6, 1, 'Christmas'),
(7, 1, 'Birthday'),
(8, 1, 'General'),
(6, 2, 'Christmas'),
(7, 2, 'Birthday'),
(8, 2, 'General');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_weight_class`
--

CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_weight_class`
--

INSERT INTO `oc_weight_class` (`weight_class_id`, `value`) VALUES
(1, '1.00000000'),
(2, '1000.00000000'),
(5, '2.20460000'),
(6, '35.27400000');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_weight_class_description`
--

CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_weight_class_description`
--

INSERT INTO `oc_weight_class_description` (`weight_class_id`, `language_id`, `title`, `unit`) VALUES
(1, 1, 'Kilogram', 'kg'),
(2, 1, 'Gram', 'g'),
(5, 1, 'Pound ', 'lb'),
(6, 1, 'Ounce', 'oz'),
(1, 2, 'Kilogram', 'kg'),
(2, 2, 'Gram', 'g'),
(5, 2, 'Pound ', 'lb'),
(6, 2, 'Ounce', 'oz');

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_zone`
--

CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_zone`
--

INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1, 1, 'Badakhshan', 'BDS', 1),
(2, 1, 'Badghis', 'BDG', 1),
(3, 1, 'Baghlan', 'BGL', 1),
(4, 1, 'Balkh', 'BAL', 1),
(5, 1, 'Bamian', 'BAM', 1),
(6, 1, 'Farah', 'FRA', 1),
(7, 1, 'Faryab', 'FYB', 1),
(8, 1, 'Ghazni', 'GHA', 1),
(9, 1, 'Ghowr', 'GHO', 1),
(10, 1, 'Helmand', 'HEL', 1),
(11, 1, 'Herat', 'HER', 1),
(12, 1, 'Jowzjan', 'JOW', 1),
(13, 1, 'Kabul', 'KAB', 1),
(14, 1, 'Kandahar', 'KAN', 1),
(15, 1, 'Kapisa', 'KAP', 1),
(16, 1, 'Khost', 'KHO', 1),
(17, 1, 'Konar', 'KNR', 1),
(18, 1, 'Kondoz', 'KDZ', 1),
(19, 1, 'Laghman', 'LAG', 1),
(20, 1, 'Lowgar', 'LOW', 1),
(21, 1, 'Nangrahar', 'NAN', 1),
(22, 1, 'Nimruz', 'NIM', 1),
(23, 1, 'Nurestan', 'NUR', 1),
(24, 1, 'Oruzgan', 'ORU', 1),
(25, 1, 'Paktia', 'PIA', 1),
(26, 1, 'Paktika', 'PKA', 1),
(27, 1, 'Parwan', 'PAR', 1),
(28, 1, 'Samangan', 'SAM', 1),
(29, 1, 'Sar-e Pol', 'SAR', 1),
(30, 1, 'Takhar', 'TAK', 1),
(31, 1, 'Wardak', 'WAR', 1),
(32, 1, 'Zabol', 'ZAB', 1),
(33, 2, 'Berat', 'BR', 1),
(34, 2, 'Bulqize', 'BU', 1),
(35, 2, 'Delvine', 'DL', 1),
(36, 2, 'Devoll', 'DV', 1),
(37, 2, 'Diber', 'DI', 1),
(38, 2, 'Durres', 'DR', 1),
(39, 2, 'Elbasan', 'EL', 1),
(40, 2, 'Kolonje', 'ER', 1),
(41, 2, 'Fier', 'FR', 1),
(42, 2, 'Gjirokaster', 'GJ', 1),
(43, 2, 'Gramsh', 'GR', 1),
(44, 2, 'Has', 'HA', 1),
(45, 2, 'Kavaje', 'KA', 1),
(46, 2, 'Kurbin', 'KB', 1),
(47, 2, 'Kucove', 'KC', 1),
(48, 2, 'Korce', 'KO', 1),
(49, 2, 'Kruje', 'KR', 1),
(50, 2, 'Kukes', 'KU', 1),
(51, 2, 'Librazhd', 'LB', 1),
(52, 2, 'Lezhe', 'LE', 1),
(53, 2, 'Lushnje', 'LU', 1),
(54, 2, 'Malesi e Madhe', 'MM', 1),
(55, 2, 'Mallakaster', 'MK', 1),
(56, 2, 'Mat', 'MT', 1),
(57, 2, 'Mirdite', 'MR', 1),
(58, 2, 'Peqin', 'PQ', 1),
(59, 2, 'Permet', 'PR', 1),
(60, 2, 'Pogradec', 'PG', 1),
(61, 2, 'Puke', 'PU', 1),
(62, 2, 'Shkoder', 'SH', 1),
(63, 2, 'Skrapar', 'SK', 1),
(64, 2, 'Sarande', 'SR', 1),
(65, 2, 'Tepelene', 'TE', 1),
(66, 2, 'Tropoje', 'TP', 1),
(67, 2, 'Tirane', 'TR', 1),
(68, 2, 'Vlore', 'VL', 1),
(69, 3, 'Adrar', 'ADR', 1),
(70, 3, 'Ain Defla', 'ADE', 1),
(71, 3, 'Ain Temouchent', 'ATE', 1),
(72, 3, 'Alger', 'ALG', 1),
(73, 3, 'Annaba', 'ANN', 1),
(74, 3, 'Batna', 'BAT', 1),
(75, 3, 'Bechar', 'BEC', 1),
(76, 3, 'Bejaia', 'BEJ', 1),
(77, 3, 'Biskra', 'BIS', 1),
(78, 3, 'Blida', 'BLI', 1),
(79, 3, 'Bordj Bou Arreridj', 'BBA', 1),
(80, 3, 'Bouira', 'BOA', 1),
(81, 3, 'Boumerdes', 'BMD', 1),
(82, 3, 'Chlef', 'CHL', 1),
(83, 3, 'Constantine', 'CON', 1),
(84, 3, 'Djelfa', 'DJE', 1),
(85, 3, 'El Bayadh', 'EBA', 1),
(86, 3, 'El Oued', 'EOU', 1),
(87, 3, 'El Tarf', 'ETA', 1),
(88, 3, 'Ghardaia', 'GHA', 1),
(89, 3, 'Guelma', 'GUE', 1),
(90, 3, 'Illizi', 'ILL', 1),
(91, 3, 'Jijel', 'JIJ', 1),
(92, 3, 'Khenchela', 'KHE', 1),
(93, 3, 'Laghouat', 'LAG', 1),
(94, 3, 'Muaskar', 'MUA', 1),
(95, 3, 'Medea', 'MED', 1),
(96, 3, 'Mila', 'MIL', 1),
(97, 3, 'Mostaganem', 'MOS', 1),
(98, 3, 'M''Sila', 'MSI', 1),
(99, 3, 'Naama', 'NAA', 1),
(100, 3, 'Oran', 'ORA', 1),
(101, 3, 'Ouargla', 'OUA', 1),
(102, 3, 'Oum el-Bouaghi', 'OEB', 1),
(103, 3, 'Relizane', 'REL', 1),
(104, 3, 'Saida', 'SAI', 1),
(105, 3, 'Setif', 'SET', 1),
(106, 3, 'Sidi Bel Abbes', 'SBA', 1),
(107, 3, 'Skikda', 'SKI', 1),
(108, 3, 'Souk Ahras', 'SAH', 1),
(109, 3, 'Tamanghasset', 'TAM', 1),
(110, 3, 'Tebessa', 'TEB', 1),
(111, 3, 'Tiaret', 'TIA', 1),
(112, 3, 'Tindouf', 'TIN', 1),
(113, 3, 'Tipaza', 'TIP', 1),
(114, 3, 'Tissemsilt', 'TIS', 1),
(115, 3, 'Tizi Ouzou', 'TOU', 1),
(116, 3, 'Tlemcen', 'TLE', 1),
(117, 4, 'Eastern', 'E', 1),
(118, 4, 'Manu''a', 'M', 1),
(119, 4, 'Rose Island', 'R', 1),
(120, 4, 'Swains Island', 'S', 1),
(121, 4, 'Western', 'W', 1),
(122, 5, 'Andorra la Vella', 'ALV', 1),
(123, 5, 'Canillo', 'CAN', 1),
(124, 5, 'Encamp', 'ENC', 1),
(125, 5, 'Escaldes-Engordany', 'ESE', 1),
(126, 5, 'La Massana', 'LMA', 1),
(127, 5, 'Ordino', 'ORD', 1),
(128, 5, 'Sant Julia de Loria', 'SJL', 1),
(129, 6, 'Bengo', 'BGO', 1),
(130, 6, 'Benguela', 'BGU', 1),
(131, 6, 'Bie', 'BIE', 1),
(132, 6, 'Cabinda', 'CAB', 1),
(133, 6, 'Cuando-Cubango', 'CCU', 1),
(134, 6, 'Cuanza Norte', 'CNO', 1),
(135, 6, 'Cuanza Sul', 'CUS', 1),
(136, 6, 'Cunene', 'CNN', 1),
(137, 6, 'Huambo', 'HUA', 1),
(138, 6, 'Huila', 'HUI', 1),
(139, 6, 'Luanda', 'LUA', 1),
(140, 6, 'Lunda Norte', 'LNO', 1),
(141, 6, 'Lunda Sul', 'LSU', 1),
(142, 6, 'Malange', 'MAL', 1),
(143, 6, 'Moxico', 'MOX', 1),
(144, 6, 'Namibe', 'NAM', 1),
(145, 6, 'Uige', 'UIG', 1),
(146, 6, 'Zaire', 'ZAI', 1),
(147, 9, 'Saint George', 'ASG', 1),
(148, 9, 'Saint John', 'ASJ', 1),
(149, 9, 'Saint Mary', 'ASM', 1),
(150, 9, 'Saint Paul', 'ASL', 1),
(151, 9, 'Saint Peter', 'ASR', 1),
(152, 9, 'Saint Philip', 'ASH', 1),
(153, 9, 'Barbuda', 'BAR', 1),
(154, 9, 'Redonda', 'RED', 1),
(155, 10, 'Antartida e Islas del Atlantico', 'AN', 1),
(156, 10, 'Buenos Aires', 'BA', 1),
(157, 10, 'Catamarca', 'CA', 1),
(158, 10, 'Chaco', 'CH', 1),
(159, 10, 'Chubut', 'CU', 1),
(160, 10, 'Cordoba', 'CO', 1),
(161, 10, 'Corrientes', 'CR', 1),
(162, 10, 'Distrito Federal', 'DF', 1),
(163, 10, 'Entre Rios', 'ER', 1),
(164, 10, 'Formosa', 'FO', 1),
(165, 10, 'Jujuy', 'JU', 1),
(166, 10, 'La Pampa', 'LP', 1),
(167, 10, 'La Rioja', 'LR', 1),
(168, 10, 'Mendoza', 'ME', 1),
(169, 10, 'Misiones', 'MI', 1),
(170, 10, 'Neuquen', 'NE', 1),
(171, 10, 'Rio Negro', 'RN', 1),
(172, 10, 'Salta', 'SA', 1),
(173, 10, 'San Juan', 'SJ', 1),
(174, 10, 'San Luis', 'SL', 1),
(175, 10, 'Santa Cruz', 'SC', 1),
(176, 10, 'Santa Fe', 'SF', 1),
(177, 10, 'Santiago del Estero', 'SD', 1),
(178, 10, 'Tierra del Fuego', 'TF', 1),
(179, 10, 'Tucuman', 'TU', 1),
(180, 11, 'Aragatsotn', 'AGT', 1),
(181, 11, 'Ararat', 'ARR', 1),
(182, 11, 'Armavir', 'ARM', 1),
(183, 11, 'Geghark''unik''', 'GEG', 1),
(184, 11, 'Kotayk''', 'KOT', 1),
(185, 11, 'Lorri', 'LOR', 1),
(186, 11, 'Shirak', 'SHI', 1),
(187, 11, 'Syunik''', 'SYU', 1),
(188, 11, 'Tavush', 'TAV', 1),
(189, 11, 'Vayots'' Dzor', 'VAY', 1),
(190, 11, 'Yerevan', 'YER', 1),
(191, 13, 'Australian Capital Territory', 'ACT', 1),
(192, 13, 'New South Wales', 'NSW', 1),
(193, 13, 'Northern Territory', 'NT', 1),
(194, 13, 'Queensland', 'QLD', 1),
(195, 13, 'South Australia', 'SA', 1),
(196, 13, 'Tasmania', 'TAS', 1),
(197, 13, 'Victoria', 'VIC', 1),
(198, 13, 'Western Australia', 'WA', 1),
(199, 14, 'Burgenland', 'BUR', 1),
(200, 14, 'Kärnten', 'KAR', 1),
(201, 14, 'Nieder&ouml;sterreich', 'NOS', 1),
(202, 14, 'Ober&ouml;sterreich', 'OOS', 1),
(203, 14, 'Salzburg', 'SAL', 1),
(204, 14, 'Steiermark', 'STE', 1),
(205, 14, 'Tirol', 'TIR', 1),
(206, 14, 'Vorarlberg', 'VOR', 1),
(207, 14, 'Wien', 'WIE', 1),
(208, 15, 'Ali Bayramli', 'AB', 1),
(209, 15, 'Abseron', 'ABS', 1),
(210, 15, 'AgcabAdi', 'AGC', 1),
(211, 15, 'Agdam', 'AGM', 1),
(212, 15, 'Agdas', 'AGS', 1),
(213, 15, 'Agstafa', 'AGA', 1),
(214, 15, 'Agsu', 'AGU', 1),
(215, 15, 'Astara', 'AST', 1),
(216, 15, 'Baki', 'BA', 1),
(217, 15, 'BabAk', 'BAB', 1),
(218, 15, 'BalakAn', 'BAL', 1),
(219, 15, 'BArdA', 'BAR', 1),
(220, 15, 'Beylaqan', 'BEY', 1),
(221, 15, 'Bilasuvar', 'BIL', 1),
(222, 15, 'Cabrayil', 'CAB', 1),
(223, 15, 'Calilabab', 'CAL', 1),
(224, 15, 'Culfa', 'CUL', 1),
(225, 15, 'Daskasan', 'DAS', 1),
(226, 15, 'Davaci', 'DAV', 1),
(227, 15, 'Fuzuli', 'FUZ', 1),
(228, 15, 'Ganca', 'GA', 1),
(229, 15, 'Gadabay', 'GAD', 1),
(230, 15, 'Goranboy', 'GOR', 1),
(231, 15, 'Goycay', 'GOY', 1),
(232, 15, 'Haciqabul', 'HAC', 1),
(233, 15, 'Imisli', 'IMI', 1),
(234, 15, 'Ismayilli', 'ISM', 1),
(235, 15, 'Kalbacar', 'KAL', 1),
(236, 15, 'Kurdamir', 'KUR', 1),
(237, 15, 'Lankaran', 'LA', 1),
(238, 15, 'Lacin', 'LAC', 1),
(239, 15, 'Lankaran', 'LAN', 1),
(240, 15, 'Lerik', 'LER', 1),
(241, 15, 'Masalli', 'MAS', 1),
(242, 15, 'Mingacevir', 'MI', 1),
(243, 15, 'Naftalan', 'NA', 1),
(244, 15, 'Neftcala', 'NEF', 1),
(245, 15, 'Oguz', 'OGU', 1),
(246, 15, 'Ordubad', 'ORD', 1),
(247, 15, 'Qabala', 'QAB', 1),
(248, 15, 'Qax', 'QAX', 1),
(249, 15, 'Qazax', 'QAZ', 1),
(250, 15, 'Qobustan', 'QOB', 1),
(251, 15, 'Quba', 'QBA', 1),
(252, 15, 'Qubadli', 'QBI', 1),
(253, 15, 'Qusar', 'QUS', 1),
(254, 15, 'Saki', 'SA', 1),
(255, 15, 'Saatli', 'SAT', 1),
(256, 15, 'Sabirabad', 'SAB', 1),
(257, 15, 'Sadarak', 'SAD', 1),
(258, 15, 'Sahbuz', 'SAH', 1),
(259, 15, 'Saki', 'SAK', 1),
(260, 15, 'Salyan', 'SAL', 1),
(261, 15, 'Sumqayit', 'SM', 1),
(262, 15, 'Samaxi', 'SMI', 1),
(263, 15, 'Samkir', 'SKR', 1),
(264, 15, 'Samux', 'SMX', 1),
(265, 15, 'Sarur', 'SAR', 1),
(266, 15, 'Siyazan', 'SIY', 1),
(267, 15, 'Susa', 'SS', 1),
(268, 15, 'Susa', 'SUS', 1),
(269, 15, 'Tartar', 'TAR', 1),
(270, 15, 'Tovuz', 'TOV', 1),
(271, 15, 'Ucar', 'UCA', 1),
(272, 15, 'Xankandi', 'XA', 1),
(273, 15, 'Xacmaz', 'XAC', 1),
(274, 15, 'Xanlar', 'XAN', 1),
(275, 15, 'Xizi', 'XIZ', 1),
(276, 15, 'Xocali', 'XCI', 1),
(277, 15, 'Xocavand', 'XVD', 1),
(278, 15, 'Yardimli', 'YAR', 1),
(279, 15, 'Yevlax', 'YEV', 1),
(280, 15, 'Zangilan', 'ZAN', 1),
(281, 15, 'Zaqatala', 'ZAQ', 1),
(282, 15, 'Zardab', 'ZAR', 1),
(283, 15, 'Naxcivan', 'NX', 1),
(284, 16, 'Acklins', 'ACK', 1),
(285, 16, 'Berry Islands', 'BER', 1),
(286, 16, 'Bimini', 'BIM', 1),
(287, 16, 'Black Point', 'BLK', 1),
(288, 16, 'Cat Island', 'CAT', 1),
(289, 16, 'Central Abaco', 'CAB', 1),
(290, 16, 'Central Andros', 'CAN', 1),
(291, 16, 'Central Eleuthera', 'CEL', 1),
(292, 16, 'City of Freeport', 'FRE', 1),
(293, 16, 'Crooked Island', 'CRO', 1),
(294, 16, 'East Grand Bahama', 'EGB', 1),
(295, 16, 'Exuma', 'EXU', 1),
(296, 16, 'Grand Cay', 'GRD', 1),
(297, 16, 'Harbour Island', 'HAR', 1),
(298, 16, 'Hope Town', 'HOP', 1),
(299, 16, 'Inagua', 'INA', 1),
(300, 16, 'Long Island', 'LNG', 1),
(301, 16, 'Mangrove Cay', 'MAN', 1),
(302, 16, 'Mayaguana', 'MAY', 1),
(303, 16, 'Moore''s Island', 'MOO', 1),
(304, 16, 'North Abaco', 'NAB', 1),
(305, 16, 'North Andros', 'NAN', 1),
(306, 16, 'North Eleuthera', 'NEL', 1),
(307, 16, 'Ragged Island', 'RAG', 1),
(308, 16, 'Rum Cay', 'RUM', 1),
(309, 16, 'San Salvador', 'SAL', 1),
(310, 16, 'South Abaco', 'SAB', 1),
(311, 16, 'South Andros', 'SAN', 1),
(312, 16, 'South Eleuthera', 'SEL', 1),
(313, 16, 'Spanish Wells', 'SWE', 1),
(314, 16, 'West Grand Bahama', 'WGB', 1),
(315, 17, 'Capital', 'CAP', 1),
(316, 17, 'Central', 'CEN', 1),
(317, 17, 'Muharraq', 'MUH', 1),
(318, 17, 'Northern', 'NOR', 1),
(319, 17, 'Southern', 'SOU', 1),
(320, 18, 'Barisal', 'BAR', 1),
(321, 18, 'Chittagong', 'CHI', 1),
(322, 18, 'Dhaka', 'DHA', 1),
(323, 18, 'Khulna', 'KHU', 1),
(324, 18, 'Rajshahi', 'RAJ', 1),
(325, 18, 'Sylhet', 'SYL', 1),
(326, 19, 'Christ Church', 'CC', 1),
(327, 19, 'Saint Andrew', 'AND', 1),
(328, 19, 'Saint George', 'GEO', 1),
(329, 19, 'Saint James', 'JAM', 1),
(330, 19, 'Saint John', 'JOH', 1),
(331, 19, 'Saint Joseph', 'JOS', 1),
(332, 19, 'Saint Lucy', 'LUC', 1),
(333, 19, 'Saint Michael', 'MIC', 1),
(334, 19, 'Saint Peter', 'PET', 1),
(335, 19, 'Saint Philip', 'PHI', 1),
(336, 19, 'Saint Thomas', 'THO', 1),
(337, 20, 'Brestskaya (Brest)', 'BR', 1),
(338, 20, 'Homyel''skaya (Homyel'')', 'HO', 1),
(339, 20, 'Horad Minsk', 'HM', 1),
(340, 20, 'Hrodzyenskaya (Hrodna)', 'HR', 1),
(341, 20, 'Mahilyowskaya (Mahilyow)', 'MA', 1),
(342, 20, 'Minskaya', 'MI', 1),
(343, 20, 'Vitsyebskaya (Vitsyebsk)', 'VI', 1),
(344, 21, 'Antwerpen', 'VAN', 1),
(345, 21, 'Brabant Wallon', 'WBR', 1),
(346, 21, 'Hainaut', 'WHT', 1),
(347, 21, 'Liège', 'WLG', 1),
(348, 21, 'Limburg', 'VLI', 1),
(349, 21, 'Luxembourg', 'WLX', 1),
(350, 21, 'Namur', 'WNA', 1),
(351, 21, 'Oost-Vlaanderen', 'VOV', 1),
(352, 21, 'Vlaams Brabant', 'VBR', 1),
(353, 21, 'West-Vlaanderen', 'VWV', 1),
(354, 22, 'Belize', 'BZ', 1),
(355, 22, 'Cayo', 'CY', 1),
(356, 22, 'Corozal', 'CR', 1),
(357, 22, 'Orange Walk', 'OW', 1),
(358, 22, 'Stann Creek', 'SC', 1),
(359, 22, 'Toledo', 'TO', 1),
(360, 23, 'Alibori', 'AL', 1),
(361, 23, 'Atakora', 'AK', 1),
(362, 23, 'Atlantique', 'AQ', 1),
(363, 23, 'Borgou', 'BO', 1),
(364, 23, 'Collines', 'CO', 1),
(365, 23, 'Donga', 'DO', 1),
(366, 23, 'Kouffo', 'KO', 1),
(367, 23, 'Littoral', 'LI', 1),
(368, 23, 'Mono', 'MO', 1),
(369, 23, 'Oueme', 'OU', 1),
(370, 23, 'Plateau', 'PL', 1),
(371, 23, 'Zou', 'ZO', 1),
(372, 24, 'Devonshire', 'DS', 1),
(373, 24, 'Hamilton City', 'HC', 1),
(374, 24, 'Hamilton', 'HA', 1),
(375, 24, 'Paget', 'PG', 1),
(376, 24, 'Pembroke', 'PB', 1),
(377, 24, 'Saint George City', 'GC', 1),
(378, 24, 'Saint George''s', 'SG', 1),
(379, 24, 'Sandys', 'SA', 1),
(380, 24, 'Smith''s', 'SM', 1),
(381, 24, 'Southampton', 'SH', 1),
(382, 24, 'Warwick', 'WA', 1),
(383, 25, 'Bumthang', 'BUM', 1),
(384, 25, 'Chukha', 'CHU', 1),
(385, 25, 'Dagana', 'DAG', 1),
(386, 25, 'Gasa', 'GAS', 1),
(387, 25, 'Haa', 'HAA', 1),
(388, 25, 'Lhuntse', 'LHU', 1),
(389, 25, 'Mongar', 'MON', 1),
(390, 25, 'Paro', 'PAR', 1),
(391, 25, 'Pemagatshel', 'PEM', 1),
(392, 25, 'Punakha', 'PUN', 1),
(393, 25, 'Samdrup Jongkhar', 'SJO', 1),
(394, 25, 'Samtse', 'SAT', 1),
(395, 25, 'Sarpang', 'SAR', 1),
(396, 25, 'Thimphu', 'THI', 1),
(397, 25, 'Trashigang', 'TRG', 1),
(398, 25, 'Trashiyangste', 'TRY', 1),
(399, 25, 'Trongsa', 'TRO', 1),
(400, 25, 'Tsirang', 'TSI', 1),
(401, 25, 'Wangdue Phodrang', 'WPH', 1),
(402, 25, 'Zhemgang', 'ZHE', 1),
(403, 26, 'Beni', 'BEN', 1),
(404, 26, 'Chuquisaca', 'CHU', 1),
(405, 26, 'Cochabamba', 'COC', 1),
(406, 26, 'La Paz', 'LPZ', 1),
(407, 26, 'Oruro', 'ORU', 1),
(408, 26, 'Pando', 'PAN', 1),
(409, 26, 'Potosi', 'POT', 1),
(410, 26, 'Santa Cruz', 'SCZ', 1),
(411, 26, 'Tarija', 'TAR', 1),
(412, 27, 'Brcko district', 'BRO', 1),
(413, 27, 'Unsko-Sanski Kanton', 'FUS', 1),
(414, 27, 'Posavski Kanton', 'FPO', 1),
(415, 27, 'Tuzlanski Kanton', 'FTU', 1),
(416, 27, 'Zenicko-Dobojski Kanton', 'FZE', 1),
(417, 27, 'Bosanskopodrinjski Kanton', 'FBP', 1),
(418, 27, 'Srednjebosanski Kanton', 'FSB', 1),
(419, 27, 'Hercegovacko-neretvanski Kanton', 'FHN', 1),
(420, 27, 'Zapadnohercegovacka Zupanija', 'FZH', 1),
(421, 27, 'Kanton Sarajevo', 'FSA', 1),
(422, 27, 'Zapadnobosanska', 'FZA', 1),
(423, 27, 'Banja Luka', 'SBL', 1),
(424, 27, 'Doboj', 'SDO', 1),
(425, 27, 'Bijeljina', 'SBI', 1),
(426, 27, 'Vlasenica', 'SVL', 1),
(427, 27, 'Sarajevo-Romanija or Sokolac', 'SSR', 1),
(428, 27, 'Foca', 'SFO', 1),
(429, 27, 'Trebinje', 'STR', 1),
(430, 28, 'Central', 'CE', 1),
(431, 28, 'Ghanzi', 'GH', 1),
(432, 28, 'Kgalagadi', 'KD', 1),
(433, 28, 'Kgatleng', 'KT', 1),
(434, 28, 'Kweneng', 'KW', 1),
(435, 28, 'Ngamiland', 'NG', 1),
(436, 28, 'North East', 'NE', 1),
(437, 28, 'North West', 'NW', 1),
(438, 28, 'South East', 'SE', 1),
(439, 28, 'Southern', 'SO', 1),
(440, 30, 'Acre', 'AC', 1),
(441, 30, 'Alagoas', 'AL', 1),
(442, 30, 'Amapá', 'AP', 1),
(443, 30, 'Amazonas', 'AM', 1),
(444, 30, 'Bahia', 'BA', 1),
(445, 30, 'Ceará', 'CE', 1),
(446, 30, 'Distrito Federal', 'DF', 1),
(447, 30, 'Espírito Santo', 'ES', 1),
(448, 30, 'Goiás', 'GO', 1),
(449, 30, 'Maranhão', 'MA', 1),
(450, 30, 'Mato Grosso', 'MT', 1),
(451, 30, 'Mato Grosso do Sul', 'MS', 1),
(452, 30, 'Minas Gerais', 'MG', 1),
(453, 30, 'Pará', 'PA', 1),
(454, 30, 'Paraíba', 'PB', 1),
(455, 30, 'Paraná', 'PR', 1),
(456, 30, 'Pernambuco', 'PE', 1),
(457, 30, 'Piauí', 'PI', 1),
(458, 30, 'Rio de Janeiro', 'RJ', 1),
(459, 30, 'Rio Grande do Norte', 'RN', 1),
(460, 30, 'Rio Grande do Sul', 'RS', 1),
(461, 30, 'Rondônia', 'RO', 1),
(462, 30, 'Roraima', 'RR', 1),
(463, 30, 'Santa Catarina', 'SC', 1),
(464, 30, 'São Paulo', 'SP', 1),
(465, 30, 'Sergipe', 'SE', 1),
(466, 30, 'Tocantins', 'TO', 1),
(467, 31, 'Peros Banhos', 'PB', 1),
(468, 31, 'Salomon Islands', 'SI', 1),
(469, 31, 'Nelsons Island', 'NI', 1),
(470, 31, 'Three Brothers', 'TB', 1),
(471, 31, 'Eagle Islands', 'EA', 1),
(472, 31, 'Danger Island', 'DI', 1),
(473, 31, 'Egmont Islands', 'EG', 1),
(474, 31, 'Diego Garcia', 'DG', 1),
(475, 32, 'Belait', 'BEL', 1),
(476, 32, 'Brunei and Muara', 'BRM', 1),
(477, 32, 'Temburong', 'TEM', 1),
(478, 32, 'Tutong', 'TUT', 1),
(479, 33, 'Blagoevgrad', '', 1),
(480, 33, 'Burgas', '', 1),
(481, 33, 'Dobrich', '', 1),
(482, 33, 'Gabrovo', '', 1),
(483, 33, 'Haskovo', '', 1),
(484, 33, 'Kardjali', '', 1),
(485, 33, 'Kyustendil', '', 1),
(486, 33, 'Lovech', '', 1),
(487, 33, 'Montana', '', 1),
(488, 33, 'Pazardjik', '', 1),
(489, 33, 'Pernik', '', 1),
(490, 33, 'Pleven', '', 1),
(491, 33, 'Plovdiv', '', 1),
(492, 33, 'Razgrad', '', 1),
(493, 33, 'Shumen', '', 1),
(494, 33, 'Silistra', '', 1),
(495, 33, 'Sliven', '', 1),
(496, 33, 'Smolyan', '', 1),
(497, 33, 'Sofia', '', 1),
(498, 33, 'Sofia - town', '', 1),
(499, 33, 'Stara Zagora', '', 1),
(500, 33, 'Targovishte', '', 1),
(501, 33, 'Varna', '', 1),
(502, 33, 'Veliko Tarnovo', '', 1),
(503, 33, 'Vidin', '', 1),
(504, 33, 'Vratza', '', 1),
(505, 33, 'Yambol', '', 1),
(506, 34, 'Bale', 'BAL', 1),
(507, 34, 'Bam', 'BAM', 1),
(508, 34, 'Banwa', 'BAN', 1),
(509, 34, 'Bazega', 'BAZ', 1),
(510, 34, 'Bougouriba', 'BOR', 1),
(511, 34, 'Boulgou', 'BLG', 1),
(512, 34, 'Boulkiemde', 'BOK', 1),
(513, 34, 'Comoe', 'COM', 1),
(514, 34, 'Ganzourgou', 'GAN', 1),
(515, 34, 'Gnagna', 'GNA', 1),
(516, 34, 'Gourma', 'GOU', 1),
(517, 34, 'Houet', 'HOU', 1),
(518, 34, 'Ioba', 'IOA', 1),
(519, 34, 'Kadiogo', 'KAD', 1),
(520, 34, 'Kenedougou', 'KEN', 1),
(521, 34, 'Komondjari', 'KOD', 1),
(522, 34, 'Kompienga', 'KOP', 1),
(523, 34, 'Kossi', 'KOS', 1),
(524, 34, 'Koulpelogo', 'KOL', 1),
(525, 34, 'Kouritenga', 'KOT', 1),
(526, 34, 'Kourweogo', 'KOW', 1),
(527, 34, 'Leraba', 'LER', 1),
(528, 34, 'Loroum', 'LOR', 1),
(529, 34, 'Mouhoun', 'MOU', 1),
(530, 34, 'Nahouri', 'NAH', 1),
(531, 34, 'Namentenga', 'NAM', 1),
(532, 34, 'Nayala', 'NAY', 1),
(533, 34, 'Noumbiel', 'NOU', 1),
(534, 34, 'Oubritenga', 'OUB', 1),
(535, 34, 'Oudalan', 'OUD', 1),
(536, 34, 'Passore', 'PAS', 1),
(537, 34, 'Poni', 'PON', 1),
(538, 34, 'Sanguie', 'SAG', 1),
(539, 34, 'Sanmatenga', 'SAM', 1),
(540, 34, 'Seno', 'SEN', 1),
(541, 34, 'Sissili', 'SIS', 1),
(542, 34, 'Soum', 'SOM', 1),
(543, 34, 'Sourou', 'SOR', 1),
(544, 34, 'Tapoa', 'TAP', 1),
(545, 34, 'Tuy', 'TUY', 1),
(546, 34, 'Yagha', 'YAG', 1),
(547, 34, 'Yatenga', 'YAT', 1),
(548, 34, 'Ziro', 'ZIR', 1),
(549, 34, 'Zondoma', 'ZOD', 1),
(550, 34, 'Zoundweogo', 'ZOW', 1),
(551, 35, 'Bubanza', 'BB', 1),
(552, 35, 'Bujumbura', 'BJ', 1),
(553, 35, 'Bururi', 'BR', 1),
(554, 35, 'Cankuzo', 'CA', 1),
(555, 35, 'Cibitoke', 'CI', 1),
(556, 35, 'Gitega', 'GI', 1),
(557, 35, 'Karuzi', 'KR', 1),
(558, 35, 'Kayanza', 'KY', 1),
(559, 35, 'Kirundo', 'KI', 1),
(560, 35, 'Makamba', 'MA', 1),
(561, 35, 'Muramvya', 'MU', 1),
(562, 35, 'Muyinga', 'MY', 1),
(563, 35, 'Mwaro', 'MW', 1),
(564, 35, 'Ngozi', 'NG', 1),
(565, 35, 'Rutana', 'RT', 1),
(566, 35, 'Ruyigi', 'RY', 1),
(567, 36, 'Phnom Penh', 'PP', 1),
(568, 36, 'Preah Seihanu (Kompong Som or Sihanoukville)', 'PS', 1),
(569, 36, 'Pailin', 'PA', 1),
(570, 36, 'Keb', 'KB', 1),
(571, 36, 'Banteay Meanchey', 'BM', 1),
(572, 36, 'Battambang', 'BA', 1),
(573, 36, 'Kampong Cham', 'KM', 1),
(574, 36, 'Kampong Chhnang', 'KN', 1),
(575, 36, 'Kampong Speu', 'KU', 1),
(576, 36, 'Kampong Som', 'KO', 1),
(577, 36, 'Kampong Thom', 'KT', 1),
(578, 36, 'Kampot', 'KP', 1),
(579, 36, 'Kandal', 'KL', 1),
(580, 36, 'Kaoh Kong', 'KK', 1),
(581, 36, 'Kratie', 'KR', 1),
(582, 36, 'Mondul Kiri', 'MK', 1),
(583, 36, 'Oddar Meancheay', 'OM', 1),
(584, 36, 'Pursat', 'PU', 1),
(585, 36, 'Preah Vihear', 'PR', 1),
(586, 36, 'Prey Veng', 'PG', 1),
(587, 36, 'Ratanak Kiri', 'RK', 1),
(588, 36, 'Siemreap', 'SI', 1),
(589, 36, 'Stung Treng', 'ST', 1),
(590, 36, 'Svay Rieng', 'SR', 1),
(591, 36, 'Takeo', 'TK', 1),
(592, 37, 'Adamawa (Adamaoua)', 'ADA', 1),
(593, 37, 'Centre', 'CEN', 1),
(594, 37, 'East (Est)', 'EST', 1),
(595, 37, 'Extreme North (Extreme-Nord)', 'EXN', 1),
(596, 37, 'Littoral', 'LIT', 1),
(597, 37, 'North (Nord)', 'NOR', 1),
(598, 37, 'Northwest (Nord-Ouest)', 'NOT', 1),
(599, 37, 'West (Ouest)', 'OUE', 1),
(600, 37, 'South (Sud)', 'SUD', 1),
(601, 37, 'Southwest (Sud-Ouest).', 'SOU', 1),
(602, 38, 'Alberta', 'AB', 1),
(603, 38, 'British Columbia', 'BC', 1),
(604, 38, 'Manitoba', 'MB', 1),
(605, 38, 'New Brunswick', 'NB', 1),
(606, 38, 'Newfoundland and Labrador', 'NL', 1),
(607, 38, 'Northwest Territories', 'NT', 1),
(608, 38, 'Nova Scotia', 'NS', 1),
(609, 38, 'Nunavut', 'NU', 1),
(610, 38, 'Ontario', 'ON', 1),
(611, 38, 'Prince Edward Island', 'PE', 1),
(612, 38, 'Qu&eacute;bec', 'QC', 1),
(613, 38, 'Saskatchewan', 'SK', 1),
(614, 38, 'Yukon Territory', 'YT', 1),
(615, 39, 'Boa Vista', 'BV', 1),
(616, 39, 'Brava', 'BR', 1),
(617, 39, 'Calheta de Sao Miguel', 'CS', 1),
(618, 39, 'Maio', 'MA', 1),
(619, 39, 'Mosteiros', 'MO', 1),
(620, 39, 'Paul', 'PA', 1),
(621, 39, 'Porto Novo', 'PN', 1),
(622, 39, 'Praia', 'PR', 1),
(623, 39, 'Ribeira Grande', 'RG', 1),
(624, 39, 'Sal', 'SL', 1),
(625, 39, 'Santa Catarina', 'CA', 1),
(626, 39, 'Santa Cruz', 'CR', 1),
(627, 39, 'Sao Domingos', 'SD', 1),
(628, 39, 'Sao Filipe', 'SF', 1),
(629, 39, 'Sao Nicolau', 'SN', 1),
(630, 39, 'Sao Vicente', 'SV', 1),
(631, 39, 'Tarrafal', 'TA', 1),
(632, 40, 'Creek', 'CR', 1),
(633, 40, 'Eastern', 'EA', 1),
(634, 40, 'Midland', 'ML', 1),
(635, 40, 'South Town', 'ST', 1),
(636, 40, 'Spot Bay', 'SP', 1),
(637, 40, 'Stake Bay', 'SK', 1),
(638, 40, 'West End', 'WD', 1),
(639, 40, 'Western', 'WN', 1),
(640, 41, 'Bamingui-Bangoran', 'BBA', 1),
(641, 41, 'Basse-Kotto', 'BKO', 1),
(642, 41, 'Haute-Kotto', 'HKO', 1),
(643, 41, 'Haut-Mbomou', 'HMB', 1),
(644, 41, 'Kemo', 'KEM', 1),
(645, 41, 'Lobaye', 'LOB', 1),
(646, 41, 'Mambere-KadeÔ', 'MKD', 1),
(647, 41, 'Mbomou', 'MBO', 1),
(648, 41, 'Nana-Mambere', 'NMM', 1),
(649, 41, 'Ombella-M''Poko', 'OMP', 1),
(650, 41, 'Ouaka', 'OUK', 1),
(651, 41, 'Ouham', 'OUH', 1),
(652, 41, 'Ouham-Pende', 'OPE', 1),
(653, 41, 'Vakaga', 'VAK', 1),
(654, 41, 'Nana-Grebizi', 'NGR', 1),
(655, 41, 'Sangha-Mbaere', 'SMB', 1),
(656, 41, 'Bangui', 'BAN', 1),
(657, 42, 'Batha', 'BA', 1),
(658, 42, 'Biltine', 'BI', 1),
(659, 42, 'Borkou-Ennedi-Tibesti', 'BE', 1),
(660, 42, 'Chari-Baguirmi', 'CB', 1),
(661, 42, 'Guera', 'GU', 1),
(662, 42, 'Kanem', 'KA', 1),
(663, 42, 'Lac', 'LA', 1),
(664, 42, 'Logone Occidental', 'LC', 1),
(665, 42, 'Logone Oriental', 'LR', 1),
(666, 42, 'Mayo-Kebbi', 'MK', 1),
(667, 42, 'Moyen-Chari', 'MC', 1),
(668, 42, 'Ouaddai', 'OU', 1),
(669, 42, 'Salamat', 'SA', 1),
(670, 42, 'Tandjile', 'TA', 1),
(671, 43, 'Aisen del General Carlos Ibanez', 'AI', 1),
(672, 43, 'Antofagasta', 'AN', 1),
(673, 43, 'Araucania', 'AR', 1),
(674, 43, 'Atacama', 'AT', 1),
(675, 43, 'Bio-Bio', 'BI', 1),
(676, 43, 'Coquimbo', 'CO', 1),
(677, 43, 'Libertador General Bernardo O''Higgins', 'LI', 1),
(678, 43, 'Los Lagos', 'LL', 1),
(679, 43, 'Magallanes y de la Antartica Chilena', 'MA', 1),
(680, 43, 'Maule', 'ML', 1),
(681, 43, 'Region Metropolitana', 'RM', 1),
(682, 43, 'Tarapaca', 'TA', 1),
(683, 43, 'Valparaiso', 'VS', 1),
(684, 44, 'Anhui', 'AN', 1),
(685, 44, 'Beijing', 'BE', 1),
(686, 44, 'Chongqing', 'CH', 1),
(687, 44, 'Fujian', 'FU', 1),
(688, 44, 'Gansu', 'GA', 1),
(689, 44, 'Guangdong', 'GU', 1),
(690, 44, 'Guangxi', 'GX', 1),
(691, 44, 'Guizhou', 'GZ', 1),
(692, 44, 'Hainan', 'HA', 1),
(693, 44, 'Hebei', 'HB', 1),
(694, 44, 'Heilongjiang', 'HL', 1),
(695, 44, 'Henan', 'HE', 1),
(696, 44, 'Hong Kong', 'HK', 1),
(697, 44, 'Hubei', 'HU', 1),
(698, 44, 'Hunan', 'HN', 1),
(699, 44, 'Inner Mongolia', 'IM', 1),
(700, 44, 'Jiangsu', 'JI', 1),
(701, 44, 'Jiangxi', 'JX', 1),
(702, 44, 'Jilin', 'JL', 1),
(703, 44, 'Liaoning', 'LI', 1),
(704, 44, 'Macau', 'MA', 1),
(705, 44, 'Ningxia', 'NI', 1),
(706, 44, 'Shaanxi', 'SH', 1),
(707, 44, 'Shandong', 'SA', 1),
(708, 44, 'Shanghai', 'SG', 1),
(709, 44, 'Shanxi', 'SX', 1),
(710, 44, 'Sichuan', 'SI', 1),
(711, 44, 'Tianjin', 'TI', 1),
(712, 44, 'Xinjiang', 'XI', 1),
(713, 44, 'Yunnan', 'YU', 1),
(714, 44, 'Zhejiang', 'ZH', 1),
(715, 46, 'Direction Island', 'D', 1),
(716, 46, 'Home Island', 'H', 1),
(717, 46, 'Horsburgh Island', 'O', 1),
(718, 46, 'South Island', 'S', 1),
(719, 46, 'West Island', 'W', 1),
(720, 47, 'Amazonas', 'AMZ', 1),
(721, 47, 'Antioquia', 'ANT', 1),
(722, 47, 'Arauca', 'ARA', 1),
(723, 47, 'Atlantico', 'ATL', 1),
(724, 47, 'Bogota D.C.', 'BDC', 1),
(725, 47, 'Bolivar', 'BOL', 1),
(726, 47, 'Boyaca', 'BOY', 1),
(727, 47, 'Caldas', 'CAL', 1),
(728, 47, 'Caqueta', 'CAQ', 1),
(729, 47, 'Casanare', 'CAS', 1),
(730, 47, 'Cauca', 'CAU', 1),
(731, 47, 'Cesar', 'CES', 1),
(732, 47, 'Choco', 'CHO', 1),
(733, 47, 'Cordoba', 'COR', 1),
(734, 47, 'Cundinamarca', 'CAM', 1),
(735, 47, 'Guainia', 'GNA', 1),
(736, 47, 'Guajira', 'GJR', 1),
(737, 47, 'Guaviare', 'GVR', 1),
(738, 47, 'Huila', 'HUI', 1),
(739, 47, 'Magdalena', 'MAG', 1),
(740, 47, 'Meta', 'MET', 1),
(741, 47, 'Narino', 'NAR', 1),
(742, 47, 'Norte de Santander', 'NDS', 1),
(743, 47, 'Putumayo', 'PUT', 1),
(744, 47, 'Quindio', 'QUI', 1),
(745, 47, 'Risaralda', 'RIS', 1),
(746, 47, 'San Andres y Providencia', 'SAP', 1),
(747, 47, 'Santander', 'SAN', 1),
(748, 47, 'Sucre', 'SUC', 1),
(749, 47, 'Tolima', 'TOL', 1),
(750, 47, 'Valle del Cauca', 'VDC', 1),
(751, 47, 'Vaupes', 'VAU', 1),
(752, 47, 'Vichada', 'VIC', 1),
(753, 48, 'Grande Comore', 'G', 1),
(754, 48, 'Anjouan', 'A', 1),
(755, 48, 'Moheli', 'M', 1),
(756, 49, 'Bouenza', 'BO', 1),
(757, 49, 'Brazzaville', 'BR', 1),
(758, 49, 'Cuvette', 'CU', 1),
(759, 49, 'Cuvette-Ouest', 'CO', 1),
(760, 49, 'Kouilou', 'KO', 1),
(761, 49, 'Lekoumou', 'LE', 1),
(762, 49, 'Likouala', 'LI', 1),
(763, 49, 'Niari', 'NI', 1),
(764, 49, 'Plateaux', 'PL', 1),
(765, 49, 'Pool', 'PO', 1),
(766, 49, 'Sangha', 'SA', 1),
(767, 50, 'Pukapuka', 'PU', 1),
(768, 50, 'Rakahanga', 'RK', 1),
(769, 50, 'Manihiki', 'MK', 1),
(770, 50, 'Penrhyn', 'PE', 1),
(771, 50, 'Nassau Island', 'NI', 1),
(772, 50, 'Surwarrow', 'SU', 1),
(773, 50, 'Palmerston', 'PA', 1),
(774, 50, 'Aitutaki', 'AI', 1),
(775, 50, 'Manuae', 'MA', 1),
(776, 50, 'Takutea', 'TA', 1),
(777, 50, 'Mitiaro', 'MT', 1),
(778, 50, 'Atiu', 'AT', 1),
(779, 50, 'Mauke', 'MU', 1),
(780, 50, 'Rarotonga', 'RR', 1),
(781, 50, 'Mangaia', 'MG', 1),
(782, 51, 'Alajuela', 'AL', 1),
(783, 51, 'Cartago', 'CA', 1),
(784, 51, 'Guanacaste', 'GU', 1),
(785, 51, 'Heredia', 'HE', 1),
(786, 51, 'Limon', 'LI', 1),
(787, 51, 'Puntarenas', 'PU', 1),
(788, 51, 'San Jose', 'SJ', 1),
(789, 52, 'Abengourou', 'ABE', 1),
(790, 52, 'Abidjan', 'ABI', 1),
(791, 52, 'Aboisso', 'ABO', 1),
(792, 52, 'Adiake', 'ADI', 1),
(793, 52, 'Adzope', 'ADZ', 1),
(794, 52, 'Agboville', 'AGB', 1),
(795, 52, 'Agnibilekrou', 'AGN', 1),
(796, 52, 'Alepe', 'ALE', 1),
(797, 52, 'Bocanda', 'BOC', 1),
(798, 52, 'Bangolo', 'BAN', 1),
(799, 52, 'Beoumi', 'BEO', 1),
(800, 52, 'Biankouma', 'BIA', 1),
(801, 52, 'Bondoukou', 'BDK', 1),
(802, 52, 'Bongouanou', 'BGN', 1),
(803, 52, 'Bouafle', 'BFL', 1),
(804, 52, 'Bouake', 'BKE', 1),
(805, 52, 'Bouna', 'BNA', 1),
(806, 52, 'Boundiali', 'BDL', 1),
(807, 52, 'Dabakala', 'DKL', 1),
(808, 52, 'Dabou', 'DBU', 1),
(809, 52, 'Daloa', 'DAL', 1),
(810, 52, 'Danane', 'DAN', 1),
(811, 52, 'Daoukro', 'DAO', 1),
(812, 52, 'Dimbokro', 'DIM', 1),
(813, 52, 'Divo', 'DIV', 1),
(814, 52, 'Duekoue', 'DUE', 1),
(815, 52, 'Ferkessedougou', 'FER', 1),
(816, 52, 'Gagnoa', 'GAG', 1),
(817, 52, 'Grand-Bassam', 'GBA', 1),
(818, 52, 'Grand-Lahou', 'GLA', 1),
(819, 52, 'Guiglo', 'GUI', 1),
(820, 52, 'Issia', 'ISS', 1),
(821, 52, 'Jacqueville', 'JAC', 1),
(822, 52, 'Katiola', 'KAT', 1),
(823, 52, 'Korhogo', 'KOR', 1),
(824, 52, 'Lakota', 'LAK', 1),
(825, 52, 'Man', 'MAN', 1),
(826, 52, 'Mankono', 'MKN', 1),
(827, 52, 'Mbahiakro', 'MBA', 1),
(828, 52, 'Odienne', 'ODI', 1),
(829, 52, 'Oume', 'OUM', 1),
(830, 52, 'Sakassou', 'SAK', 1),
(831, 52, 'San-Pedro', 'SPE', 1),
(832, 52, 'Sassandra', 'SAS', 1),
(833, 52, 'Seguela', 'SEG', 1),
(834, 52, 'Sinfra', 'SIN', 1),
(835, 52, 'Soubre', 'SOU', 1),
(836, 52, 'Tabou', 'TAB', 1),
(837, 52, 'Tanda', 'TAN', 1),
(838, 52, 'Tiebissou', 'TIE', 1),
(839, 52, 'Tingrela', 'TIN', 1),
(840, 52, 'Tiassale', 'TIA', 1),
(841, 52, 'Touba', 'TBA', 1),
(842, 52, 'Toulepleu', 'TLP', 1),
(843, 52, 'Toumodi', 'TMD', 1),
(844, 52, 'Vavoua', 'VAV', 1),
(845, 52, 'Yamoussoukro', 'YAM', 1),
(846, 52, 'Zuenoula', 'ZUE', 1),
(847, 53, 'Bjelovarsko-bilogorska', 'BB', 1),
(848, 53, 'Grad Zagreb', 'GZ', 1),
(849, 53, 'Dubrovačko-neretvanska', 'DN', 1),
(850, 53, 'Istarska', 'IS', 1),
(851, 53, 'Karlovačka', 'KA', 1),
(852, 53, 'Koprivničko-križevačka', 'KK', 1),
(853, 53, 'Krapinsko-zagorska', 'KZ', 1),
(854, 53, 'Ličko-senjska', 'LS', 1),
(855, 53, 'Međimurska', 'ME', 1),
(856, 53, 'Osječko-baranjska', 'OB', 1),
(857, 53, 'Požeško-slavonska', 'PS', 1),
(858, 53, 'Primorsko-goranska', 'PG', 1),
(859, 53, 'Šibensko-kninska', 'SK', 1),
(860, 53, 'Sisačko-moslavačka', 'SM', 1),
(861, 53, 'Brodsko-posavska', 'BP', 1),
(862, 53, 'Splitsko-dalmatinska', 'SD', 1),
(863, 53, 'Varaždinska', 'VA', 1),
(864, 53, 'Virovitičko-podravska', 'VP', 1),
(865, 53, 'Vukovarsko-srijemska', 'VS', 1),
(866, 53, 'Zadarska', 'ZA', 1),
(867, 53, 'Zagrebačka', 'ZG', 1),
(868, 54, 'Camaguey', 'CA', 1),
(869, 54, 'Ciego de Avila', 'CD', 1),
(870, 54, 'Cienfuegos', 'CI', 1),
(871, 54, 'Ciudad de La Habana', 'CH', 1),
(872, 54, 'Granma', 'GR', 1),
(873, 54, 'Guantanamo', 'GU', 1),
(874, 54, 'Holguin', 'HO', 1),
(875, 54, 'Isla de la Juventud', 'IJ', 1),
(876, 54, 'La Habana', 'LH', 1),
(877, 54, 'Las Tunas', 'LT', 1),
(878, 54, 'Matanzas', 'MA', 1),
(879, 54, 'Pinar del Rio', 'PR', 1),
(880, 54, 'Sancti Spiritus', 'SS', 1),
(881, 54, 'Santiago de Cuba', 'SC', 1),
(882, 54, 'Villa Clara', 'VC', 1),
(883, 55, 'Famagusta', 'F', 1),
(884, 55, 'Kyrenia', 'K', 1),
(885, 55, 'Larnaca', 'A', 1),
(886, 55, 'Limassol', 'I', 1),
(887, 55, 'Nicosia', 'N', 1),
(888, 55, 'Paphos', 'P', 1),
(889, 56, 'Ústecký', 'U', 1),
(890, 56, 'Jihočeský', 'C', 1),
(891, 56, 'Jihomoravský', 'B', 1),
(892, 56, 'Karlovarský', 'K', 1),
(893, 56, 'Královehradecký', 'H', 1),
(894, 56, 'Liberecký', 'L', 1),
(895, 56, 'Moravskoslezský', 'T', 1),
(896, 56, 'Olomoucký', 'M', 1),
(897, 56, 'Pardubický', 'E', 1),
(898, 56, 'Plzeňský', 'P', 1),
(899, 56, 'Praha', 'A', 1),
(900, 56, 'Středočeský', 'S', 1),
(901, 56, 'Vysočina', 'J', 1),
(902, 56, 'Zlínský', 'Z', 1),
(903, 57, 'Arhus', 'AR', 1),
(904, 57, 'Bornholm', 'BH', 1),
(905, 57, 'Copenhagen', 'CO', 1),
(906, 57, 'Faroe Islands', 'FO', 1),
(907, 57, 'Frederiksborg', 'FR', 1),
(908, 57, 'Fyn', 'FY', 1),
(909, 57, 'Kobenhavn', 'KO', 1),
(910, 57, 'Nordjylland', 'NO', 1),
(911, 57, 'Ribe', 'RI', 1),
(912, 57, 'Ringkobing', 'RK', 1),
(913, 57, 'Roskilde', 'RO', 1),
(914, 57, 'Sonderjylland', 'SO', 1),
(915, 57, 'Storstrom', 'ST', 1),
(916, 57, 'Vejle', 'VK', 1),
(917, 57, 'Vestj&aelig;lland', 'VJ', 1),
(918, 57, 'Viborg', 'VB', 1),
(919, 58, '''Ali Sabih', 'S', 1),
(920, 58, 'Dikhil', 'K', 1),
(921, 58, 'Djibouti', 'J', 1),
(922, 58, 'Obock', 'O', 1),
(923, 58, 'Tadjoura', 'T', 1),
(924, 59, 'Saint Andrew Parish', 'AND', 1),
(925, 59, 'Saint David Parish', 'DAV', 1),
(926, 59, 'Saint George Parish', 'GEO', 1),
(927, 59, 'Saint John Parish', 'JOH', 1),
(928, 59, 'Saint Joseph Parish', 'JOS', 1),
(929, 59, 'Saint Luke Parish', 'LUK', 1),
(930, 59, 'Saint Mark Parish', 'MAR', 1),
(931, 59, 'Saint Patrick Parish', 'PAT', 1),
(932, 59, 'Saint Paul Parish', 'PAU', 1),
(933, 59, 'Saint Peter Parish', 'PET', 1),
(934, 60, 'Distrito Nacional', 'DN', 1),
(935, 60, 'Azua', 'AZ', 1),
(936, 60, 'Baoruco', 'BC', 1),
(937, 60, 'Barahona', 'BH', 1),
(938, 60, 'Dajabon', 'DJ', 1),
(939, 60, 'Duarte', 'DU', 1),
(940, 60, 'Elias Pina', 'EL', 1),
(941, 60, 'El Seybo', 'SY', 1),
(942, 60, 'Espaillat', 'ET', 1),
(943, 60, 'Hato Mayor', 'HM', 1),
(944, 60, 'Independencia', 'IN', 1),
(945, 60, 'La Altagracia', 'AL', 1),
(946, 60, 'La Romana', 'RO', 1),
(947, 60, 'La Vega', 'VE', 1),
(948, 60, 'Maria Trinidad Sanchez', 'MT', 1),
(949, 60, 'Monsenor Nouel', 'MN', 1),
(950, 60, 'Monte Cristi', 'MC', 1),
(951, 60, 'Monte Plata', 'MP', 1),
(952, 60, 'Pedernales', 'PD', 1),
(953, 60, 'Peravia (Bani)', 'PR', 1),
(954, 60, 'Puerto Plata', 'PP', 1),
(955, 60, 'Salcedo', 'SL', 1),
(956, 60, 'Samana', 'SM', 1),
(957, 60, 'Sanchez Ramirez', 'SH', 1),
(958, 60, 'San Cristobal', 'SC', 1),
(959, 60, 'San Jose de Ocoa', 'JO', 1),
(960, 60, 'San Juan', 'SJ', 1),
(961, 60, 'San Pedro de Macoris', 'PM', 1),
(962, 60, 'Santiago', 'SA', 1),
(963, 60, 'Santiago Rodriguez', 'ST', 1),
(964, 60, 'Santo Domingo', 'SD', 1),
(965, 60, 'Valverde', 'VA', 1),
(966, 61, 'Aileu', 'AL', 1),
(967, 61, 'Ainaro', 'AN', 1),
(968, 61, 'Baucau', 'BA', 1),
(969, 61, 'Bobonaro', 'BO', 1),
(970, 61, 'Cova Lima', 'CO', 1),
(971, 61, 'Dili', 'DI', 1),
(972, 61, 'Ermera', 'ER', 1),
(973, 61, 'Lautem', 'LA', 1),
(974, 61, 'Liquica', 'LI', 1),
(975, 61, 'Manatuto', 'MT', 1),
(976, 61, 'Manufahi', 'MF', 1),
(977, 61, 'Oecussi', 'OE', 1),
(978, 61, 'Viqueque', 'VI', 1),
(979, 62, 'Azuay', 'AZU', 1),
(980, 62, 'Bolivar', 'BOL', 1),
(981, 62, 'Ca&ntilde;ar', 'CAN', 1),
(982, 62, 'Carchi', 'CAR', 1),
(983, 62, 'Chimborazo', 'CHI', 1),
(984, 62, 'Cotopaxi', 'COT', 1),
(985, 62, 'El Oro', 'EOR', 1),
(986, 62, 'Esmeraldas', 'ESM', 1),
(987, 62, 'Gal&aacute;pagos', 'GPS', 1),
(988, 62, 'Guayas', 'GUA', 1),
(989, 62, 'Imbabura', 'IMB', 1),
(990, 62, 'Loja', 'LOJ', 1),
(991, 62, 'Los Rios', 'LRO', 1),
(992, 62, 'Manab&iacute;', 'MAN', 1),
(993, 62, 'Morona Santiago', 'MSA', 1),
(994, 62, 'Napo', 'NAP', 1),
(995, 62, 'Orellana', 'ORE', 1),
(996, 62, 'Pastaza', 'PAS', 1),
(997, 62, 'Pichincha', 'PIC', 1),
(998, 62, 'Sucumb&iacute;os', 'SUC', 1),
(999, 62, 'Tungurahua', 'TUN', 1),
(1000, 62, 'Zamora Chinchipe', 'ZCH', 1),
(1001, 63, 'Ad Daqahliyah', 'DHY', 1),
(1002, 63, 'Al Bahr al Ahmar', 'BAM', 1),
(1003, 63, 'Al Buhayrah', 'BHY', 1),
(1004, 63, 'Al Fayyum', 'FYM', 1),
(1005, 63, 'Al Gharbiyah', 'GBY', 1),
(1006, 63, 'Al Iskandariyah', 'IDR', 1),
(1007, 63, 'Al Isma''iliyah', 'IML', 1),
(1008, 63, 'Al Jizah', 'JZH', 1),
(1009, 63, 'Al Minufiyah', 'MFY', 1),
(1010, 63, 'Al Minya', 'MNY', 1),
(1011, 63, 'Al Qahirah', 'QHR', 1),
(1012, 63, 'Al Qalyubiyah', 'QLY', 1),
(1013, 63, 'Al Wadi al Jadid', 'WJD', 1),
(1014, 63, 'Ash Sharqiyah', 'SHQ', 1),
(1015, 63, 'As Suways', 'SWY', 1),
(1016, 63, 'Aswan', 'ASW', 1),
(1017, 63, 'Asyut', 'ASY', 1),
(1018, 63, 'Bani Suwayf', 'BSW', 1),
(1019, 63, 'Bur Sa''id', 'BSD', 1),
(1020, 63, 'Dumyat', 'DMY', 1),
(1021, 63, 'Janub Sina''', 'JNS', 1),
(1022, 63, 'Kafr ash Shaykh', 'KSH', 1),
(1023, 63, 'Matruh', 'MAT', 1),
(1024, 63, 'Qina', 'QIN', 1),
(1025, 63, 'Shamal Sina''', 'SHS', 1),
(1026, 63, 'Suhaj', 'SUH', 1),
(1027, 64, 'Ahuachapan', 'AH', 1),
(1028, 64, 'Cabanas', 'CA', 1),
(1029, 64, 'Chalatenango', 'CH', 1),
(1030, 64, 'Cuscatlan', 'CU', 1),
(1031, 64, 'La Libertad', 'LB', 1),
(1032, 64, 'La Paz', 'PZ', 1),
(1033, 64, 'La Union', 'UN', 1),
(1034, 64, 'Morazan', 'MO', 1),
(1035, 64, 'San Miguel', 'SM', 1),
(1036, 64, 'San Salvador', 'SS', 1),
(1037, 64, 'San Vicente', 'SV', 1),
(1038, 64, 'Santa Ana', 'SA', 1),
(1039, 64, 'Sonsonate', 'SO', 1),
(1040, 64, 'Usulutan', 'US', 1),
(1041, 65, 'Provincia Annobon', 'AN', 1),
(1042, 65, 'Provincia Bioko Norte', 'BN', 1),
(1043, 65, 'Provincia Bioko Sur', 'BS', 1),
(1044, 65, 'Provincia Centro Sur', 'CS', 1),
(1045, 65, 'Provincia Kie-Ntem', 'KN', 1),
(1046, 65, 'Provincia Litoral', 'LI', 1),
(1047, 65, 'Provincia Wele-Nzas', 'WN', 1),
(1048, 66, 'Central (Maekel)', 'MA', 1),
(1049, 66, 'Anseba (Keren)', 'KE', 1),
(1050, 66, 'Southern Red Sea (Debub-Keih-Bahri)', 'DK', 1),
(1051, 66, 'Northern Red Sea (Semien-Keih-Bahri)', 'SK', 1),
(1052, 66, 'Southern (Debub)', 'DE', 1),
(1053, 66, 'Gash-Barka (Barentu)', 'BR', 1),
(1054, 67, 'Harjumaa (Tallinn)', 'HA', 1),
(1055, 67, 'Hiiumaa (Kardla)', 'HI', 1),
(1056, 67, 'Ida-Virumaa (Johvi)', 'IV', 1),
(1057, 67, 'Jarvamaa (Paide)', 'JA', 1),
(1058, 67, 'Jogevamaa (Jogeva)', 'JO', 1),
(1059, 67, 'Laane-Virumaa (Rakvere)', 'LV', 1),
(1060, 67, 'Laanemaa (Haapsalu)', 'LA', 1),
(1061, 67, 'Parnumaa (Parnu)', 'PA', 1),
(1062, 67, 'Polvamaa (Polva)', 'PO', 1),
(1063, 67, 'Raplamaa (Rapla)', 'RA', 1),
(1064, 67, 'Saaremaa (Kuessaare)', 'SA', 1),
(1065, 67, 'Tartumaa (Tartu)', 'TA', 1),
(1066, 67, 'Valgamaa (Valga)', 'VA', 1),
(1067, 67, 'Viljandimaa (Viljandi)', 'VI', 1),
(1068, 67, 'Vorumaa (Voru)', 'VO', 1),
(1069, 68, 'Afar', 'AF', 1),
(1070, 68, 'Amhara', 'AH', 1),
(1071, 68, 'Benishangul-Gumaz', 'BG', 1),
(1072, 68, 'Gambela', 'GB', 1),
(1073, 68, 'Hariai', 'HR', 1),
(1074, 68, 'Oromia', 'OR', 1),
(1075, 68, 'Somali', 'SM', 1),
(1076, 68, 'Southern Nations - Nationalities and Peoples Region', 'SN', 1),
(1077, 68, 'Tigray', 'TG', 1),
(1078, 68, 'Addis Ababa', 'AA', 1),
(1079, 68, 'Dire Dawa', 'DD', 1),
(1080, 71, 'Central Division', 'C', 1),
(1081, 71, 'Northern Division', 'N', 1),
(1082, 71, 'Eastern Division', 'E', 1),
(1083, 71, 'Western Division', 'W', 1),
(1084, 71, 'Rotuma', 'R', 1),
(1085, 72, 'Ahvenanmaan lääni', 'AL', 1),
(1086, 72, 'Etelä-Suomen lääni', 'ES', 1),
(1087, 72, 'Itä-Suomen lääni', 'IS', 1),
(1088, 72, 'Länsi-Suomen lääni', 'LS', 1),
(1089, 72, 'Lapin lääni', 'LA', 1),
(1090, 72, 'Oulun lääni', 'OU', 1),
(1114, 74, 'Ain', '01', 1),
(1115, 74, 'Aisne', '02', 1),
(1116, 74, 'Allier', '03', 1),
(1117, 74, 'Alpes de Haute Provence', '04', 1),
(1118, 74, 'Hautes-Alpes', '05', 1),
(1119, 74, 'Alpes Maritimes', '06', 1),
(1120, 74, 'Ard&egrave;che', '07', 1),
(1121, 74, 'Ardennes', '08', 1),
(1122, 74, 'Ari&egrave;ge', '09', 1),
(1123, 74, 'Aube', '10', 1),
(1124, 74, 'Aude', '11', 1),
(1125, 74, 'Aveyron', '12', 1),
(1126, 74, 'Bouches du Rh&ocirc;ne', '13', 1),
(1127, 74, 'Calvados', '14', 1),
(1128, 74, 'Cantal', '15', 1),
(1129, 74, 'Charente', '16', 1),
(1130, 74, 'Charente Maritime', '17', 1),
(1131, 74, 'Cher', '18', 1),
(1132, 74, 'Corr&egrave;ze', '19', 1),
(1133, 74, 'Corse du Sud', '2A', 1),
(1134, 74, 'Haute Corse', '2B', 1),
(1135, 74, 'C&ocirc;te d&#039;or', '21', 1),
(1136, 74, 'C&ocirc;tes d&#039;Armor', '22', 1),
(1137, 74, 'Creuse', '23', 1),
(1138, 74, 'Dordogne', '24', 1),
(1139, 74, 'Doubs', '25', 1),
(1140, 74, 'Dr&ocirc;me', '26', 1),
(1141, 74, 'Eure', '27', 1),
(1142, 74, 'Eure et Loir', '28', 1),
(1143, 74, 'Finist&egrave;re', '29', 1),
(1144, 74, 'Gard', '30', 1),
(1145, 74, 'Haute Garonne', '31', 1),
(1146, 74, 'Gers', '32', 1),
(1147, 74, 'Gironde', '33', 1),
(1148, 74, 'H&eacute;rault', '34', 1),
(1149, 74, 'Ille et Vilaine', '35', 1),
(1150, 74, 'Indre', '36', 1),
(1151, 74, 'Indre et Loire', '37', 1),
(1152, 74, 'Is&eacute;re', '38', 1),
(1153, 74, 'Jura', '39', 1),
(1154, 74, 'Landes', '40', 1),
(1155, 74, 'Loir et Cher', '41', 1),
(1156, 74, 'Loire', '42', 1),
(1157, 74, 'Haute Loire', '43', 1),
(1158, 74, 'Loire Atlantique', '44', 1),
(1159, 74, 'Loiret', '45', 1),
(1160, 74, 'Lot', '46', 1),
(1161, 74, 'Lot et Garonne', '47', 1),
(1162, 74, 'Loz&egrave;re', '48', 1),
(1163, 74, 'Maine et Loire', '49', 1),
(1164, 74, 'Manche', '50', 1),
(1165, 74, 'Marne', '51', 1),
(1166, 74, 'Haute Marne', '52', 1),
(1167, 74, 'Mayenne', '53', 1),
(1168, 74, 'Meurthe et Moselle', '54', 1),
(1169, 74, 'Meuse', '55', 1),
(1170, 74, 'Morbihan', '56', 1),
(1171, 74, 'Moselle', '57', 1),
(1172, 74, 'Ni&egrave;vre', '58', 1),
(1173, 74, 'Nord', '59', 1),
(1174, 74, 'Oise', '60', 1),
(1175, 74, 'Orne', '61', 1),
(1176, 74, 'Pas de Calais', '62', 1),
(1177, 74, 'Puy de D&ocirc;me', '63', 1),
(1178, 74, 'Pyr&eacute;n&eacute;es Atlantiques', '64', 1),
(1179, 74, 'Hautes Pyr&eacute;n&eacute;es', '65', 1),
(1180, 74, 'Pyr&eacute;n&eacute;es Orientales', '66', 1),
(1181, 74, 'Bas Rhin', '67', 1),
(1182, 74, 'Haut Rhin', '68', 1),
(1183, 74, 'Rh&ocirc;ne', '69', 1),
(1184, 74, 'Haute Sa&ocirc;ne', '70', 1),
(1185, 74, 'Sa&ocirc;ne et Loire', '71', 1),
(1186, 74, 'Sarthe', '72', 1),
(1187, 74, 'Savoie', '73', 1),
(1188, 74, 'Haute Savoie', '74', 1),
(1189, 74, 'Paris', '75', 1),
(1190, 74, 'Seine Maritime', '76', 1),
(1191, 74, 'Seine et Marne', '77', 1),
(1192, 74, 'Yvelines', '78', 1),
(1193, 74, 'Deux S&egrave;vres', '79', 1),
(1194, 74, 'Somme', '80', 1),
(1195, 74, 'Tarn', '81', 1),
(1196, 74, 'Tarn et Garonne', '82', 1),
(1197, 74, 'Var', '83', 1),
(1198, 74, 'Vaucluse', '84', 1),
(1199, 74, 'Vend&eacute;e', '85', 1),
(1200, 74, 'Vienne', '86', 1),
(1201, 74, 'Haute Vienne', '87', 1),
(1202, 74, 'Vosges', '88', 1),
(1203, 74, 'Yonne', '89', 1),
(1204, 74, 'Territoire de Belfort', '90', 1),
(1205, 74, 'Essonne', '91', 1),
(1206, 74, 'Hauts de Seine', '92', 1),
(1207, 74, 'Seine St-Denis', '93', 1),
(1208, 74, 'Val de Marne', '94', 1),
(1209, 74, 'Val d''Oise', '95', 1),
(1210, 76, 'Archipel des Marquises', 'M', 1),
(1211, 76, 'Archipel des Tuamotu', 'T', 1),
(1212, 76, 'Archipel des Tubuai', 'I', 1),
(1213, 76, 'Iles du Vent', 'V', 1),
(1214, 76, 'Iles Sous-le-Vent', 'S', 1),
(1215, 77, 'Iles Crozet', 'C', 1),
(1216, 77, 'Iles Kerguelen', 'K', 1),
(1217, 77, 'Ile Amsterdam', 'A', 1),
(1218, 77, 'Ile Saint-Paul', 'P', 1),
(1219, 77, 'Adelie Land', 'D', 1),
(1220, 78, 'Estuaire', 'ES', 1),
(1221, 78, 'Haut-Ogooue', 'HO', 1),
(1222, 78, 'Moyen-Ogooue', 'MO', 1),
(1223, 78, 'Ngounie', 'NG', 1),
(1224, 78, 'Nyanga', 'NY', 1),
(1225, 78, 'Ogooue-Ivindo', 'OI', 1),
(1226, 78, 'Ogooue-Lolo', 'OL', 1),
(1227, 78, 'Ogooue-Maritime', 'OM', 1),
(1228, 78, 'Woleu-Ntem', 'WN', 1),
(1229, 79, 'Banjul', 'BJ', 1),
(1230, 79, 'Basse', 'BS', 1),
(1231, 79, 'Brikama', 'BR', 1),
(1232, 79, 'Janjangbure', 'JA', 1),
(1233, 79, 'Kanifeng', 'KA', 1),
(1234, 79, 'Kerewan', 'KE', 1),
(1235, 79, 'Kuntaur', 'KU', 1),
(1236, 79, 'Mansakonko', 'MA', 1),
(1237, 79, 'Lower River', 'LR', 1),
(1238, 79, 'Central River', 'CR', 1),
(1239, 79, 'North Bank', 'NB', 1),
(1240, 79, 'Upper River', 'UR', 1),
(1241, 79, 'Western', 'WE', 1),
(1242, 80, 'Abkhazia', 'AB', 1),
(1243, 80, 'Ajaria', 'AJ', 1),
(1244, 80, 'Tbilisi', 'TB', 1),
(1245, 80, 'Guria', 'GU', 1),
(1246, 80, 'Imereti', 'IM', 1),
(1247, 80, 'Kakheti', 'KA', 1),
(1248, 80, 'Kvemo Kartli', 'KK', 1),
(1249, 80, 'Mtskheta-Mtianeti', 'MM', 1),
(1250, 80, 'Racha Lechkhumi and Kvemo Svanet', 'RL', 1),
(1251, 80, 'Samegrelo-Zemo Svaneti', 'SZ', 1),
(1252, 80, 'Samtskhe-Javakheti', 'SJ', 1),
(1253, 80, 'Shida Kartli', 'SK', 1),
(1254, 81, 'Baden-W&uuml;rttemberg', 'BAW', 1),
(1255, 81, 'Bayern', 'BAY', 1),
(1256, 81, 'Berlin', 'BER', 1),
(1257, 81, 'Brandenburg', 'BRG', 1),
(1258, 81, 'Bremen', 'BRE', 1),
(1259, 81, 'Hamburg', 'HAM', 1),
(1260, 81, 'Hessen', 'HES', 1),
(1261, 81, 'Mecklenburg-Vorpommern', 'MEC', 1),
(1262, 81, 'Niedersachsen', 'NDS', 1),
(1263, 81, 'Nordrhein-Westfalen', 'NRW', 1),
(1264, 81, 'Rheinland-Pfalz', 'RHE', 1),
(1265, 81, 'Saarland', 'SAR', 1),
(1266, 81, 'Sachsen', 'SAS', 1),
(1267, 81, 'Sachsen-Anhalt', 'SAC', 1),
(1268, 81, 'Schleswig-Holstein', 'SCN', 1),
(1269, 81, 'Th&uuml;ringen', 'THE', 1),
(1270, 82, 'Ashanti Region', 'AS', 1),
(1271, 82, 'Brong-Ahafo Region', 'BA', 1),
(1272, 82, 'Central Region', 'CE', 1),
(1273, 82, 'Eastern Region', 'EA', 1),
(1274, 82, 'Greater Accra Region', 'GA', 1),
(1275, 82, 'Northern Region', 'NO', 1),
(1276, 82, 'Upper East Region', 'UE', 1),
(1277, 82, 'Upper West Region', 'UW', 1),
(1278, 82, 'Volta Region', 'VO', 1),
(1279, 82, 'Western Region', 'WE', 1),
(1280, 84, 'Attica', 'AT', 1),
(1281, 84, 'Central Greece', 'CN', 1),
(1282, 84, 'Central Macedonia', 'CM', 1),
(1283, 84, 'Crete', 'CR', 1),
(1284, 84, 'East Macedonia and Thrace', 'EM', 1),
(1285, 84, 'Epirus', 'EP', 1),
(1286, 84, 'Ionian Islands', 'II', 1),
(1287, 84, 'North Aegean', 'NA', 1),
(1288, 84, 'Peloponnesos', 'PP', 1),
(1289, 84, 'South Aegean', 'SA', 1),
(1290, 84, 'Thessaly', 'TH', 1),
(1291, 84, 'West Greece', 'WG', 1),
(1292, 84, 'West Macedonia', 'WM', 1),
(1293, 85, 'Avannaa', 'A', 1),
(1294, 85, 'Tunu', 'T', 1),
(1295, 85, 'Kitaa', 'K', 1),
(1296, 86, 'Saint Andrew', 'A', 1),
(1297, 86, 'Saint David', 'D', 1),
(1298, 86, 'Saint George', 'G', 1),
(1299, 86, 'Saint John', 'J', 1),
(1300, 86, 'Saint Mark', 'M', 1),
(1301, 86, 'Saint Patrick', 'P', 1),
(1302, 86, 'Carriacou', 'C', 1),
(1303, 86, 'Petit Martinique', 'Q', 1),
(1304, 89, 'Alta Verapaz', 'AV', 1),
(1305, 89, 'Baja Verapaz', 'BV', 1),
(1306, 89, 'Chimaltenango', 'CM', 1),
(1307, 89, 'Chiquimula', 'CQ', 1),
(1308, 89, 'El Peten', 'PE', 1),
(1309, 89, 'El Progreso', 'PR', 1),
(1310, 89, 'El Quiche', 'QC', 1),
(1311, 89, 'Escuintla', 'ES', 1),
(1312, 89, 'Guatemala', 'GU', 1),
(1313, 89, 'Huehuetenango', 'HU', 1),
(1314, 89, 'Izabal', 'IZ', 1),
(1315, 89, 'Jalapa', 'JA', 1),
(1316, 89, 'Jutiapa', 'JU', 1),
(1317, 89, 'Quetzaltenango', 'QZ', 1),
(1318, 89, 'Retalhuleu', 'RE', 1),
(1319, 89, 'Sacatepequez', 'ST', 1),
(1320, 89, 'San Marcos', 'SM', 1),
(1321, 89, 'Santa Rosa', 'SR', 1),
(1322, 89, 'Solola', 'SO', 1),
(1323, 89, 'Suchitepequez', 'SU', 1),
(1324, 89, 'Totonicapan', 'TO', 1),
(1325, 89, 'Zacapa', 'ZA', 1),
(1326, 90, 'Conakry', 'CNK', 1),
(1327, 90, 'Beyla', 'BYL', 1),
(1328, 90, 'Boffa', 'BFA', 1),
(1329, 90, 'Boke', 'BOK', 1),
(1330, 90, 'Coyah', 'COY', 1),
(1331, 90, 'Dabola', 'DBL', 1),
(1332, 90, 'Dalaba', 'DLB', 1),
(1333, 90, 'Dinguiraye', 'DGR', 1),
(1334, 90, 'Dubreka', 'DBR', 1),
(1335, 90, 'Faranah', 'FRN', 1),
(1336, 90, 'Forecariah', 'FRC', 1),
(1337, 90, 'Fria', 'FRI', 1),
(1338, 90, 'Gaoual', 'GAO', 1),
(1339, 90, 'Gueckedou', 'GCD', 1),
(1340, 90, 'Kankan', 'KNK', 1),
(1341, 90, 'Kerouane', 'KRN', 1),
(1342, 90, 'Kindia', 'KND', 1),
(1343, 90, 'Kissidougou', 'KSD', 1),
(1344, 90, 'Koubia', 'KBA', 1),
(1345, 90, 'Koundara', 'KDA', 1),
(1346, 90, 'Kouroussa', 'KRA', 1),
(1347, 90, 'Labe', 'LAB', 1),
(1348, 90, 'Lelouma', 'LLM', 1),
(1349, 90, 'Lola', 'LOL', 1),
(1350, 90, 'Macenta', 'MCT', 1),
(1351, 90, 'Mali', 'MAL', 1),
(1352, 90, 'Mamou', 'MAM', 1),
(1353, 90, 'Mandiana', 'MAN', 1),
(1354, 90, 'Nzerekore', 'NZR', 1),
(1355, 90, 'Pita', 'PIT', 1),
(1356, 90, 'Siguiri', 'SIG', 1),
(1357, 90, 'Telimele', 'TLM', 1),
(1358, 90, 'Tougue', 'TOG', 1),
(1359, 90, 'Yomou', 'YOM', 1),
(1360, 91, 'Bafata Region', 'BF', 1),
(1361, 91, 'Biombo Region', 'BB', 1),
(1362, 91, 'Bissau Region', 'BS', 1),
(1363, 91, 'Bolama Region', 'BL', 1),
(1364, 91, 'Cacheu Region', 'CA', 1),
(1365, 91, 'Gabu Region', 'GA', 1),
(1366, 91, 'Oio Region', 'OI', 1),
(1367, 91, 'Quinara Region', 'QU', 1),
(1368, 91, 'Tombali Region', 'TO', 1),
(1369, 92, 'Barima-Waini', 'BW', 1),
(1370, 92, 'Cuyuni-Mazaruni', 'CM', 1),
(1371, 92, 'Demerara-Mahaica', 'DM', 1),
(1372, 92, 'East Berbice-Corentyne', 'EC', 1),
(1373, 92, 'Essequibo Islands-West Demerara', 'EW', 1),
(1374, 92, 'Mahaica-Berbice', 'MB', 1),
(1375, 92, 'Pomeroon-Supenaam', 'PM', 1),
(1376, 92, 'Potaro-Siparuni', 'PI', 1),
(1377, 92, 'Upper Demerara-Berbice', 'UD', 1),
(1378, 92, 'Upper Takutu-Upper Essequibo', 'UT', 1),
(1379, 93, 'Artibonite', 'AR', 1),
(1380, 93, 'Centre', 'CE', 1),
(1381, 93, 'Grand''Anse', 'GA', 1),
(1382, 93, 'Nord', 'ND', 1),
(1383, 93, 'Nord-Est', 'NE', 1),
(1384, 93, 'Nord-Ouest', 'NO', 1),
(1385, 93, 'Ouest', 'OU', 1),
(1386, 93, 'Sud', 'SD', 1),
(1387, 93, 'Sud-Est', 'SE', 1),
(1388, 94, 'Flat Island', 'F', 1),
(1389, 94, 'McDonald Island', 'M', 1),
(1390, 94, 'Shag Island', 'S', 1),
(1391, 94, 'Heard Island', 'H', 1),
(1392, 95, 'Atlantida', 'AT', 1),
(1393, 95, 'Choluteca', 'CH', 1),
(1394, 95, 'Colon', 'CL', 1),
(1395, 95, 'Comayagua', 'CM', 1),
(1396, 95, 'Copan', 'CP', 1),
(1397, 95, 'Cortes', 'CR', 1),
(1398, 95, 'El Paraiso', 'PA', 1),
(1399, 95, 'Francisco Morazan', 'FM', 1),
(1400, 95, 'Gracias a Dios', 'GD', 1),
(1401, 95, 'Intibuca', 'IN', 1),
(1402, 95, 'Islas de la Bahia (Bay Islands)', 'IB', 1),
(1403, 95, 'La Paz', 'PZ', 1),
(1404, 95, 'Lempira', 'LE', 1),
(1405, 95, 'Ocotepeque', 'OC', 1),
(1406, 95, 'Olancho', 'OL', 1),
(1407, 95, 'Santa Barbara', 'SB', 1),
(1408, 95, 'Valle', 'VA', 1),
(1409, 95, 'Yoro', 'YO', 1),
(1410, 96, 'Central and Western Hong Kong Island', 'HCW', 1),
(1411, 96, 'Eastern Hong Kong Island', 'HEA', 1),
(1412, 96, 'Southern Hong Kong Island', 'HSO', 1),
(1413, 96, 'Wan Chai Hong Kong Island', 'HWC', 1),
(1414, 96, 'Kowloon City Kowloon', 'KKC', 1),
(1415, 96, 'Kwun Tong Kowloon', 'KKT', 1),
(1416, 96, 'Sham Shui Po Kowloon', 'KSS', 1),
(1417, 96, 'Wong Tai Sin Kowloon', 'KWT', 1),
(1418, 96, 'Yau Tsim Mong Kowloon', 'KYT', 1),
(1419, 96, 'Islands New Territories', 'NIS', 1),
(1420, 96, 'Kwai Tsing New Territories', 'NKT', 1),
(1421, 96, 'North New Territories', 'NNO', 1),
(1422, 96, 'Sai Kung New Territories', 'NSK', 1),
(1423, 96, 'Sha Tin New Territories', 'NST', 1),
(1424, 96, 'Tai Po New Territories', 'NTP', 1),
(1425, 96, 'Tsuen Wan New Territories', 'NTW', 1),
(1426, 96, 'Tuen Mun New Territories', 'NTM', 1),
(1427, 96, 'Yuen Long New Territories', 'NYL', 1),
(1467, 98, 'Austurland', 'AL', 1),
(1468, 98, 'Hofuoborgarsvaeoi', 'HF', 1),
(1469, 98, 'Norourland eystra', 'NE', 1),
(1470, 98, 'Norourland vestra', 'NV', 1),
(1471, 98, 'Suourland', 'SL', 1),
(1472, 98, 'Suournes', 'SN', 1),
(1473, 98, 'Vestfiroir', 'VF', 1),
(1474, 98, 'Vesturland', 'VL', 1),
(1475, 99, 'Andaman and Nicobar Islands', 'AN', 1),
(1476, 99, 'Andhra Pradesh', 'AP', 1),
(1477, 99, 'Arunachal Pradesh', 'AR', 1),
(1478, 99, 'Assam', 'AS', 1),
(1479, 99, 'Bihar', 'BI', 1),
(1480, 99, 'Chandigarh', 'CH', 1),
(1481, 99, 'Dadra and Nagar Haveli', 'DA', 1),
(1482, 99, 'Daman and Diu', 'DM', 1),
(1483, 99, 'Delhi', 'DE', 1),
(1484, 99, 'Goa', 'GO', 1),
(1485, 99, 'Gujarat', 'GU', 1),
(1486, 99, 'Haryana', 'HA', 1),
(1487, 99, 'Himachal Pradesh', 'HP', 1),
(1488, 99, 'Jammu and Kashmir', 'JA', 1),
(1489, 99, 'Karnataka', 'KA', 1),
(1490, 99, 'Kerala', 'KE', 1),
(1491, 99, 'Lakshadweep Islands', 'LI', 1),
(1492, 99, 'Madhya Pradesh', 'MP', 1),
(1493, 99, 'Maharashtra', 'MA', 1),
(1494, 99, 'Manipur', 'MN', 1),
(1495, 99, 'Meghalaya', 'ME', 1),
(1496, 99, 'Mizoram', 'MI', 1),
(1497, 99, 'Nagaland', 'NA', 1),
(1498, 99, 'Orissa', 'OR', 1),
(1499, 99, 'Puducherry', 'PO', 1),
(1500, 99, 'Punjab', 'PU', 1),
(1501, 99, 'Rajasthan', 'RA', 1),
(1502, 99, 'Sikkim', 'SI', 1),
(1503, 99, 'Tamil Nadu', 'TN', 1),
(1504, 99, 'Tripura', 'TR', 1),
(1505, 99, 'Uttar Pradesh', 'UP', 1),
(1506, 99, 'West Bengal', 'WB', 1),
(1507, 100, 'Aceh', 'AC', 1),
(1508, 100, 'Bali', 'BA', 1),
(1509, 100, 'Banten', 'BT', 1),
(1510, 100, 'Bengkulu', 'BE', 1),
(1511, 100, 'BoDeTaBek', 'BD', 1),
(1512, 100, 'Gorontalo', 'GO', 1),
(1513, 100, 'Jakarta Raya', 'JK', 1),
(1514, 100, 'Jambi', 'JA', 1),
(1515, 100, 'Jawa Barat', 'JB', 1),
(1516, 100, 'Jawa Tengah', 'JT', 1),
(1517, 100, 'Jawa Timur', 'JI', 1),
(1518, 100, 'Kalimantan Barat', 'KB', 1),
(1519, 100, 'Kalimantan Selatan', 'KS', 1),
(1520, 100, 'Kalimantan Tengah', 'KT', 1),
(1521, 100, 'Kalimantan Timur', 'KI', 1),
(1522, 100, 'Kepulauan Bangka Belitung', 'BB', 1),
(1523, 100, 'Lampung', 'LA', 1),
(1524, 100, 'Maluku', 'MA', 1),
(1525, 100, 'Maluku Utara', 'MU', 1),
(1526, 100, 'Nusa Tenggara Barat', 'NB', 1),
(1527, 100, 'Nusa Tenggara Timur', 'NT', 1),
(1528, 100, 'Papua', 'PA', 1),
(1529, 100, 'Riau', 'RI', 1),
(1530, 100, 'Sulawesi Selatan', 'SN', 1),
(1531, 100, 'Sulawesi Tengah', 'ST', 1),
(1532, 100, 'Sulawesi Tenggara', 'SG', 1),
(1533, 100, 'Sulawesi Utara', 'SA', 1),
(1534, 100, 'Sumatera Barat', 'SB', 1),
(1535, 100, 'Sumatera Selatan', 'SS', 1),
(1536, 100, 'Sumatera Utara', 'SU', 1),
(1537, 100, 'Yogyakarta', 'YO', 1),
(1538, 101, 'Tehran', 'TEH', 1),
(1539, 101, 'Qom', 'QOM', 1),
(1540, 101, 'Markazi', 'MKZ', 1),
(1541, 101, 'Qazvin', 'QAZ', 1),
(1542, 101, 'Gilan', 'GIL', 1),
(1543, 101, 'Ardabil', 'ARD', 1),
(1544, 101, 'Zanjan', 'ZAN', 1),
(1545, 101, 'East Azarbaijan', 'EAZ', 1),
(1546, 101, 'West Azarbaijan', 'WEZ', 1),
(1547, 101, 'Kurdistan', 'KRD', 1),
(1548, 101, 'Hamadan', 'HMD', 1),
(1549, 101, 'Kermanshah', 'KRM', 1),
(1550, 101, 'Ilam', 'ILM', 1),
(1551, 101, 'Lorestan', 'LRS', 1),
(1552, 101, 'Khuzestan', 'KZT', 1),
(1553, 101, 'Chahar Mahaal and Bakhtiari', 'CMB', 1),
(1554, 101, 'Kohkiluyeh and Buyer Ahmad', 'KBA', 1),
(1555, 101, 'Bushehr', 'BSH', 1),
(1556, 101, 'Fars', 'FAR', 1),
(1557, 101, 'Hormozgan', 'HRM', 1),
(1558, 101, 'Sistan and Baluchistan', 'SBL', 1),
(1559, 101, 'Kerman', 'KRB', 1),
(1560, 101, 'Yazd', 'YZD', 1),
(1561, 101, 'Esfahan', 'EFH', 1),
(1562, 101, 'Semnan', 'SMN', 1),
(1563, 101, 'Mazandaran', 'MZD', 1),
(1564, 101, 'Golestan', 'GLS', 1),
(1565, 101, 'North Khorasan', 'NKH', 1),
(1566, 101, 'Razavi Khorasan', 'RKH', 1),
(1567, 101, 'South Khorasan', 'SKH', 1),
(1568, 102, 'Baghdad', 'BD', 1),
(1569, 102, 'Salah ad Din', 'SD', 1),
(1570, 102, 'Diyala', 'DY', 1),
(1571, 102, 'Wasit', 'WS', 1),
(1572, 102, 'Maysan', 'MY', 1),
(1573, 102, 'Al Basrah', 'BA', 1),
(1574, 102, 'Dhi Qar', 'DQ', 1),
(1575, 102, 'Al Muthanna', 'MU', 1),
(1576, 102, 'Al Qadisyah', 'QA', 1),
(1577, 102, 'Babil', 'BB', 1),
(1578, 102, 'Al Karbala', 'KB', 1),
(1579, 102, 'An Najaf', 'NJ', 1),
(1580, 102, 'Al Anbar', 'AB', 1),
(1581, 102, 'Ninawa', 'NN', 1),
(1582, 102, 'Dahuk', 'DH', 1),
(1583, 102, 'Arbil', 'AL', 1),
(1584, 102, 'At Ta''mim', 'TM', 1),
(1585, 102, 'As Sulaymaniyah', 'SL', 1),
(1586, 103, 'Carlow', 'CA', 1),
(1587, 103, 'Cavan', 'CV', 1),
(1588, 103, 'Clare', 'CL', 1),
(1589, 103, 'Cork', 'CO', 1),
(1590, 103, 'Donegal', 'DO', 1),
(1591, 103, 'Dublin', 'DU', 1),
(1592, 103, 'Galway', 'GA', 1),
(1593, 103, 'Kerry', 'KE', 1),
(1594, 103, 'Kildare', 'KI', 1),
(1595, 103, 'Kilkenny', 'KL', 1),
(1596, 103, 'Laois', 'LA', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(1597, 103, 'Leitrim', 'LE', 1),
(1598, 103, 'Limerick', 'LI', 1),
(1599, 103, 'Longford', 'LO', 1),
(1600, 103, 'Louth', 'LU', 1),
(1601, 103, 'Mayo', 'MA', 1),
(1602, 103, 'Meath', 'ME', 1),
(1603, 103, 'Monaghan', 'MO', 1),
(1604, 103, 'Offaly', 'OF', 1),
(1605, 103, 'Roscommon', 'RO', 1),
(1606, 103, 'Sligo', 'SL', 1),
(1607, 103, 'Tipperary', 'TI', 1),
(1608, 103, 'Waterford', 'WA', 1),
(1609, 103, 'Westmeath', 'WE', 1),
(1610, 103, 'Wexford', 'WX', 1),
(1611, 103, 'Wicklow', 'WI', 1),
(1612, 104, 'Be''er Sheva', 'BS', 1),
(1613, 104, 'Bika''at Hayarden', 'BH', 1),
(1614, 104, 'Eilat and Arava', 'EA', 1),
(1615, 104, 'Galil', 'GA', 1),
(1616, 104, 'Haifa', 'HA', 1),
(1617, 104, 'Jehuda Mountains', 'JM', 1),
(1618, 104, 'Jerusalem', 'JE', 1),
(1619, 104, 'Negev', 'NE', 1),
(1620, 104, 'Semaria', 'SE', 1),
(1621, 104, 'Sharon', 'SH', 1),
(1622, 104, 'Tel Aviv (Gosh Dan)', 'TA', 1),
(3860, 105, 'Caltanissetta', 'CL', 1),
(3842, 105, 'Agrigento', 'AG', 1),
(3843, 105, 'Alessandria', 'AL', 1),
(3844, 105, 'Ancona', 'AN', 1),
(3845, 105, 'Aosta', 'AO', 1),
(3846, 105, 'Arezzo', 'AR', 1),
(3847, 105, 'Ascoli Piceno', 'AP', 1),
(3848, 105, 'Asti', 'AT', 1),
(3849, 105, 'Avellino', 'AV', 1),
(3850, 105, 'Bari', 'BA', 1),
(3851, 105, 'Belluno', 'BL', 1),
(3852, 105, 'Benevento', 'BN', 1),
(3853, 105, 'Bergamo', 'BG', 1),
(3854, 105, 'Biella', 'BI', 1),
(3855, 105, 'Bologna', 'BO', 1),
(3856, 105, 'Bolzano', 'BZ', 1),
(3857, 105, 'Brescia', 'BS', 1),
(3858, 105, 'Brindisi', 'BR', 1),
(3859, 105, 'Cagliari', 'CA', 1),
(1643, 106, 'Clarendon Parish', 'CLA', 1),
(1644, 106, 'Hanover Parish', 'HAN', 1),
(1645, 106, 'Kingston Parish', 'KIN', 1),
(1646, 106, 'Manchester Parish', 'MAN', 1),
(1647, 106, 'Portland Parish', 'POR', 1),
(1648, 106, 'Saint Andrew Parish', 'AND', 1),
(1649, 106, 'Saint Ann Parish', 'ANN', 1),
(1650, 106, 'Saint Catherine Parish', 'CAT', 1),
(1651, 106, 'Saint Elizabeth Parish', 'ELI', 1),
(1652, 106, 'Saint James Parish', 'JAM', 1),
(1653, 106, 'Saint Mary Parish', 'MAR', 1),
(1654, 106, 'Saint Thomas Parish', 'THO', 1),
(1655, 106, 'Trelawny Parish', 'TRL', 1),
(1656, 106, 'Westmoreland Parish', 'WML', 1),
(1657, 107, 'Aichi', 'AI', 1),
(1658, 107, 'Akita', 'AK', 1),
(1659, 107, 'Aomori', 'AO', 1),
(1660, 107, 'Chiba', 'CH', 1),
(1661, 107, 'Ehime', 'EH', 1),
(1662, 107, 'Fukui', 'FK', 1),
(1663, 107, 'Fukuoka', 'FU', 1),
(1664, 107, 'Fukushima', 'FS', 1),
(1665, 107, 'Gifu', 'GI', 1),
(1666, 107, 'Gumma', 'GU', 1),
(1667, 107, 'Hiroshima', 'HI', 1),
(1668, 107, 'Hokkaido', 'HO', 1),
(1669, 107, 'Hyogo', 'HY', 1),
(1670, 107, 'Ibaraki', 'IB', 1),
(1671, 107, 'Ishikawa', 'IS', 1),
(1672, 107, 'Iwate', 'IW', 1),
(1673, 107, 'Kagawa', 'KA', 1),
(1674, 107, 'Kagoshima', 'KG', 1),
(1675, 107, 'Kanagawa', 'KN', 1),
(1676, 107, 'Kochi', 'KO', 1),
(1677, 107, 'Kumamoto', 'KU', 1),
(1678, 107, 'Kyoto', 'KY', 1),
(1679, 107, 'Mie', 'MI', 1),
(1680, 107, 'Miyagi', 'MY', 1),
(1681, 107, 'Miyazaki', 'MZ', 1),
(1682, 107, 'Nagano', 'NA', 1),
(1683, 107, 'Nagasaki', 'NG', 1),
(1684, 107, 'Nara', 'NR', 1),
(1685, 107, 'Niigata', 'NI', 1),
(1686, 107, 'Oita', 'OI', 1),
(1687, 107, 'Okayama', 'OK', 1),
(1688, 107, 'Okinawa', 'ON', 1),
(1689, 107, 'Osaka', 'OS', 1),
(1690, 107, 'Saga', 'SA', 1),
(1691, 107, 'Saitama', 'SI', 1),
(1692, 107, 'Shiga', 'SH', 1),
(1693, 107, 'Shimane', 'SM', 1),
(1694, 107, 'Shizuoka', 'SZ', 1),
(1695, 107, 'Tochigi', 'TO', 1),
(1696, 107, 'Tokushima', 'TS', 1),
(1697, 107, 'Tokyo', 'TK', 1),
(1698, 107, 'Tottori', 'TT', 1),
(1699, 107, 'Toyama', 'TY', 1),
(1700, 107, 'Wakayama', 'WA', 1),
(1701, 107, 'Yamagata', 'YA', 1),
(1702, 107, 'Yamaguchi', 'YM', 1),
(1703, 107, 'Yamanashi', 'YN', 1),
(1704, 108, '''Amman', 'AM', 1),
(1705, 108, 'Ajlun', 'AJ', 1),
(1706, 108, 'Al ''Aqabah', 'AA', 1),
(1707, 108, 'Al Balqa''', 'AB', 1),
(1708, 108, 'Al Karak', 'AK', 1),
(1709, 108, 'Al Mafraq', 'AL', 1),
(1710, 108, 'At Tafilah', 'AT', 1),
(1711, 108, 'Az Zarqa''', 'AZ', 1),
(1712, 108, 'Irbid', 'IR', 1),
(1713, 108, 'Jarash', 'JA', 1),
(1714, 108, 'Ma''an', 'MA', 1),
(1715, 108, 'Madaba', 'MD', 1),
(1716, 109, 'Almaty', 'AL', 1),
(1717, 109, 'Almaty City', 'AC', 1),
(1718, 109, 'Aqmola', 'AM', 1),
(1719, 109, 'Aqtobe', 'AQ', 1),
(1720, 109, 'Astana City', 'AS', 1),
(1721, 109, 'Atyrau', 'AT', 1),
(1722, 109, 'Batys Qazaqstan', 'BA', 1),
(1723, 109, 'Bayqongyr City', 'BY', 1),
(1724, 109, 'Mangghystau', 'MA', 1),
(1725, 109, 'Ongtustik Qazaqstan', 'ON', 1),
(1726, 109, 'Pavlodar', 'PA', 1),
(1727, 109, 'Qaraghandy', 'QA', 1),
(1728, 109, 'Qostanay', 'QO', 1),
(1729, 109, 'Qyzylorda', 'QY', 1),
(1730, 109, 'Shyghys Qazaqstan', 'SH', 1),
(1731, 109, 'Soltustik Qazaqstan', 'SO', 1),
(1732, 109, 'Zhambyl', 'ZH', 1),
(1733, 110, 'Central', 'CE', 1),
(1734, 110, 'Coast', 'CO', 1),
(1735, 110, 'Eastern', 'EA', 1),
(1736, 110, 'Nairobi Area', 'NA', 1),
(1737, 110, 'North Eastern', 'NE', 1),
(1738, 110, 'Nyanza', 'NY', 1),
(1739, 110, 'Rift Valley', 'RV', 1),
(1740, 110, 'Western', 'WE', 1),
(1741, 111, 'Abaiang', 'AG', 1),
(1742, 111, 'Abemama', 'AM', 1),
(1743, 111, 'Aranuka', 'AK', 1),
(1744, 111, 'Arorae', 'AO', 1),
(1745, 111, 'Banaba', 'BA', 1),
(1746, 111, 'Beru', 'BE', 1),
(1747, 111, 'Butaritari', 'bT', 1),
(1748, 111, 'Kanton', 'KA', 1),
(1749, 111, 'Kiritimati', 'KR', 1),
(1750, 111, 'Kuria', 'KU', 1),
(1751, 111, 'Maiana', 'MI', 1),
(1752, 111, 'Makin', 'MN', 1),
(1753, 111, 'Marakei', 'ME', 1),
(1754, 111, 'Nikunau', 'NI', 1),
(1755, 111, 'Nonouti', 'NO', 1),
(1756, 111, 'Onotoa', 'ON', 1),
(1757, 111, 'Tabiteuea', 'TT', 1),
(1758, 111, 'Tabuaeran', 'TR', 1),
(1759, 111, 'Tamana', 'TM', 1),
(1760, 111, 'Tarawa', 'TW', 1),
(1761, 111, 'Teraina', 'TE', 1),
(1762, 112, 'Chagang-do', 'CHA', 1),
(1763, 112, 'Hamgyong-bukto', 'HAB', 1),
(1764, 112, 'Hamgyong-namdo', 'HAN', 1),
(1765, 112, 'Hwanghae-bukto', 'HWB', 1),
(1766, 112, 'Hwanghae-namdo', 'HWN', 1),
(1767, 112, 'Kangwon-do', 'KAN', 1),
(1768, 112, 'P''yongan-bukto', 'PYB', 1),
(1769, 112, 'P''yongan-namdo', 'PYN', 1),
(1770, 112, 'Ryanggang-do (Yanggang-do)', 'YAN', 1),
(1771, 112, 'Rason Directly Governed City', 'NAJ', 1),
(1772, 112, 'P''yongyang Special City', 'PYO', 1),
(1773, 113, 'Ch''ungch''ong-bukto', 'CO', 1),
(1774, 113, 'Ch''ungch''ong-namdo', 'CH', 1),
(1775, 113, 'Cheju-do', 'CD', 1),
(1776, 113, 'Cholla-bukto', 'CB', 1),
(1777, 113, 'Cholla-namdo', 'CN', 1),
(1778, 113, 'Inch''on-gwangyoksi', 'IG', 1),
(1779, 113, 'Kangwon-do', 'KA', 1),
(1780, 113, 'Kwangju-gwangyoksi', 'KG', 1),
(1781, 113, 'Kyonggi-do', 'KD', 1),
(1782, 113, 'Kyongsang-bukto', 'KB', 1),
(1783, 113, 'Kyongsang-namdo', 'KN', 1),
(1784, 113, 'Pusan-gwangyoksi', 'PG', 1),
(1785, 113, 'Soul-t''ukpyolsi', 'SO', 1),
(1786, 113, 'Taegu-gwangyoksi', 'TA', 1),
(1787, 113, 'Taejon-gwangyoksi', 'TG', 1),
(1788, 114, 'Al ''Asimah', 'AL', 1),
(1789, 114, 'Al Ahmadi', 'AA', 1),
(1790, 114, 'Al Farwaniyah', 'AF', 1),
(1791, 114, 'Al Jahra''', 'AJ', 1),
(1792, 114, 'Hawalli', 'HA', 1),
(1793, 115, 'Bishkek', 'GB', 1),
(1794, 115, 'Batken', 'B', 1),
(1795, 115, 'Chu', 'C', 1),
(1796, 115, 'Jalal-Abad', 'J', 1),
(1797, 115, 'Naryn', 'N', 1),
(1798, 115, 'Osh', 'O', 1),
(1799, 115, 'Talas', 'T', 1),
(1800, 115, 'Ysyk-Kol', 'Y', 1),
(1801, 116, 'Vientiane', 'VT', 1),
(1802, 116, 'Attapu', 'AT', 1),
(1803, 116, 'Bokeo', 'BK', 1),
(1804, 116, 'Bolikhamxai', 'BL', 1),
(1805, 116, 'Champasak', 'CH', 1),
(1806, 116, 'Houaphan', 'HO', 1),
(1807, 116, 'Khammouan', 'KH', 1),
(1808, 116, 'Louang Namtha', 'LM', 1),
(1809, 116, 'Louangphabang', 'LP', 1),
(1810, 116, 'Oudomxai', 'OU', 1),
(1811, 116, 'Phongsali', 'PH', 1),
(1812, 116, 'Salavan', 'SL', 1),
(1813, 116, 'Savannakhet', 'SV', 1),
(1814, 116, 'Vientiane', 'VI', 1),
(1815, 116, 'Xaignabouli', 'XA', 1),
(1816, 116, 'Xekong', 'XE', 1),
(1817, 116, 'Xiangkhoang', 'XI', 1),
(1818, 116, 'Xaisomboun', 'XN', 1),
(1852, 119, 'Berea', 'BE', 1),
(1853, 119, 'Butha-Buthe', 'BB', 1),
(1854, 119, 'Leribe', 'LE', 1),
(1855, 119, 'Mafeteng', 'MF', 1),
(1856, 119, 'Maseru', 'MS', 1),
(1857, 119, 'Mohale''s Hoek', 'MH', 1),
(1858, 119, 'Mokhotlong', 'MK', 1),
(1859, 119, 'Qacha''s Nek', 'QN', 1),
(1860, 119, 'Quthing', 'QT', 1),
(1861, 119, 'Thaba-Tseka', 'TT', 1),
(1862, 120, 'Bomi', 'BI', 1),
(1863, 120, 'Bong', 'BG', 1),
(1864, 120, 'Grand Bassa', 'GB', 1),
(1865, 120, 'Grand Cape Mount', 'CM', 1),
(1866, 120, 'Grand Gedeh', 'GG', 1),
(1867, 120, 'Grand Kru', 'GK', 1),
(1868, 120, 'Lofa', 'LO', 1),
(1869, 120, 'Margibi', 'MG', 1),
(1870, 120, 'Maryland', 'ML', 1),
(1871, 120, 'Montserrado', 'MS', 1),
(1872, 120, 'Nimba', 'NB', 1),
(1873, 120, 'River Cess', 'RC', 1),
(1874, 120, 'Sinoe', 'SN', 1),
(1875, 121, 'Ajdabiya', 'AJ', 1),
(1876, 121, 'Al ''Aziziyah', 'AZ', 1),
(1877, 121, 'Al Fatih', 'FA', 1),
(1878, 121, 'Al Jabal al Akhdar', 'JA', 1),
(1879, 121, 'Al Jufrah', 'JU', 1),
(1880, 121, 'Al Khums', 'KH', 1),
(1881, 121, 'Al Kufrah', 'KU', 1),
(1882, 121, 'An Nuqat al Khams', 'NK', 1),
(1883, 121, 'Ash Shati''', 'AS', 1),
(1884, 121, 'Awbari', 'AW', 1),
(1885, 121, 'Az Zawiyah', 'ZA', 1),
(1886, 121, 'Banghazi', 'BA', 1),
(1887, 121, 'Darnah', 'DA', 1),
(1888, 121, 'Ghadamis', 'GD', 1),
(1889, 121, 'Gharyan', 'GY', 1),
(1890, 121, 'Misratah', 'MI', 1),
(1891, 121, 'Murzuq', 'MZ', 1),
(1892, 121, 'Sabha', 'SB', 1),
(1893, 121, 'Sawfajjin', 'SW', 1),
(1894, 121, 'Surt', 'SU', 1),
(1895, 121, 'Tarabulus (Tripoli)', 'TL', 1),
(1896, 121, 'Tarhunah', 'TH', 1),
(1897, 121, 'Tubruq', 'TU', 1),
(1898, 121, 'Yafran', 'YA', 1),
(1899, 121, 'Zlitan', 'ZL', 1),
(1900, 122, 'Vaduz', 'V', 1),
(1901, 122, 'Schaan', 'A', 1),
(1902, 122, 'Balzers', 'B', 1),
(1903, 122, 'Triesen', 'N', 1),
(1904, 122, 'Eschen', 'E', 1),
(1905, 122, 'Mauren', 'M', 1),
(1906, 122, 'Triesenberg', 'T', 1),
(1907, 122, 'Ruggell', 'R', 1),
(1908, 122, 'Gamprin', 'G', 1),
(1909, 122, 'Schellenberg', 'L', 1),
(1910, 122, 'Planken', 'P', 1),
(1911, 123, 'Alytus', 'AL', 1),
(1912, 123, 'Kaunas', 'KA', 1),
(1913, 123, 'Klaipeda', 'KL', 1),
(1914, 123, 'Marijampole', 'MA', 1),
(1915, 123, 'Panevezys', 'PA', 1),
(1916, 123, 'Siauliai', 'SI', 1),
(1917, 123, 'Taurage', 'TA', 1),
(1918, 123, 'Telsiai', 'TE', 1),
(1919, 123, 'Utena', 'UT', 1),
(1920, 123, 'Vilnius', 'VI', 1),
(1921, 124, 'Diekirch', 'DD', 1),
(1922, 124, 'Clervaux', 'DC', 1),
(1923, 124, 'Redange', 'DR', 1),
(1924, 124, 'Vianden', 'DV', 1),
(1925, 124, 'Wiltz', 'DW', 1),
(1926, 124, 'Grevenmacher', 'GG', 1),
(1927, 124, 'Echternach', 'GE', 1),
(1928, 124, 'Remich', 'GR', 1),
(1929, 124, 'Luxembourg', 'LL', 1),
(1930, 124, 'Capellen', 'LC', 1),
(1931, 124, 'Esch-sur-Alzette', 'LE', 1),
(1932, 124, 'Mersch', 'LM', 1),
(1933, 125, 'Our Lady Fatima Parish', 'OLF', 1),
(1934, 125, 'St. Anthony Parish', 'ANT', 1),
(1935, 125, 'St. Lazarus Parish', 'LAZ', 1),
(1936, 125, 'Cathedral Parish', 'CAT', 1),
(1937, 125, 'St. Lawrence Parish', 'LAW', 1),
(1938, 127, 'Antananarivo', 'AN', 1),
(1939, 127, 'Antsiranana', 'AS', 1),
(1940, 127, 'Fianarantsoa', 'FN', 1),
(1941, 127, 'Mahajanga', 'MJ', 1),
(1942, 127, 'Toamasina', 'TM', 1),
(1943, 127, 'Toliara', 'TL', 1),
(1944, 128, 'Balaka', 'BLK', 1),
(1945, 128, 'Blantyre', 'BLT', 1),
(1946, 128, 'Chikwawa', 'CKW', 1),
(1947, 128, 'Chiradzulu', 'CRD', 1),
(1948, 128, 'Chitipa', 'CTP', 1),
(1949, 128, 'Dedza', 'DDZ', 1),
(1950, 128, 'Dowa', 'DWA', 1),
(1951, 128, 'Karonga', 'KRG', 1),
(1952, 128, 'Kasungu', 'KSG', 1),
(1953, 128, 'Likoma', 'LKM', 1),
(1954, 128, 'Lilongwe', 'LLG', 1),
(1955, 128, 'Machinga', 'MCG', 1),
(1956, 128, 'Mangochi', 'MGC', 1),
(1957, 128, 'Mchinji', 'MCH', 1),
(1958, 128, 'Mulanje', 'MLJ', 1),
(1959, 128, 'Mwanza', 'MWZ', 1),
(1960, 128, 'Mzimba', 'MZM', 1),
(1961, 128, 'Ntcheu', 'NTU', 1),
(1962, 128, 'Nkhata Bay', 'NKB', 1),
(1963, 128, 'Nkhotakota', 'NKH', 1),
(1964, 128, 'Nsanje', 'NSJ', 1),
(1965, 128, 'Ntchisi', 'NTI', 1),
(1966, 128, 'Phalombe', 'PHL', 1),
(1967, 128, 'Rumphi', 'RMP', 1),
(1968, 128, 'Salima', 'SLM', 1),
(1969, 128, 'Thyolo', 'THY', 1),
(1970, 128, 'Zomba', 'ZBA', 1),
(1971, 129, 'Johor', 'MY-01', 1),
(1972, 129, 'Kedah', 'MY-02', 1),
(1973, 129, 'Kelantan', 'MY-03', 1),
(1974, 129, 'Labuan', 'MY-15', 1),
(1975, 129, 'Melaka', 'MY-04', 1),
(1976, 129, 'Negeri Sembilan', 'MY-05', 1),
(1977, 129, 'Pahang', 'MY-06', 1),
(1978, 129, 'Perak', 'MY-08', 1),
(1979, 129, 'Perlis', 'MY-09', 1),
(1980, 129, 'Pulau Pinang', 'MY-07', 1),
(1981, 129, 'Sabah', 'MY-12', 1),
(1982, 129, 'Sarawak', 'MY-13', 1),
(1983, 129, 'Selangor', 'MY-10', 1),
(1984, 129, 'Terengganu', 'MY-11', 1),
(1985, 129, 'Kuala Lumpur', 'MY-14', 1),
(4035, 129, 'Putrajaya', 'MY-16', 1),
(1986, 130, 'Thiladhunmathi Uthuru', 'THU', 1),
(1987, 130, 'Thiladhunmathi Dhekunu', 'THD', 1),
(1988, 130, 'Miladhunmadulu Uthuru', 'MLU', 1),
(1989, 130, 'Miladhunmadulu Dhekunu', 'MLD', 1),
(1990, 130, 'Maalhosmadulu Uthuru', 'MAU', 1),
(1991, 130, 'Maalhosmadulu Dhekunu', 'MAD', 1),
(1992, 130, 'Faadhippolhu', 'FAA', 1),
(1993, 130, 'Male Atoll', 'MAA', 1),
(1994, 130, 'Ari Atoll Uthuru', 'AAU', 1),
(1995, 130, 'Ari Atoll Dheknu', 'AAD', 1),
(1996, 130, 'Felidhe Atoll', 'FEA', 1),
(1997, 130, 'Mulaku Atoll', 'MUA', 1),
(1998, 130, 'Nilandhe Atoll Uthuru', 'NAU', 1),
(1999, 130, 'Nilandhe Atoll Dhekunu', 'NAD', 1),
(2000, 130, 'Kolhumadulu', 'KLH', 1),
(2001, 130, 'Hadhdhunmathi', 'HDH', 1),
(2002, 130, 'Huvadhu Atoll Uthuru', 'HAU', 1),
(2003, 130, 'Huvadhu Atoll Dhekunu', 'HAD', 1),
(2004, 130, 'Fua Mulaku', 'FMU', 1),
(2005, 130, 'Addu', 'ADD', 1),
(2006, 131, 'Gao', 'GA', 1),
(2007, 131, 'Kayes', 'KY', 1),
(2008, 131, 'Kidal', 'KD', 1),
(2009, 131, 'Koulikoro', 'KL', 1),
(2010, 131, 'Mopti', 'MP', 1),
(2011, 131, 'Segou', 'SG', 1),
(2012, 131, 'Sikasso', 'SK', 1),
(2013, 131, 'Tombouctou', 'TB', 1),
(2014, 131, 'Bamako Capital District', 'CD', 1),
(2015, 132, 'Attard', 'ATT', 1),
(2016, 132, 'Balzan', 'BAL', 1),
(2017, 132, 'Birgu', 'BGU', 1),
(2018, 132, 'Birkirkara', 'BKK', 1),
(2019, 132, 'Birzebbuga', 'BRZ', 1),
(2020, 132, 'Bormla', 'BOR', 1),
(2021, 132, 'Dingli', 'DIN', 1),
(2022, 132, 'Fgura', 'FGU', 1),
(2023, 132, 'Floriana', 'FLO', 1),
(2024, 132, 'Gudja', 'GDJ', 1),
(2025, 132, 'Gzira', 'GZR', 1),
(2026, 132, 'Gargur', 'GRG', 1),
(2027, 132, 'Gaxaq', 'GXQ', 1),
(2028, 132, 'Hamrun', 'HMR', 1),
(2029, 132, 'Iklin', 'IKL', 1),
(2030, 132, 'Isla', 'ISL', 1),
(2031, 132, 'Kalkara', 'KLK', 1),
(2032, 132, 'Kirkop', 'KRK', 1),
(2033, 132, 'Lija', 'LIJ', 1),
(2034, 132, 'Luqa', 'LUQ', 1),
(2035, 132, 'Marsa', 'MRS', 1),
(2036, 132, 'Marsaskala', 'MKL', 1),
(2037, 132, 'Marsaxlokk', 'MXL', 1),
(2038, 132, 'Mdina', 'MDN', 1),
(2039, 132, 'Melliea', 'MEL', 1),
(2040, 132, 'Mgarr', 'MGR', 1),
(2041, 132, 'Mosta', 'MST', 1),
(2042, 132, 'Mqabba', 'MQA', 1),
(2043, 132, 'Msida', 'MSI', 1),
(2044, 132, 'Mtarfa', 'MTF', 1),
(2045, 132, 'Naxxar', 'NAX', 1),
(2046, 132, 'Paola', 'PAO', 1),
(2047, 132, 'Pembroke', 'PEM', 1),
(2048, 132, 'Pieta', 'PIE', 1),
(2049, 132, 'Qormi', 'QOR', 1),
(2050, 132, 'Qrendi', 'QRE', 1),
(2051, 132, 'Rabat', 'RAB', 1),
(2052, 132, 'Safi', 'SAF', 1),
(2053, 132, 'San Giljan', 'SGI', 1),
(2054, 132, 'Santa Lucija', 'SLU', 1),
(2055, 132, 'San Pawl il-Bahar', 'SPB', 1),
(2056, 132, 'San Gwann', 'SGW', 1),
(2057, 132, 'Santa Venera', 'SVE', 1),
(2058, 132, 'Siggiewi', 'SIG', 1),
(2059, 132, 'Sliema', 'SLM', 1),
(2060, 132, 'Swieqi', 'SWQ', 1),
(2061, 132, 'Ta Xbiex', 'TXB', 1),
(2062, 132, 'Tarxien', 'TRX', 1),
(2063, 132, 'Valletta', 'VLT', 1),
(2064, 132, 'Xgajra', 'XGJ', 1),
(2065, 132, 'Zabbar', 'ZBR', 1),
(2066, 132, 'Zebbug', 'ZBG', 1),
(2067, 132, 'Zejtun', 'ZJT', 1),
(2068, 132, 'Zurrieq', 'ZRQ', 1),
(2069, 132, 'Fontana', 'FNT', 1),
(2070, 132, 'Ghajnsielem', 'GHJ', 1),
(2071, 132, 'Gharb', 'GHR', 1),
(2072, 132, 'Ghasri', 'GHS', 1),
(2073, 132, 'Kercem', 'KRC', 1),
(2074, 132, 'Munxar', 'MUN', 1),
(2075, 132, 'Nadur', 'NAD', 1),
(2076, 132, 'Qala', 'QAL', 1),
(2077, 132, 'Victoria', 'VIC', 1),
(2078, 132, 'San Lawrenz', 'SLA', 1),
(2079, 132, 'Sannat', 'SNT', 1),
(2080, 132, 'Xagra', 'ZAG', 1),
(2081, 132, 'Xewkija', 'XEW', 1),
(2082, 132, 'Zebbug', 'ZEB', 1),
(2083, 133, 'Ailinginae', 'ALG', 1),
(2084, 133, 'Ailinglaplap', 'ALL', 1),
(2085, 133, 'Ailuk', 'ALK', 1),
(2086, 133, 'Arno', 'ARN', 1),
(2087, 133, 'Aur', 'AUR', 1),
(2088, 133, 'Bikar', 'BKR', 1),
(2089, 133, 'Bikini', 'BKN', 1),
(2090, 133, 'Bokak', 'BKK', 1),
(2091, 133, 'Ebon', 'EBN', 1),
(2092, 133, 'Enewetak', 'ENT', 1),
(2093, 133, 'Erikub', 'EKB', 1),
(2094, 133, 'Jabat', 'JBT', 1),
(2095, 133, 'Jaluit', 'JLT', 1),
(2096, 133, 'Jemo', 'JEM', 1),
(2097, 133, 'Kili', 'KIL', 1),
(2098, 133, 'Kwajalein', 'KWJ', 1),
(2099, 133, 'Lae', 'LAE', 1),
(2100, 133, 'Lib', 'LIB', 1),
(2101, 133, 'Likiep', 'LKP', 1),
(2102, 133, 'Majuro', 'MJR', 1),
(2103, 133, 'Maloelap', 'MLP', 1),
(2104, 133, 'Mejit', 'MJT', 1),
(2105, 133, 'Mili', 'MIL', 1),
(2106, 133, 'Namorik', 'NMK', 1),
(2107, 133, 'Namu', 'NAM', 1),
(2108, 133, 'Rongelap', 'RGL', 1),
(2109, 133, 'Rongrik', 'RGK', 1),
(2110, 133, 'Toke', 'TOK', 1),
(2111, 133, 'Ujae', 'UJA', 1),
(2112, 133, 'Ujelang', 'UJL', 1),
(2113, 133, 'Utirik', 'UTK', 1),
(2114, 133, 'Wotho', 'WTH', 1),
(2115, 133, 'Wotje', 'WTJ', 1),
(2116, 135, 'Adrar', 'AD', 1),
(2117, 135, 'Assaba', 'AS', 1),
(2118, 135, 'Brakna', 'BR', 1),
(2119, 135, 'Dakhlet Nouadhibou', 'DN', 1),
(2120, 135, 'Gorgol', 'GO', 1),
(2121, 135, 'Guidimaka', 'GM', 1),
(2122, 135, 'Hodh Ech Chargui', 'HC', 1),
(2123, 135, 'Hodh El Gharbi', 'HG', 1),
(2124, 135, 'Inchiri', 'IN', 1),
(2125, 135, 'Tagant', 'TA', 1),
(2126, 135, 'Tiris Zemmour', 'TZ', 1),
(2127, 135, 'Trarza', 'TR', 1),
(2128, 135, 'Nouakchott', 'NO', 1),
(2129, 136, 'Beau Bassin-Rose Hill', 'BR', 1),
(2130, 136, 'Curepipe', 'CU', 1),
(2131, 136, 'Port Louis', 'PU', 1),
(2132, 136, 'Quatre Bornes', 'QB', 1),
(2133, 136, 'Vacoas-Phoenix', 'VP', 1),
(2134, 136, 'Agalega Islands', 'AG', 1),
(2135, 136, 'Cargados Carajos Shoals (Saint Brandon Islands)', 'CC', 1),
(2136, 136, 'Rodrigues', 'RO', 1),
(2137, 136, 'Black River', 'BL', 1),
(2138, 136, 'Flacq', 'FL', 1),
(2139, 136, 'Grand Port', 'GP', 1),
(2140, 136, 'Moka', 'MO', 1),
(2141, 136, 'Pamplemousses', 'PA', 1),
(2142, 136, 'Plaines Wilhems', 'PW', 1),
(2143, 136, 'Port Louis', 'PL', 1),
(2144, 136, 'Riviere du Rempart', 'RR', 1),
(2145, 136, 'Savanne', 'SA', 1),
(2146, 138, 'Baja California Norte', 'BN', 1),
(2147, 138, 'Baja California Sur', 'BS', 1),
(2148, 138, 'Campeche', 'CA', 1),
(2149, 138, 'Chiapas', 'CI', 1),
(2150, 138, 'Chihuahua', 'CH', 1),
(2151, 138, 'Coahuila de Zaragoza', 'CZ', 1),
(2152, 138, 'Colima', 'CL', 1),
(2153, 138, 'Distrito Federal', 'DF', 1),
(2154, 138, 'Durango', 'DU', 1),
(2155, 138, 'Guanajuato', 'GA', 1),
(2156, 138, 'Guerrero', 'GE', 1),
(2157, 138, 'Hidalgo', 'HI', 1),
(2158, 138, 'Jalisco', 'JA', 1),
(2159, 138, 'Mexico', 'ME', 1),
(2160, 138, 'Michoacan de Ocampo', 'MI', 1),
(2161, 138, 'Morelos', 'MO', 1),
(2162, 138, 'Nayarit', 'NA', 1),
(2163, 138, 'Nuevo Leon', 'NL', 1),
(2164, 138, 'Oaxaca', 'OA', 1),
(2165, 138, 'Puebla', 'PU', 1),
(2166, 138, 'Queretaro de Arteaga', 'QA', 1),
(2167, 138, 'Quintana Roo', 'QR', 1),
(2168, 138, 'San Luis Potosi', 'SA', 1),
(2169, 138, 'Sinaloa', 'SI', 1),
(2170, 138, 'Sonora', 'SO', 1),
(2171, 138, 'Tabasco', 'TB', 1),
(2172, 138, 'Tamaulipas', 'TM', 1),
(2173, 138, 'Tlaxcala', 'TL', 1),
(2174, 138, 'Veracruz-Llave', 'VE', 1),
(2175, 138, 'Yucatan', 'YU', 1),
(2176, 138, 'Zacatecas', 'ZA', 1),
(2177, 139, 'Chuuk', 'C', 1),
(2178, 139, 'Kosrae', 'K', 1),
(2179, 139, 'Pohnpei', 'P', 1),
(2180, 139, 'Yap', 'Y', 1),
(2181, 140, 'Gagauzia', 'GA', 1),
(2182, 140, 'Chisinau', 'CU', 1),
(2183, 140, 'Balti', 'BA', 1),
(2184, 140, 'Cahul', 'CA', 1),
(2185, 140, 'Edinet', 'ED', 1),
(2186, 140, 'Lapusna', 'LA', 1),
(2187, 140, 'Orhei', 'OR', 1),
(2188, 140, 'Soroca', 'SO', 1),
(2189, 140, 'Tighina', 'TI', 1),
(2190, 140, 'Ungheni', 'UN', 1),
(2191, 140, 'St‚nga Nistrului', 'SN', 1),
(2192, 141, 'Fontvieille', 'FV', 1),
(2193, 141, 'La Condamine', 'LC', 1),
(2194, 141, 'Monaco-Ville', 'MV', 1),
(2195, 141, 'Monte-Carlo', 'MC', 1),
(2196, 142, 'Ulanbaatar', '1', 1),
(2197, 142, 'Orhon', '035', 1),
(2198, 142, 'Darhan uul', '037', 1),
(2199, 142, 'Hentiy', '039', 1),
(2200, 142, 'Hovsgol', '041', 1),
(2201, 142, 'Hovd', '043', 1),
(2202, 142, 'Uvs', '046', 1),
(2203, 142, 'Tov', '047', 1),
(2204, 142, 'Selenge', '049', 1),
(2205, 142, 'Suhbaatar', '051', 1),
(2206, 142, 'Omnogovi', '053', 1),
(2207, 142, 'Ovorhangay', '055', 1),
(2208, 142, 'Dzavhan', '057', 1),
(2209, 142, 'DundgovL', '059', 1),
(2210, 142, 'Dornod', '061', 1),
(2211, 142, 'Dornogov', '063', 1),
(2212, 142, 'Govi-Sumber', '064', 1),
(2213, 142, 'Govi-Altay', '065', 1),
(2214, 142, 'Bulgan', '067', 1),
(2215, 142, 'Bayanhongor', '069', 1),
(2216, 142, 'Bayan-Olgiy', '071', 1),
(2217, 142, 'Arhangay', '073', 1),
(2218, 143, 'Saint Anthony', 'A', 1),
(2219, 143, 'Saint Georges', 'G', 1),
(2220, 143, 'Saint Peter', 'P', 1),
(2221, 144, 'Agadir', 'AGD', 1),
(2222, 144, 'Al Hoceima', 'HOC', 1),
(2223, 144, 'Azilal', 'AZI', 1),
(2224, 144, 'Beni Mellal', 'BME', 1),
(2225, 144, 'Ben Slimane', 'BSL', 1),
(2226, 144, 'Boulemane', 'BLM', 1),
(2227, 144, 'Casablanca', 'CBL', 1),
(2228, 144, 'Chaouen', 'CHA', 1),
(2229, 144, 'El Jadida', 'EJA', 1),
(2230, 144, 'El Kelaa des Sraghna', 'EKS', 1),
(2231, 144, 'Er Rachidia', 'ERA', 1),
(2232, 144, 'Essaouira', 'ESS', 1),
(2233, 144, 'Fes', 'FES', 1),
(2234, 144, 'Figuig', 'FIG', 1),
(2235, 144, 'Guelmim', 'GLM', 1),
(2236, 144, 'Ifrane', 'IFR', 1),
(2237, 144, 'Kenitra', 'KEN', 1),
(2238, 144, 'Khemisset', 'KHM', 1),
(2239, 144, 'Khenifra', 'KHN', 1),
(2240, 144, 'Khouribga', 'KHO', 1),
(2241, 144, 'Laayoune', 'LYN', 1),
(2242, 144, 'Larache', 'LAR', 1),
(2243, 144, 'Marrakech', 'MRK', 1),
(2244, 144, 'Meknes', 'MKN', 1),
(2245, 144, 'Nador', 'NAD', 1),
(2246, 144, 'Ouarzazate', 'ORZ', 1),
(2247, 144, 'Oujda', 'OUJ', 1),
(2248, 144, 'Rabat-Sale', 'RSA', 1),
(2249, 144, 'Safi', 'SAF', 1),
(2250, 144, 'Settat', 'SET', 1),
(2251, 144, 'Sidi Kacem', 'SKA', 1),
(2252, 144, 'Tangier', 'TGR', 1),
(2253, 144, 'Tan-Tan', 'TAN', 1),
(2254, 144, 'Taounate', 'TAO', 1),
(2255, 144, 'Taroudannt', 'TRD', 1),
(2256, 144, 'Tata', 'TAT', 1),
(2257, 144, 'Taza', 'TAZ', 1),
(2258, 144, 'Tetouan', 'TET', 1),
(2259, 144, 'Tiznit', 'TIZ', 1),
(2260, 144, 'Ad Dakhla', 'ADK', 1),
(2261, 144, 'Boujdour', 'BJD', 1),
(2262, 144, 'Es Smara', 'ESM', 1),
(2263, 145, 'Cabo Delgado', 'CD', 1),
(2264, 145, 'Gaza', 'GZ', 1),
(2265, 145, 'Inhambane', 'IN', 1),
(2266, 145, 'Manica', 'MN', 1),
(2267, 145, 'Maputo (city)', 'MC', 1),
(2268, 145, 'Maputo', 'MP', 1),
(2269, 145, 'Nampula', 'NA', 1),
(2270, 145, 'Niassa', 'NI', 1),
(2271, 145, 'Sofala', 'SO', 1),
(2272, 145, 'Tete', 'TE', 1),
(2273, 145, 'Zambezia', 'ZA', 1),
(2274, 146, 'Ayeyarwady', 'AY', 1),
(2275, 146, 'Bago', 'BG', 1),
(2276, 146, 'Magway', 'MG', 1),
(2277, 146, 'Mandalay', 'MD', 1),
(2278, 146, 'Sagaing', 'SG', 1),
(2279, 146, 'Tanintharyi', 'TN', 1),
(2280, 146, 'Yangon', 'YG', 1),
(2281, 146, 'Chin State', 'CH', 1),
(2282, 146, 'Kachin State', 'KC', 1),
(2283, 146, 'Kayah State', 'KH', 1),
(2284, 146, 'Kayin State', 'KN', 1),
(2285, 146, 'Mon State', 'MN', 1),
(2286, 146, 'Rakhine State', 'RK', 1),
(2287, 146, 'Shan State', 'SH', 1),
(2288, 147, 'Caprivi', 'CA', 1),
(2289, 147, 'Erongo', 'ER', 1),
(2290, 147, 'Hardap', 'HA', 1),
(2291, 147, 'Karas', 'KR', 1),
(2292, 147, 'Kavango', 'KV', 1),
(2293, 147, 'Khomas', 'KH', 1),
(2294, 147, 'Kunene', 'KU', 1),
(2295, 147, 'Ohangwena', 'OW', 1),
(2296, 147, 'Omaheke', 'OK', 1),
(2297, 147, 'Omusati', 'OT', 1),
(2298, 147, 'Oshana', 'ON', 1),
(2299, 147, 'Oshikoto', 'OO', 1),
(2300, 147, 'Otjozondjupa', 'OJ', 1),
(2301, 148, 'Aiwo', 'AO', 1),
(2302, 148, 'Anabar', 'AA', 1),
(2303, 148, 'Anetan', 'AT', 1),
(2304, 148, 'Anibare', 'AI', 1),
(2305, 148, 'Baiti', 'BA', 1),
(2306, 148, 'Boe', 'BO', 1),
(2307, 148, 'Buada', 'BU', 1),
(2308, 148, 'Denigomodu', 'DE', 1),
(2309, 148, 'Ewa', 'EW', 1),
(2310, 148, 'Ijuw', 'IJ', 1),
(2311, 148, 'Meneng', 'ME', 1),
(2312, 148, 'Nibok', 'NI', 1),
(2313, 148, 'Uaboe', 'UA', 1),
(2314, 148, 'Yaren', 'YA', 1),
(2315, 149, 'Bagmati', 'BA', 1),
(2316, 149, 'Bheri', 'BH', 1),
(2317, 149, 'Dhawalagiri', 'DH', 1),
(2318, 149, 'Gandaki', 'GA', 1),
(2319, 149, 'Janakpur', 'JA', 1),
(2320, 149, 'Karnali', 'KA', 1),
(2321, 149, 'Kosi', 'KO', 1),
(2322, 149, 'Lumbini', 'LU', 1),
(2323, 149, 'Mahakali', 'MA', 1),
(2324, 149, 'Mechi', 'ME', 1),
(2325, 149, 'Narayani', 'NA', 1),
(2326, 149, 'Rapti', 'RA', 1),
(2327, 149, 'Sagarmatha', 'SA', 1),
(2328, 149, 'Seti', 'SE', 1),
(2329, 150, 'Drenthe', 'DR', 1),
(2330, 150, 'Flevoland', 'FL', 1),
(2331, 150, 'Friesland', 'FR', 1),
(2332, 150, 'Gelderland', 'GE', 1),
(2333, 150, 'Groningen', 'GR', 1),
(2334, 150, 'Limburg', 'LI', 1),
(2335, 150, 'Noord Brabant', 'NB', 1),
(2336, 150, 'Noord Holland', 'NH', 1),
(2337, 150, 'Overijssel', 'OV', 1),
(2338, 150, 'Utrecht', 'UT', 1),
(2339, 150, 'Zeeland', 'ZE', 1),
(2340, 150, 'Zuid Holland', 'ZH', 1),
(2341, 152, 'Iles Loyaute', 'L', 1),
(2342, 152, 'Nord', 'N', 1),
(2343, 152, 'Sud', 'S', 1),
(2344, 153, 'Auckland', 'AUK', 1),
(2345, 153, 'Bay of Plenty', 'BOP', 1),
(2346, 153, 'Canterbury', 'CAN', 1),
(2347, 153, 'Coromandel', 'COR', 1),
(2348, 153, 'Gisborne', 'GIS', 1),
(2349, 153, 'Fiordland', 'FIO', 1),
(2350, 153, 'Hawke''s Bay', 'HKB', 1),
(2351, 153, 'Marlborough', 'MBH', 1),
(2352, 153, 'Manawatu-Wanganui', 'MWT', 1),
(2353, 153, 'Mt Cook-Mackenzie', 'MCM', 1),
(2354, 153, 'Nelson', 'NSN', 1),
(2355, 153, 'Northland', 'NTL', 1),
(2356, 153, 'Otago', 'OTA', 1),
(2357, 153, 'Southland', 'STL', 1),
(2358, 153, 'Taranaki', 'TKI', 1),
(2359, 153, 'Wellington', 'WGN', 1),
(2360, 153, 'Waikato', 'WKO', 1),
(2361, 153, 'Wairarapa', 'WAI', 1),
(2362, 153, 'West Coast', 'WTC', 1),
(2363, 154, 'Atlantico Norte', 'AN', 1),
(2364, 154, 'Atlantico Sur', 'AS', 1),
(2365, 154, 'Boaco', 'BO', 1),
(2366, 154, 'Carazo', 'CA', 1),
(2367, 154, 'Chinandega', 'CI', 1),
(2368, 154, 'Chontales', 'CO', 1),
(2369, 154, 'Esteli', 'ES', 1),
(2370, 154, 'Granada', 'GR', 1),
(2371, 154, 'Jinotega', 'JI', 1),
(2372, 154, 'Leon', 'LE', 1),
(2373, 154, 'Madriz', 'MD', 1),
(2374, 154, 'Managua', 'MN', 1),
(2375, 154, 'Masaya', 'MS', 1),
(2376, 154, 'Matagalpa', 'MT', 1),
(2377, 154, 'Nuevo Segovia', 'NS', 1),
(2378, 154, 'Rio San Juan', 'RS', 1),
(2379, 154, 'Rivas', 'RI', 1),
(2380, 155, 'Agadez', 'AG', 1),
(2381, 155, 'Diffa', 'DF', 1),
(2382, 155, 'Dosso', 'DS', 1),
(2383, 155, 'Maradi', 'MA', 1),
(2384, 155, 'Niamey', 'NM', 1),
(2385, 155, 'Tahoua', 'TH', 1),
(2386, 155, 'Tillaberi', 'TL', 1),
(2387, 155, 'Zinder', 'ZD', 1),
(2388, 156, 'Abia', 'AB', 1),
(2389, 156, 'Abuja Federal Capital Territory', 'CT', 1),
(2390, 156, 'Adamawa', 'AD', 1),
(2391, 156, 'Akwa Ibom', 'AK', 1),
(2392, 156, 'Anambra', 'AN', 1),
(2393, 156, 'Bauchi', 'BC', 1),
(2394, 156, 'Bayelsa', 'BY', 1),
(2395, 156, 'Benue', 'BN', 1),
(2396, 156, 'Borno', 'BO', 1),
(2397, 156, 'Cross River', 'CR', 1),
(2398, 156, 'Delta', 'DE', 1),
(2399, 156, 'Ebonyi', 'EB', 1),
(2400, 156, 'Edo', 'ED', 1),
(2401, 156, 'Ekiti', 'EK', 1),
(2402, 156, 'Enugu', 'EN', 1),
(2403, 156, 'Gombe', 'GO', 1),
(2404, 156, 'Imo', 'IM', 1),
(2405, 156, 'Jigawa', 'JI', 1),
(2406, 156, 'Kaduna', 'KD', 1),
(2407, 156, 'Kano', 'KN', 1),
(2408, 156, 'Katsina', 'KT', 1),
(2409, 156, 'Kebbi', 'KE', 1),
(2410, 156, 'Kogi', 'KO', 1),
(2411, 156, 'Kwara', 'KW', 1),
(2412, 156, 'Lagos', 'LA', 1),
(2413, 156, 'Nassarawa', 'NA', 1),
(2414, 156, 'Niger', 'NI', 1),
(2415, 156, 'Ogun', 'OG', 1),
(2416, 156, 'Ondo', 'ONG', 1),
(2417, 156, 'Osun', 'OS', 1),
(2418, 156, 'Oyo', 'OY', 1),
(2419, 156, 'Plateau', 'PL', 1),
(2420, 156, 'Rivers', 'RI', 1),
(2421, 156, 'Sokoto', 'SO', 1),
(2422, 156, 'Taraba', 'TA', 1),
(2423, 156, 'Yobe', 'YO', 1),
(2424, 156, 'Zamfara', 'ZA', 1),
(2425, 159, 'Northern Islands', 'N', 1),
(2426, 159, 'Rota', 'R', 1),
(2427, 159, 'Saipan', 'S', 1),
(2428, 159, 'Tinian', 'T', 1),
(2429, 160, 'Akershus', 'AK', 1),
(2430, 160, 'Aust-Agder', 'AA', 1),
(2431, 160, 'Buskerud', 'BU', 1),
(2432, 160, 'Finnmark', 'FM', 1),
(2433, 160, 'Hedmark', 'HM', 1),
(2434, 160, 'Hordaland', 'HL', 1),
(2435, 160, 'More og Romdal', 'MR', 1),
(2436, 160, 'Nord-Trondelag', 'NT', 1),
(2437, 160, 'Nordland', 'NL', 1),
(2438, 160, 'Ostfold', 'OF', 1),
(2439, 160, 'Oppland', 'OP', 1),
(2440, 160, 'Oslo', 'OL', 1),
(2441, 160, 'Rogaland', 'RL', 1),
(2442, 160, 'Sor-Trondelag', 'ST', 1),
(2443, 160, 'Sogn og Fjordane', 'SJ', 1),
(2444, 160, 'Svalbard', 'SV', 1),
(2445, 160, 'Telemark', 'TM', 1),
(2446, 160, 'Troms', 'TR', 1),
(2447, 160, 'Vest-Agder', 'VA', 1),
(2448, 160, 'Vestfold', 'VF', 1),
(2449, 161, 'Ad Dakhiliyah', 'DA', 1),
(2450, 161, 'Al Batinah', 'BA', 1),
(2451, 161, 'Al Wusta', 'WU', 1),
(2452, 161, 'Ash Sharqiyah', 'SH', 1),
(2453, 161, 'Az Zahirah', 'ZA', 1),
(2454, 161, 'Masqat', 'MA', 1),
(2455, 161, 'Musandam', 'MU', 1),
(2456, 161, 'Zufar', 'ZU', 1),
(2457, 162, 'Balochistan', 'B', 1),
(2458, 162, 'Federally Administered Tribal Areas', 'T', 1),
(2459, 162, 'Islamabad Capital Territory', 'I', 1),
(2460, 162, 'North-West Frontier', 'N', 1),
(2461, 162, 'Punjab', 'P', 1),
(2462, 162, 'Sindh', 'S', 1),
(2463, 163, 'Aimeliik', 'AM', 1),
(2464, 163, 'Airai', 'AR', 1),
(2465, 163, 'Angaur', 'AN', 1),
(2466, 163, 'Hatohobei', 'HA', 1),
(2467, 163, 'Kayangel', 'KA', 1),
(2468, 163, 'Koror', 'KO', 1),
(2469, 163, 'Melekeok', 'ME', 1),
(2470, 163, 'Ngaraard', 'NA', 1),
(2471, 163, 'Ngarchelong', 'NG', 1),
(2472, 163, 'Ngardmau', 'ND', 1),
(2473, 163, 'Ngatpang', 'NT', 1),
(2474, 163, 'Ngchesar', 'NC', 1),
(2475, 163, 'Ngeremlengui', 'NR', 1),
(2476, 163, 'Ngiwal', 'NW', 1),
(2477, 163, 'Peleliu', 'PE', 1),
(2478, 163, 'Sonsorol', 'SO', 1),
(2479, 164, 'Bocas del Toro', 'BT', 1),
(2480, 164, 'Chiriqui', 'CH', 1),
(2481, 164, 'Cocle', 'CC', 1),
(2482, 164, 'Colon', 'CL', 1),
(2483, 164, 'Darien', 'DA', 1),
(2484, 164, 'Herrera', 'HE', 1),
(2485, 164, 'Los Santos', 'LS', 1),
(2486, 164, 'Panama', 'PA', 1),
(2487, 164, 'San Blas', 'SB', 1),
(2488, 164, 'Veraguas', 'VG', 1),
(2489, 165, 'Bougainville', 'BV', 1),
(2490, 165, 'Central', 'CE', 1),
(2491, 165, 'Chimbu', 'CH', 1),
(2492, 165, 'Eastern Highlands', 'EH', 1),
(2493, 165, 'East New Britain', 'EB', 1),
(2494, 165, 'East Sepik', 'ES', 1),
(2495, 165, 'Enga', 'EN', 1),
(2496, 165, 'Gulf', 'GU', 1),
(2497, 165, 'Madang', 'MD', 1),
(2498, 165, 'Manus', 'MN', 1),
(2499, 165, 'Milne Bay', 'MB', 1),
(2500, 165, 'Morobe', 'MR', 1),
(2501, 165, 'National Capital', 'NC', 1),
(2502, 165, 'New Ireland', 'NI', 1),
(2503, 165, 'Northern', 'NO', 1),
(2504, 165, 'Sandaun', 'SA', 1),
(2505, 165, 'Southern Highlands', 'SH', 1),
(2506, 165, 'Western', 'WE', 1),
(2507, 165, 'Western Highlands', 'WH', 1),
(2508, 165, 'West New Britain', 'WB', 1),
(2509, 166, 'Alto Paraguay', 'AG', 1),
(2510, 166, 'Alto Parana', 'AN', 1),
(2511, 166, 'Amambay', 'AM', 1),
(2512, 166, 'Asuncion', 'AS', 1),
(2513, 166, 'Boqueron', 'BO', 1),
(2514, 166, 'Caaguazu', 'CG', 1),
(2515, 166, 'Caazapa', 'CZ', 1),
(2516, 166, 'Canindeyu', 'CN', 1),
(2517, 166, 'Central', 'CE', 1),
(2518, 166, 'Concepcion', 'CC', 1),
(2519, 166, 'Cordillera', 'CD', 1),
(2520, 166, 'Guaira', 'GU', 1),
(2521, 166, 'Itapua', 'IT', 1),
(2522, 166, 'Misiones', 'MI', 1),
(2523, 166, 'Neembucu', 'NE', 1),
(2524, 166, 'Paraguari', 'PA', 1),
(2525, 166, 'Presidente Hayes', 'PH', 1),
(2526, 166, 'San Pedro', 'SP', 1),
(2527, 167, 'Amazonas', 'AM', 1),
(2528, 167, 'Ancash', 'AN', 1),
(2529, 167, 'Apurimac', 'AP', 1),
(2530, 167, 'Arequipa', 'AR', 1),
(2531, 167, 'Ayacucho', 'AY', 1),
(2532, 167, 'Cajamarca', 'CJ', 1),
(2533, 167, 'Callao', 'CL', 1),
(2534, 167, 'Cusco', 'CU', 1),
(2535, 167, 'Huancavelica', 'HV', 1),
(2536, 167, 'Huanuco', 'HO', 1),
(2537, 167, 'Ica', 'IC', 1),
(2538, 167, 'Junin', 'JU', 1),
(2539, 167, 'La Libertad', 'LD', 1),
(2540, 167, 'Lambayeque', 'LY', 1),
(2541, 167, 'Lima', 'LI', 1),
(2542, 167, 'Loreto', 'LO', 1),
(2543, 167, 'Madre de Dios', 'MD', 1),
(2544, 167, 'Moquegua', 'MO', 1),
(2545, 167, 'Pasco', 'PA', 1),
(2546, 167, 'Piura', 'PI', 1),
(2547, 167, 'Puno', 'PU', 1),
(2548, 167, 'San Martin', 'SM', 1),
(2549, 167, 'Tacna', 'TA', 1),
(2550, 167, 'Tumbes', 'TU', 1),
(2551, 167, 'Ucayali', 'UC', 1),
(2552, 168, 'Abra', 'ABR', 1),
(2553, 168, 'Agusan del Norte', 'ANO', 1),
(2554, 168, 'Agusan del Sur', 'ASU', 1),
(2555, 168, 'Aklan', 'AKL', 1),
(2556, 168, 'Albay', 'ALB', 1),
(2557, 168, 'Antique', 'ANT', 1),
(2558, 168, 'Apayao', 'APY', 1),
(2559, 168, 'Aurora', 'AUR', 1),
(2560, 168, 'Basilan', 'BAS', 1),
(2561, 168, 'Bataan', 'BTA', 1),
(2562, 168, 'Batanes', 'BTE', 1),
(2563, 168, 'Batangas', 'BTG', 1),
(2564, 168, 'Biliran', 'BLR', 1),
(2565, 168, 'Benguet', 'BEN', 1),
(2566, 168, 'Bohol', 'BOL', 1),
(2567, 168, 'Bukidnon', 'BUK', 1),
(2568, 168, 'Bulacan', 'BUL', 1),
(2569, 168, 'Cagayan', 'CAG', 1),
(2570, 168, 'Camarines Norte', 'CNO', 1),
(2571, 168, 'Camarines Sur', 'CSU', 1),
(2572, 168, 'Camiguin', 'CAM', 1),
(2573, 168, 'Capiz', 'CAP', 1),
(2574, 168, 'Catanduanes', 'CAT', 1),
(2575, 168, 'Cavite', 'CAV', 1),
(2576, 168, 'Cebu', 'CEB', 1),
(2577, 168, 'Compostela', 'CMP', 1),
(2578, 168, 'Davao del Norte', 'DNO', 1),
(2579, 168, 'Davao del Sur', 'DSU', 1),
(2580, 168, 'Davao Oriental', 'DOR', 1),
(2581, 168, 'Eastern Samar', 'ESA', 1),
(2582, 168, 'Guimaras', 'GUI', 1),
(2583, 168, 'Ifugao', 'IFU', 1),
(2584, 168, 'Ilocos Norte', 'INO', 1),
(2585, 168, 'Ilocos Sur', 'ISU', 1),
(2586, 168, 'Iloilo', 'ILO', 1),
(2587, 168, 'Isabela', 'ISA', 1),
(2588, 168, 'Kalinga', 'KAL', 1),
(2589, 168, 'Laguna', 'LAG', 1),
(2590, 168, 'Lanao del Norte', 'LNO', 1),
(2591, 168, 'Lanao del Sur', 'LSU', 1),
(2592, 168, 'La Union', 'UNI', 1),
(2593, 168, 'Leyte', 'LEY', 1),
(2594, 168, 'Maguindanao', 'MAG', 1),
(2595, 168, 'Marinduque', 'MRN', 1),
(2596, 168, 'Masbate', 'MSB', 1),
(2597, 168, 'Mindoro Occidental', 'MIC', 1),
(2598, 168, 'Mindoro Oriental', 'MIR', 1),
(2599, 168, 'Misamis Occidental', 'MSC', 1),
(2600, 168, 'Misamis Oriental', 'MOR', 1),
(2601, 168, 'Mountain', 'MOP', 1),
(2602, 168, 'Negros Occidental', 'NOC', 1),
(2603, 168, 'Negros Oriental', 'NOR', 1),
(2604, 168, 'North Cotabato', 'NCT', 1),
(2605, 168, 'Northern Samar', 'NSM', 1),
(2606, 168, 'Nueva Ecija', 'NEC', 1),
(2607, 168, 'Nueva Vizcaya', 'NVZ', 1),
(2608, 168, 'Palawan', 'PLW', 1),
(2609, 168, 'Pampanga', 'PMP', 1),
(2610, 168, 'Pangasinan', 'PNG', 1),
(2611, 168, 'Quezon', 'QZN', 1),
(2612, 168, 'Quirino', 'QRN', 1),
(2613, 168, 'Rizal', 'RIZ', 1),
(2614, 168, 'Romblon', 'ROM', 1),
(2615, 168, 'Samar', 'SMR', 1),
(2616, 168, 'Sarangani', 'SRG', 1),
(2617, 168, 'Siquijor', 'SQJ', 1),
(2618, 168, 'Sorsogon', 'SRS', 1),
(2619, 168, 'South Cotabato', 'SCO', 1),
(2620, 168, 'Southern Leyte', 'SLE', 1),
(2621, 168, 'Sultan Kudarat', 'SKU', 1),
(2622, 168, 'Sulu', 'SLU', 1),
(2623, 168, 'Surigao del Norte', 'SNO', 1),
(2624, 168, 'Surigao del Sur', 'SSU', 1),
(2625, 168, 'Tarlac', 'TAR', 1),
(2626, 168, 'Tawi-Tawi', 'TAW', 1),
(2627, 168, 'Zambales', 'ZBL', 1),
(2628, 168, 'Zamboanga del Norte', 'ZNO', 1),
(2629, 168, 'Zamboanga del Sur', 'ZSU', 1),
(2630, 168, 'Zamboanga Sibugay', 'ZSI', 1),
(2631, 170, 'Dolnoslaskie', 'DO', 1),
(2632, 170, 'Kujawsko-Pomorskie', 'KP', 1),
(2633, 170, 'Lodzkie', 'LO', 1),
(2634, 170, 'Lubelskie', 'LL', 1),
(2635, 170, 'Lubuskie', 'LU', 1),
(2636, 170, 'Malopolskie', 'ML', 1),
(2637, 170, 'Mazowieckie', 'MZ', 1),
(2638, 170, 'Opolskie', 'OP', 1),
(2639, 170, 'Podkarpackie', 'PP', 1),
(2640, 170, 'Podlaskie', 'PL', 1),
(2641, 170, 'Pomorskie', 'PM', 1),
(2642, 170, 'Slaskie', 'SL', 1),
(2643, 170, 'Swietokrzyskie', 'SW', 1),
(2644, 170, 'Warminsko-Mazurskie', 'WM', 1),
(2645, 170, 'Wielkopolskie', 'WP', 1),
(2646, 170, 'Zachodniopomorskie', 'ZA', 1),
(2647, 198, 'Saint Pierre', 'P', 1),
(2648, 198, 'Miquelon', 'M', 1),
(2649, 171, 'A&ccedil;ores', 'AC', 1),
(2650, 171, 'Aveiro', 'AV', 1),
(2651, 171, 'Beja', 'BE', 1),
(2652, 171, 'Braga', 'BR', 1),
(2653, 171, 'Bragan&ccedil;a', 'BA', 1),
(2654, 171, 'Castelo Branco', 'CB', 1),
(2655, 171, 'Coimbra', 'CO', 1),
(2656, 171, '&Eacute;vora', 'EV', 1),
(2657, 171, 'Faro', 'FA', 1),
(2658, 171, 'Guarda', 'GU', 1),
(2659, 171, 'Leiria', 'LE', 1),
(2660, 171, 'Lisboa', 'LI', 1),
(2661, 171, 'Madeira', 'ME', 1),
(2662, 171, 'Portalegre', 'PO', 1),
(2663, 171, 'Porto', 'PR', 1),
(2664, 171, 'Santar&eacute;m', 'SA', 1),
(2665, 171, 'Set&uacute;bal', 'SE', 1),
(2666, 171, 'Viana do Castelo', 'VC', 1),
(2667, 171, 'Vila Real', 'VR', 1),
(2668, 171, 'Viseu', 'VI', 1),
(2669, 173, 'Ad Dawhah', 'DW', 1),
(2670, 173, 'Al Ghuwayriyah', 'GW', 1),
(2671, 173, 'Al Jumayliyah', 'JM', 1),
(2672, 173, 'Al Khawr', 'KR', 1),
(2673, 173, 'Al Wakrah', 'WK', 1),
(2674, 173, 'Ar Rayyan', 'RN', 1),
(2675, 173, 'Jarayan al Batinah', 'JB', 1),
(2676, 173, 'Madinat ash Shamal', 'MS', 1),
(2677, 173, 'Umm Sa''id', 'UD', 1),
(2678, 173, 'Umm Salal', 'UL', 1),
(2679, 175, 'Alba', 'AB', 1),
(2680, 175, 'Arad', 'AR', 1),
(2681, 175, 'Arges', 'AG', 1),
(2682, 175, 'Bacau', 'BC', 1),
(2683, 175, 'Bihor', 'BH', 1),
(2684, 175, 'Bistrita-Nasaud', 'BN', 1),
(2685, 175, 'Botosani', 'BT', 1),
(2686, 175, 'Brasov', 'BV', 1),
(2687, 175, 'Braila', 'BR', 1),
(2688, 175, 'Bucuresti', 'B', 1),
(2689, 175, 'Buzau', 'BZ', 1),
(2690, 175, 'Caras-Severin', 'CS', 1),
(2691, 175, 'Calarasi', 'CL', 1),
(2692, 175, 'Cluj', 'CJ', 1),
(2693, 175, 'Constanta', 'CT', 1),
(2694, 175, 'Covasna', 'CV', 1),
(2695, 175, 'Dimbovita', 'DB', 1),
(2696, 175, 'Dolj', 'DJ', 1),
(2697, 175, 'Galati', 'GL', 1),
(2698, 175, 'Giurgiu', 'GR', 1),
(2699, 175, 'Gorj', 'GJ', 1),
(2700, 175, 'Harghita', 'HR', 1),
(2701, 175, 'Hunedoara', 'HD', 1),
(2702, 175, 'Ialomita', 'IL', 1),
(2703, 175, 'Iasi', 'IS', 1),
(2704, 175, 'Ilfov', 'IF', 1),
(2705, 175, 'Maramures', 'MM', 1),
(2706, 175, 'Mehedinti', 'MH', 1),
(2707, 175, 'Mures', 'MS', 1),
(2708, 175, 'Neamt', 'NT', 1),
(2709, 175, 'Olt', 'OT', 1),
(2710, 175, 'Prahova', 'PH', 1),
(2711, 175, 'Satu-Mare', 'SM', 1),
(2712, 175, 'Salaj', 'SJ', 1),
(2713, 175, 'Sibiu', 'SB', 1),
(2714, 175, 'Suceava', 'SV', 1),
(2715, 175, 'Teleorman', 'TR', 1),
(2716, 175, 'Timis', 'TM', 1),
(2717, 175, 'Tulcea', 'TL', 1),
(2718, 175, 'Vaslui', 'VS', 1),
(2719, 175, 'Valcea', 'VL', 1),
(2720, 175, 'Vrancea', 'VN', 1),
(2721, 176, 'Abakan', 'AB', 1),
(2722, 176, 'Aginskoye', 'AG', 1),
(2723, 176, 'Anadyr', 'AN', 1),
(2724, 176, 'Arkahangelsk', 'AR', 1),
(2725, 176, 'Astrakhan', 'AS', 1),
(2726, 176, 'Barnaul', 'BA', 1),
(2727, 176, 'Belgorod', 'BE', 1),
(2728, 176, 'Birobidzhan', 'BI', 1),
(2729, 176, 'Blagoveshchensk', 'BL', 1),
(2730, 176, 'Bryansk', 'BR', 1),
(2731, 176, 'Cheboksary', 'CH', 1),
(2732, 176, 'Chelyabinsk', 'CL', 1),
(2733, 176, 'Cherkessk', 'CR', 1),
(2734, 176, 'Chita', 'CI', 1),
(2735, 176, 'Dudinka', 'DU', 1),
(2736, 176, 'Elista', 'EL', 1),
(2737, 176, 'Gomo-Altaysk', 'GO', 1),
(2738, 176, 'Gorno-Altaysk', 'GA', 1),
(2739, 176, 'Groznyy', 'GR', 1),
(2740, 176, 'Irkutsk', 'IR', 1),
(2741, 176, 'Ivanovo', 'IV', 1),
(2742, 176, 'Izhevsk', 'IZ', 1),
(2743, 176, 'Kalinigrad', 'KA', 1),
(2744, 176, 'Kaluga', 'KL', 1),
(2745, 176, 'Kasnodar', 'KS', 1),
(2746, 176, 'Kazan', 'KZ', 1),
(2747, 176, 'Kemerovo', 'KE', 1),
(2748, 176, 'Khabarovsk', 'KH', 1),
(2749, 176, 'Khanty-Mansiysk', 'KM', 1),
(2750, 176, 'Kostroma', 'KO', 1),
(2751, 176, 'Krasnodar', 'KR', 1),
(2752, 176, 'Krasnoyarsk', 'KN', 1),
(2753, 176, 'Kudymkar', 'KU', 1),
(2754, 176, 'Kurgan', 'KG', 1),
(2755, 176, 'Kursk', 'KK', 1),
(2756, 176, 'Kyzyl', 'KY', 1),
(2757, 176, 'Lipetsk', 'LI', 1),
(2758, 176, 'Magadan', 'MA', 1),
(2759, 176, 'Makhachkala', 'MK', 1),
(2760, 176, 'Maykop', 'MY', 1),
(2761, 176, 'Moscow', 'MO', 1),
(2762, 176, 'Murmansk', 'MU', 1),
(2763, 176, 'Nalchik', 'NA', 1),
(2764, 176, 'Naryan Mar', 'NR', 1),
(2765, 176, 'Nazran', 'NZ', 1),
(2766, 176, 'Nizhniy Novgorod', 'NI', 1),
(2767, 176, 'Novgorod', 'NO', 1),
(2768, 176, 'Novosibirsk', 'NV', 1),
(2769, 176, 'Omsk', 'OM', 1),
(2770, 176, 'Orel', 'OR', 1),
(2771, 176, 'Orenburg', 'OE', 1),
(2772, 176, 'Palana', 'PA', 1),
(2773, 176, 'Penza', 'PE', 1),
(2774, 176, 'Perm', 'PR', 1),
(2775, 176, 'Petropavlovsk-Kamchatskiy', 'PK', 1),
(2776, 176, 'Petrozavodsk', 'PT', 1),
(2777, 176, 'Pskov', 'PS', 1),
(2778, 176, 'Rostov-na-Donu', 'RO', 1),
(2779, 176, 'Ryazan', 'RY', 1),
(2780, 176, 'Salekhard', 'SL', 1),
(2781, 176, 'Samara', 'SA', 1),
(2782, 176, 'Saransk', 'SR', 1),
(2783, 176, 'Saratov', 'SV', 1),
(2784, 176, 'Smolensk', 'SM', 1),
(2785, 176, 'St. Petersburg', 'SP', 1),
(2786, 176, 'Stavropol', 'ST', 1),
(2787, 176, 'Syktyvkar', 'SY', 1),
(2788, 176, 'Tambov', 'TA', 1),
(2789, 176, 'Tomsk', 'TO', 1),
(2790, 176, 'Tula', 'TU', 1),
(2791, 176, 'Tura', 'TR', 1),
(2792, 176, 'Tver', 'TV', 1),
(2793, 176, 'Tyumen', 'TY', 1),
(2794, 176, 'Ufa', 'UF', 1),
(2795, 176, 'Ul''yanovsk', 'UL', 1),
(2796, 176, 'Ulan-Ude', 'UU', 1),
(2797, 176, 'Ust''-Ordynskiy', 'US', 1),
(2798, 176, 'Vladikavkaz', 'VL', 1),
(2799, 176, 'Vladimir', 'VA', 1),
(2800, 176, 'Vladivostok', 'VV', 1),
(2801, 176, 'Volgograd', 'VG', 1),
(2802, 176, 'Vologda', 'VD', 1),
(2803, 176, 'Voronezh', 'VO', 1),
(2804, 176, 'Vyatka', 'VY', 1),
(2805, 176, 'Yakutsk', 'YA', 1),
(2806, 176, 'Yaroslavl', 'YR', 1),
(2807, 176, 'Yekaterinburg', 'YE', 1),
(2808, 176, 'Yoshkar-Ola', 'YO', 1),
(2809, 177, 'Butare', 'BU', 1),
(2810, 177, 'Byumba', 'BY', 1),
(2811, 177, 'Cyangugu', 'CY', 1),
(2812, 177, 'Gikongoro', 'GK', 1),
(2813, 177, 'Gisenyi', 'GS', 1),
(2814, 177, 'Gitarama', 'GT', 1),
(2815, 177, 'Kibungo', 'KG', 1),
(2816, 177, 'Kibuye', 'KY', 1),
(2817, 177, 'Kigali Rurale', 'KR', 1),
(2818, 177, 'Kigali-ville', 'KV', 1),
(2819, 177, 'Ruhengeri', 'RU', 1),
(2820, 177, 'Umutara', 'UM', 1),
(2821, 178, 'Christ Church Nichola Town', 'CCN', 1),
(2822, 178, 'Saint Anne Sandy Point', 'SAS', 1),
(2823, 178, 'Saint George Basseterre', 'SGB', 1),
(2824, 178, 'Saint George Gingerland', 'SGG', 1),
(2825, 178, 'Saint James Windward', 'SJW', 1),
(2826, 178, 'Saint John Capesterre', 'SJC', 1),
(2827, 178, 'Saint John Figtree', 'SJF', 1),
(2828, 178, 'Saint Mary Cayon', 'SMC', 1),
(2829, 178, 'Saint Paul Capesterre', 'CAP', 1),
(2830, 178, 'Saint Paul Charlestown', 'CHA', 1),
(2831, 178, 'Saint Peter Basseterre', 'SPB', 1),
(2832, 178, 'Saint Thomas Lowland', 'STL', 1),
(2833, 178, 'Saint Thomas Middle Island', 'STM', 1),
(2834, 178, 'Trinity Palmetto Point', 'TPP', 1),
(2835, 179, 'Anse-la-Raye', 'AR', 1),
(2836, 179, 'Castries', 'CA', 1),
(2837, 179, 'Choiseul', 'CH', 1),
(2838, 179, 'Dauphin', 'DA', 1),
(2839, 179, 'Dennery', 'DE', 1),
(2840, 179, 'Gros-Islet', 'GI', 1),
(2841, 179, 'Laborie', 'LA', 1),
(2842, 179, 'Micoud', 'MI', 1),
(2843, 179, 'Praslin', 'PR', 1),
(2844, 179, 'Soufriere', 'SO', 1),
(2845, 179, 'Vieux-Fort', 'VF', 1),
(2846, 180, 'Charlotte', 'C', 1),
(2847, 180, 'Grenadines', 'R', 1),
(2848, 180, 'Saint Andrew', 'A', 1),
(2849, 180, 'Saint David', 'D', 1),
(2850, 180, 'Saint George', 'G', 1),
(2851, 180, 'Saint Patrick', 'P', 1),
(2852, 181, 'A''ana', 'AN', 1),
(2853, 181, 'Aiga-i-le-Tai', 'AI', 1),
(2854, 181, 'Atua', 'AT', 1),
(2855, 181, 'Fa''asaleleaga', 'FA', 1),
(2856, 181, 'Gaga''emauga', 'GE', 1),
(2857, 181, 'Gagaifomauga', 'GF', 1),
(2858, 181, 'Palauli', 'PA', 1),
(2859, 181, 'Satupa''itea', 'SA', 1),
(2860, 181, 'Tuamasaga', 'TU', 1),
(2861, 181, 'Va''a-o-Fonoti', 'VF', 1),
(2862, 181, 'Vaisigano', 'VS', 1),
(2863, 182, 'Acquaviva', 'AC', 1),
(2864, 182, 'Borgo Maggiore', 'BM', 1),
(2865, 182, 'Chiesanuova', 'CH', 1),
(2866, 182, 'Domagnano', 'DO', 1),
(2867, 182, 'Faetano', 'FA', 1),
(2868, 182, 'Fiorentino', 'FI', 1),
(2869, 182, 'Montegiardino', 'MO', 1),
(2870, 182, 'Citta di San Marino', 'SM', 1),
(2871, 182, 'Serravalle', 'SE', 1),
(2872, 183, 'Sao Tome', 'S', 1),
(2873, 183, 'Principe', 'P', 1),
(2874, 184, 'Al Bahah', 'BH', 1),
(2875, 184, 'Al Hudud ash Shamaliyah', 'HS', 1),
(2876, 184, 'Al Jawf', 'JF', 1),
(2877, 184, 'Al Madinah', 'MD', 1),
(2878, 184, 'Al Qasim', 'QS', 1),
(2879, 184, 'Ar Riyad', 'RD', 1),
(2880, 184, 'Ash Sharqiyah (Eastern)', 'AQ', 1),
(2881, 184, '''Asir', 'AS', 1),
(2882, 184, 'Ha''il', 'HL', 1),
(2883, 184, 'Jizan', 'JZ', 1),
(2884, 184, 'Makkah', 'ML', 1),
(2885, 184, 'Najran', 'NR', 1),
(2886, 184, 'Tabuk', 'TB', 1),
(2887, 185, 'Dakar', 'DA', 1),
(2888, 185, 'Diourbel', 'DI', 1),
(2889, 185, 'Fatick', 'FA', 1),
(2890, 185, 'Kaolack', 'KA', 1),
(2891, 185, 'Kolda', 'KO', 1),
(2892, 185, 'Louga', 'LO', 1),
(2893, 185, 'Matam', 'MA', 1),
(2894, 185, 'Saint-Louis', 'SL', 1),
(2895, 185, 'Tambacounda', 'TA', 1),
(2896, 185, 'Thies', 'TH', 1),
(2897, 185, 'Ziguinchor', 'ZI', 1),
(2898, 186, 'Anse aux Pins', 'AP', 1),
(2899, 186, 'Anse Boileau', 'AB', 1),
(2900, 186, 'Anse Etoile', 'AE', 1),
(2901, 186, 'Anse Louis', 'AL', 1),
(2902, 186, 'Anse Royale', 'AR', 1),
(2903, 186, 'Baie Lazare', 'BL', 1),
(2904, 186, 'Baie Sainte Anne', 'BS', 1),
(2905, 186, 'Beau Vallon', 'BV', 1),
(2906, 186, 'Bel Air', 'BA', 1),
(2907, 186, 'Bel Ombre', 'BO', 1),
(2908, 186, 'Cascade', 'CA', 1),
(2909, 186, 'Glacis', 'GL', 1),
(2910, 186, 'Grand'' Anse (on Mahe)', 'GM', 1),
(2911, 186, 'Grand'' Anse (on Praslin)', 'GP', 1),
(2912, 186, 'La Digue', 'DG', 1),
(2913, 186, 'La Riviere Anglaise', 'RA', 1),
(2914, 186, 'Mont Buxton', 'MB', 1),
(2915, 186, 'Mont Fleuri', 'MF', 1),
(2916, 186, 'Plaisance', 'PL', 1),
(2917, 186, 'Pointe La Rue', 'PR', 1),
(2918, 186, 'Port Glaud', 'PG', 1),
(2919, 186, 'Saint Louis', 'SL', 1),
(2920, 186, 'Takamaka', 'TA', 1),
(2921, 187, 'Eastern', 'E', 1),
(2922, 187, 'Northern', 'N', 1),
(2923, 187, 'Southern', 'S', 1),
(2924, 187, 'Western', 'W', 1),
(2925, 189, 'Banskobystrický', 'BA', 1),
(2926, 189, 'Bratislavský', 'BR', 1),
(2927, 189, 'Košický', 'KO', 1),
(2928, 189, 'Nitriansky', 'NI', 1),
(2929, 189, 'Prešovský', 'PR', 1),
(2930, 189, 'Trenčiansky', 'TC', 1),
(2931, 189, 'Trnavský', 'TV', 1),
(2932, 189, 'Žilinský', 'ZI', 1),
(2933, 191, 'Central', 'CE', 1),
(2934, 191, 'Choiseul', 'CH', 1),
(2935, 191, 'Guadalcanal', 'GC', 1),
(2936, 191, 'Honiara', 'HO', 1),
(2937, 191, 'Isabel', 'IS', 1),
(2938, 191, 'Makira', 'MK', 1),
(2939, 191, 'Malaita', 'ML', 1),
(2940, 191, 'Rennell and Bellona', 'RB', 1),
(2941, 191, 'Temotu', 'TM', 1),
(2942, 191, 'Western', 'WE', 1),
(2943, 192, 'Awdal', 'AW', 1),
(2944, 192, 'Bakool', 'BK', 1),
(2945, 192, 'Banaadir', 'BN', 1),
(2946, 192, 'Bari', 'BR', 1),
(2947, 192, 'Bay', 'BY', 1),
(2948, 192, 'Galguduud', 'GA', 1),
(2949, 192, 'Gedo', 'GE', 1),
(2950, 192, 'Hiiraan', 'HI', 1),
(2951, 192, 'Jubbada Dhexe', 'JD', 1),
(2952, 192, 'Jubbada Hoose', 'JH', 1),
(2953, 192, 'Mudug', 'MU', 1),
(2954, 192, 'Nugaal', 'NU', 1),
(2955, 192, 'Sanaag', 'SA', 1),
(2956, 192, 'Shabeellaha Dhexe', 'SD', 1),
(2957, 192, 'Shabeellaha Hoose', 'SH', 1),
(2958, 192, 'Sool', 'SL', 1),
(2959, 192, 'Togdheer', 'TO', 1),
(2960, 192, 'Woqooyi Galbeed', 'WG', 1),
(2961, 193, 'Eastern Cape', 'EC', 1),
(2962, 193, 'Free State', 'FS', 1),
(2963, 193, 'Gauteng', 'GT', 1),
(2964, 193, 'KwaZulu-Natal', 'KN', 1),
(2965, 193, 'Limpopo', 'LP', 1),
(2966, 193, 'Mpumalanga', 'MP', 1),
(2967, 193, 'North West', 'NW', 1),
(2968, 193, 'Northern Cape', 'NC', 1),
(2969, 193, 'Western Cape', 'WC', 1),
(2970, 195, 'La Coru&ntilde;a', 'CA', 1),
(2971, 195, '&Aacute;lava', 'AL', 1),
(2972, 195, 'Albacete', 'AB', 1),
(2973, 195, 'Alicante', 'AC', 1),
(2974, 195, 'Almeria', 'AM', 1),
(2975, 195, 'Asturias', 'AS', 1),
(2976, 195, '&Aacute;vila', 'AV', 1),
(2977, 195, 'Badajoz', 'BJ', 1),
(2978, 195, 'Baleares', 'IB', 1),
(2979, 195, 'Barcelona', 'BA', 1),
(2980, 195, 'Burgos', 'BU', 1),
(2981, 195, 'C&aacute;ceres', 'CC', 1),
(2982, 195, 'C&aacute;diz', 'CZ', 1),
(2983, 195, 'Cantabria', 'CT', 1),
(2984, 195, 'Castell&oacute;n', 'CL', 1),
(2985, 195, 'Ceuta', 'CE', 1),
(2986, 195, 'Ciudad Real', 'CR', 1),
(2987, 195, 'C&oacute;rdoba', 'CD', 1),
(2988, 195, 'Cuenca', 'CU', 1),
(2989, 195, 'Girona', 'GI', 1),
(2990, 195, 'Granada', 'GD', 1),
(2991, 195, 'Guadalajara', 'GJ', 1),
(2992, 195, 'Guip&uacute;zcoa', 'GP', 1),
(2993, 195, 'Huelva', 'HL', 1),
(2994, 195, 'Huesca', 'HS', 1),
(2995, 195, 'Ja&eacute;n', 'JN', 1),
(2996, 195, 'La Rioja', 'RJ', 1),
(2997, 195, 'Las Palmas', 'PM', 1),
(2998, 195, 'Leon', 'LE', 1),
(2999, 195, 'Lleida', 'LL', 1),
(3000, 195, 'Lugo', 'LG', 1),
(3001, 195, 'Madrid', 'MD', 1),
(3002, 195, 'Malaga', 'MA', 1),
(3003, 195, 'Melilla', 'ML', 1),
(3004, 195, 'Murcia', 'MU', 1),
(3005, 195, 'Navarra', 'NV', 1),
(3006, 195, 'Ourense', 'OU', 1),
(3007, 195, 'Palencia', 'PL', 1),
(3008, 195, 'Pontevedra', 'PO', 1),
(3009, 195, 'Salamanca', 'SL', 1),
(3010, 195, 'Santa Cruz de Tenerife', 'SC', 1),
(3011, 195, 'Segovia', 'SG', 1),
(3012, 195, 'Sevilla', 'SV', 1),
(3013, 195, 'Soria', 'SO', 1),
(3014, 195, 'Tarragona', 'TA', 1),
(3015, 195, 'Teruel', 'TE', 1),
(3016, 195, 'Toledo', 'TO', 1),
(3017, 195, 'Valencia', 'VC', 1),
(3018, 195, 'Valladolid', 'VD', 1),
(3019, 195, 'Vizcaya', 'VZ', 1),
(3020, 195, 'Zamora', 'ZM', 1),
(3021, 195, 'Zaragoza', 'ZR', 1),
(3022, 196, 'Central', 'CE', 1),
(3023, 196, 'Eastern', 'EA', 1),
(3024, 196, 'North Central', 'NC', 1),
(3025, 196, 'Northern', 'NO', 1),
(3026, 196, 'North Western', 'NW', 1),
(3027, 196, 'Sabaragamuwa', 'SA', 1),
(3028, 196, 'Southern', 'SO', 1),
(3029, 196, 'Uva', 'UV', 1),
(3030, 196, 'Western', 'WE', 1),
(3032, 197, 'Saint Helena', 'S', 1),
(3034, 199, 'A''ali an Nil', 'ANL', 1),
(3035, 199, 'Al Bahr al Ahmar', 'BAM', 1),
(3036, 199, 'Al Buhayrat', 'BRT', 1),
(3037, 199, 'Al Jazirah', 'JZR', 1),
(3038, 199, 'Al Khartum', 'KRT', 1),
(3039, 199, 'Al Qadarif', 'QDR', 1),
(3040, 199, 'Al Wahdah', 'WDH', 1),
(3041, 199, 'An Nil al Abyad', 'ANB', 1),
(3042, 199, 'An Nil al Azraq', 'ANZ', 1),
(3043, 199, 'Ash Shamaliyah', 'ASH', 1),
(3044, 199, 'Bahr al Jabal', 'BJA', 1),
(3045, 199, 'Gharb al Istiwa''iyah', 'GIS', 1),
(3046, 199, 'Gharb Bahr al Ghazal', 'GBG', 1),
(3047, 199, 'Gharb Darfur', 'GDA', 1),
(3048, 199, 'Gharb Kurdufan', 'GKU', 1),
(3049, 199, 'Janub Darfur', 'JDA', 1),
(3050, 199, 'Janub Kurdufan', 'JKU', 1),
(3051, 199, 'Junqali', 'JQL', 1),
(3052, 199, 'Kassala', 'KSL', 1),
(3053, 199, 'Nahr an Nil', 'NNL', 1),
(3054, 199, 'Shamal Bahr al Ghazal', 'SBG', 1),
(3055, 199, 'Shamal Darfur', 'SDA', 1),
(3056, 199, 'Shamal Kurdufan', 'SKU', 1),
(3057, 199, 'Sharq al Istiwa''iyah', 'SIS', 1),
(3058, 199, 'Sinnar', 'SNR', 1),
(3059, 199, 'Warab', 'WRB', 1),
(3060, 200, 'Brokopondo', 'BR', 1),
(3061, 200, 'Commewijne', 'CM', 1),
(3062, 200, 'Coronie', 'CR', 1),
(3063, 200, 'Marowijne', 'MA', 1),
(3064, 200, 'Nickerie', 'NI', 1),
(3065, 200, 'Para', 'PA', 1),
(3066, 200, 'Paramaribo', 'PM', 1),
(3067, 200, 'Saramacca', 'SA', 1),
(3068, 200, 'Sipaliwini', 'SI', 1),
(3069, 200, 'Wanica', 'WA', 1),
(3070, 202, 'Hhohho', 'H', 1),
(3071, 202, 'Lubombo', 'L', 1),
(3072, 202, 'Manzini', 'M', 1),
(3073, 202, 'Shishelweni', 'S', 1),
(3074, 203, 'Blekinge', 'K', 1),
(3075, 203, 'Dalarna', 'W', 1),
(3076, 203, 'G&auml;vleborg', 'X', 1),
(3077, 203, 'Gotland', 'I', 1),
(3078, 203, 'Halland', 'N', 1),
(3079, 203, 'J&auml;mtland', 'Z', 1),
(3080, 203, 'J&ouml;nk&ouml;ping', 'F', 1),
(3081, 203, 'Kalmar', 'H', 1),
(3082, 203, 'Kronoberg', 'G', 1),
(3083, 203, 'Norrbotten', 'BD', 1),
(3084, 203, '&Ouml;rebro', 'T', 1),
(3085, 203, '&Ouml;sterg&ouml;tland', 'E', 1),
(3086, 203, 'Sk&aring;ne', 'M', 1),
(3087, 203, 'S&ouml;dermanland', 'D', 1),
(3088, 203, 'Stockholm', 'AB', 1),
(3089, 203, 'Uppsala', 'C', 1),
(3090, 203, 'V&auml;rmland', 'S', 1),
(3091, 203, 'V&auml;sterbotten', 'AC', 1),
(3092, 203, 'V&auml;sternorrland', 'Y', 1),
(3093, 203, 'V&auml;stmanland', 'U', 1),
(3094, 203, 'V&auml;stra G&ouml;taland', 'O', 1),
(3095, 204, 'Aargau', 'AG', 1),
(3096, 204, 'Appenzell Ausserrhoden', 'AR', 1),
(3097, 204, 'Appenzell Innerrhoden', 'AI', 1),
(3098, 204, 'Basel-Stadt', 'BS', 1),
(3099, 204, 'Basel-Landschaft', 'BL', 1),
(3100, 204, 'Bern', 'BE', 1),
(3101, 204, 'Fribourg', 'FR', 1),
(3102, 204, 'Gen&egrave;ve', 'GE', 1),
(3103, 204, 'Glarus', 'GL', 1),
(3104, 204, 'Graub&uuml;nden', 'GR', 1),
(3105, 204, 'Jura', 'JU', 1),
(3106, 204, 'Luzern', 'LU', 1),
(3107, 204, 'Neuch&acirc;tel', 'NE', 1),
(3108, 204, 'Nidwald', 'NW', 1),
(3109, 204, 'Obwald', 'OW', 1),
(3110, 204, 'St. Gallen', 'SG', 1),
(3111, 204, 'Schaffhausen', 'SH', 1),
(3112, 204, 'Schwyz', 'SZ', 1),
(3113, 204, 'Solothurn', 'SO', 1),
(3114, 204, 'Thurgau', 'TG', 1),
(3115, 204, 'Ticino', 'TI', 1),
(3116, 204, 'Uri', 'UR', 1),
(3117, 204, 'Valais', 'VS', 1),
(3118, 204, 'Vaud', 'VD', 1),
(3119, 204, 'Zug', 'ZG', 1),
(3120, 204, 'Z&uuml;rich', 'ZH', 1),
(3121, 205, 'Al Hasakah', 'HA', 1),
(3122, 205, 'Al Ladhiqiyah', 'LA', 1),
(3123, 205, 'Al Qunaytirah', 'QU', 1),
(3124, 205, 'Ar Raqqah', 'RQ', 1),
(3125, 205, 'As Suwayda', 'SU', 1),
(3126, 205, 'Dara', 'DA', 1),
(3127, 205, 'Dayr az Zawr', 'DZ', 1),
(3128, 205, 'Dimashq', 'DI', 1),
(3129, 205, 'Halab', 'HL', 1),
(3130, 205, 'Hamah', 'HM', 1),
(3131, 205, 'Hims', 'HI', 1),
(3132, 205, 'Idlib', 'ID', 1);
INSERT INTO `oc_zone` (`zone_id`, `country_id`, `name`, `code`, `status`) VALUES
(3133, 205, 'Rif Dimashq', 'RD', 1),
(3134, 205, 'Tartus', 'TA', 1),
(3135, 206, 'Chang-hua', 'CH', 1),
(3136, 206, 'Chia-i', 'CI', 1),
(3137, 206, 'Hsin-chu', 'HS', 1),
(3138, 206, 'Hua-lien', 'HL', 1),
(3139, 206, 'I-lan', 'IL', 1),
(3140, 206, 'Kao-hsiung county', 'KH', 1),
(3141, 206, 'Kin-men', 'KM', 1),
(3142, 206, 'Lien-chiang', 'LC', 1),
(3143, 206, 'Miao-li', 'ML', 1),
(3144, 206, 'Nan-t''ou', 'NT', 1),
(3145, 206, 'P''eng-hu', 'PH', 1),
(3146, 206, 'P''ing-tung', 'PT', 1),
(3147, 206, 'T''ai-chung', 'TG', 1),
(3148, 206, 'T''ai-nan', 'TA', 1),
(3149, 206, 'T''ai-pei county', 'TP', 1),
(3150, 206, 'T''ai-tung', 'TT', 1),
(3151, 206, 'T''ao-yuan', 'TY', 1),
(3152, 206, 'Yun-lin', 'YL', 1),
(3153, 206, 'Chia-i city', 'CC', 1),
(3154, 206, 'Chi-lung', 'CL', 1),
(3155, 206, 'Hsin-chu', 'HC', 1),
(3156, 206, 'T''ai-chung', 'TH', 1),
(3157, 206, 'T''ai-nan', 'TN', 1),
(3158, 206, 'Kao-hsiung city', 'KC', 1),
(3159, 206, 'T''ai-pei city', 'TC', 1),
(3160, 207, 'Gorno-Badakhstan', 'GB', 1),
(3161, 207, 'Khatlon', 'KT', 1),
(3162, 207, 'Sughd', 'SU', 1),
(3163, 208, 'Arusha', 'AR', 1),
(3164, 208, 'Dar es Salaam', 'DS', 1),
(3165, 208, 'Dodoma', 'DO', 1),
(3166, 208, 'Iringa', 'IR', 1),
(3167, 208, 'Kagera', 'KA', 1),
(3168, 208, 'Kigoma', 'KI', 1),
(3169, 208, 'Kilimanjaro', 'KJ', 1),
(3170, 208, 'Lindi', 'LN', 1),
(3171, 208, 'Manyara', 'MY', 1),
(3172, 208, 'Mara', 'MR', 1),
(3173, 208, 'Mbeya', 'MB', 1),
(3174, 208, 'Morogoro', 'MO', 1),
(3175, 208, 'Mtwara', 'MT', 1),
(3176, 208, 'Mwanza', 'MW', 1),
(3177, 208, 'Pemba North', 'PN', 1),
(3178, 208, 'Pemba South', 'PS', 1),
(3179, 208, 'Pwani', 'PW', 1),
(3180, 208, 'Rukwa', 'RK', 1),
(3181, 208, 'Ruvuma', 'RV', 1),
(3182, 208, 'Shinyanga', 'SH', 1),
(3183, 208, 'Singida', 'SI', 1),
(3184, 208, 'Tabora', 'TB', 1),
(3185, 208, 'Tanga', 'TN', 1),
(3186, 208, 'Zanzibar Central/South', 'ZC', 1),
(3187, 208, 'Zanzibar North', 'ZN', 1),
(3188, 208, 'Zanzibar Urban/West', 'ZU', 1),
(3189, 209, 'Amnat Charoen', 'Amnat Charoen', 1),
(3190, 209, 'Ang Thong', 'Ang Thong', 1),
(3191, 209, 'Ayutthaya', 'Ayutthaya', 1),
(3192, 209, 'Bangkok', 'Bangkok', 1),
(3193, 209, 'Buriram', 'Buriram', 1),
(3194, 209, 'Chachoengsao', 'Chachoengsao', 1),
(3195, 209, 'Chai Nat', 'Chai Nat', 1),
(3196, 209, 'Chaiyaphum', 'Chaiyaphum', 1),
(3197, 209, 'Chanthaburi', 'Chanthaburi', 1),
(3198, 209, 'Chiang Mai', 'Chiang Mai', 1),
(3199, 209, 'Chiang Rai', 'Chiang Rai', 1),
(3200, 209, 'Chon Buri', 'Chon Buri', 1),
(3201, 209, 'Chumphon', 'Chumphon', 1),
(3202, 209, 'Kalasin', 'Kalasin', 1),
(3203, 209, 'Kamphaeng Phet', 'Kamphaeng Phet', 1),
(3204, 209, 'Kanchanaburi', 'Kanchanaburi', 1),
(3205, 209, 'Khon Kaen', 'Khon Kaen', 1),
(3206, 209, 'Krabi', 'Krabi', 1),
(3207, 209, 'Lampang', 'Lampang', 1),
(3208, 209, 'Lamphun', 'Lamphun', 1),
(3209, 209, 'Loei', 'Loei', 1),
(3210, 209, 'Lop Buri', 'Lop Buri', 1),
(3211, 209, 'Mae Hong Son', 'Mae Hong Son', 1),
(3212, 209, 'Maha Sarakham', 'Maha Sarakham', 1),
(3213, 209, 'Mukdahan', 'Mukdahan', 1),
(3214, 209, 'Nakhon Nayok', 'Nakhon Nayok', 1),
(3215, 209, 'Nakhon Pathom', 'Nakhon Pathom', 1),
(3216, 209, 'Nakhon Phanom', 'Nakhon Phanom', 1),
(3217, 209, 'Nakhon Ratchasima', 'Nakhon Ratchasima', 1),
(3218, 209, 'Nakhon Sawan', 'Nakhon Sawan', 1),
(3219, 209, 'Nakhon Si Thammarat', 'Nakhon Si Thammarat', 1),
(3220, 209, 'Nan', 'Nan', 1),
(3221, 209, 'Narathiwat', 'Narathiwat', 1),
(3222, 209, 'Nong Bua Lamphu', 'Nong Bua Lamphu', 1),
(3223, 209, 'Nong Khai', 'Nong Khai', 1),
(3224, 209, 'Nonthaburi', 'Nonthaburi', 1),
(3225, 209, 'Pathum Thani', 'Pathum Thani', 1),
(3226, 209, 'Pattani', 'Pattani', 1),
(3227, 209, 'Phangnga', 'Phangnga', 1),
(3228, 209, 'Phatthalung', 'Phatthalung', 1),
(3229, 209, 'Phayao', 'Phayao', 1),
(3230, 209, 'Phetchabun', 'Phetchabun', 1),
(3231, 209, 'Phetchaburi', 'Phetchaburi', 1),
(3232, 209, 'Phichit', 'Phichit', 1),
(3233, 209, 'Phitsanulok', 'Phitsanulok', 1),
(3234, 209, 'Phrae', 'Phrae', 1),
(3235, 209, 'Phuket', 'Phuket', 1),
(3236, 209, 'Prachin Buri', 'Prachin Buri', 1),
(3237, 209, 'Prachuap Khiri Khan', 'Prachuap Khiri Khan', 1),
(3238, 209, 'Ranong', 'Ranong', 1),
(3239, 209, 'Ratchaburi', 'Ratchaburi', 1),
(3240, 209, 'Rayong', 'Rayong', 1),
(3241, 209, 'Roi Et', 'Roi Et', 1),
(3242, 209, 'Sa Kaeo', 'Sa Kaeo', 1),
(3243, 209, 'Sakon Nakhon', 'Sakon Nakhon', 1),
(3244, 209, 'Samut Prakan', 'Samut Prakan', 1),
(3245, 209, 'Samut Sakhon', 'Samut Sakhon', 1),
(3246, 209, 'Samut Songkhram', 'Samut Songkhram', 1),
(3247, 209, 'Sara Buri', 'Sara Buri', 1),
(3248, 209, 'Satun', 'Satun', 1),
(3249, 209, 'Sing Buri', 'Sing Buri', 1),
(3250, 209, 'Sisaket', 'Sisaket', 1),
(3251, 209, 'Songkhla', 'Songkhla', 1),
(3252, 209, 'Sukhothai', 'Sukhothai', 1),
(3253, 209, 'Suphan Buri', 'Suphan Buri', 1),
(3254, 209, 'Surat Thani', 'Surat Thani', 1),
(3255, 209, 'Surin', 'Surin', 1),
(3256, 209, 'Tak', 'Tak', 1),
(3257, 209, 'Trang', 'Trang', 1),
(3258, 209, 'Trat', 'Trat', 1),
(3259, 209, 'Ubon Ratchathani', 'Ubon Ratchathani', 1),
(3260, 209, 'Udon Thani', 'Udon Thani', 1),
(3261, 209, 'Uthai Thani', 'Uthai Thani', 1),
(3262, 209, 'Uttaradit', 'Uttaradit', 1),
(3263, 209, 'Yala', 'Yala', 1),
(3264, 209, 'Yasothon', 'Yasothon', 1),
(3265, 210, 'Kara', 'K', 1),
(3266, 210, 'Plateaux', 'P', 1),
(3267, 210, 'Savanes', 'S', 1),
(3268, 210, 'Centrale', 'C', 1),
(3269, 210, 'Maritime', 'M', 1),
(3270, 211, 'Atafu', 'A', 1),
(3271, 211, 'Fakaofo', 'F', 1),
(3272, 211, 'Nukunonu', 'N', 1),
(3273, 212, 'Ha''apai', 'H', 1),
(3274, 212, 'Tongatapu', 'T', 1),
(3275, 212, 'Vava''u', 'V', 1),
(3276, 213, 'Couva/Tabaquite/Talparo', 'CT', 1),
(3277, 213, 'Diego Martin', 'DM', 1),
(3278, 213, 'Mayaro/Rio Claro', 'MR', 1),
(3279, 213, 'Penal/Debe', 'PD', 1),
(3280, 213, 'Princes Town', 'PT', 1),
(3281, 213, 'Sangre Grande', 'SG', 1),
(3282, 213, 'San Juan/Laventille', 'SL', 1),
(3283, 213, 'Siparia', 'SI', 1),
(3284, 213, 'Tunapuna/Piarco', 'TP', 1),
(3285, 213, 'Port of Spain', 'PS', 1),
(3286, 213, 'San Fernando', 'SF', 1),
(3287, 213, 'Arima', 'AR', 1),
(3288, 213, 'Point Fortin', 'PF', 1),
(3289, 213, 'Chaguanas', 'CH', 1),
(3290, 213, 'Tobago', 'TO', 1),
(3291, 214, 'Ariana', 'AR', 1),
(3292, 214, 'Beja', 'BJ', 1),
(3293, 214, 'Ben Arous', 'BA', 1),
(3294, 214, 'Bizerte', 'BI', 1),
(3295, 214, 'Gabes', 'GB', 1),
(3296, 214, 'Gafsa', 'GF', 1),
(3297, 214, 'Jendouba', 'JE', 1),
(3298, 214, 'Kairouan', 'KR', 1),
(3299, 214, 'Kasserine', 'KS', 1),
(3300, 214, 'Kebili', 'KB', 1),
(3301, 214, 'Kef', 'KF', 1),
(3302, 214, 'Mahdia', 'MH', 1),
(3303, 214, 'Manouba', 'MN', 1),
(3304, 214, 'Medenine', 'ME', 1),
(3305, 214, 'Monastir', 'MO', 1),
(3306, 214, 'Nabeul', 'NA', 1),
(3307, 214, 'Sfax', 'SF', 1),
(3308, 214, 'Sidi', 'SD', 1),
(3309, 214, 'Siliana', 'SL', 1),
(3310, 214, 'Sousse', 'SO', 1),
(3311, 214, 'Tataouine', 'TA', 1),
(3312, 214, 'Tozeur', 'TO', 1),
(3313, 214, 'Tunis', 'TU', 1),
(3314, 214, 'Zaghouan', 'ZA', 1),
(3315, 215, 'Adana', 'ADA', 1),
(3316, 215, 'Adıyaman', 'ADI', 1),
(3317, 215, 'Afyonkarahisar', 'AFY', 1),
(3318, 215, 'Ağrı', 'AGR', 1),
(3319, 215, 'Aksaray', 'AKS', 1),
(3320, 215, 'Amasya', 'AMA', 1),
(3321, 215, 'Ankara', 'ANK', 1),
(3322, 215, 'Antalya', 'ANT', 1),
(3323, 215, 'Ardahan', 'ARD', 1),
(3324, 215, 'Artvin', 'ART', 1),
(3325, 215, 'Aydın', 'AYI', 1),
(3326, 215, 'Balıkesir', 'BAL', 1),
(3327, 215, 'Bartın', 'BAR', 1),
(3328, 215, 'Batman', 'BAT', 1),
(3329, 215, 'Bayburt', 'BAY', 1),
(3330, 215, 'Bilecik', 'BIL', 1),
(3331, 215, 'Bingöl', 'BIN', 1),
(3332, 215, 'Bitlis', 'BIT', 1),
(3333, 215, 'Bolu', 'BOL', 1),
(3334, 215, 'Burdur', 'BRD', 1),
(3335, 215, 'Bursa', 'BRS', 1),
(3336, 215, 'Çanakkale', 'CKL', 1),
(3337, 215, 'Çankırı', 'CKR', 1),
(3338, 215, 'Çorum', 'COR', 1),
(3339, 215, 'Denizli', 'DEN', 1),
(3340, 215, 'Diyarbakır', 'DIY', 1),
(3341, 215, 'Düzce', 'DUZ', 1),
(3342, 215, 'Edirne', 'EDI', 1),
(3343, 215, 'Elazığ', 'ELA', 1),
(3344, 215, 'Erzincan', 'EZC', 1),
(3345, 215, 'Erzurum', 'EZR', 1),
(3346, 215, 'Eskişehir', 'ESK', 1),
(3347, 215, 'Gaziantep', 'GAZ', 1),
(3348, 215, 'Giresun', 'GIR', 1),
(3349, 215, 'Gümüşhane', 'GMS', 1),
(3350, 215, 'Hakkari', 'HKR', 1),
(3351, 215, 'Hatay', 'HTY', 1),
(3352, 215, 'Iğdır', 'IGD', 1),
(3353, 215, 'Isparta', 'ISP', 1),
(3354, 215, 'İstanbul', 'IST', 1),
(3355, 215, 'İzmir', 'IZM', 1),
(3356, 215, 'Kahramanmaraş', 'KAH', 1),
(3357, 215, 'Karabük', 'KRB', 1),
(3358, 215, 'Karaman', 'KRM', 1),
(3359, 215, 'Kars', 'KRS', 1),
(3360, 215, 'Kastamonu', 'KAS', 1),
(3361, 215, 'Kayseri', 'KAY', 1),
(3362, 215, 'Kilis', 'KLS', 1),
(3363, 215, 'Kırıkkale', 'KRK', 1),
(3364, 215, 'Kırklareli', 'KLR', 1),
(3365, 215, 'Kırşehir', 'KRH', 1),
(3366, 215, 'Kocaeli', 'KOC', 1),
(3367, 215, 'Konya', 'KON', 1),
(3368, 215, 'Kütahya', 'KUT', 1),
(3369, 215, 'Malatya', 'MAL', 1),
(3370, 215, 'Manisa', 'MAN', 1),
(3371, 215, 'Mardin', 'MAR', 1),
(3372, 215, 'Mersin', 'MER', 1),
(3373, 215, 'Muğla', 'MUG', 1),
(3374, 215, 'Muş', 'MUS', 1),
(3375, 215, 'Nevşehir', 'NEV', 1),
(3376, 215, 'Niğde', 'NIG', 1),
(3377, 215, 'Ordu', 'ORD', 1),
(3378, 215, 'Osmaniye', 'OSM', 1),
(3379, 215, 'Rize', 'RIZ', 1),
(3380, 215, 'Sakarya', 'SAK', 1),
(3381, 215, 'Samsun', 'SAM', 1),
(3382, 215, 'Şanlıurfa', 'SAN', 1),
(3383, 215, 'Siirt', 'SII', 1),
(3384, 215, 'Sinop', 'SIN', 1),
(3385, 215, 'Şırnak', 'SIR', 1),
(3386, 215, 'Sivas', 'SIV', 1),
(3387, 215, 'Tekirdağ', 'TEL', 1),
(3388, 215, 'Tokat', 'TOK', 1),
(3389, 215, 'Trabzon', 'TRA', 1),
(3390, 215, 'Tunceli', 'TUN', 1),
(3391, 215, 'Uşak', 'USK', 1),
(3392, 215, 'Van', 'VAN', 1),
(3393, 215, 'Yalova', 'YAL', 1),
(3394, 215, 'Yozgat', 'YOZ', 1),
(3395, 215, 'Zonguldak', 'ZON', 1),
(3396, 216, 'Ahal Welayaty', 'A', 1),
(3397, 216, 'Balkan Welayaty', 'B', 1),
(3398, 216, 'Dashhowuz Welayaty', 'D', 1),
(3399, 216, 'Lebap Welayaty', 'L', 1),
(3400, 216, 'Mary Welayaty', 'M', 1),
(3401, 217, 'Ambergris Cays', 'AC', 1),
(3402, 217, 'Dellis Cay', 'DC', 1),
(3403, 217, 'French Cay', 'FC', 1),
(3404, 217, 'Little Water Cay', 'LW', 1),
(3405, 217, 'Parrot Cay', 'RC', 1),
(3406, 217, 'Pine Cay', 'PN', 1),
(3407, 217, 'Salt Cay', 'SL', 1),
(3408, 217, 'Grand Turk', 'GT', 1),
(3409, 217, 'South Caicos', 'SC', 1),
(3410, 217, 'East Caicos', 'EC', 1),
(3411, 217, 'Middle Caicos', 'MC', 1),
(3412, 217, 'North Caicos', 'NC', 1),
(3413, 217, 'Providenciales', 'PR', 1),
(3414, 217, 'West Caicos', 'WC', 1),
(3415, 218, 'Nanumanga', 'NMG', 1),
(3416, 218, 'Niulakita', 'NLK', 1),
(3417, 218, 'Niutao', 'NTO', 1),
(3418, 218, 'Funafuti', 'FUN', 1),
(3419, 218, 'Nanumea', 'NME', 1),
(3420, 218, 'Nui', 'NUI', 1),
(3421, 218, 'Nukufetau', 'NFT', 1),
(3422, 218, 'Nukulaelae', 'NLL', 1),
(3423, 218, 'Vaitupu', 'VAI', 1),
(3424, 219, 'Kalangala', 'KAL', 1),
(3425, 219, 'Kampala', 'KMP', 1),
(3426, 219, 'Kayunga', 'KAY', 1),
(3427, 219, 'Kiboga', 'KIB', 1),
(3428, 219, 'Luwero', 'LUW', 1),
(3429, 219, 'Masaka', 'MAS', 1),
(3430, 219, 'Mpigi', 'MPI', 1),
(3431, 219, 'Mubende', 'MUB', 1),
(3432, 219, 'Mukono', 'MUK', 1),
(3433, 219, 'Nakasongola', 'NKS', 1),
(3434, 219, 'Rakai', 'RAK', 1),
(3435, 219, 'Sembabule', 'SEM', 1),
(3436, 219, 'Wakiso', 'WAK', 1),
(3437, 219, 'Bugiri', 'BUG', 1),
(3438, 219, 'Busia', 'BUS', 1),
(3439, 219, 'Iganga', 'IGA', 1),
(3440, 219, 'Jinja', 'JIN', 1),
(3441, 219, 'Kaberamaido', 'KAB', 1),
(3442, 219, 'Kamuli', 'KML', 1),
(3443, 219, 'Kapchorwa', 'KPC', 1),
(3444, 219, 'Katakwi', 'KTK', 1),
(3445, 219, 'Kumi', 'KUM', 1),
(3446, 219, 'Mayuge', 'MAY', 1),
(3447, 219, 'Mbale', 'MBA', 1),
(3448, 219, 'Pallisa', 'PAL', 1),
(3449, 219, 'Sironko', 'SIR', 1),
(3450, 219, 'Soroti', 'SOR', 1),
(3451, 219, 'Tororo', 'TOR', 1),
(3452, 219, 'Adjumani', 'ADJ', 1),
(3453, 219, 'Apac', 'APC', 1),
(3454, 219, 'Arua', 'ARU', 1),
(3455, 219, 'Gulu', 'GUL', 1),
(3456, 219, 'Kitgum', 'KIT', 1),
(3457, 219, 'Kotido', 'KOT', 1),
(3458, 219, 'Lira', 'LIR', 1),
(3459, 219, 'Moroto', 'MRT', 1),
(3460, 219, 'Moyo', 'MOY', 1),
(3461, 219, 'Nakapiripirit', 'NAK', 1),
(3462, 219, 'Nebbi', 'NEB', 1),
(3463, 219, 'Pader', 'PAD', 1),
(3464, 219, 'Yumbe', 'YUM', 1),
(3465, 219, 'Bundibugyo', 'BUN', 1),
(3466, 219, 'Bushenyi', 'BSH', 1),
(3467, 219, 'Hoima', 'HOI', 1),
(3468, 219, 'Kabale', 'KBL', 1),
(3469, 219, 'Kabarole', 'KAR', 1),
(3470, 219, 'Kamwenge', 'KAM', 1),
(3471, 219, 'Kanungu', 'KAN', 1),
(3472, 219, 'Kasese', 'KAS', 1),
(3473, 219, 'Kibaale', 'KBA', 1),
(3474, 219, 'Kisoro', 'KIS', 1),
(3475, 219, 'Kyenjojo', 'KYE', 1),
(3476, 219, 'Masindi', 'MSN', 1),
(3477, 219, 'Mbarara', 'MBR', 1),
(3478, 219, 'Ntungamo', 'NTU', 1),
(3479, 219, 'Rukungiri', 'RUK', 1),
(3480, 220, 'Cherkas''ka Oblast''', '71', 1),
(3481, 220, 'Chernihivs''ka Oblast''', '74', 1),
(3482, 220, 'Chernivets''ka Oblast''', '77', 1),
(3483, 220, 'Crimea', '43', 1),
(3484, 220, 'Dnipropetrovs''ka Oblast''', '12', 1),
(3485, 220, 'Donets''ka Oblast''', '14', 1),
(3486, 220, 'Ivano-Frankivs''ka Oblast''', '26', 1),
(3487, 220, 'Khersons''ka Oblast''', '65', 1),
(3488, 220, 'Khmel''nyts''ka Oblast''', '68', 1),
(3489, 220, 'Kirovohrads''ka Oblast''', '35', 1),
(3490, 220, 'Kyiv', '30', 1),
(3491, 220, 'Kyivs''ka Oblast''', '32', 1),
(3492, 220, 'Luhans''ka Oblast''', '09', 1),
(3493, 220, 'L''vivs''ka Oblast''', '46', 1),
(3494, 220, 'Mykolayivs''ka Oblast''', '48', 1),
(3495, 220, 'Odes''ka Oblast''', '51', 1),
(3496, 220, 'Poltavs''ka Oblast''', '53', 1),
(3497, 220, 'Rivnens''ka Oblast''', '56', 1),
(3498, 220, 'Sevastopol''', '40', 1),
(3499, 220, 'Sums''ka Oblast''', '59', 1),
(3500, 220, 'Ternopil''s''ka Oblast''', '61', 1),
(3501, 220, 'Vinnyts''ka Oblast''', '05', 1),
(3502, 220, 'Volyns''ka Oblast''', '07', 1),
(3503, 220, 'Zakarpats''ka Oblast''', '21', 1),
(3504, 220, 'Zaporiz''ka Oblast''', '23', 1),
(3505, 220, 'Zhytomyrs''ka oblast''', '18', 1),
(3506, 221, 'Abu Dhabi', 'ADH', 1),
(3507, 221, '''Ajman', 'AJ', 1),
(3508, 221, 'Al Fujayrah', 'FU', 1),
(3509, 221, 'Ash Shariqah', 'SH', 1),
(3510, 221, 'Dubai', 'DU', 1),
(3511, 221, 'R''as al Khaymah', 'RK', 1),
(3512, 221, 'Umm al Qaywayn', 'UQ', 1),
(3513, 222, 'Aberdeen', 'ABN', 1),
(3514, 222, 'Aberdeenshire', 'ABNS', 1),
(3515, 222, 'Anglesey', 'ANG', 1),
(3516, 222, 'Angus', 'AGS', 1),
(3517, 222, 'Argyll and Bute', 'ARY', 1),
(3518, 222, 'Bedfordshire', 'BEDS', 1),
(3519, 222, 'Berkshire', 'BERKS', 1),
(3520, 222, 'Blaenau Gwent', 'BLA', 1),
(3521, 222, 'Bridgend', 'BRI', 1),
(3522, 222, 'Bristol', 'BSTL', 1),
(3523, 222, 'Buckinghamshire', 'BUCKS', 1),
(3524, 222, 'Caerphilly', 'CAE', 1),
(3525, 222, 'Cambridgeshire', 'CAMBS', 1),
(3526, 222, 'Cardiff', 'CDF', 1),
(3527, 222, 'Carmarthenshire', 'CARM', 1),
(3528, 222, 'Ceredigion', 'CDGN', 1),
(3529, 222, 'Cheshire', 'CHES', 1),
(3530, 222, 'Clackmannanshire', 'CLACK', 1),
(3531, 222, 'Conwy', 'CON', 1),
(3532, 222, 'Cornwall', 'CORN', 1),
(3533, 222, 'Denbighshire', 'DNBG', 1),
(3534, 222, 'Derbyshire', 'DERBY', 1),
(3535, 222, 'Devon', 'DVN', 1),
(3536, 222, 'Dorset', 'DOR', 1),
(3537, 222, 'Dumfries and Galloway', 'DGL', 1),
(3538, 222, 'Dundee', 'DUND', 1),
(3539, 222, 'Durham', 'DHM', 1),
(3540, 222, 'East Ayrshire', 'ARYE', 1),
(3541, 222, 'East Dunbartonshire', 'DUNBE', 1),
(3542, 222, 'East Lothian', 'LOTE', 1),
(3543, 222, 'East Renfrewshire', 'RENE', 1),
(3544, 222, 'East Riding of Yorkshire', 'ERYS', 1),
(3545, 222, 'East Sussex', 'SXE', 1),
(3546, 222, 'Edinburgh', 'EDIN', 1),
(3547, 222, 'Essex', 'ESX', 1),
(3548, 222, 'Falkirk', 'FALK', 1),
(3549, 222, 'Fife', 'FFE', 1),
(3550, 222, 'Flintshire', 'FLINT', 1),
(3551, 222, 'Glasgow', 'GLAS', 1),
(3552, 222, 'Gloucestershire', 'GLOS', 1),
(3553, 222, 'Greater London', 'LDN', 1),
(3554, 222, 'Greater Manchester', 'MCH', 1),
(3555, 222, 'Gwynedd', 'GDD', 1),
(3556, 222, 'Hampshire', 'HANTS', 1),
(3557, 222, 'Herefordshire', 'HWR', 1),
(3558, 222, 'Hertfordshire', 'HERTS', 1),
(3559, 222, 'Highlands', 'HLD', 1),
(3560, 222, 'Inverclyde', 'IVER', 1),
(3561, 222, 'Isle of Wight', 'IOW', 1),
(3562, 222, 'Kent', 'KNT', 1),
(3563, 222, 'Lancashire', 'LANCS', 1),
(3564, 222, 'Leicestershire', 'LEICS', 1),
(3565, 222, 'Lincolnshire', 'LINCS', 1),
(3566, 222, 'Merseyside', 'MSY', 1),
(3567, 222, 'Merthyr Tydfil', 'MERT', 1),
(3568, 222, 'Midlothian', 'MLOT', 1),
(3569, 222, 'Monmouthshire', 'MMOUTH', 1),
(3570, 222, 'Moray', 'MORAY', 1),
(3571, 222, 'Neath Port Talbot', 'NPRTAL', 1),
(3572, 222, 'Newport', 'NEWPT', 1),
(3573, 222, 'Norfolk', 'NOR', 1),
(3574, 222, 'North Ayrshire', 'ARYN', 1),
(3575, 222, 'North Lanarkshire', 'LANN', 1),
(3576, 222, 'North Yorkshire', 'YSN', 1),
(3577, 222, 'Northamptonshire', 'NHM', 1),
(3578, 222, 'Northumberland', 'NLD', 1),
(3579, 222, 'Nottinghamshire', 'NOT', 1),
(3580, 222, 'Orkney Islands', 'ORK', 1),
(3581, 222, 'Oxfordshire', 'OFE', 1),
(3582, 222, 'Pembrokeshire', 'PEM', 1),
(3583, 222, 'Perth and Kinross', 'PERTH', 1),
(3584, 222, 'Powys', 'PWS', 1),
(3585, 222, 'Renfrewshire', 'REN', 1),
(3586, 222, 'Rhondda Cynon Taff', 'RHON', 1),
(3587, 222, 'Rutland', 'RUT', 1),
(3588, 222, 'Scottish Borders', 'BOR', 1),
(3589, 222, 'Shetland Islands', 'SHET', 1),
(3590, 222, 'Shropshire', 'SPE', 1),
(3591, 222, 'Somerset', 'SOM', 1),
(3592, 222, 'South Ayrshire', 'ARYS', 1),
(3593, 222, 'South Lanarkshire', 'LANS', 1),
(3594, 222, 'South Yorkshire', 'YSS', 1),
(3595, 222, 'Staffordshire', 'SFD', 1),
(3596, 222, 'Stirling', 'STIR', 1),
(3597, 222, 'Suffolk', 'SFK', 1),
(3598, 222, 'Surrey', 'SRY', 1),
(3599, 222, 'Swansea', 'SWAN', 1),
(3600, 222, 'Torfaen', 'TORF', 1),
(3601, 222, 'Tyne and Wear', 'TWR', 1),
(3602, 222, 'Vale of Glamorgan', 'VGLAM', 1),
(3603, 222, 'Warwickshire', 'WARKS', 1),
(3604, 222, 'West Dunbartonshire', 'WDUN', 1),
(3605, 222, 'West Lothian', 'WLOT', 1),
(3606, 222, 'West Midlands', 'WMD', 1),
(3607, 222, 'West Sussex', 'SXW', 1),
(3608, 222, 'West Yorkshire', 'YSW', 1),
(3609, 222, 'Western Isles', 'WIL', 1),
(3610, 222, 'Wiltshire', 'WLT', 1),
(3611, 222, 'Worcestershire', 'WORCS', 1),
(3612, 222, 'Wrexham', 'WRX', 1),
(3613, 223, 'Alabama', 'AL', 1),
(3614, 223, 'Alaska', 'AK', 1),
(3615, 223, 'American Samoa', 'AS', 1),
(3616, 223, 'Arizona', 'AZ', 1),
(3617, 223, 'Arkansas', 'AR', 1),
(3618, 223, 'Armed Forces Africa', 'AF', 1),
(3619, 223, 'Armed Forces Americas', 'AA', 1),
(3620, 223, 'Armed Forces Canada', 'AC', 1),
(3621, 223, 'Armed Forces Europe', 'AE', 1),
(3622, 223, 'Armed Forces Middle East', 'AM', 1),
(3623, 223, 'Armed Forces Pacific', 'AP', 1),
(3624, 223, 'California', 'CA', 1),
(3625, 223, 'Colorado', 'CO', 1),
(3626, 223, 'Connecticut', 'CT', 1),
(3627, 223, 'Delaware', 'DE', 1),
(3628, 223, 'District of Columbia', 'DC', 1),
(3629, 223, 'Federated States Of Micronesia', 'FM', 1),
(3630, 223, 'Florida', 'FL', 1),
(3631, 223, 'Georgia', 'GA', 1),
(3632, 223, 'Guam', 'GU', 1),
(3633, 223, 'Hawaii', 'HI', 1),
(3634, 223, 'Idaho', 'ID', 1),
(3635, 223, 'Illinois', 'IL', 1),
(3636, 223, 'Indiana', 'IN', 1),
(3637, 223, 'Iowa', 'IA', 1),
(3638, 223, 'Kansas', 'KS', 1),
(3639, 223, 'Kentucky', 'KY', 1),
(3640, 223, 'Louisiana', 'LA', 1),
(3641, 223, 'Maine', 'ME', 1),
(3642, 223, 'Marshall Islands', 'MH', 1),
(3643, 223, 'Maryland', 'MD', 1),
(3644, 223, 'Massachusetts', 'MA', 1),
(3645, 223, 'Michigan', 'MI', 1),
(3646, 223, 'Minnesota', 'MN', 1),
(3647, 223, 'Mississippi', 'MS', 1),
(3648, 223, 'Missouri', 'MO', 1),
(3649, 223, 'Montana', 'MT', 1),
(3650, 223, 'Nebraska', 'NE', 1),
(3651, 223, 'Nevada', 'NV', 1),
(3652, 223, 'New Hampshire', 'NH', 1),
(3653, 223, 'New Jersey', 'NJ', 1),
(3654, 223, 'New Mexico', 'NM', 1),
(3655, 223, 'New York', 'NY', 1),
(3656, 223, 'North Carolina', 'NC', 1),
(3657, 223, 'North Dakota', 'ND', 1),
(3658, 223, 'Northern Mariana Islands', 'MP', 1),
(3659, 223, 'Ohio', 'OH', 1),
(3660, 223, 'Oklahoma', 'OK', 1),
(3661, 223, 'Oregon', 'OR', 1),
(3662, 223, 'Palau', 'PW', 1),
(3663, 223, 'Pennsylvania', 'PA', 1),
(3664, 223, 'Puerto Rico', 'PR', 1),
(3665, 223, 'Rhode Island', 'RI', 1),
(3666, 223, 'South Carolina', 'SC', 1),
(3667, 223, 'South Dakota', 'SD', 1),
(3668, 223, 'Tennessee', 'TN', 1),
(3669, 223, 'Texas', 'TX', 1),
(3670, 223, 'Utah', 'UT', 1),
(3671, 223, 'Vermont', 'VT', 1),
(3672, 223, 'Virgin Islands', 'VI', 1),
(3673, 223, 'Virginia', 'VA', 1),
(3674, 223, 'Washington', 'WA', 1),
(3675, 223, 'West Virginia', 'WV', 1),
(3676, 223, 'Wisconsin', 'WI', 1),
(3677, 223, 'Wyoming', 'WY', 1),
(3678, 224, 'Baker Island', 'BI', 1),
(3679, 224, 'Howland Island', 'HI', 1),
(3680, 224, 'Jarvis Island', 'JI', 1),
(3681, 224, 'Johnston Atoll', 'JA', 1),
(3682, 224, 'Kingman Reef', 'KR', 1),
(3683, 224, 'Midway Atoll', 'MA', 1),
(3684, 224, 'Navassa Island', 'NI', 1),
(3685, 224, 'Palmyra Atoll', 'PA', 1),
(3686, 224, 'Wake Island', 'WI', 1),
(3687, 225, 'Artigas', 'AR', 1),
(3688, 225, 'Canelones', 'CA', 1),
(3689, 225, 'Cerro Largo', 'CL', 1),
(3690, 225, 'Colonia', 'CO', 1),
(3691, 225, 'Durazno', 'DU', 1),
(3692, 225, 'Flores', 'FS', 1),
(3693, 225, 'Florida', 'FA', 1),
(3694, 225, 'Lavalleja', 'LA', 1),
(3695, 225, 'Maldonado', 'MA', 1),
(3696, 225, 'Montevideo', 'MO', 1),
(3697, 225, 'Paysandu', 'PA', 1),
(3698, 225, 'Rio Negro', 'RN', 1),
(3699, 225, 'Rivera', 'RV', 1),
(3700, 225, 'Rocha', 'RO', 1),
(3701, 225, 'Salto', 'SL', 1),
(3702, 225, 'San Jose', 'SJ', 1),
(3703, 225, 'Soriano', 'SO', 1),
(3704, 225, 'Tacuarembo', 'TA', 1),
(3705, 225, 'Treinta y Tres', 'TT', 1),
(3706, 226, 'Andijon', 'AN', 1),
(3707, 226, 'Buxoro', 'BU', 1),
(3708, 226, 'Farg''ona', 'FA', 1),
(3709, 226, 'Jizzax', 'JI', 1),
(3710, 226, 'Namangan', 'NG', 1),
(3711, 226, 'Navoiy', 'NW', 1),
(3712, 226, 'Qashqadaryo', 'QA', 1),
(3713, 226, 'Qoraqalpog''iston Republikasi', 'QR', 1),
(3714, 226, 'Samarqand', 'SA', 1),
(3715, 226, 'Sirdaryo', 'SI', 1),
(3716, 226, 'Surxondaryo', 'SU', 1),
(3717, 226, 'Toshkent City', 'TK', 1),
(3718, 226, 'Toshkent Region', 'TO', 1),
(3719, 226, 'Xorazm', 'XO', 1),
(3720, 227, 'Malampa', 'MA', 1),
(3721, 227, 'Penama', 'PE', 1),
(3722, 227, 'Sanma', 'SA', 1),
(3723, 227, 'Shefa', 'SH', 1),
(3724, 227, 'Tafea', 'TA', 1),
(3725, 227, 'Torba', 'TO', 1),
(3726, 229, 'Amazonas', 'AM', 1),
(3727, 229, 'Anzoategui', 'AN', 1),
(3728, 229, 'Apure', 'AP', 1),
(3729, 229, 'Aragua', 'AR', 1),
(3730, 229, 'Barinas', 'BA', 1),
(3731, 229, 'Bolivar', 'BO', 1),
(3732, 229, 'Carabobo', 'CA', 1),
(3733, 229, 'Cojedes', 'CO', 1),
(3734, 229, 'Delta Amacuro', 'DA', 1),
(3735, 229, 'Dependencias Federales', 'DF', 1),
(3736, 229, 'Distrito Federal', 'DI', 1),
(3737, 229, 'Falcon', 'FA', 1),
(3738, 229, 'Guarico', 'GU', 1),
(3739, 229, 'Lara', 'LA', 1),
(3740, 229, 'Merida', 'ME', 1),
(3741, 229, 'Miranda', 'MI', 1),
(3742, 229, 'Monagas', 'MO', 1),
(3743, 229, 'Nueva Esparta', 'NE', 1),
(3744, 229, 'Portuguesa', 'PO', 1),
(3745, 229, 'Sucre', 'SU', 1),
(3746, 229, 'Tachira', 'TA', 1),
(3747, 229, 'Trujillo', 'TR', 1),
(3748, 229, 'Vargas', 'VA', 1),
(3749, 229, 'Yaracuy', 'YA', 1),
(3750, 229, 'Zulia', 'ZU', 1),
(3751, 230, 'An Giang', 'AG', 1),
(3752, 230, 'Bac Giang', 'BG', 1),
(3753, 230, 'Bac Kan', 'BK', 1),
(3754, 230, 'Bac Lieu', 'BL', 1),
(3755, 230, 'Bac Ninh', 'BC', 1),
(3756, 230, 'Ba Ria-Vung Tau', 'BR', 1),
(3757, 230, 'Ben Tre', 'BN', 1),
(3758, 230, 'Binh Dinh', 'BH', 1),
(3759, 230, 'Binh Duong', 'BU', 1),
(3760, 230, 'Binh Phuoc', 'BP', 1),
(3761, 230, 'Binh Thuan', 'BT', 1),
(3762, 230, 'Ca Mau', 'CM', 1),
(3763, 230, 'Can Tho', 'CT', 1),
(3764, 230, 'Cao Bang', 'CB', 1),
(3765, 230, 'Dak Lak', 'DL', 1),
(3766, 230, 'Dak Nong', 'DG', 1),
(3767, 230, 'Da Nang', 'DN', 1),
(3768, 230, 'Dien Bien', 'DB', 1),
(3769, 230, 'Dong Nai', 'DI', 1),
(3770, 230, 'Dong Thap', 'DT', 1),
(3771, 230, 'Gia Lai', 'GL', 1),
(3772, 230, 'Ha Giang', 'HG', 1),
(3773, 230, 'Hai Duong', 'HD', 1),
(3774, 230, 'Hai Phong', 'HP', 1),
(3775, 230, 'Ha Nam', 'HM', 1),
(3776, 230, 'Ha Noi', 'HI', 1),
(3777, 230, 'Ha Tay', 'HT', 1),
(3778, 230, 'Ha Tinh', 'HH', 1),
(3779, 230, 'Hoa Binh', 'HB', 1),
(3780, 230, 'Ho Chi Minh City', 'HC', 1),
(3781, 230, 'Hau Giang', 'HU', 1),
(3782, 230, 'Hung Yen', 'HY', 1),
(3783, 232, 'Saint Croix', 'C', 1),
(3784, 232, 'Saint John', 'J', 1),
(3785, 232, 'Saint Thomas', 'T', 1),
(3786, 233, 'Alo', 'A', 1),
(3787, 233, 'Sigave', 'S', 1),
(3788, 233, 'Wallis', 'W', 1),
(3789, 235, 'Abyan', 'AB', 1),
(3790, 235, 'Adan', 'AD', 1),
(3791, 235, 'Amran', 'AM', 1),
(3792, 235, 'Al Bayda', 'BA', 1),
(3793, 235, 'Ad Dali', 'DA', 1),
(3794, 235, 'Dhamar', 'DH', 1),
(3795, 235, 'Hadramawt', 'HD', 1),
(3796, 235, 'Hajjah', 'HJ', 1),
(3797, 235, 'Al Hudaydah', 'HU', 1),
(3798, 235, 'Ibb', 'IB', 1),
(3799, 235, 'Al Jawf', 'JA', 1),
(3800, 235, 'Lahij', 'LA', 1),
(3801, 235, 'Ma''rib', 'MA', 1),
(3802, 235, 'Al Mahrah', 'MR', 1),
(3803, 235, 'Al Mahwit', 'MW', 1),
(3804, 235, 'Sa''dah', 'SD', 1),
(3805, 235, 'San''a', 'SN', 1),
(3806, 235, 'Shabwah', 'SH', 1),
(3807, 235, 'Ta''izz', 'TA', 1),
(3812, 237, 'Bas-Congo', 'BC', 1),
(3813, 237, 'Bandundu', 'BN', 1),
(3814, 237, 'Equateur', 'EQ', 1),
(3815, 237, 'Katanga', 'KA', 1),
(3816, 237, 'Kasai-Oriental', 'KE', 1),
(3817, 237, 'Kinshasa', 'KN', 1),
(3818, 237, 'Kasai-Occidental', 'KW', 1),
(3819, 237, 'Maniema', 'MA', 1),
(3820, 237, 'Nord-Kivu', 'NK', 1),
(3821, 237, 'Orientale', 'OR', 1),
(3822, 237, 'Sud-Kivu', 'SK', 1),
(3823, 238, 'Central', 'CE', 1),
(3824, 238, 'Copperbelt', 'CB', 1),
(3825, 238, 'Eastern', 'EA', 1),
(3826, 238, 'Luapula', 'LP', 1),
(3827, 238, 'Lusaka', 'LK', 1),
(3828, 238, 'Northern', 'NO', 1),
(3829, 238, 'North-Western', 'NW', 1),
(3830, 238, 'Southern', 'SO', 1),
(3831, 238, 'Western', 'WE', 1),
(3832, 239, 'Bulawayo', 'BU', 1),
(3833, 239, 'Harare', 'HA', 1),
(3834, 239, 'Manicaland', 'ML', 1),
(3835, 239, 'Mashonaland Central', 'MC', 1),
(3836, 239, 'Mashonaland East', 'ME', 1),
(3837, 239, 'Mashonaland West', 'MW', 1),
(3838, 239, 'Masvingo', 'MV', 1),
(3839, 239, 'Matabeleland North', 'MN', 1),
(3840, 239, 'Matabeleland South', 'MS', 1),
(3841, 239, 'Midlands', 'MD', 1),
(3861, 105, 'Campobasso', 'CB', 1),
(3862, 105, 'Carbonia-Iglesias', 'CI', 1),
(3863, 105, 'Caserta', 'CE', 1),
(3864, 105, 'Catania', 'CT', 1),
(3865, 105, 'Catanzaro', 'CZ', 1),
(3866, 105, 'Chieti', 'CH', 1),
(3867, 105, 'Como', 'CO', 1),
(3868, 105, 'Cosenza', 'CS', 1),
(3869, 105, 'Cremona', 'CR', 1),
(3870, 105, 'Crotone', 'KR', 1),
(3871, 105, 'Cuneo', 'CN', 1),
(3872, 105, 'Enna', 'EN', 1),
(3873, 105, 'Ferrara', 'FE', 1),
(3874, 105, 'Firenze', 'FI', 1),
(3875, 105, 'Foggia', 'FG', 1),
(3876, 105, 'Forli-Cesena', 'FC', 1),
(3877, 105, 'Frosinone', 'FR', 1),
(3878, 105, 'Genova', 'GE', 1),
(3879, 105, 'Gorizia', 'GO', 1),
(3880, 105, 'Grosseto', 'GR', 1),
(3881, 105, 'Imperia', 'IM', 1),
(3882, 105, 'Isernia', 'IS', 1),
(3883, 105, 'L&#39;Aquila', 'AQ', 1),
(3884, 105, 'La Spezia', 'SP', 1),
(3885, 105, 'Latina', 'LT', 1),
(3886, 105, 'Lecce', 'LE', 1),
(3887, 105, 'Lecco', 'LC', 1),
(3888, 105, 'Livorno', 'LI', 1),
(3889, 105, 'Lodi', 'LO', 1),
(3890, 105, 'Lucca', 'LU', 1),
(3891, 105, 'Macerata', 'MC', 1),
(3892, 105, 'Mantova', 'MN', 1),
(3893, 105, 'Massa-Carrara', 'MS', 1),
(3894, 105, 'Matera', 'MT', 1),
(3895, 105, 'Medio Campidano', 'VS', 1),
(3896, 105, 'Messina', 'ME', 1),
(3897, 105, 'Milano', 'MI', 1),
(3898, 105, 'Modena', 'MO', 1),
(3899, 105, 'Napoli', 'NA', 1),
(3900, 105, 'Novara', 'NO', 1),
(3901, 105, 'Nuoro', 'NU', 1),
(3902, 105, 'Ogliastra', 'OG', 1),
(3903, 105, 'Olbia-Tempio', 'OT', 1),
(3904, 105, 'Oristano', 'OR', 1),
(3905, 105, 'Padova', 'PD', 1),
(3906, 105, 'Palermo', 'PA', 1),
(3907, 105, 'Parma', 'PR', 1),
(3908, 105, 'Pavia', 'PV', 1),
(3909, 105, 'Perugia', 'PG', 1),
(3910, 105, 'Pesaro e Urbino', 'PU', 1),
(3911, 105, 'Pescara', 'PE', 1),
(3912, 105, 'Piacenza', 'PC', 1),
(3913, 105, 'Pisa', 'PI', 1),
(3914, 105, 'Pistoia', 'PT', 1),
(3915, 105, 'Pordenone', 'PN', 1),
(3916, 105, 'Potenza', 'PZ', 1),
(3917, 105, 'Prato', 'PO', 1),
(3918, 105, 'Ragusa', 'RG', 1),
(3919, 105, 'Ravenna', 'RA', 1),
(3920, 105, 'Reggio Calabria', 'RC', 1),
(3921, 105, 'Reggio Emilia', 'RE', 1),
(3922, 105, 'Rieti', 'RI', 1),
(3923, 105, 'Rimini', 'RN', 1),
(3924, 105, 'Roma', 'RM', 1),
(3925, 105, 'Rovigo', 'RO', 1),
(3926, 105, 'Salerno', 'SA', 1),
(3927, 105, 'Sassari', 'SS', 1),
(3928, 105, 'Savona', 'SV', 1),
(3929, 105, 'Siena', 'SI', 1),
(3930, 105, 'Siracusa', 'SR', 1),
(3931, 105, 'Sondrio', 'SO', 1),
(3932, 105, 'Taranto', 'TA', 1),
(3933, 105, 'Teramo', 'TE', 1),
(3934, 105, 'Terni', 'TR', 1),
(3935, 105, 'Torino', 'TO', 1),
(3936, 105, 'Trapani', 'TP', 1),
(3937, 105, 'Trento', 'TN', 1),
(3938, 105, 'Treviso', 'TV', 1),
(3939, 105, 'Trieste', 'TS', 1),
(3940, 105, 'Udine', 'UD', 1),
(3941, 105, 'Varese', 'VA', 1),
(3942, 105, 'Venezia', 'VE', 1),
(3943, 105, 'Verbano-Cusio-Ossola', 'VB', 1),
(3944, 105, 'Vercelli', 'VC', 1),
(3945, 105, 'Verona', 'VR', 1),
(3946, 105, 'Vibo Valentia', 'VV', 1),
(3947, 105, 'Vicenza', 'VI', 1),
(3948, 105, 'Viterbo', 'VT', 1),
(3949, 222, 'County Antrim', 'ANT', 1),
(3950, 222, 'County Armagh', 'ARM', 1),
(3951, 222, 'County Down', 'DOW', 1),
(3952, 222, 'County Fermanagh', 'FER', 1),
(3953, 222, 'County Londonderry', 'LDY', 1),
(3954, 222, 'County Tyrone', 'TYR', 1),
(3955, 222, 'Cumbria', 'CMA', 1),
(3956, 190, 'Pomurska', '1', 1),
(3957, 190, 'Podravska', '2', 1),
(3958, 190, 'Koroška', '3', 1),
(3959, 190, 'Savinjska', '4', 1),
(3960, 190, 'Zasavska', '5', 1),
(3961, 190, 'Spodnjeposavska', '6', 1),
(3962, 190, 'Jugovzhodna Slovenija', '7', 1),
(3963, 190, 'Osrednjeslovenska', '8', 1),
(3964, 190, 'Gorenjska', '9', 1),
(3965, 190, 'Notranjsko-kraška', '10', 1),
(3966, 190, 'Goriška', '11', 1),
(3967, 190, 'Obalno-kraška', '12', 1),
(3968, 33, 'Ruse', '', 1),
(3969, 101, 'Alborz', 'ALB', 1),
(3970, 21, 'Brussels-Capital Region', 'BRU', 1),
(3971, 138, 'Aguascalientes', 'AG', 1),
(3973, 242, 'Andrijevica', '01', 1),
(3974, 242, 'Bar', '02', 1),
(3975, 242, 'Berane', '03', 1),
(3976, 242, 'Bijelo Polje', '04', 1),
(3977, 242, 'Budva', '05', 1),
(3978, 242, 'Cetinje', '06', 1),
(3979, 242, 'Danilovgrad', '07', 1),
(3980, 242, 'Herceg-Novi', '08', 1),
(3981, 242, 'Kolašin', '09', 1),
(3982, 242, 'Kotor', '10', 1),
(3983, 242, 'Mojkovac', '11', 1),
(3984, 242, 'Nikšić', '12', 1),
(3985, 242, 'Plav', '13', 1),
(3986, 242, 'Pljevlja', '14', 1),
(3987, 242, 'Plužine', '15', 1),
(3988, 242, 'Podgorica', '16', 1),
(3989, 242, 'Rožaje', '17', 1),
(3990, 242, 'Šavnik', '18', 1),
(3991, 242, 'Tivat', '19', 1),
(3992, 242, 'Ulcinj', '20', 1),
(3993, 242, 'Žabljak', '21', 1),
(3994, 243, 'Belgrade', '00', 1),
(3995, 243, 'North Bačka', '01', 1),
(3996, 243, 'Central Banat', '02', 1),
(3997, 243, 'North Banat', '03', 1),
(3998, 243, 'South Banat', '04', 1),
(3999, 243, 'West Bačka', '05', 1),
(4000, 243, 'South Bačka', '06', 1),
(4001, 243, 'Srem', '07', 1),
(4002, 243, 'Mačva', '08', 1),
(4003, 243, 'Kolubara', '09', 1),
(4004, 243, 'Podunavlje', '10', 1),
(4005, 243, 'Braničevo', '11', 1),
(4006, 243, 'Šumadija', '12', 1),
(4007, 243, 'Pomoravlje', '13', 1),
(4008, 243, 'Bor', '14', 1),
(4009, 243, 'Zaječar', '15', 1),
(4010, 243, 'Zlatibor', '16', 1),
(4011, 243, 'Moravica', '17', 1),
(4012, 243, 'Raška', '18', 1),
(4013, 243, 'Rasina', '19', 1),
(4014, 243, 'Nišava', '20', 1),
(4015, 243, 'Toplica', '21', 1),
(4016, 243, 'Pirot', '22', 1),
(4017, 243, 'Jablanica', '23', 1),
(4018, 243, 'Pčinja', '24', 1),
(4020, 245, 'Bonaire', 'BO', 1),
(4021, 245, 'Saba', 'SA', 1),
(4022, 245, 'Sint Eustatius', 'SE', 1),
(4023, 248, 'Central Equatoria', 'EC', 1),
(4024, 248, 'Eastern Equatoria', 'EE', 1),
(4025, 248, 'Jonglei', 'JG', 1),
(4026, 248, 'Lakes', 'LK', 1),
(4027, 248, 'Northern Bahr el-Ghazal', 'BN', 1),
(4028, 248, 'Unity', 'UY', 1),
(4029, 248, 'Upper Nile', 'NU', 1),
(4030, 248, 'Warrap', 'WR', 1),
(4031, 248, 'Western Bahr el-Ghazal', 'BW', 1),
(4032, 248, 'Western Equatoria', 'EW', 1),
(4036, 117, 'Ainaži, Salacgrīvas novads', '0661405', 1),
(4037, 117, 'Aizkraukle, Aizkraukles novads', '0320201', 1),
(4038, 117, 'Aizkraukles novads', '0320200', 1),
(4039, 117, 'Aizpute, Aizputes novads', '0640605', 1),
(4040, 117, 'Aizputes novads', '0640600', 1),
(4041, 117, 'Aknīste, Aknīstes novads', '0560805', 1),
(4042, 117, 'Aknīstes novads', '0560800', 1),
(4043, 117, 'Aloja, Alojas novads', '0661007', 1),
(4044, 117, 'Alojas novads', '0661000', 1),
(4045, 117, 'Alsungas novads', '0624200', 1),
(4046, 117, 'Alūksne, Alūksnes novads', '0360201', 1),
(4047, 117, 'Alūksnes novads', '0360200', 1),
(4048, 117, 'Amatas novads', '0424701', 1),
(4049, 117, 'Ape, Apes novads', '0360805', 1),
(4050, 117, 'Apes novads', '0360800', 1),
(4051, 117, 'Auce, Auces novads', '0460805', 1),
(4052, 117, 'Auces novads', '0460800', 1),
(4053, 117, 'Ādažu novads', '0804400', 1),
(4054, 117, 'Babītes novads', '0804900', 1),
(4055, 117, 'Baldone, Baldones novads', '0800605', 1),
(4056, 117, 'Baldones novads', '0800600', 1),
(4057, 117, 'Baloži, Ķekavas novads', '0800807', 1),
(4058, 117, 'Baltinavas novads', '0384400', 1),
(4059, 117, 'Balvi, Balvu novads', '0380201', 1),
(4060, 117, 'Balvu novads', '0380200', 1),
(4061, 117, 'Bauska, Bauskas novads', '0400201', 1),
(4062, 117, 'Bauskas novads', '0400200', 1),
(4063, 117, 'Beverīnas novads', '0964700', 1),
(4064, 117, 'Brocēni, Brocēnu novads', '0840605', 1),
(4065, 117, 'Brocēnu novads', '0840601', 1),
(4066, 117, 'Burtnieku novads', '0967101', 1),
(4067, 117, 'Carnikavas novads', '0805200', 1),
(4068, 117, 'Cesvaine, Cesvaines novads', '0700807', 1),
(4069, 117, 'Cesvaines novads', '0700800', 1),
(4070, 117, 'Cēsis, Cēsu novads', '0420201', 1),
(4071, 117, 'Cēsu novads', '0420200', 1),
(4072, 117, 'Ciblas novads', '0684901', 1),
(4073, 117, 'Dagda, Dagdas novads', '0601009', 1),
(4074, 117, 'Dagdas novads', '0601000', 1),
(4075, 117, 'Daugavpils', '0050000', 1),
(4076, 117, 'Daugavpils novads', '0440200', 1),
(4077, 117, 'Dobele, Dobeles novads', '0460201', 1),
(4078, 117, 'Dobeles novads', '0460200', 1),
(4079, 117, 'Dundagas novads', '0885100', 1),
(4080, 117, 'Durbe, Durbes novads', '0640807', 1),
(4081, 117, 'Durbes novads', '0640801', 1),
(4082, 117, 'Engures novads', '0905100', 1),
(4083, 117, 'Ērgļu novads', '0705500', 1),
(4084, 117, 'Garkalnes novads', '0806000', 1),
(4085, 117, 'Grobiņa, Grobiņas novads', '0641009', 1),
(4086, 117, 'Grobiņas novads', '0641000', 1),
(4087, 117, 'Gulbene, Gulbenes novads', '0500201', 1),
(4088, 117, 'Gulbenes novads', '0500200', 1),
(4089, 117, 'Iecavas novads', '0406400', 1),
(4090, 117, 'Ikšķile, Ikšķiles novads', '0740605', 1),
(4091, 117, 'Ikšķiles novads', '0740600', 1),
(4092, 117, 'Ilūkste, Ilūkstes novads', '0440807', 1),
(4093, 117, 'Ilūkstes novads', '0440801', 1),
(4094, 117, 'Inčukalna novads', '0801800', 1),
(4095, 117, 'Jaunjelgava, Jaunjelgavas novads', '0321007', 1),
(4096, 117, 'Jaunjelgavas novads', '0321000', 1),
(4097, 117, 'Jaunpiebalgas novads', '0425700', 1),
(4098, 117, 'Jaunpils novads', '0905700', 1),
(4099, 117, 'Jelgava', '0090000', 1),
(4100, 117, 'Jelgavas novads', '0540200', 1),
(4101, 117, 'Jēkabpils', '0110000', 1),
(4102, 117, 'Jēkabpils novads', '0560200', 1),
(4103, 117, 'Jūrmala', '0130000', 1),
(4104, 117, 'Kalnciems, Jelgavas novads', '0540211', 1),
(4105, 117, 'Kandava, Kandavas novads', '0901211', 1),
(4106, 117, 'Kandavas novads', '0901201', 1),
(4107, 117, 'Kārsava, Kārsavas novads', '0681009', 1),
(4108, 117, 'Kārsavas novads', '0681000', 1),
(4109, 117, 'Kocēnu novads ,bij. Valmieras)', '0960200', 1),
(4110, 117, 'Kokneses novads', '0326100', 1),
(4111, 117, 'Krāslava, Krāslavas novads', '0600201', 1),
(4112, 117, 'Krāslavas novads', '0600202', 1),
(4113, 117, 'Krimuldas novads', '0806900', 1),
(4114, 117, 'Krustpils novads', '0566900', 1),
(4115, 117, 'Kuldīga, Kuldīgas novads', '0620201', 1),
(4116, 117, 'Kuldīgas novads', '0620200', 1),
(4117, 117, 'Ķeguma novads', '0741001', 1),
(4118, 117, 'Ķegums, Ķeguma novads', '0741009', 1),
(4119, 117, 'Ķekavas novads', '0800800', 1),
(4120, 117, 'Lielvārde, Lielvārdes novads', '0741413', 1),
(4121, 117, 'Lielvārdes novads', '0741401', 1),
(4122, 117, 'Liepāja', '0170000', 1),
(4123, 117, 'Limbaži, Limbažu novads', '0660201', 1),
(4124, 117, 'Limbažu novads', '0660200', 1),
(4125, 117, 'Līgatne, Līgatnes novads', '0421211', 1),
(4126, 117, 'Līgatnes novads', '0421200', 1),
(4127, 117, 'Līvāni, Līvānu novads', '0761211', 1),
(4128, 117, 'Līvānu novads', '0761201', 1),
(4129, 117, 'Lubāna, Lubānas novads', '0701413', 1),
(4130, 117, 'Lubānas novads', '0701400', 1),
(4131, 117, 'Ludza, Ludzas novads', '0680201', 1),
(4132, 117, 'Ludzas novads', '0680200', 1),
(4133, 117, 'Madona, Madonas novads', '0700201', 1),
(4134, 117, 'Madonas novads', '0700200', 1),
(4135, 117, 'Mazsalaca, Mazsalacas novads', '0961011', 1),
(4136, 117, 'Mazsalacas novads', '0961000', 1),
(4137, 117, 'Mālpils novads', '0807400', 1),
(4138, 117, 'Mārupes novads', '0807600', 1),
(4139, 117, 'Mērsraga novads', '0887600', 1),
(4140, 117, 'Naukšēnu novads', '0967300', 1),
(4141, 117, 'Neretas novads', '0327100', 1),
(4142, 117, 'Nīcas novads', '0647900', 1),
(4143, 117, 'Ogre, Ogres novads', '0740201', 1),
(4144, 117, 'Ogres novads', '0740202', 1),
(4145, 117, 'Olaine, Olaines novads', '0801009', 1),
(4146, 117, 'Olaines novads', '0801000', 1),
(4147, 117, 'Ozolnieku novads', '0546701', 1),
(4148, 117, 'Pārgaujas novads', '0427500', 1),
(4149, 117, 'Pāvilosta, Pāvilostas novads', '0641413', 1),
(4150, 117, 'Pāvilostas novads', '0641401', 1),
(4151, 117, 'Piltene, Ventspils novads', '0980213', 1),
(4152, 117, 'Pļaviņas, Pļaviņu novads', '0321413', 1),
(4153, 117, 'Pļaviņu novads', '0321400', 1),
(4154, 117, 'Preiļi, Preiļu novads', '0760201', 1),
(4155, 117, 'Preiļu novads', '0760202', 1),
(4156, 117, 'Priekule, Priekules novads', '0641615', 1),
(4157, 117, 'Priekules novads', '0641600', 1),
(4158, 117, 'Priekuļu novads', '0427300', 1),
(4159, 117, 'Raunas novads', '0427700', 1),
(4160, 117, 'Rēzekne', '0210000', 1),
(4161, 117, 'Rēzeknes novads', '0780200', 1),
(4162, 117, 'Riebiņu novads', '0766300', 1),
(4163, 117, 'Rīga', '0010000', 1),
(4164, 117, 'Rojas novads', '0888300', 1),
(4165, 117, 'Ropažu novads', '0808400', 1),
(4166, 117, 'Rucavas novads', '0648500', 1),
(4167, 117, 'Rugāju novads', '0387500', 1),
(4168, 117, 'Rundāles novads', '0407700', 1),
(4169, 117, 'Rūjiena, Rūjienas novads', '0961615', 1),
(4170, 117, 'Rūjienas novads', '0961600', 1),
(4171, 117, 'Sabile, Talsu novads', '0880213', 1),
(4172, 117, 'Salacgrīva, Salacgrīvas novads', '0661415', 1),
(4173, 117, 'Salacgrīvas novads', '0661400', 1),
(4174, 117, 'Salas novads', '0568700', 1),
(4175, 117, 'Salaspils novads', '0801200', 1),
(4176, 117, 'Salaspils, Salaspils novads', '0801211', 1),
(4177, 117, 'Saldus novads', '0840200', 1),
(4178, 117, 'Saldus, Saldus novads', '0840201', 1),
(4179, 117, 'Saulkrasti, Saulkrastu novads', '0801413', 1),
(4180, 117, 'Saulkrastu novads', '0801400', 1),
(4181, 117, 'Seda, Strenču novads', '0941813', 1),
(4182, 117, 'Sējas novads', '0809200', 1),
(4183, 117, 'Sigulda, Siguldas novads', '0801615', 1),
(4184, 117, 'Siguldas novads', '0801601', 1),
(4185, 117, 'Skrīveru novads', '0328200', 1),
(4186, 117, 'Skrunda, Skrundas novads', '0621209', 1),
(4187, 117, 'Skrundas novads', '0621200', 1),
(4188, 117, 'Smiltene, Smiltenes novads', '0941615', 1),
(4189, 117, 'Smiltenes novads', '0941600', 1),
(4190, 117, 'Staicele, Alojas novads', '0661017', 1),
(4191, 117, 'Stende, Talsu novads', '0880215', 1),
(4192, 117, 'Stopiņu novads', '0809600', 1),
(4193, 117, 'Strenči, Strenču novads', '0941817', 1),
(4194, 117, 'Strenču novads', '0941800', 1),
(4195, 117, 'Subate, Ilūkstes novads', '0440815', 1),
(4196, 117, 'Talsi, Talsu novads', '0880201', 1),
(4197, 117, 'Talsu novads', '0880200', 1),
(4198, 117, 'Tērvetes novads', '0468900', 1),
(4199, 117, 'Tukuma novads', '0900200', 1),
(4200, 117, 'Tukums, Tukuma novads', '0900201', 1),
(4201, 117, 'Vaiņodes novads', '0649300', 1),
(4202, 117, 'Valdemārpils, Talsu novads', '0880217', 1),
(4203, 117, 'Valka, Valkas novads', '0940201', 1),
(4204, 117, 'Valkas novads', '0940200', 1),
(4205, 117, 'Valmiera', '0250000', 1),
(4206, 117, 'Vangaži, Inčukalna novads', '0801817', 1),
(4207, 117, 'Varakļāni, Varakļānu novads', '0701817', 1),
(4208, 117, 'Varakļānu novads', '0701800', 1),
(4209, 117, 'Vārkavas novads', '0769101', 1),
(4210, 117, 'Vecpiebalgas novads', '0429300', 1),
(4211, 117, 'Vecumnieku novads', '0409500', 1),
(4212, 117, 'Ventspils', '0270000', 1),
(4213, 117, 'Ventspils novads', '0980200', 1),
(4214, 117, 'Viesīte, Viesītes novads', '0561815', 1),
(4215, 117, 'Viesītes novads', '0561800', 1),
(4216, 117, 'Viļaka, Viļakas novads', '0381615', 1),
(4217, 117, 'Viļakas novads', '0381600', 1),
(4218, 117, 'Viļāni, Viļānu novads', '0781817', 1),
(4219, 117, 'Viļānu novads', '0781800', 1),
(4220, 117, 'Zilupe, Zilupes novads', '0681817', 1),
(4221, 117, 'Zilupes novads', '0681801', 1),
(4222, 43, 'Arica y Parinacota', 'AP', 1),
(4223, 43, 'Los Rios', 'LR', 1),
(4224, 220, 'Kharkivs''ka Oblast''', '63', 1),
(4225, 118, 'Beirut', 'LB-BR', 1),
(4226, 118, 'Bekaa', 'LB-BE', 1),
(4227, 118, 'Mount Lebanon', 'LB-ML', 1),
(4228, 118, 'Nabatieh', 'LB-NB', 1),
(4229, 118, 'North', 'LB-NR', 1),
(4230, 118, 'South', 'LB-ST', 1),
(4231, 99, 'Telangana', 'TS', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `oc_zone_to_geo_zone`
--

CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `oc_zone_to_geo_zone`
--

INSERT INTO `oc_zone_to_geo_zone` (`zone_to_geo_zone_id`, `country_id`, `zone_id`, `geo_zone_id`, `date_added`, `date_modified`) VALUES
(1, 222, 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 222, 3513, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 222, 3514, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 222, 3515, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 222, 3516, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 222, 3517, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 222, 3518, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 222, 3519, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 222, 3520, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 222, 3521, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 222, 3522, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 222, 3523, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 222, 3524, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 222, 3525, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 222, 3526, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 222, 3527, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 222, 3528, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 222, 3529, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 222, 3530, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 222, 3531, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 222, 3532, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 222, 3533, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 222, 3534, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 222, 3535, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 222, 3536, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 222, 3537, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(27, 222, 3538, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(28, 222, 3539, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(29, 222, 3540, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(30, 222, 3541, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(31, 222, 3542, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(32, 222, 3543, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(33, 222, 3544, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(34, 222, 3545, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(35, 222, 3546, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(36, 222, 3547, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(37, 222, 3548, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(38, 222, 3549, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(39, 222, 3550, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(40, 222, 3551, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(41, 222, 3552, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(42, 222, 3553, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(43, 222, 3554, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(44, 222, 3555, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(45, 222, 3556, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(46, 222, 3557, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(47, 222, 3558, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(48, 222, 3559, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(49, 222, 3560, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(50, 222, 3561, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(51, 222, 3562, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(52, 222, 3563, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(53, 222, 3564, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(54, 222, 3565, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(55, 222, 3566, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(56, 222, 3567, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(57, 222, 3568, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(58, 222, 3569, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(59, 222, 3570, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(60, 222, 3571, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(61, 222, 3572, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(62, 222, 3573, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(63, 222, 3574, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(64, 222, 3575, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(65, 222, 3576, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(66, 222, 3577, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(67, 222, 3578, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(68, 222, 3579, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(69, 222, 3580, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(70, 222, 3581, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(71, 222, 3582, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(72, 222, 3583, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(73, 222, 3584, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(74, 222, 3585, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(75, 222, 3586, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(76, 222, 3587, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(77, 222, 3588, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(78, 222, 3589, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(79, 222, 3590, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(80, 222, 3591, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(81, 222, 3592, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(82, 222, 3593, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(83, 222, 3594, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(84, 222, 3595, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(85, 222, 3596, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(86, 222, 3597, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(87, 222, 3598, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(88, 222, 3599, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(89, 222, 3600, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(90, 222, 3601, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(91, 222, 3602, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(92, 222, 3603, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(93, 222, 3604, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(94, 222, 3605, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(95, 222, 3606, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(96, 222, 3607, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(97, 222, 3608, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(98, 222, 3609, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(99, 222, 3610, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(100, 222, 3611, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(101, 222, 3612, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(102, 222, 3949, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(103, 222, 3950, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(104, 222, 3951, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(105, 222, 3952, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(106, 222, 3953, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(107, 222, 3954, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(108, 222, 3955, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(109, 222, 3972, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `oc_address`
--
ALTER TABLE `oc_address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Índices de tabela `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  ADD PRIMARY KEY (`affiliate_id`);

--
-- Índices de tabela `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Índices de tabela `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  ADD PRIMARY KEY (`affiliate_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Índices de tabela `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  ADD PRIMARY KEY (`affiliate_transaction_id`);

--
-- Índices de tabela `oc_api`
--
ALTER TABLE `oc_api`
  ADD PRIMARY KEY (`api_id`);

--
-- Índices de tabela `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  ADD PRIMARY KEY (`api_ip_id`);

--
-- Índices de tabela `oc_api_session`
--
ALTER TABLE `oc_api_session`
  ADD PRIMARY KEY (`api_session_id`);

--
-- Índices de tabela `oc_attribute`
--
ALTER TABLE `oc_attribute`
  ADD PRIMARY KEY (`attribute_id`);

--
-- Índices de tabela `oc_attribute_description`
--
ALTER TABLE `oc_attribute_description`
  ADD PRIMARY KEY (`attribute_id`,`language_id`);

--
-- Índices de tabela `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  ADD PRIMARY KEY (`attribute_group_id`);

--
-- Índices de tabela `oc_attribute_group_description`
--
ALTER TABLE `oc_attribute_group_description`
  ADD PRIMARY KEY (`attribute_group_id`,`language_id`);

--
-- Índices de tabela `oc_banner`
--
ALTER TABLE `oc_banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Índices de tabela `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  ADD PRIMARY KEY (`banner_image_id`);

--
-- Índices de tabela `oc_banner_image_description`
--
ALTER TABLE `oc_banner_image_description`
  ADD PRIMARY KEY (`banner_image_id`,`language_id`);

--
-- Índices de tabela `oc_cart`
--
ALTER TABLE `oc_cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart_id` (`customer_id`,`session_id`,`product_id`,`recurring_id`);

--
-- Índices de tabela `oc_category`
--
ALTER TABLE `oc_category`
  ADD PRIMARY KEY (`category_id`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Índices de tabela `oc_category_description`
--
ALTER TABLE `oc_category_description`
  ADD PRIMARY KEY (`category_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Índices de tabela `oc_category_filter`
--
ALTER TABLE `oc_category_filter`
  ADD PRIMARY KEY (`category_id`,`filter_id`);

--
-- Índices de tabela `oc_category_path`
--
ALTER TABLE `oc_category_path`
  ADD PRIMARY KEY (`category_id`,`path_id`);

--
-- Índices de tabela `oc_category_to_layout`
--
ALTER TABLE `oc_category_to_layout`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Índices de tabela `oc_category_to_store`
--
ALTER TABLE `oc_category_to_store`
  ADD PRIMARY KEY (`category_id`,`store_id`);

--
-- Índices de tabela `oc_country`
--
ALTER TABLE `oc_country`
  ADD PRIMARY KEY (`country_id`);

--
-- Índices de tabela `oc_coupon`
--
ALTER TABLE `oc_coupon`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Índices de tabela `oc_coupon_category`
--
ALTER TABLE `oc_coupon_category`
  ADD PRIMARY KEY (`coupon_id`,`category_id`);

--
-- Índices de tabela `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  ADD PRIMARY KEY (`coupon_history_id`);

--
-- Índices de tabela `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  ADD PRIMARY KEY (`coupon_product_id`);

--
-- Índices de tabela `oc_currency`
--
ALTER TABLE `oc_currency`
  ADD PRIMARY KEY (`currency_id`);

--
-- Índices de tabela `oc_customer`
--
ALTER TABLE `oc_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Índices de tabela `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Índices de tabela `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  ADD PRIMARY KEY (`customer_group_id`);

--
-- Índices de tabela `oc_customer_group_description`
--
ALTER TABLE `oc_customer_group_description`
  ADD PRIMARY KEY (`customer_group_id`,`language_id`);

--
-- Índices de tabela `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  ADD PRIMARY KEY (`customer_history_id`);

--
-- Índices de tabela `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  ADD PRIMARY KEY (`customer_ip_id`),
  ADD KEY `ip` (`ip`);

--
-- Índices de tabela `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  ADD PRIMARY KEY (`customer_login_id`),
  ADD KEY `email` (`email`),
  ADD KEY `ip` (`ip`);

--
-- Índices de tabela `oc_customer_online`
--
ALTER TABLE `oc_customer_online`
  ADD PRIMARY KEY (`ip`);

--
-- Índices de tabela `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  ADD PRIMARY KEY (`customer_reward_id`);

--
-- Índices de tabela `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  ADD PRIMARY KEY (`customer_transaction_id`);

--
-- Índices de tabela `oc_customer_wishlist`
--
ALTER TABLE `oc_customer_wishlist`
  ADD PRIMARY KEY (`customer_id`,`product_id`);

--
-- Índices de tabela `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  ADD PRIMARY KEY (`custom_field_id`);

--
-- Índices de tabela `oc_custom_field_customer_group`
--
ALTER TABLE `oc_custom_field_customer_group`
  ADD PRIMARY KEY (`custom_field_id`,`customer_group_id`);

--
-- Índices de tabela `oc_custom_field_description`
--
ALTER TABLE `oc_custom_field_description`
  ADD PRIMARY KEY (`custom_field_id`,`language_id`);

--
-- Índices de tabela `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  ADD PRIMARY KEY (`custom_field_value_id`);

--
-- Índices de tabela `oc_custom_field_value_description`
--
ALTER TABLE `oc_custom_field_value_description`
  ADD PRIMARY KEY (`custom_field_value_id`,`language_id`);

--
-- Índices de tabela `oc_download`
--
ALTER TABLE `oc_download`
  ADD PRIMARY KEY (`download_id`);

--
-- Índices de tabela `oc_download_description`
--
ALTER TABLE `oc_download_description`
  ADD PRIMARY KEY (`download_id`,`language_id`);

--
-- Índices de tabela `oc_event`
--
ALTER TABLE `oc_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Índices de tabela `oc_extension`
--
ALTER TABLE `oc_extension`
  ADD PRIMARY KEY (`extension_id`);

--
-- Índices de tabela `oc_filter`
--
ALTER TABLE `oc_filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Índices de tabela `oc_filter_description`
--
ALTER TABLE `oc_filter_description`
  ADD PRIMARY KEY (`filter_id`,`language_id`);

--
-- Índices de tabela `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  ADD PRIMARY KEY (`filter_group_id`);

--
-- Índices de tabela `oc_filter_group_description`
--
ALTER TABLE `oc_filter_group_description`
  ADD PRIMARY KEY (`filter_group_id`,`language_id`);

--
-- Índices de tabela `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Índices de tabela `oc_information`
--
ALTER TABLE `oc_information`
  ADD PRIMARY KEY (`information_id`);

--
-- Índices de tabela `oc_information_description`
--
ALTER TABLE `oc_information_description`
  ADD PRIMARY KEY (`information_id`,`language_id`);

--
-- Índices de tabela `oc_information_to_layout`
--
ALTER TABLE `oc_information_to_layout`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Índices de tabela `oc_information_to_store`
--
ALTER TABLE `oc_information_to_store`
  ADD PRIMARY KEY (`information_id`,`store_id`);

--
-- Índices de tabela `oc_language`
--
ALTER TABLE `oc_language`
  ADD PRIMARY KEY (`language_id`),
  ADD KEY `name` (`name`);

--
-- Índices de tabela `oc_layout`
--
ALTER TABLE `oc_layout`
  ADD PRIMARY KEY (`layout_id`);

--
-- Índices de tabela `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  ADD PRIMARY KEY (`layout_module_id`);

--
-- Índices de tabela `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  ADD PRIMARY KEY (`layout_route_id`);

--
-- Índices de tabela `oc_length_class`
--
ALTER TABLE `oc_length_class`
  ADD PRIMARY KEY (`length_class_id`);

--
-- Índices de tabela `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  ADD PRIMARY KEY (`length_class_id`,`language_id`);

--
-- Índices de tabela `oc_location`
--
ALTER TABLE `oc_location`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `name` (`name`);

--
-- Índices de tabela `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Índices de tabela `oc_manufacturer_to_store`
--
ALTER TABLE `oc_manufacturer_to_store`
  ADD PRIMARY KEY (`manufacturer_id`,`store_id`);

--
-- Índices de tabela `oc_marketing`
--
ALTER TABLE `oc_marketing`
  ADD PRIMARY KEY (`marketing_id`);

--
-- Índices de tabela `oc_modification`
--
ALTER TABLE `oc_modification`
  ADD PRIMARY KEY (`modification_id`);

--
-- Índices de tabela `oc_module`
--
ALTER TABLE `oc_module`
  ADD PRIMARY KEY (`module_id`);

--
-- Índices de tabela `oc_option`
--
ALTER TABLE `oc_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Índices de tabela `oc_option_description`
--
ALTER TABLE `oc_option_description`
  ADD PRIMARY KEY (`option_id`,`language_id`);

--
-- Índices de tabela `oc_option_value`
--
ALTER TABLE `oc_option_value`
  ADD PRIMARY KEY (`option_value_id`);

--
-- Índices de tabela `oc_option_value_description`
--
ALTER TABLE `oc_option_value_description`
  ADD PRIMARY KEY (`option_value_id`,`language_id`);

--
-- Índices de tabela `oc_order`
--
ALTER TABLE `oc_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Índices de tabela `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  ADD PRIMARY KEY (`order_custom_field_id`);

--
-- Índices de tabela `oc_order_history`
--
ALTER TABLE `oc_order_history`
  ADD PRIMARY KEY (`order_history_id`);

--
-- Índices de tabela `oc_order_option`
--
ALTER TABLE `oc_order_option`
  ADD PRIMARY KEY (`order_option_id`);

--
-- Índices de tabela `oc_order_product`
--
ALTER TABLE `oc_order_product`
  ADD PRIMARY KEY (`order_product_id`);

--
-- Índices de tabela `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  ADD PRIMARY KEY (`order_recurring_id`);

--
-- Índices de tabela `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  ADD PRIMARY KEY (`order_recurring_transaction_id`);

--
-- Índices de tabela `oc_order_status`
--
ALTER TABLE `oc_order_status`
  ADD PRIMARY KEY (`order_status_id`,`language_id`);

--
-- Índices de tabela `oc_order_total`
--
ALTER TABLE `oc_order_total`
  ADD PRIMARY KEY (`order_total_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Índices de tabela `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  ADD PRIMARY KEY (`order_voucher_id`);

--
-- Índices de tabela `oc_product`
--
ALTER TABLE `oc_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Índices de tabela `oc_product_attribute`
--
ALTER TABLE `oc_product_attribute`
  ADD PRIMARY KEY (`product_id`,`attribute_id`,`language_id`);

--
-- Índices de tabela `oc_product_description`
--
ALTER TABLE `oc_product_description`
  ADD PRIMARY KEY (`product_id`,`language_id`),
  ADD KEY `name` (`name`);

--
-- Índices de tabela `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  ADD PRIMARY KEY (`product_discount_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Índices de tabela `oc_product_filter`
--
ALTER TABLE `oc_product_filter`
  ADD PRIMARY KEY (`product_id`,`filter_id`);

--
-- Índices de tabela `oc_product_image`
--
ALTER TABLE `oc_product_image`
  ADD PRIMARY KEY (`product_image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Índices de tabela `oc_product_option`
--
ALTER TABLE `oc_product_option`
  ADD PRIMARY KEY (`product_option_id`);

--
-- Índices de tabela `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  ADD PRIMARY KEY (`product_option_value_id`);

--
-- Índices de tabela `oc_product_recurring`
--
ALTER TABLE `oc_product_recurring`
  ADD PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`);

--
-- Índices de tabela `oc_product_related`
--
ALTER TABLE `oc_product_related`
  ADD PRIMARY KEY (`product_id`,`related_id`);

--
-- Índices de tabela `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  ADD PRIMARY KEY (`product_reward_id`);

--
-- Índices de tabela `oc_product_special`
--
ALTER TABLE `oc_product_special`
  ADD PRIMARY KEY (`product_special_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Índices de tabela `oc_product_to_category`
--
ALTER TABLE `oc_product_to_category`
  ADD PRIMARY KEY (`product_id`,`category_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Índices de tabela `oc_product_to_download`
--
ALTER TABLE `oc_product_to_download`
  ADD PRIMARY KEY (`product_id`,`download_id`);

--
-- Índices de tabela `oc_product_to_layout`
--
ALTER TABLE `oc_product_to_layout`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Índices de tabela `oc_product_to_store`
--
ALTER TABLE `oc_product_to_store`
  ADD PRIMARY KEY (`product_id`,`store_id`);

--
-- Índices de tabela `oc_recurring`
--
ALTER TABLE `oc_recurring`
  ADD PRIMARY KEY (`recurring_id`);

--
-- Índices de tabela `oc_recurring_description`
--
ALTER TABLE `oc_recurring_description`
  ADD PRIMARY KEY (`recurring_id`,`language_id`);

--
-- Índices de tabela `oc_return`
--
ALTER TABLE `oc_return`
  ADD PRIMARY KEY (`return_id`);

--
-- Índices de tabela `oc_return_action`
--
ALTER TABLE `oc_return_action`
  ADD PRIMARY KEY (`return_action_id`,`language_id`);

--
-- Índices de tabela `oc_return_history`
--
ALTER TABLE `oc_return_history`
  ADD PRIMARY KEY (`return_history_id`);

--
-- Índices de tabela `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  ADD PRIMARY KEY (`return_reason_id`,`language_id`);

--
-- Índices de tabela `oc_return_status`
--
ALTER TABLE `oc_return_status`
  ADD PRIMARY KEY (`return_status_id`,`language_id`);

--
-- Índices de tabela `oc_review`
--
ALTER TABLE `oc_review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Índices de tabela `oc_setting`
--
ALTER TABLE `oc_setting`
  ADD PRIMARY KEY (`setting_id`);

--
-- Índices de tabela `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  ADD PRIMARY KEY (`stock_status_id`,`language_id`);

--
-- Índices de tabela `oc_store`
--
ALTER TABLE `oc_store`
  ADD PRIMARY KEY (`store_id`);

--
-- Índices de tabela `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Índices de tabela `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  ADD PRIMARY KEY (`tax_rate_id`);

--
-- Índices de tabela `oc_tax_rate_to_customer_group`
--
ALTER TABLE `oc_tax_rate_to_customer_group`
  ADD PRIMARY KEY (`tax_rate_id`,`customer_group_id`);

--
-- Índices de tabela `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  ADD PRIMARY KEY (`tax_rule_id`);

--
-- Índices de tabela `oc_upload`
--
ALTER TABLE `oc_upload`
  ADD PRIMARY KEY (`upload_id`);

--
-- Índices de tabela `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  ADD PRIMARY KEY (`url_alias_id`),
  ADD KEY `query` (`query`),
  ADD KEY `keyword` (`keyword`);

--
-- Índices de tabela `oc_user`
--
ALTER TABLE `oc_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Índices de tabela `oc_user_group`
--
ALTER TABLE `oc_user_group`
  ADD PRIMARY KEY (`user_group_id`);

--
-- Índices de tabela `oc_voucher`
--
ALTER TABLE `oc_voucher`
  ADD PRIMARY KEY (`voucher_id`);

--
-- Índices de tabela `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  ADD PRIMARY KEY (`voucher_history_id`);

--
-- Índices de tabela `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  ADD PRIMARY KEY (`voucher_theme_id`);

--
-- Índices de tabela `oc_voucher_theme_description`
--
ALTER TABLE `oc_voucher_theme_description`
  ADD PRIMARY KEY (`voucher_theme_id`,`language_id`);

--
-- Índices de tabela `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  ADD PRIMARY KEY (`weight_class_id`);

--
-- Índices de tabela `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  ADD PRIMARY KEY (`weight_class_id`,`language_id`);

--
-- Índices de tabela `oc_zone`
--
ALTER TABLE `oc_zone`
  ADD PRIMARY KEY (`zone_id`);

--
-- Índices de tabela `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  ADD PRIMARY KEY (`zone_to_geo_zone_id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `oc_address`
--
ALTER TABLE `oc_address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `oc_affiliate`
--
ALTER TABLE `oc_affiliate`
  MODIFY `affiliate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `oc_affiliate_activity`
--
ALTER TABLE `oc_affiliate_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `oc_affiliate_login`
--
ALTER TABLE `oc_affiliate_login`
  MODIFY `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_affiliate_transaction`
--
ALTER TABLE `oc_affiliate_transaction`
  MODIFY `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_api`
--
ALTER TABLE `oc_api`
  MODIFY `api_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `oc_api_ip`
--
ALTER TABLE `oc_api_ip`
  MODIFY `api_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `oc_api_session`
--
ALTER TABLE `oc_api_session`
  MODIFY `api_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `oc_attribute`
--
ALTER TABLE `oc_attribute`
  MODIFY `attribute_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de tabela `oc_attribute_group`
--
ALTER TABLE `oc_attribute_group`
  MODIFY `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de tabela `oc_banner`
--
ALTER TABLE `oc_banner`
  MODIFY `banner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `oc_banner_image`
--
ALTER TABLE `oc_banner_image`
  MODIFY `banner_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT de tabela `oc_cart`
--
ALTER TABLE `oc_cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `oc_category`
--
ALTER TABLE `oc_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT de tabela `oc_country`
--
ALTER TABLE `oc_country`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=258;
--
-- AUTO_INCREMENT de tabela `oc_coupon`
--
ALTER TABLE `oc_coupon`
  MODIFY `coupon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `oc_coupon_history`
--
ALTER TABLE `oc_coupon_history`
  MODIFY `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_coupon_product`
--
ALTER TABLE `oc_coupon_product`
  MODIFY `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_currency`
--
ALTER TABLE `oc_currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `oc_customer`
--
ALTER TABLE `oc_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT de tabela `oc_customer_activity`
--
ALTER TABLE `oc_customer_activity`
  MODIFY `activity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de tabela `oc_customer_group`
--
ALTER TABLE `oc_customer_group`
  MODIFY `customer_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `oc_customer_history`
--
ALTER TABLE `oc_customer_history`
  MODIFY `customer_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_customer_ip`
--
ALTER TABLE `oc_customer_ip`
  MODIFY `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `oc_customer_login`
--
ALTER TABLE `oc_customer_login`
  MODIFY `customer_login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de tabela `oc_customer_reward`
--
ALTER TABLE `oc_customer_reward`
  MODIFY `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `oc_customer_transaction`
--
ALTER TABLE `oc_customer_transaction`
  MODIFY `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_custom_field`
--
ALTER TABLE `oc_custom_field`
  MODIFY `custom_field_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `oc_custom_field_value`
--
ALTER TABLE `oc_custom_field_value`
  MODIFY `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `oc_download`
--
ALTER TABLE `oc_download`
  MODIFY `download_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `oc_event`
--
ALTER TABLE `oc_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `oc_extension`
--
ALTER TABLE `oc_extension`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT de tabela `oc_filter`
--
ALTER TABLE `oc_filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de tabela `oc_filter_group`
--
ALTER TABLE `oc_filter_group`
  MODIFY `filter_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `oc_geo_zone`
--
ALTER TABLE `oc_geo_zone`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `oc_information`
--
ALTER TABLE `oc_information`
  MODIFY `information_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `oc_language`
--
ALTER TABLE `oc_language`
  MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `oc_layout`
--
ALTER TABLE `oc_layout`
  MODIFY `layout_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de tabela `oc_layout_module`
--
ALTER TABLE `oc_layout_module`
  MODIFY `layout_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;
--
-- AUTO_INCREMENT de tabela `oc_layout_route`
--
ALTER TABLE `oc_layout_route`
  MODIFY `layout_route_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT de tabela `oc_length_class`
--
ALTER TABLE `oc_length_class`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `oc_length_class_description`
--
ALTER TABLE `oc_length_class_description`
  MODIFY `length_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `oc_location`
--
ALTER TABLE `oc_location`
  MODIFY `location_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `oc_manufacturer`
--
ALTER TABLE `oc_manufacturer`
  MODIFY `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de tabela `oc_marketing`
--
ALTER TABLE `oc_marketing`
  MODIFY `marketing_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_modification`
--
ALTER TABLE `oc_modification`
  MODIFY `modification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de tabela `oc_module`
--
ALTER TABLE `oc_module`
  MODIFY `module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de tabela `oc_option`
--
ALTER TABLE `oc_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de tabela `oc_option_value`
--
ALTER TABLE `oc_option_value`
  MODIFY `option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT de tabela `oc_order`
--
ALTER TABLE `oc_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `oc_order_custom_field`
--
ALTER TABLE `oc_order_custom_field`
  MODIFY `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_order_history`
--
ALTER TABLE `oc_order_history`
  MODIFY `order_history_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `oc_order_option`
--
ALTER TABLE `oc_order_option`
  MODIFY `order_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de tabela `oc_order_product`
--
ALTER TABLE `oc_order_product`
  MODIFY `order_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de tabela `oc_order_recurring`
--
ALTER TABLE `oc_order_recurring`
  MODIFY `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_order_recurring_transaction`
--
ALTER TABLE `oc_order_recurring_transaction`
  MODIFY `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_order_status`
--
ALTER TABLE `oc_order_status`
  MODIFY `order_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT de tabela `oc_order_total`
--
ALTER TABLE `oc_order_total`
  MODIFY `order_total_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de tabela `oc_order_voucher`
--
ALTER TABLE `oc_order_voucher`
  MODIFY `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_product`
--
ALTER TABLE `oc_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT de tabela `oc_product_discount`
--
ALTER TABLE `oc_product_discount`
  MODIFY `product_discount_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=461;
--
-- AUTO_INCREMENT de tabela `oc_product_image`
--
ALTER TABLE `oc_product_image`
  MODIFY `product_image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2490;
--
-- AUTO_INCREMENT de tabela `oc_product_option`
--
ALTER TABLE `oc_product_option`
  MODIFY `product_option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;
--
-- AUTO_INCREMENT de tabela `oc_product_option_value`
--
ALTER TABLE `oc_product_option_value`
  MODIFY `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de tabela `oc_product_reward`
--
ALTER TABLE `oc_product_reward`
  MODIFY `product_reward_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=556;
--
-- AUTO_INCREMENT de tabela `oc_product_special`
--
ALTER TABLE `oc_product_special`
  MODIFY `product_special_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=452;
--
-- AUTO_INCREMENT de tabela `oc_recurring`
--
ALTER TABLE `oc_recurring`
  MODIFY `recurring_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_return`
--
ALTER TABLE `oc_return`
  MODIFY `return_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_return_action`
--
ALTER TABLE `oc_return_action`
  MODIFY `return_action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `oc_return_history`
--
ALTER TABLE `oc_return_history`
  MODIFY `return_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_return_reason`
--
ALTER TABLE `oc_return_reason`
  MODIFY `return_reason_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de tabela `oc_return_status`
--
ALTER TABLE `oc_return_status`
  MODIFY `return_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de tabela `oc_review`
--
ALTER TABLE `oc_review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `oc_setting`
--
ALTER TABLE `oc_setting`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5729;
--
-- AUTO_INCREMENT de tabela `oc_stock_status`
--
ALTER TABLE `oc_stock_status`
  MODIFY `stock_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `oc_store`
--
ALTER TABLE `oc_store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_tax_class`
--
ALTER TABLE `oc_tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de tabela `oc_tax_rate`
--
ALTER TABLE `oc_tax_rate`
  MODIFY `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT de tabela `oc_tax_rule`
--
ALTER TABLE `oc_tax_rule`
  MODIFY `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT de tabela `oc_upload`
--
ALTER TABLE `oc_upload`
  MODIFY `upload_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_url_alias`
--
ALTER TABLE `oc_url_alias`
  MODIFY `url_alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=968;
--
-- AUTO_INCREMENT de tabela `oc_user`
--
ALTER TABLE `oc_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de tabela `oc_user_group`
--
ALTER TABLE `oc_user_group`
  MODIFY `user_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de tabela `oc_voucher`
--
ALTER TABLE `oc_voucher`
  MODIFY `voucher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_voucher_history`
--
ALTER TABLE `oc_voucher_history`
  MODIFY `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de tabela `oc_voucher_theme`
--
ALTER TABLE `oc_voucher_theme`
  MODIFY `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de tabela `oc_weight_class`
--
ALTER TABLE `oc_weight_class`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `oc_weight_class_description`
--
ALTER TABLE `oc_weight_class_description`
  MODIFY `weight_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de tabela `oc_zone`
--
ALTER TABLE `oc_zone`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4232;
--
-- AUTO_INCREMENT de tabela `oc_zone_to_geo_zone`
--
ALTER TABLE `oc_zone_to_geo_zone`
  MODIFY `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
