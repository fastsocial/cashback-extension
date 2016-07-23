-- phpMyAdmin SQL Dump
-- version 4.2.10.1
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 26 2015 г., 20:12
-- Версия сервера: 5.5.40-0+wheezy1
-- Версия PHP: 5.4.39-1~dotdeb.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `vk_parser`
--

-- --------------------------------------------------------

--
-- Структура таблицы `marks`
--

CREATE TABLE IF NOT EXISTS `marks` (
`id` int(11) NOT NULL,
  `name` tinytext NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `marks`
--

INSERT INTO `marks` (`id`, `name`) VALUES
(1, 'audi'),
(2, 'volkswagen'),
(3, 'skoda'),
(4, 'kia'),
(5, 'hyundai');

-- --------------------------------------------------------

--
-- Структура таблицы `vk_groups`
--

CREATE TABLE IF NOT EXISTS `vk_groups` (
`id` int(11) NOT NULL,
  `href` tinytext NOT NULL,
  `mark_id` int(11) NOT NULL DEFAULT '1',
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `vk_groups`
--

INSERT INTO `vk_groups` (`id`, `href`, `mark_id`, `status`) VALUES
(2, 'http://vk.com/kiamotorsrus', 4, 0),
(3, 'http://vk.com/kia_rio_new', 4, 0),
(4, 'http://vk.com/kiarioclub', 4, 0),
(5, 'http://vk.com/kia_sorento', 4, 0),
(6, 'http://vk.com/kia_go', 4, 0),
(7, 'http://vk.com/kia_spectra_club', 4, 0),
(8, 'http://vk.com/club27337694', 4, 0),
(9, 'http://vk.com/kia_kazakhstan', 4, 0),
(10, 'http://vk.com/koreanaparts', 4, 0),
(11, 'http://vk.com/kiasportager', 4, 0),
(12, 'http://vk.com/kiaceedclub', 4, 0),
(13, 'http://vk.com/club39613008', 4, 0),
(14, 'http://vk.com/kiamoskva', 4, 0),
(15, 'http://vk.com/club40354613', 4, 0),
(16, 'http://vk.com/ceratoclub', 4, 0),
(17, 'http://vk.com/mobis24', 4, 0),
(18, 'http://vk.com/kiaoptima', 4, 0),
(19, 'http://vk.com/favorit_motors_kia', 4, 0),
(20, 'http://vk.com/kiarioclub_ru', 4, 0),
(21, 'http://vk.com/dnparts', 4, 0),
(22, 'http://vk.com/club191164', 4, 0),
(23, 'http://vk.com/ceedjdclub', 4, 0),
(24, 'http://vk.com/akos_kia', 4, 0),
(25, 'http://vk.com/club21155385', 4, 0),
(26, 'http://vk.com/kcc_kiaceratoclub', 4, 0),
(27, 'http://vk.com/kia.avtoray', 4, 0),
(28, 'http://vk.com/kiaceratonet', 4, 0),
(29, 'http://vk.com/kiavrn', 4, 0),
(30, 'http://vk.com/auto.club.cerato', 4, 0),
(31, 'http://vk.com/kiasportagekm', 4, 0),
(32, 'http://vk.com/cerato', 4, 0),
(33, 'http://vk.com/club20256433', 4, 0),
(34, 'http://vk.com/kiarioclub__ru', 4, 0),
(35, 'http://vk.com/xkiaru', 4, 0),
(36, 'http://vk.com/kia_sportage3', 4, 0),
(37, 'http://vk.com/wellcar97', 4, 0),
(38, 'http://vk.com/kiakuzov', 4, 0),
(39, 'http://vk.com/chip_tyne', 4, 0),
(40, 'http://vk.com/avtomotorskia', 4, 0),
(41, 'http://vk.com/kia_spb', 4, 0),
(42, 'http://vk.com/ford_hyundai_kia', 4, 0),
(43, 'http://vk.com/club52776697', 4, 0),
(44, 'http://vk.com/kiatuning', 4, 0),
(45, 'http://vk.com/polomoknet77', 4, 0),
(46, 'http://vk.com/kiariospb', 4, 0),
(47, 'http://vk.com/kiario_new', 4, 0),
(48, 'http://vk.com/akos_almet', 4, 0),
(49, 'http://vk.com/aziatka_net', 4, 0),
(50, 'http://vk.com/kiaceratotd', 4, 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `marks`
--
ALTER TABLE `marks`
 ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `vk_groups`
--
ALTER TABLE `vk_groups`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `marks`
--
ALTER TABLE `marks`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `vk_groups`
--
ALTER TABLE `vk_groups`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
