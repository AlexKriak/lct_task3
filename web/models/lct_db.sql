-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июл 17 2024 г., 13:19
-- Версия сервера: 8.0.30
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lct_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ages`
--

CREATE TABLE `ages` (
  `id` int NOT NULL,
  `count` int DEFAULT NULL,
  `municipality_id` int DEFAULT NULL,
  `ages_interval_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ages`
--

INSERT INTO `ages` (`id`, `count`, `municipality_id`, `ages_interval_id`) VALUES
(1, 44, 1, 1),
(2, 101, 1, 2),
(3, 132, 1, 3),
(4, 74, 1, 4),
(5, 81, 1, 5),
(6, 77, 1, 6),
(8, 39, 2, 1),
(9, 57, 2, 2),
(10, 120, 2, 3),
(11, 163, 2, 4),
(12, 158, 2, 5),
(13, 54, 2, 6),
(15, 84, 3, 1),
(16, 61, 3, 2),
(17, 153, 3, 3),
(18, 148, 3, 4),
(19, 136, 3, 5),
(20, 73, 3, 6),
(22, 163, 4, 1),
(23, 144, 4, 2),
(24, 101, 4, 3),
(25, 63, 4, 4),
(26, 92, 4, 5),
(27, 138, 4, 6),
(29, 45, 5, 1),
(30, 71, 5, 2),
(31, 80, 5, 3),
(32, 92, 5, 4),
(33, 103, 5, 5),
(34, 172, 5, 6),
(36, 35, 1, 1),
(37, 53, 1, 2),
(38, 77, 1, 3),
(39, 86, 1, 4),
(40, 83, 1, 5),
(41, 42, 1, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `ages_interval`
--

CREATE TABLE `ages_interval` (
  `id` int NOT NULL,
  `left_age` int DEFAULT NULL,
  `right_age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ages_interval`
--

INSERT INTO `ages_interval` (`id`, `left_age`, `right_age`) VALUES
(1, 0, 7),
(2, 8, 12),
(3, 13, 18),
(4, 19, 30),
(5, 31, 55),
(6, 56, 130);

-- --------------------------------------------------------

--
-- Структура таблицы `ages_weight`
--

CREATE TABLE `ages_weight` (
  `id` int NOT NULL,
  `self_weight` float DEFAULT NULL,
  `sport_weight` float DEFAULT NULL,
  `game_weight` float DEFAULT NULL,
  `education_weight` float DEFAULT NULL,
  `recreation_weight` float DEFAULT NULL,
  `ages_interval_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ages_weight`
--

INSERT INTO `ages_weight` (`id`, `self_weight`, `sport_weight`, `game_weight`, `education_weight`, `recreation_weight`, `ages_interval_id`) VALUES
(1, 0.8, 0.1, 0.6, 0.8, 0.1, 1),
(2, 0.6, 0.3, 0.6, 0.3, 0.3, 2),
(3, 0.5, 0.9, 0.3, 0.1, 0.5, 3),
(4, 0.5, 0.7, 0.2, 0.1, 0.7, 4),
(5, 0.5, 0.4, 0.1, 0.1, 0.8, 5),
(6, 0.6, 0.2, 0.1, 0.1, 0.9, 6);

-- --------------------------------------------------------

--
-- Структура таблицы `ages_weight_changeable`
--

CREATE TABLE `ages_weight_changeable` (
  `id` int NOT NULL,
  `self_weight` float DEFAULT NULL,
  `sport_weight` float DEFAULT NULL,
  `game_weight` float DEFAULT NULL,
  `education_weight` float DEFAULT NULL,
  `recreation_weight` float DEFAULT NULL,
  `ages_interval_id` int DEFAULT NULL,
  `territory_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `ages_weight_changeable`
--

INSERT INTO `ages_weight_changeable` (`id`, `self_weight`, `sport_weight`, `game_weight`, `education_weight`, `recreation_weight`, `ages_interval_id`, `territory_id`) VALUES
(1, 0.8, 0.955863, 0.6, 0.8, 0.1, 1, 1),
(2, 0.6, 0.2, 0.6, 0.4, 0.3, 2, 1),
(3, 0.5, 0.8, 0.3, 0.1, 0.5, 3, 1),
(4, 0.5, 0.9, 0.2, 0.1, 0.7, 4, 1),
(5, 0.5, 0.6, 0.2, 0.1, 0.8, 5, 1),
(6, 0.6, 0.4, 0.1, 0.1, 0.9, 6, 1),
(8, NULL, 0.1, 0.6, 0.8, 0.1, 1, 2),
(9, NULL, 0.3, 0.6, 0.3, 0.3, 2, 2),
(10, NULL, 0.9, 0.3, 0.1, 0.5, 3, 2),
(11, NULL, 0.7, 0.2, 0.1, 0.7, 4, 2),
(12, NULL, 0.4, 0.1, 0.1, 0.8, 5, 2),
(13, NULL, 0.2, 0.1, 0.1, 0.9, 6, 2),
(14, NULL, 0.1, 0.6, 0.8, 0.1, 1, 21),
(15, NULL, 0.3, 0.6, 0.3, 0.3, 2, 21),
(16, NULL, 0.9, 0.3, 0.1, 0.5, 3, 21),
(17, NULL, 0.7, 0.2, 0.1, 0.7, 4, 21),
(18, NULL, 0.4, 0.1, 0.1, 0.8, 5, 21),
(19, NULL, 0.2, 0.1, 0.1, 0.9, 6, 21),
(20, NULL, 0.1, 0.6, 0.8, 0.1, 1, 22),
(21, NULL, 0.3, 0.6, 0.3, 0.3, 2, 22),
(22, NULL, 0.9, 0.3, 0.1, 0.5, 3, 22),
(23, NULL, 0.7, 0.2, 0.1, 0.7, 4, 22),
(24, NULL, 0.4, 0.1, 0.1, 0.8, 5, 22),
(25, NULL, 0.2, 0.1, 0.1, 0.9, 6, 22);

-- --------------------------------------------------------

--
-- Структура таблицы `arrangement`
--

CREATE TABLE `arrangement` (
  `id` int NOT NULL,
  `model` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int DEFAULT NULL,
  `generate_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'base - на базовых весах, change - на измененных весах, self - на основе голосов пользователя, manual - собрано вручную',
  `datetime` date DEFAULT NULL,
  `territory_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `arrangement`
--

INSERT INTO `arrangement` (`id`, `model`, `user_id`, `generate_type`, `datetime`, `territory_id`) VALUES
(1, 'O:34:\"app\\facades\\ArrangementModelFacade\":3:{s:42:\"\0app\\facades\\ArrangementModelFacade\0matrix\";a:15:{i:0;a:15:{i:0;s:1:\"2\";i:1;s:1:\"2\";i:2;s:1:\"2\";i:3;s:1:\"2\";i:4;s:1:\"2\";i:5;s:1:\"2\";i:6;s:1:\"2\";i:7;s:1:\"7\";i:8;s:1:\"7\";i:9;s:1:\"7\";i:10;s:1:\"7\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}i:1;a:15:{i:0;s:1:\"2\";i:1;s:1:\"2\";i:2;s:1:\"2\";i:3;s:1:\"2\";i:4;s:1:\"2\";i:5;s:1:\"2\";i:6;s:1:\"2\";i:7;s:1:\"7\";i:8;s:1:\"7\";i:9;s:1:\"7\";i:10;s:1:\"7\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}i:2;a:15:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:1:\"4\";i:3;s:1:\"4\";i:4;s:1:\"4\";i:5;s:1:\"4\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";i:10;s:1:\"3\";i:11;s:1:\"3\";i:12;s:1:\"3\";i:13;s:1:\"3\";i:14;s:1:\"0\";}i:3;a:15:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:1:\"4\";i:3;s:1:\"4\";i:4;s:1:\"4\";i:5;s:1:\"4\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";i:10;s:1:\"3\";i:11;s:1:\"3\";i:12;s:1:\"3\";i:13;s:1:\"3\";i:14;s:1:\"0\";}i:4;a:15:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:1:\"4\";i:3;s:1:\"4\";i:4;s:1:\"4\";i:5;s:1:\"4\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";i:10;s:1:\"3\";i:11;s:1:\"3\";i:12;s:1:\"3\";i:13;s:1:\"3\";i:14;s:1:\"0\";}i:5;a:15:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:1:\"4\";i:3;s:1:\"4\";i:4;s:1:\"4\";i:5;s:1:\"4\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";i:10;s:1:\"3\";i:11;s:1:\"3\";i:12;s:1:\"3\";i:13;s:1:\"3\";i:14;s:1:\"0\";}i:6;a:15:{i:0;s:1:\"2\";i:1;s:1:\"2\";i:2;s:1:\"2\";i:3;s:1:\"2\";i:4;s:1:\"2\";i:5;s:1:\"2\";i:6;s:1:\"2\";i:7;s:1:\"6\";i:8;s:1:\"6\";i:9;s:1:\"6\";i:10;s:1:\"6\";i:11;s:1:\"3\";i:12;s:1:\"3\";i:13;s:1:\"3\";i:14;s:1:\"3\";}i:7;a:15:{i:0;s:1:\"2\";i:1;s:1:\"2\";i:2;s:1:\"2\";i:3;s:1:\"2\";i:4;s:1:\"2\";i:5;s:1:\"2\";i:6;s:1:\"2\";i:7;s:1:\"6\";i:8;s:1:\"6\";i:9;s:1:\"6\";i:10;s:1:\"6\";i:11;s:1:\"3\";i:12;s:1:\"3\";i:13;s:1:\"3\";i:14;s:1:\"3\";}i:8;a:15:{i:0;s:1:\"2\";i:1;s:1:\"2\";i:2;s:1:\"2\";i:3;s:1:\"2\";i:4;s:1:\"2\";i:5;s:1:\"2\";i:6;s:1:\"2\";i:7;s:1:\"6\";i:8;s:1:\"6\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"3\";i:12;s:1:\"3\";i:13;s:1:\"3\";i:14;s:1:\"3\";}i:9;a:15:{i:0;s:1:\"2\";i:1;s:1:\"2\";i:2;s:1:\"2\";i:3;s:1:\"2\";i:4;s:1:\"2\";i:5;s:1:\"2\";i:6;s:1:\"2\";i:7;s:1:\"6\";i:8;s:1:\"6\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"3\";i:12;s:1:\"3\";i:13;s:1:\"3\";i:14;s:1:\"3\";}i:10;a:15:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:1:\"4\";i:3;s:1:\"4\";i:4;s:1:\"4\";i:5;s:1:\"4\";i:6;s:1:\"5\";i:7;s:1:\"5\";i:8;s:1:\"5\";i:9;s:1:\"5\";i:10;s:1:\"5\";i:11;s:1:\"5\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}i:11;a:15:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:1:\"4\";i:3;s:1:\"4\";i:4;s:1:\"4\";i:5;s:1:\"4\";i:6;s:1:\"5\";i:7;s:1:\"5\";i:8;s:1:\"5\";i:9;s:1:\"5\";i:10;s:1:\"5\";i:11;s:1:\"5\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}i:12;a:15:{i:0;s:1:\"7\";i:1;s:1:\"7\";i:2;s:1:\"7\";i:3;s:1:\"7\";i:4;s:1:\"6\";i:5;s:1:\"6\";i:6;s:1:\"5\";i:7;s:1:\"5\";i:8;s:1:\"5\";i:9;s:1:\"5\";i:10;s:1:\"5\";i:11;s:1:\"5\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}i:13;a:15:{i:0;s:1:\"7\";i:1;s:1:\"7\";i:2;s:1:\"7\";i:3;s:1:\"7\";i:4;s:1:\"6\";i:5;s:1:\"6\";i:6;s:1:\"5\";i:7;s:1:\"5\";i:8;s:1:\"5\";i:9;s:1:\"5\";i:10;s:1:\"5\";i:11;s:1:\"5\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}i:14;a:15:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}}s:43:\"\0app\\facades\\ArrangementModelFacade\0objects\";a:7:{i:6;i:4;i:2;i:3;i:4;i:3;i:7;i:2;i:3;i:2;i:1;i:1;i:5;i:1;}s:51:\"\0app\\facades\\ArrangementModelFacade\0objectsPosition\";a:16:{i:0;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:7;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:2;s:4:\"name\";s:5:\"Obj_2\";s:6:\"length\";i:70;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:2;s:4:\"name\";s:5:\"Obj_2\";s:6:\"length\";i:70;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:0;s:12:\"positionType\";i:0;}i:1;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:6;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:4;s:4:\"name\";s:5:\"Obj_4\";s:6:\"length\";i:60;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:4;s:4:\"name\";s:5:\"Obj_4\";s:6:\"length\";i:60;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:2;s:12:\"positionType\";i:0;}i:2;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:6;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:4;s:4:\"name\";s:5:\"Obj_4\";s:6:\"length\";i:60;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:4;s:4:\"name\";s:5:\"Obj_4\";s:6:\"length\";i:60;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:4;s:12:\"positionType\";i:0;}i:3;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:7;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:2;s:4:\"name\";s:5:\"Obj_2\";s:6:\"length\";i:70;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:2;s:4:\"name\";s:5:\"Obj_2\";s:6:\"length\";i:70;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:6;s:12:\"positionType\";i:0;}i:4;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:7;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:2;s:4:\"name\";s:5:\"Obj_2\";s:6:\"length\";i:70;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:2;s:4:\"name\";s:5:\"Obj_2\";s:6:\"length\";i:70;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:8;s:12:\"positionType\";i:0;}i:5;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:6;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:4;s:4:\"name\";s:5:\"Obj_4\";s:6:\"length\";i:60;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:4;s:4:\"name\";s:5:\"Obj_4\";s:6:\"length\";i:60;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:10;s:12:\"positionType\";i:0;}i:6;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:4;s:10:\"widthCells\";i:4;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Obj_1\";s:6:\"length\";i:40;s:5:\"width\";i:40;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:2;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Obj_1\";s:6:\"length\";i:40;s:5:\"width\";i:40;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:2;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:6;s:3:\"top\";i:2;s:12:\"positionType\";i:0;}i:7;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:6;s:10:\"widthCells\";i:4;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:5;s:4:\"name\";s:5:\"Obj_5\";s:6:\"length\";i:60;s:5:\"width\";i:40;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:2;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:5;s:4:\"name\";s:5:\"Obj_5\";s:6:\"length\";i:60;s:5:\"width\";i:40;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:2;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:6;s:3:\"top\";i:10;s:12:\"positionType\";i:0;}i:8;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:4;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:7;s:4:\"name\";s:5:\"Obj_7\";s:6:\"length\";i:40;s:5:\"width\";i:20;s:6:\"height\";N;s:4:\"cost\";N;s:12:\"created_time\";N;s:12:\"install_time\";N;s:12:\"worker_count\";N;s:14:\"object_type_id\";i:2;s:7:\"creator\";N;s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:7;s:4:\"name\";s:5:\"Obj_7\";s:6:\"length\";i:40;s:5:\"width\";i:20;s:6:\"height\";N;s:4:\"cost\";N;s:12:\"created_time\";N;s:12:\"install_time\";N;s:12:\"worker_count\";N;s:14:\"object_type_id\";i:2;s:7:\"creator\";N;s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:12;s:12:\"positionType\";i:0;}i:9;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:4;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:7;s:4:\"name\";s:5:\"Obj_7\";s:6:\"length\";i:40;s:5:\"width\";i:20;s:6:\"height\";N;s:4:\"cost\";N;s:12:\"created_time\";N;s:12:\"install_time\";N;s:12:\"worker_count\";N;s:14:\"object_type_id\";i:2;s:7:\"creator\";N;s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:7;s:4:\"name\";s:5:\"Obj_7\";s:6:\"length\";i:40;s:5:\"width\";i:20;s:6:\"height\";N;s:4:\"cost\";N;s:12:\"created_time\";N;s:12:\"install_time\";N;s:12:\"worker_count\";N;s:14:\"object_type_id\";i:2;s:7:\"creator\";N;s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:7;s:3:\"top\";i:0;s:12:\"positionType\";i:0;}i:10;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:2;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:6;s:4:\"name\";s:5:\"Obj_6\";s:6:\"length\";i:20;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:6;s:4:\"name\";s:5:\"Obj_6\";s:6:\"length\";i:20;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:4;s:3:\"top\";i:12;s:12:\"positionType\";i:0;}i:11;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:2;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:6;s:4:\"name\";s:5:\"Obj_6\";s:6:\"length\";i:20;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:6;s:4:\"name\";s:5:\"Obj_6\";s:6:\"length\";i:20;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:7;s:3:\"top\";i:6;s:12:\"positionType\";i:0;}i:12;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:2;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:6;s:4:\"name\";s:5:\"Obj_6\";s:6:\"length\";i:20;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:6;s:4:\"name\";s:5:\"Obj_6\";s:6:\"length\";i:20;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:7;s:3:\"top\";i:8;s:12:\"positionType\";i:0;}i:13;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:2;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:6;s:4:\"name\";s:5:\"Obj_6\";s:6:\"length\";i:20;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:6;s:4:\"name\";s:5:\"Obj_6\";s:6:\"length\";i:20;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:9;s:3:\"top\";i:6;s:12:\"positionType\";i:0;}i:14;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:4;s:10:\"widthCells\";i:4;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:3;s:4:\"name\";s:5:\"Obj_3\";s:6:\"length\";i:40;s:5:\"width\";i:40;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:4;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:3;s:4:\"name\";s:5:\"Obj_3\";s:6:\"length\";i:40;s:5:\"width\";i:40;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:4;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:10;s:3:\"top\";i:2;s:12:\"positionType\";i:0;}i:15;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:4;s:10:\"widthCells\";i:4;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:3;s:4:\"name\";s:5:\"Obj_3\";s:6:\"length\";i:40;s:5:\"width\";i:40;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:4;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:3;s:4:\"name\";s:5:\"Obj_3\";s:6:\"length\";i:40;s:5:\"width\";i:40;s:6:\"height\";i:0;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:4;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:11;s:3:\"top\";i:6;s:12:\"positionType\";i:0;}}}', NULL, 'base', '2024-05-31', 1),
(2, 'O:34:\"app\\facades\\ArrangementModelFacade\":3:{s:42:\"\0app\\facades\\ArrangementModelFacade\0matrix\";a:15:{i:0;a:15:{i:0;s:1:\"2\";i:1;s:1:\"2\";i:2;s:1:\"2\";i:3;s:1:\"2\";i:4;s:1:\"2\";i:5;s:1:\"2\";i:6;s:1:\"2\";i:7;s:1:\"7\";i:8;s:1:\"7\";i:9;s:1:\"7\";i:10;s:1:\"7\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}i:1;a:15:{i:0;s:1:\"2\";i:1;s:1:\"2\";i:2;s:1:\"2\";i:3;s:1:\"2\";i:4;s:1:\"2\";i:5;s:1:\"2\";i:6;s:1:\"2\";i:7;s:1:\"7\";i:8;s:1:\"7\";i:9;s:1:\"7\";i:10;s:1:\"7\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}i:2;a:15:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:1:\"4\";i:3;s:1:\"4\";i:4;s:1:\"4\";i:5;s:1:\"4\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";i:10;s:1:\"3\";i:11;s:1:\"3\";i:12;s:1:\"3\";i:13;s:1:\"3\";i:14;s:1:\"0\";}i:3;a:15:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:1:\"4\";i:3;s:1:\"4\";i:4;s:1:\"4\";i:5;s:1:\"4\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";i:10;s:1:\"3\";i:11;s:1:\"3\";i:12;s:1:\"3\";i:13;s:1:\"3\";i:14;s:1:\"0\";}i:4;a:15:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:1:\"4\";i:3;s:1:\"4\";i:4;s:1:\"4\";i:5;s:1:\"4\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";i:10;s:1:\"3\";i:11;s:1:\"3\";i:12;s:1:\"3\";i:13;s:1:\"3\";i:14;s:1:\"0\";}i:5;a:15:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:1:\"4\";i:3;s:1:\"4\";i:4;s:1:\"4\";i:5;s:1:\"4\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";i:10;s:1:\"3\";i:11;s:1:\"3\";i:12;s:1:\"3\";i:13;s:1:\"3\";i:14;s:1:\"0\";}i:6;a:15:{i:0;s:1:\"2\";i:1;s:1:\"2\";i:2;s:1:\"2\";i:3;s:1:\"2\";i:4;s:1:\"2\";i:5;s:1:\"2\";i:6;s:1:\"2\";i:7;s:1:\"6\";i:8;s:1:\"6\";i:9;s:1:\"6\";i:10;s:1:\"6\";i:11;s:1:\"3\";i:12;s:1:\"3\";i:13;s:1:\"3\";i:14;s:1:\"3\";}i:7;a:15:{i:0;s:1:\"2\";i:1;s:1:\"2\";i:2;s:1:\"2\";i:3;s:1:\"2\";i:4;s:1:\"2\";i:5;s:1:\"2\";i:6;s:1:\"2\";i:7;s:1:\"6\";i:8;s:1:\"6\";i:9;s:1:\"6\";i:10;s:1:\"6\";i:11;s:1:\"3\";i:12;s:1:\"3\";i:13;s:1:\"3\";i:14;s:1:\"3\";}i:8;a:15:{i:0;s:1:\"2\";i:1;s:1:\"2\";i:2;s:1:\"2\";i:3;s:1:\"2\";i:4;s:1:\"2\";i:5;s:1:\"2\";i:6;s:1:\"2\";i:7;s:1:\"6\";i:8;s:1:\"6\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"3\";i:12;s:1:\"3\";i:13;s:1:\"3\";i:14;s:1:\"3\";}i:9;a:15:{i:0;s:1:\"2\";i:1;s:1:\"2\";i:2;s:1:\"2\";i:3;s:1:\"2\";i:4;s:1:\"2\";i:5;s:1:\"2\";i:6;s:1:\"2\";i:7;s:1:\"6\";i:8;s:1:\"6\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"3\";i:12;s:1:\"3\";i:13;s:1:\"3\";i:14;s:1:\"3\";}i:10;a:15:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:1:\"4\";i:3;s:1:\"4\";i:4;s:1:\"4\";i:5;s:1:\"4\";i:6;s:1:\"5\";i:7;s:1:\"5\";i:8;s:1:\"5\";i:9;s:1:\"5\";i:10;s:1:\"5\";i:11;s:1:\"5\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}i:11;a:15:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:1:\"4\";i:3;s:1:\"4\";i:4;s:1:\"4\";i:5;s:1:\"4\";i:6;s:1:\"5\";i:7;s:1:\"5\";i:8;s:1:\"5\";i:9;s:1:\"5\";i:10;s:1:\"5\";i:11;s:1:\"5\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}i:12;a:15:{i:0;s:1:\"7\";i:1;s:1:\"7\";i:2;s:1:\"7\";i:3;s:1:\"7\";i:4;s:1:\"6\";i:5;s:1:\"6\";i:6;s:1:\"5\";i:7;s:1:\"5\";i:8;s:1:\"5\";i:9;s:1:\"5\";i:10;s:1:\"5\";i:11;s:1:\"5\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}i:13;a:15:{i:0;s:1:\"7\";i:1;s:1:\"7\";i:2;s:1:\"7\";i:3;s:1:\"7\";i:4;s:1:\"6\";i:5;s:1:\"6\";i:6;s:1:\"5\";i:7;s:1:\"5\";i:8;s:1:\"5\";i:9;s:1:\"5\";i:10;s:1:\"5\";i:11;s:1:\"5\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}i:14;a:15:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";}}s:43:\"\0app\\facades\\ArrangementModelFacade\0objects\";a:7:{i:6;i:4;i:2;i:3;i:4;i:3;i:7;i:2;i:3;i:2;i:1;i:1;i:5;i:1;}s:51:\"\0app\\facades\\ArrangementModelFacade\0objectsPosition\";a:16:{i:0;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:7;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:2;s:4:\"name\";s:5:\"Obj_2\";s:6:\"length\";i:70;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:70;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:2;s:4:\"name\";s:5:\"Obj_2\";s:6:\"length\";i:70;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:70;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:0;s:12:\"positionType\";i:0;}i:1;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:6;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:4;s:4:\"name\";s:5:\"Obj_4\";s:6:\"length\";i:60;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:80;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:4;s:4:\"name\";s:5:\"Obj_4\";s:6:\"length\";i:60;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:80;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:2;s:12:\"positionType\";i:0;}i:2;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:6;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:4;s:4:\"name\";s:5:\"Obj_4\";s:6:\"length\";i:60;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:80;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:4;s:4:\"name\";s:5:\"Obj_4\";s:6:\"length\";i:60;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:80;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:4;s:12:\"positionType\";i:0;}i:3;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:7;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:2;s:4:\"name\";s:5:\"Obj_2\";s:6:\"length\";i:70;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:70;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:2;s:4:\"name\";s:5:\"Obj_2\";s:6:\"length\";i:70;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:70;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:6;s:12:\"positionType\";i:0;}i:4;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:7;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:2;s:4:\"name\";s:5:\"Obj_2\";s:6:\"length\";i:70;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:70;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:2;s:4:\"name\";s:5:\"Obj_2\";s:6:\"length\";i:70;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:70;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:8;s:12:\"positionType\";i:0;}i:5;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:6;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:4;s:4:\"name\";s:5:\"Obj_4\";s:6:\"length\";i:60;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:80;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:4;s:4:\"name\";s:5:\"Obj_4\";s:6:\"length\";i:60;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:80;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:10;s:12:\"positionType\";i:0;}i:6;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:4;s:10:\"widthCells\";i:4;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Obj_1\";s:6:\"length\";i:40;s:5:\"width\";i:40;s:6:\"height\";i:0;s:4:\"cost\";d:100;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:2;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:1;s:4:\"name\";s:5:\"Obj_1\";s:6:\"length\";i:40;s:5:\"width\";i:40;s:6:\"height\";i:0;s:4:\"cost\";d:100;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:2;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:6;s:3:\"top\";i:2;s:12:\"positionType\";i:0;}i:7;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:6;s:10:\"widthCells\";i:4;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:5;s:4:\"name\";s:5:\"Obj_5\";s:6:\"length\";i:60;s:5:\"width\";i:40;s:6:\"height\";i:0;s:4:\"cost\";d:200;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:2;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:5;s:4:\"name\";s:5:\"Obj_5\";s:6:\"length\";i:60;s:5:\"width\";i:40;s:6:\"height\";i:0;s:4:\"cost\";d:200;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:2;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:6;s:3:\"top\";i:10;s:12:\"positionType\";i:0;}i:8;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:4;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:7;s:4:\"name\";s:5:\"Obj_7\";s:6:\"length\";i:40;s:5:\"width\";i:20;s:6:\"height\";N;s:4:\"cost\";d:25;s:12:\"created_time\";N;s:12:\"install_time\";N;s:12:\"worker_count\";N;s:14:\"object_type_id\";i:2;s:7:\"creator\";N;s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:7;s:4:\"name\";s:5:\"Obj_7\";s:6:\"length\";i:40;s:5:\"width\";i:20;s:6:\"height\";N;s:4:\"cost\";d:25;s:12:\"created_time\";N;s:12:\"install_time\";N;s:12:\"worker_count\";N;s:14:\"object_type_id\";i:2;s:7:\"creator\";N;s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:12;s:12:\"positionType\";i:0;}i:9;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:4;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:7;s:4:\"name\";s:5:\"Obj_7\";s:6:\"length\";i:40;s:5:\"width\";i:20;s:6:\"height\";N;s:4:\"cost\";d:25;s:12:\"created_time\";N;s:12:\"install_time\";N;s:12:\"worker_count\";N;s:14:\"object_type_id\";i:2;s:7:\"creator\";N;s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:7;s:4:\"name\";s:5:\"Obj_7\";s:6:\"length\";i:40;s:5:\"width\";i:20;s:6:\"height\";N;s:4:\"cost\";d:25;s:12:\"created_time\";N;s:12:\"install_time\";N;s:12:\"worker_count\";N;s:14:\"object_type_id\";i:2;s:7:\"creator\";N;s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:7;s:3:\"top\";i:0;s:12:\"positionType\";i:0;}i:10;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:2;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:6;s:4:\"name\";s:5:\"Obj_6\";s:6:\"length\";i:20;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:150;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:6;s:4:\"name\";s:5:\"Obj_6\";s:6:\"length\";i:20;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:150;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:4;s:3:\"top\";i:12;s:12:\"positionType\";i:0;}i:11;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:2;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:6;s:4:\"name\";s:5:\"Obj_6\";s:6:\"length\";i:20;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:150;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:6;s:4:\"name\";s:5:\"Obj_6\";s:6:\"length\";i:20;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:150;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:7;s:3:\"top\";i:6;s:12:\"positionType\";i:0;}i:12;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:2;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:6;s:4:\"name\";s:5:\"Obj_6\";s:6:\"length\";i:20;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:150;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:6;s:4:\"name\";s:5:\"Obj_6\";s:6:\"length\";i:20;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:150;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:7;s:3:\"top\";i:8;s:12:\"positionType\";i:0;}i:13;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:2;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:6;s:4:\"name\";s:5:\"Obj_6\";s:6:\"length\";i:20;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:150;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:6;s:4:\"name\";s:5:\"Obj_6\";s:6:\"length\";i:20;s:5:\"width\";i:20;s:6:\"height\";i:0;s:4:\"cost\";d:150;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:9;s:3:\"top\";i:6;s:12:\"positionType\";i:0;}i:14;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:4;s:10:\"widthCells\";i:4;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:3;s:4:\"name\";s:5:\"Obj_3\";s:6:\"length\";i:40;s:5:\"width\";i:40;s:6:\"height\";i:0;s:4:\"cost\";d:35;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:4;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:3;s:4:\"name\";s:5:\"Obj_3\";s:6:\"length\";i:40;s:5:\"width\";i:40;s:6:\"height\";i:0;s:4:\"cost\";d:35;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:4;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:10;s:3:\"top\";i:2;s:12:\"positionType\";i:0;}i:15;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:4;s:10:\"widthCells\";i:4;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:12:{s:2:\"id\";i:3;s:4:\"name\";s:5:\"Obj_3\";s:6:\"length\";i:40;s:5:\"width\";i:40;s:6:\"height\";i:0;s:4:\"cost\";d:35;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:4;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:12:{s:2:\"id\";i:3;s:4:\"name\";s:5:\"Obj_3\";s:6:\"length\";i:40;s:5:\"width\";i:40;s:6:\"height\";i:0;s:4:\"cost\";d:35;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:4;s:7:\"creator\";s:4:\"none\";s:14:\"dead_zone_size\";i:0;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:11;s:3:\"top\";i:6;s:12:\"positionType\";i:0;}}}', NULL, 'base', '2024-06-02', 1);
INSERT INTO `arrangement` (`id`, `model`, `user_id`, `generate_type`, `datetime`, `territory_id`) VALUES
(3, 'O:34:\"app\\facades\\ArrangementModelFacade\":3:{s:42:\"\0app\\facades\\ArrangementModelFacade\0matrix\";a:20:{i:0;a:20:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;i:0;i:4;s:1:\"0\";i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;s:1:\"0\";i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;i:16;s:1:\"0\";i:17;s:2:\"20\";i:18;s:2:\"20\";i:19;s:2:\"20\";}i:1;a:20:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;s:1:\"0\";i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;i:16;s:1:\"0\";i:17;s:2:\"20\";i:18;s:2:\"20\";i:19;s:2:\"20\";}i:2;a:20:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";i:19;s:1:\"0\";}i:3;a:20:{i:0;i:0;i:1;i:0;i:2;i:0;i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;s:1:\"0\";i:12;i:0;i:13;i:0;i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";i:19;s:2:\"46\";}i:4;a:20:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;s:1:\"0\";i:12;i:0;i:13;i:0;i:14;s:1:\"0\";i:15;i:0;i:16;i:0;i:17;i:0;i:18;s:1:\"0\";i:19;s:2:\"46\";}i:5;a:20:{i:0;s:1:\"3\";i:1;s:1:\"3\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;s:1:\"0\";i:12;i:0;i:13;i:0;i:14;s:1:\"0\";i:15;i:0;i:16;i:0;i:17;i:0;i:18;s:1:\"0\";i:19;s:2:\"46\";}i:6;a:20:{i:0;s:1:\"3\";i:1;s:1:\"3\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";i:19;s:2:\"46\";}i:7;a:20:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;s:1:\"0\";i:14;i:0;i:15;i:0;i:16;i:0;i:17;i:0;i:18;s:1:\"0\";i:19;s:2:\"46\";}i:8;a:20:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:1:\"4\";i:3;s:1:\"4\";i:4;s:1:\"0\";i:5;i:0;i:6;i:0;i:7;i:0;i:8;i:0;i:9;i:0;i:10;i:0;i:11;i:0;i:12;i:0;i:13;s:1:\"0\";i:14;i:0;i:15;i:0;i:16;i:0;i:17;i:0;i:18;s:1:\"0\";i:19;s:1:\"0\";}i:9;a:20:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:1:\"4\";i:3;s:1:\"4\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";i:19;s:1:\"0\";}i:10;a:20:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:1:\"4\";i:3;s:1:\"4\";i:4;s:1:\"0\";i:5;i:0;i:6;i:0;i:7;i:0;i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;i:16;i:0;i:17;s:1:\"0\";i:18;s:2:\"22\";i:19;s:2:\"22\";}i:11;a:20:{i:0;s:1:\"4\";i:1;s:1:\"4\";i:2;s:1:\"4\";i:3;s:1:\"4\";i:4;s:1:\"0\";i:5;i:0;i:6;i:0;i:7;i:0;i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;i:16;i:0;i:17;s:1:\"0\";i:18;s:2:\"22\";i:19;s:2:\"22\";}i:12;a:20:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";i:10;s:1:\"0\";i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;i:16;i:0;i:17;s:1:\"0\";i:18;s:2:\"22\";i:19;s:2:\"22\";}i:13;a:20:{i:0;s:1:\"6\";i:1;s:1:\"6\";i:2;s:1:\"0\";i:3;s:1:\"7\";i:4;s:1:\"7\";i:5;s:1:\"7\";i:6;s:1:\"7\";i:7;s:1:\"7\";i:8;s:1:\"7\";i:9;s:1:\"7\";i:10;s:1:\"0\";i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;i:16;i:0;i:17;s:1:\"0\";i:18;s:2:\"22\";i:19;s:2:\"22\";}i:14;a:20:{i:0;s:1:\"6\";i:1;s:1:\"6\";i:2;s:1:\"0\";i:3;s:1:\"7\";i:4;s:1:\"7\";i:5;s:1:\"7\";i:6;s:1:\"7\";i:7;s:1:\"7\";i:8;s:1:\"7\";i:9;s:1:\"7\";i:10;s:1:\"0\";i:11;i:0;i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;i:16;i:0;i:17;s:1:\"0\";i:18;s:1:\"0\";i:19;s:1:\"0\";}i:15;a:20:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"7\";i:4;s:1:\"7\";i:5;s:1:\"7\";i:6;s:1:\"7\";i:7;s:1:\"7\";i:8;s:1:\"7\";i:9;s:1:\"7\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";i:19;s:1:\"0\";}i:16;a:20:{i:0;s:1:\"8\";i:1;s:1:\"8\";i:2;s:1:\"0\";i:3;s:1:\"7\";i:4;s:1:\"7\";i:5;s:1:\"7\";i:6;s:1:\"7\";i:7;s:1:\"7\";i:8;s:1:\"7\";i:9;s:1:\"7\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;s:1:\"0\";i:13;s:1:\"0\";i:14;s:1:\"0\";i:15;s:1:\"0\";i:16;s:1:\"0\";i:17;s:1:\"0\";i:18;s:1:\"0\";i:19;s:1:\"0\";}i:17;a:20:{i:0;s:1:\"8\";i:1;s:1:\"8\";i:2;s:1:\"0\";i:3;s:1:\"7\";i:4;s:1:\"7\";i:5;s:1:\"7\";i:6;s:1:\"7\";i:7;s:1:\"7\";i:8;s:1:\"7\";i:9;s:1:\"7\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;i:16;i:0;i:17;i:0;i:18;s:1:\"0\";i:19;s:1:\"0\";}i:18;a:20:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"7\";i:4;s:1:\"7\";i:5;s:1:\"7\";i:6;s:1:\"7\";i:7;s:1:\"7\";i:8;s:1:\"7\";i:9;s:1:\"7\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;i:16;i:0;i:17;i:0;i:18;s:1:\"0\";i:19;s:1:\"0\";}i:19;a:20:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"7\";i:4;s:1:\"7\";i:5;s:1:\"7\";i:6;s:1:\"7\";i:7;s:1:\"7\";i:8;s:1:\"7\";i:9;s:1:\"7\";i:10;s:1:\"0\";i:11;s:1:\"0\";i:12;i:0;i:13;i:0;i:14;i:0;i:15;i:0;i:16;i:0;i:17;i:0;i:18;s:1:\"0\";i:19;s:1:\"0\";}}s:43:\"\0app\\facades\\ArrangementModelFacade\0objects\";a:8:{i:8;i:1;i:7;i:1;i:6;i:1;i:4;i:1;i:3;i:1;i:20;i:1;i:22;i:1;i:46;i:1;}s:15:\"objectsPosition\";a:8:{i:2;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:2;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:17:{s:2:\"id\";i:3;s:4:\"name\";s:29:\"Урна квадратная\";s:6:\"length\";i:42;s:5:\"width\";i:42;s:6:\"height\";i:68;s:4:\"cost\";d:13500;s:12:\"created_time\";i:4;s:12:\"install_time\";i:1;s:12:\"worker_count\";i:1;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:12:\"Декоис\";s:14:\"dead_zone_size\";i:50;s:5:\"style\";s:16:\"Экостиль\";s:10:\"model_path\";s:30:\"models/recreation/урна.glb\";s:7:\"article\";s:11:\"МАФ-1632\";s:8:\"left_age\";i:0;s:9:\"right_age\";i:130;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:17:{s:2:\"id\";i:3;s:4:\"name\";s:29:\"Урна квадратная\";s:6:\"length\";i:42;s:5:\"width\";i:42;s:6:\"height\";i:68;s:4:\"cost\";d:13500;s:12:\"created_time\";i:4;s:12:\"install_time\";i:1;s:12:\"worker_count\";i:1;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:12:\"Декоис\";s:14:\"dead_zone_size\";i:50;s:5:\"style\";s:16:\"Экостиль\";s:10:\"model_path\";s:30:\"models/recreation/урна.glb\";s:7:\"article\";s:11:\"МАФ-1632\";s:8:\"left_age\";i:0;s:9:\"right_age\";i:130;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:5;s:12:\"positionType\";i:0;}i:3;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:4;s:10:\"widthCells\";i:4;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:17:{s:2:\"id\";i:4;s:4:\"name\";s:14:\"Беседка\";s:6:\"length\";i:180;s:5:\"width\";i:180;s:6:\"height\";i:220;s:4:\"cost\";d:142800;s:12:\"created_time\";i:7;s:12:\"install_time\";i:1;s:12:\"worker_count\";i:2;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:12:\"Декоис\";s:14:\"dead_zone_size\";i:50;s:5:\"style\";s:16:\"Экостиль\";s:10:\"model_path\";s:18:\"models/recreation/\";s:7:\"article\";s:10:\"МАФ-208\";s:8:\"left_age\";i:3;s:9:\"right_age\";i:130;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:17:{s:2:\"id\";i:4;s:4:\"name\";s:14:\"Беседка\";s:6:\"length\";i:180;s:5:\"width\";i:180;s:6:\"height\";i:220;s:4:\"cost\";d:142800;s:12:\"created_time\";i:7;s:12:\"install_time\";i:1;s:12:\"worker_count\";i:2;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:12:\"Декоис\";s:14:\"dead_zone_size\";i:50;s:5:\"style\";s:16:\"Экостиль\";s:10:\"model_path\";s:18:\"models/recreation/\";s:7:\"article\";s:10:\"МАФ-208\";s:8:\"left_age\";i:3;s:9:\"right_age\";i:130;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:8;s:12:\"positionType\";i:0;}i:4;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:2;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:17:{s:2:\"id\";i:6;s:4:\"name\";s:25:\"Вазон уличный\";s:6:\"length\";i:90;s:5:\"width\";i:90;s:6:\"height\";i:150;s:4:\"cost\";d:11500;s:12:\"created_time\";i:10;s:12:\"install_time\";i:1;s:12:\"worker_count\";i:1;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:19:\"МАФ маркет\";s:14:\"dead_zone_size\";i:50;s:5:\"style\";s:18:\"Брутализм\";s:10:\"model_path\";s:32:\"models/recreation/вазон.glb\";s:7:\"article\";s:6:\"PGP040\";s:8:\"left_age\";i:7;s:9:\"right_age\";i:130;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:17:{s:2:\"id\";i:6;s:4:\"name\";s:25:\"Вазон уличный\";s:6:\"length\";i:90;s:5:\"width\";i:90;s:6:\"height\";i:150;s:4:\"cost\";d:11500;s:12:\"created_time\";i:10;s:12:\"install_time\";i:1;s:12:\"worker_count\";i:1;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:19:\"МАФ маркет\";s:14:\"dead_zone_size\";i:50;s:5:\"style\";s:18:\"Брутализм\";s:10:\"model_path\";s:32:\"models/recreation/вазон.glb\";s:7:\"article\";s:6:\"PGP040\";s:8:\"left_age\";i:7;s:9:\"right_age\";i:130;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:13;s:12:\"positionType\";i:0;}i:5;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:7;s:10:\"widthCells\";i:7;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:17:{s:2:\"id\";i:7;s:4:\"name\";s:39:\"Фонтан трехуровневый\";s:6:\"length\";i:350;s:5:\"width\";i:350;s:6:\"height\";i:250;s:4:\"cost\";d:120000;s:12:\"created_time\";i:12;s:12:\"install_time\";i:3;s:12:\"worker_count\";i:3;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:8:\"Mily-Art\";s:14:\"dead_zone_size\";i:50;s:5:\"style\";s:18:\"Брутализм\";s:10:\"model_path\";s:18:\"models/recreation/\";s:7:\"article\";s:8:\"MLSS-004\";s:8:\"left_age\";i:3;s:9:\"right_age\";i:130;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:17:{s:2:\"id\";i:7;s:4:\"name\";s:39:\"Фонтан трехуровневый\";s:6:\"length\";i:350;s:5:\"width\";i:350;s:6:\"height\";i:250;s:4:\"cost\";d:120000;s:12:\"created_time\";i:12;s:12:\"install_time\";i:3;s:12:\"worker_count\";i:3;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:8:\"Mily-Art\";s:14:\"dead_zone_size\";i:50;s:5:\"style\";s:18:\"Брутализм\";s:10:\"model_path\";s:18:\"models/recreation/\";s:7:\"article\";s:8:\"MLSS-004\";s:8:\"left_age\";i:3;s:9:\"right_age\";i:130;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:3;s:3:\"top\";i:13;s:12:\"positionType\";i:0;}i:6;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:2;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:17:{s:2:\"id\";i:8;s:4:\"name\";s:34:\"Топиарий (в работе)\";s:6:\"length\";i:55;s:5:\"width\";i:20;s:6:\"height\";i:187;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:14:\"Manufacturer 3\";s:14:\"dead_zone_size\";i:50;s:5:\"style\";s:7:\"default\";s:10:\"model_path\";s:18:\"models/recreation/\";s:7:\"article\";N;s:8:\"left_age\";N;s:9:\"right_age\";N;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:17:{s:2:\"id\";i:8;s:4:\"name\";s:34:\"Топиарий (в работе)\";s:6:\"length\";i:55;s:5:\"width\";i:20;s:6:\"height\";i:187;s:4:\"cost\";d:0;s:12:\"created_time\";i:0;s:12:\"install_time\";i:0;s:12:\"worker_count\";i:0;s:14:\"object_type_id\";i:1;s:7:\"creator\";s:14:\"Manufacturer 3\";s:14:\"dead_zone_size\";i:50;s:5:\"style\";s:7:\"default\";s:10:\"model_path\";s:18:\"models/recreation/\";s:7:\"article\";N;s:8:\"left_age\";N;s:9:\"right_age\";N;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:0;s:3:\"top\";i:16;s:12:\"positionType\";i:0;}i:16;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:3;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:17:{s:2:\"id\";i:20;s:4:\"name\";s:35:\"Вращающиеся кубики\";s:6:\"length\";i:120;s:5:\"width\";i:20;s:6:\"height\";i:120;s:4:\"cost\";d:23000;s:12:\"created_time\";i:6;s:12:\"install_time\";i:1;s:12:\"worker_count\";i:1;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:15:\"Robinia Bohemia\";s:14:\"dead_zone_size\";i:50;s:5:\"style\";s:27:\"Городской лофт\";s:10:\"model_path\";s:19:\"models/educational/\";s:7:\"article\";s:12:\"HH1S01-001\r\n\";s:8:\"left_age\";i:3;s:9:\"right_age\";i:10;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:17:{s:2:\"id\";i:20;s:4:\"name\";s:35:\"Вращающиеся кубики\";s:6:\"length\";i:120;s:5:\"width\";i:20;s:6:\"height\";i:120;s:4:\"cost\";d:23000;s:12:\"created_time\";i:6;s:12:\"install_time\";i:1;s:12:\"worker_count\";i:1;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:15:\"Robinia Bohemia\";s:14:\"dead_zone_size\";i:50;s:5:\"style\";s:27:\"Городской лофт\";s:10:\"model_path\";s:19:\"models/educational/\";s:7:\"article\";s:12:\"HH1S01-001\r\n\";s:8:\"left_age\";i:3;s:9:\"right_age\";i:10;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:17;s:3:\"top\";i:0;s:12:\"positionType\";i:0;}i:17;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:4;s:10:\"widthCells\";i:2;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:17:{s:2:\"id\";i:22;s:4:\"name\";s:16:\"Ксилофон\";s:6:\"length\";i:200;s:5:\"width\";i:65;s:6:\"height\";i:150;s:4:\"cost\";d:45000;s:12:\"created_time\";i:6;s:12:\"install_time\";i:1;s:12:\"worker_count\";i:1;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:15:\"Robinia Bohemia\";s:14:\"dead_zone_size\";i:50;s:5:\"style\";s:27:\"Городской лофт\";s:10:\"model_path\";s:19:\"models/educational/\";s:7:\"article\";s:10:\"HH3E00-008\";s:8:\"left_age\";i:3;s:9:\"right_age\";i:12;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:17:{s:2:\"id\";i:22;s:4:\"name\";s:16:\"Ксилофон\";s:6:\"length\";i:200;s:5:\"width\";i:65;s:6:\"height\";i:150;s:4:\"cost\";d:45000;s:12:\"created_time\";i:6;s:12:\"install_time\";i:1;s:12:\"worker_count\";i:1;s:14:\"object_type_id\";i:3;s:7:\"creator\";s:15:\"Robinia Bohemia\";s:14:\"dead_zone_size\";i:50;s:5:\"style\";s:27:\"Городской лофт\";s:10:\"model_path\";s:19:\"models/educational/\";s:7:\"article\";s:10:\"HH3E00-008\";s:8:\"left_age\";i:3;s:9:\"right_age\";i:12;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:18;s:3:\"top\";i:10;s:12:\"positionType\";i:1;}i:18;O:25:\"app\\models\\ObjectExtended\":4:{s:6:\"object\";O:26:\"app\\models\\work\\ObjectWork\":12:{s:11:\"lengthCells\";i:5;s:10:\"widthCells\";i:1;s:36:\"\0yii\\db\\BaseActiveRecord\0_attributes\";a:17:{s:2:\"id\";i:46;s:4:\"name\";s:31:\"Качели балансир F\";s:6:\"length\";i:250;s:5:\"width\";i:50;s:6:\"height\";i:80;s:4:\"cost\";d:18000;s:12:\"created_time\";i:6;s:12:\"install_time\";i:1;s:12:\"worker_count\";i:1;s:14:\"object_type_id\";i:4;s:7:\"creator\";s:12:\"Аданат\";s:14:\"dead_zone_size\";i:50;s:5:\"style\";s:14:\"Лемурия\";s:10:\"model_path\";s:86:\"models/game/Качалка_балансир_Дружба_без_подложкой.glb\";s:7:\"article\";s:9:\"925087205\";s:8:\"left_age\";i:4;s:9:\"right_age\";i:16;}s:39:\"\0yii\\db\\BaseActiveRecord\0_oldAttributes\";a:17:{s:2:\"id\";i:46;s:4:\"name\";s:31:\"Качели балансир F\";s:6:\"length\";i:250;s:5:\"width\";i:50;s:6:\"height\";i:80;s:4:\"cost\";d:18000;s:12:\"created_time\";i:6;s:12:\"install_time\";i:1;s:12:\"worker_count\";i:1;s:14:\"object_type_id\";i:4;s:7:\"creator\";s:12:\"Аданат\";s:14:\"dead_zone_size\";i:50;s:5:\"style\";s:14:\"Лемурия\";s:10:\"model_path\";s:86:\"models/game/Качалка_балансир_Дружба_без_подложкой.glb\";s:7:\"article\";s:9:\"925087205\";s:8:\"left_age\";i:4;s:9:\"right_age\";i:16;}s:33:\"\0yii\\db\\BaseActiveRecord\0_related\";a:0:{}s:47:\"\0yii\\db\\BaseActiveRecord\0_relationsDependencies\";a:0:{}s:23:\"\0yii\\base\\Model\0_errors\";N;s:27:\"\0yii\\base\\Model\0_validators\";N;s:25:\"\0yii\\base\\Model\0_scenario\";s:7:\"default\";s:27:\"\0yii\\base\\Component\0_events\";a:0:{}s:35:\"\0yii\\base\\Component\0_eventWildcards\";a:0:{}s:30:\"\0yii\\base\\Component\0_behaviors\";a:0:{}}s:4:\"left\";i:19;s:3:\"top\";i:3;s:12:\"positionType\";i:1;}}}', 1, 'base', '2024-06-16', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `arrangement_template`
--

CREATE TABLE `arrangement_template` (
  `id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `arrangement_template`
--

INSERT INTO `arrangement_template` (`id`, `name`, `description`) VALUES
(1, 'Баланс', 'Расстановка со сбалансированным количество МАФ всех четырех типов'),
(2, 'Спорт', 'Типовой шаблон для площадки, где большая часть территории отведена под спортивные объекты'),
(3, 'Детская', 'Шаблон для детской площадки, с сильным уклоном в игровые и развивающие МАФ');

-- --------------------------------------------------------

--
-- Структура таблицы `fixed_arrangement`
--

CREATE TABLE `fixed_arrangement` (
  `id` int NOT NULL,
  `territory_id` int DEFAULT NULL,
  `object_id` int DEFAULT NULL,
  `left` int DEFAULT NULL,
  `top` int DEFAULT NULL,
  `position` tinyint(1) DEFAULT NULL COMMENT '0 - горизонтальное, 1 - вертикальное'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `fixed_arrangement`
--

INSERT INTO `fixed_arrangement` (`id`, `territory_id`, `object_id`, `left`, `top`, `position`) VALUES
(1, 21, 42, 26, 18, 0),
(2, 21, 43, 27, 0, 0),
(3, 21, 50, 18, 20, 0),
(4, 21, 50, 28, 6, 1),
(5, 21, 46, 0, 17, 1),
(6, 21, 50, 0, 2, 1),
(7, 21, 47, 12, 16, 0),
(8, 21, 44, 4, 0, 1),
(9, 22, 45, 33, 29, 1),
(10, 22, 50, 0, 24, 1),
(11, 22, 50, 34, 22, 1),
(12, 22, 46, 6, 32, 0),
(13, 22, 47, 1, 1, 0),
(14, 22, 50, 15, 0, 0),
(15, 22, 48, 17, 4, 0),
(16, 22, 49, 31, 6, 0),
(17, 22, 44, 6, 6, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apply_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1714334930),
('m240428_130933_base_tables', 1714334932),
('m240430_114636_fill_tables', 1714499905),
('m240501_160049_add_dead_zone', 1714579484),
('m240502_095106_add_age_interval', 1715351699),
('m240502_101715_add_questionnaire', 1715351699),
('m240507_070852_add_user_table', 1715351699),
('m240508_064300_add_new_ages_weight', 1715351700),
('m240511_144253_fix_changeable_weights', 1715450423),
('m240516_185133_add_people_object', 1715885994),
('m240530_073248_add_arrangement_table', 1717178956),
('m240531_080203_fix_quest', 1717178956),
('m240603_144223_fill_object', 1717440392),
('m240603_191751_add_admin_user', 1717442620),
('m240604_185518_fix_ages', 1717527811),
('m240604_190556_correct_weights', 1717528435),
('m240605_061358_fix_objects', 1717609154),
('m240605_122602_fix_territory', 1717609154),
('m240609_154113_add_arrangement_templates', 1717950261),
('m240612_165608_change_territory', 1718213259),
('m240613_175614_fixed_arrangement', 1718301634);

-- --------------------------------------------------------

--
-- Структура таблицы `municipality`
--

CREATE TABLE `municipality` (
  `id` int NOT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sport_tendency` smallint DEFAULT NULL,
  `game_tendency` smallint DEFAULT NULL,
  `education_tendency` smallint DEFAULT NULL,
  `recreation_tendency` smallint DEFAULT NULL,
  `territory_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `municipality`
--

INSERT INTO `municipality` (`id`, `name`, `sport_tendency`, `game_tendency`, `education_tendency`, `recreation_tendency`, `territory_id`) VALUES
(1, 'Area 1', 5, 7, 2, 3, NULL),
(2, 'Area 2', 9, 2, 2, 2, NULL),
(3, 'Area 3', 9, 3, 9, 4, NULL),
(4, 'Area 4', 2, 9, 8, 3, NULL),
(5, 'Area 5', 5, 2, 1, 9, NULL),
(6, 'Area 6', 5, 5, 5, 5, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `neighboring_territory`
--

CREATE TABLE `neighboring_territory` (
  `id` int NOT NULL,
  `territory_id` int DEFAULT NULL,
  `neighboring_territory_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `neighboring_territory`
--

INSERT INTO `neighboring_territory` (`id`, `territory_id`, `neighboring_territory_id`) VALUES
(3, 21, 23),
(4, 22, 23),
(5, 21, 24),
(6, 22, 24),
(7, 21, 25),
(8, 22, 25),
(9, 21, 26),
(10, 22, 26);

-- --------------------------------------------------------

--
-- Структура таблицы `object`
--

CREATE TABLE `object` (
  `id` int NOT NULL,
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `length` int DEFAULT NULL,
  `width` int DEFAULT NULL,
  `height` int DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `created_time` int DEFAULT NULL COMMENT 'Время изготовления в днях',
  `install_time` int DEFAULT NULL COMMENT 'Время установки в днях',
  `worker_count` int DEFAULT NULL,
  `object_type_id` int DEFAULT NULL,
  `creator` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dead_zone_size` int DEFAULT '0',
  `style` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `article` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `left_age` int DEFAULT NULL,
  `right_age` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `object`
--

INSERT INTO `object` (`id`, `name`, `length`, `width`, `height`, `cost`, `created_time`, `install_time`, `worker_count`, `object_type_id`, `creator`, `dead_zone_size`, `style`, `model_path`, `article`, `left_age`, `right_age`) VALUES
(1, 'Скамейка «Block»', 180, 50, 46, 21000, 2, 1, 1, 1, 'Альфагород', 100, 'Экостиль', 'models/recreation/скамейка последняя.glb', 'СД-0054', 2, 130),
(2, 'Информационный стенд', 115, 16, 200, 12500, 2, 1, 1, 1, 'МАФ маркет', 100, 'Городской лофт', 'models/recreation/информационный стенд.glb', 'NEI205', 10, 130),
(3, 'Урна квадратная', 42, 42, 68, 13500, 4, 1, 1, 1, 'Декоис', 100, 'Экостиль', 'models/recreation/урна glb.glb', 'МАФ-1632', 0, 130),
(4, 'Беседка', 180, 180, 220, 142800, 7, 1, 2, 1, 'Декоис', 100, 'Экостиль', 'models/recreation/Беседка1.glb', 'МАФ-208', 3, 130),
(5, 'Парклет', 1100, 300, 300, 605000, 14, 3, 6, 1, 'Аданат', 150, 'Экостиль', 'models/recreation/парклет.glb', '22009', 5, 130),
(6, 'Вазон уличный', 90, 90, 150, 11500, 10, 1, 1, 1, 'МАФ маркет', 100, 'Брутализм', 'models/recreation/вазон1.glb', 'PGP040', 7, 130),
(7, 'Фонтан трехуровневый', 350, 350, 250, 120000, 12, 3, 3, 1, 'Mily-Art', 100, 'Брутализм', 'models/recreation/', 'MLSS-004', 3, 130),
(8, 'Топиарий (в работе)', 155, 20, 187, 0, 0, 0, 0, 1, 'Manufacturer 3', 100, 'default', 'models/recreation/топиари слон.glb', NULL, NULL, NULL),
(9, 'Скульптура (в работе)', 300, 300, 400, 3000, 0, 0, 0, 1, 'Manufacturer 3', 100, 'default', 'models/recreation/', NULL, NULL, NULL),
(10, 'Мини-стадион', 2500, 1500, 350, 1000000, 28, 10, 8, 2, 'DC Sport', 350, 'Стандарт', 'models/sport/', 'DS-IS010', 10, 45),
(11, 'Турник тройной', 380, 20, 170, 25000, 3, 1, 1, 2, 'Robinia Bohemia', 100, 'Городской лофт', 'models/sport/Турник тройной.glb', 'ZtypHH2С00-001', 15, 50),
(12, 'Комплекс тройной: турник, кольца, стенка', 260, 220, 340, 34000, 5, 1, 1, 2, 'Robinia Bohemia', 100, 'Городской лофт', 'models/sport/гимнастический комплекс1.glb', 'HH2D00-001\r\n', 15, 50),
(13, 'Элемент для скейт площадки', 1020, 375, 180, 4366800, 10, 2, 3, 2, 'Диком-МАФ', 150, 'Стандарт', 'models/sport/', 'DM-142', 15, 40),
(14, 'Теннисный стол', 274, 150, 85, 107800, 7, 1, 1, 2, 'Диком-МАФ', 150, 'Стандарт', 'models/sport/Теннисный стол разборный.glb', 'DM-88', 10, 50),
(15, 'Тренажер Бабочка', 105, 89, 194, 133200, 7, 1, 1, 2, 'Диком-МАФ', 100, 'Индастриал', 'models/sport/', 'DM-201', 12, 70),
(16, 'Вело-степпер', 151, 51, 121, 102600, 7, 1, 1, 2, 'Диком-МАФ', 100, 'Индастриал', 'models/sport/', 'DM-215', 10, 70),
(17, 'Тренажер Лыжи', 141, 55, 159, 103500, 7, 1, 1, 2, 'Диком-МАФ', 150, 'Индастриал', 'models/sport/', 'DM-204', 8, 60),
(18, 'Комплекс воркаут', 1000, 310, 440, 85400, 12, 2, 2, 2, 'Robinia Bohemia', 150, 'Городской лофт', 'models/sport/Уличный воркаут.glb', 'HH2D00-009', 15, 50),
(19, 'Скамья для пресса', 160, 60, 75, 40800, 4, 1, 1, 2, 'MAF.ru', 100, 'ГТО', 'models/sport/скамья для пресса наклонная для ГТО.glb', 'МАФ-ГТО-С03', 10, 70),
(20, 'Вращающиеся кубики', 120, 20, 120, 23000, 6, 1, 1, 3, 'Robinia Bohemia', 100, 'Городской лофт', 'models/educational/Вращающиеся кубики.glb', 'HH1S01-001\r\n', 3, 10),
(21, 'Лабиринт Зиг-Заг', 400, 174, 90, 80300, 8, 1, 2, 3, 'MAF.ru', 100, 'Стандарт', 'models/educational/', 'МАФ-11.01.03', 2, 16),
(22, 'Ксилофон', 200, 65, 150, 45000, 6, 1, 1, 3, 'Robinia Bohemia', 100, 'Городской лофт', 'models/educational/ксилофон.glb', 'HH3E00-008', 3, 12),
(23, 'Песочница', 300, 300, 50, 12500, 4, 2, 1, 3, 'Robinia Bohemia', 100, 'Городской лофт', 'models/educational/Песочница.glb', 'HH1G00-003\r\n', 3, 10),
(24, 'Шахматная доска', 150, 80, 70, 87700, 6, 1, 1, 3, 'Мастерская Итальянец', 100, 'Брутализм', 'models/educational/шахматная доска.glb', 'IM.12.2', 5, 70),
(25, 'Платформа Балансир', 200, 200, 100, 25000, 4, 1, 1, 3, 'Robinia Bohemia', 100, 'Городской лофт', 'models/educational/вращающаяся платформа.glb', 'HH1E00-002', 5, 40),
(26, 'Маятник Ньютона', 115, 70, 95, 37250, 6, 1, 1, 3, 'Robinia Bohemia', 100, 'Городской лофт', 'models/educational/Маятник Ньютона.glb', 'HH1P01-003', 3, 15),
(27, 'Карточная доска Пексесо', 140, 27, 200, 31000, 8, 1, 1, 3, 'Robinia Bohemia', 100, 'Городской лофт', 'models/educational/Карточная доска Пексесо.glb', 'HH1D00-007', 3, 15),
(28, 'Карточная доска Калькулятор', 140, 30, 200, 33500, 8, 1, 1, 3, 'Robinia Bohemia', 100, 'Городской лофт', 'models/educational/Карточная доска Пексесо.glb', 'HH1D00-015', 3, 15),
(29, 'Качалка Муравей', 80, 45, 70, 8500, 4, 1, 1, 4, 'Robinia Bohemia', 100, 'Городской лофт', 'models/game/', 'AT18070039-0-03', 3, 10),
(30, 'Горка Лесенка', 335, 260, 150, 12000, 5, 1, 2, 4, 'Robinia Bohemia', 100, 'Городской лофт', 'models/game/Горка Лесенка.glb', 'HH1J00-003\r\n', 3, 12),
(31, 'Качели Балансир', 390, 60, 75, 25500, 4, 1, 1, 4, 'Robinia Bohemia', 100, 'Городской лофт', 'models/game/качели-балансир Бревно.glb', 'ZtypHH1C03-001', 4, 12),
(32, 'Комплекс Крепость', 705, 620, 400, 125300, 14, 2, 5, 4, 'Robinia Bohemia', 150, 'Городской лофт', 'models/game/', 'AT16070013-0-01', 3, 25),
(33, 'Канатный комплекс Маугли', 267, 251, 220, 62000, 8, 1, 2, 4, 'Robinia Bohemia', 100, 'Городской лофт', 'models/game/Лазательный комплекс Маугли.glb', 'AT15050002-0-01', 3, 30),
(34, 'Канатный комплекс Геркулес', 1940, 780, 300, 105000, 14, 3, 4, 4, 'Robinia Bohemia', 150, 'Городской лофт', 'models/game/Канатный комплекс Геркулес1.glb', 'HH1L01-001', 3, 12),
(35, 'Штабик', 260, 240, 440, 27800, 7, 1, 2, 4, 'Robinia Bohemia', 100, 'Городской лофт', 'models/game/Штабик.glb', 'AT17070003-0-01', 3, 15),
(36, 'Комплекс туннелей', 690, 150, 90, 30400, 6, 1, 1, 4, 'Robinia Bohemia', 100, 'Городской лофт', 'models/game/Комплекс туннелей.glb', 'HH1K00-007', 2, 12),
(37, 'Качели двойные', 420, 220, 270, 41000, 10, 1, 2, 4, 'Robinia Bohemia', 150, 'Городской лофт', 'models/game/Качели двойные.glb', 'HH1C01-002', 4, 130),
(38, 'Карусель Соты', 220, 190, 110, 22000, 3, 1, 1, 4, 'Robinia Bohemia', 100, 'Городской лофт', 'models/game/Карусель Соты.glb', 'AT17010034-0-02', 3, 45),
(42, 'Турник F', 200, 200, 220, 60000, 10, 1, 2, 2, 'Кенгуру', 100, 'Экостиль', 'models/sport/', '925087231', 5, 130),
(43, 'Брусья F', 150, 70, 100, 25000, 8, 1, 1, 2, 'Sportmen', 100, 'Экостиль', 'models/sport/Брусья.glb', '925087233', 5, 130),
(44, 'Комплекс детский F', 400, 500, 220, 45000, 14, 2, 4, 4, 'Лебер', 150, 'Маверикс', 'models/game/горка калейдоскоп.glb', '925087227', 3, 12),
(45, 'Качели стационарные F', 350, 120, 230, 20000, 11, 1, 1, 4, 'Аданат', 100, 'Лемурия', 'models/game/', '925087197', 2, 18),
(46, 'Качели балансир F', 250, 50, 80, 18000, 6, 1, 1, 4, 'Аданат', 100, 'Лемурия', 'models/game/Качалка-балансир_Дружба.glb', '925087205', 4, 16),
(47, 'Песочница F', 200, 200, 50, 34000, 3, 2, 2, 3, 'ДиКом', 100, 'Тематика25', 'models/educational/Песочница.glb', '925087221', 0, 5),
(48, 'Качалка F', 80, 60, 80, 11000, 2, 1, 1, 4, 'ДиКом', 100, 'Тематика25', 'models/game/качели лошадь.glb', '925087199', 2, 10),
(49, 'Карусель F', 150, 150, 80, 42000, 10, 1, 2, 4, 'ДиКом', 100, 'Тематика17', 'models/game/', '925087207', 2, 10),
(50, 'Скамейка F', 210, 70, 80, 25000, 5, 1, 1, 1, 'Атрикс', 100, 'Экостиль', 'models/educational/скамейка последняя.glb', '925087212', 2, 130),
(51, 'Велопарковка', 300, 30, 60, 32000, 3, 1, 1, 1, 'Декоис', 150, 'Городской лофт', 'models/educational/стоянка для велосипедов.glb', 'МАФ-140', 5, 130),
(52, 'Доска для рисования', 260, 80, 116, 40000, 8, 1, 1, 3, 'Robinia Bohemia', 100, 'Городской лофт', 'models/educational/Доска для рисования.glb', 'HH1D00-002', 3, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `object_type`
--

CREATE TABLE `object_type` (
  `id` int NOT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `object_type`
--

INSERT INTO `object_type` (`id`, `name`) VALUES
(1, 'Рекреационный'),
(2, 'Спортивный'),
(3, 'Обучающий'),
(4, 'Игровой');

-- --------------------------------------------------------

--
-- Структура таблицы `people_territory`
--

CREATE TABLE `people_territory` (
  `id` int NOT NULL,
  `count` int DEFAULT NULL,
  `ages_interval_id` int DEFAULT NULL,
  `territory_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `people_territory`
--

INSERT INTO `people_territory` (`id`, `count`, `ages_interval_id`, `territory_id`) VALUES
(15, 11, 1, 1),
(16, 74, 2, 1),
(17, 69, 3, 1),
(18, 59, 4, 1),
(19, 74, 5, 1),
(20, 84, 6, 1),
(22, 1, 1, 22),
(23, 1, 2, 22),
(24, 1, 3, 22),
(25, 1, 4, 22),
(26, 1, 5, 22),
(27, 1, 6, 22),
(28, 1, 1, 21),
(29, 1, 2, 21),
(30, 1, 3, 21),
(31, 1, 4, 21),
(32, 1, 5, 21),
(33, 1, 6, 21);

-- --------------------------------------------------------

--
-- Структура таблицы `playground`
--

CREATE TABLE `playground` (
  `id` int NOT NULL,
  `playground_type_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `playground_type`
--

CREATE TABLE `playground_type` (
  `id` int NOT NULL,
  `sport_coef` float DEFAULT NULL,
  `game_coef` float DEFAULT NULL,
  `education_coef` float DEFAULT NULL,
  `recreation_coef` float DEFAULT NULL,
  `priority_ages_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `questionnaire`
--

CREATE TABLE `questionnaire` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `ages_interval_id` int DEFAULT NULL,
  `sport_tendency` smallint DEFAULT NULL,
  `recreation_tendency` smallint DEFAULT NULL,
  `game_tendency` smallint DEFAULT NULL,
  `education_tendency` smallint DEFAULT NULL,
  `arrangement_matrix` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `territory_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `questionnaire`
--

INSERT INTO `questionnaire` (`id`, `user_id`, `ages_interval_id`, `sport_tendency`, `recreation_tendency`, `game_tendency`, `education_tendency`, `arrangement_matrix`, `territory_id`) VALUES
(1, 1, 2, 2, 3, 9, 9, '1', 1),
(2, 1, 1, 6, 4, 5, 10, '1', 1),
(3, 1, 1, 10, 1, 1, 1, '1', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `restrict_object_territory`
--

CREATE TABLE `restrict_object_territory` (
  `id` int NOT NULL,
  `object_type_id` int DEFAULT NULL,
  `territory_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `template_block`
--

CREATE TABLE `template_block` (
  `id` int NOT NULL,
  `top` int DEFAULT NULL,
  `left` int DEFAULT NULL,
  `width` int DEFAULT NULL COMMENT 'Процент от общей высоты площадки',
  `length` int DEFAULT NULL COMMENT 'Процент от общей длины площадки',
  `object_type_id` int DEFAULT NULL COMMENT 'ID из таблицы object_type, если null - то строить нельзя',
  `arrangement_template_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `template_block`
--

INSERT INTO `template_block` (`id`, `top`, `left`, `width`, `length`, `object_type_id`, `arrangement_template_id`) VALUES
(1, 0, 0, 40, 40, 1, 1),
(2, 0, 60, 40, 40, 2, 1),
(3, 60, 0, 40, 40, 3, 1),
(4, 60, 60, 50, 40, 4, 1),
(5, 0, 40, 100, 20, NULL, 1),
(6, 40, 0, 20, 100, NULL, 1),
(7, 0, 0, 60, 100, 2, 2),
(8, 60, 0, 15, 100, NULL, 2),
(9, 75, 0, 25, 25, 1, 2),
(10, 75, 25, 25, 15, NULL, 2),
(11, 75, 40, 25, 20, 4, 2),
(12, 75, 60, 25, 15, NULL, 2),
(13, 75, 75, 25, 25, 1, 2),
(14, 0, 0, 15, 100, 1, 3),
(15, 0, 0, 100, 15, 1, 3),
(16, 85, 0, 15, 100, 1, 3),
(17, 0, 85, 100, 15, 1, 3),
(18, 15, 15, 70, 70, NULL, 3),
(19, 20, 20, 25, 25, 3, 3),
(20, 20, 55, 25, 25, 4, 3),
(21, 55, 20, 25, 25, 4, 3),
(22, 55, 55, 25, 25, 3, 3),
(23, NULL, NULL, NULL, NULL, NULL, NULL),
(24, NULL, NULL, NULL, NULL, NULL, NULL),
(25, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `territory`
--

CREATE TABLE `territory` (
  `id` int NOT NULL,
  `length` int DEFAULT NULL,
  `width` int DEFAULT NULL,
  `name` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` double DEFAULT NULL COMMENT 'Широта',
  `longitude` double DEFAULT NULL COMMENT 'Долгота',
  `priority_type` int DEFAULT NULL COMMENT '1 - рекреация, 2 - спорт, 3 - развивающая, 4 - игровая',
  `priority_coef` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `territory`
--

INSERT INTO `territory` (`id`, `length`, `width`, `name`, `address`, `latitude`, `longitude`, `priority_type`, `priority_coef`) VALUES
(1, 1000, 1000, 'Тестовая территория 1', NULL, 37.4927168, 55.8018517, NULL, NULL),
(2, 1200, 500, 'Тестовая территория 2', NULL, NULL, NULL, 1, 0.85),
(21, 1500, 1100, 'Детская площадка на 3-м Волоколамском проезде 14', '3-й Волоколамский проезд, д. 14, к. 1', 37.488615, 55.802664, NULL, NULL),
(22, 1800, 1700, 'Детская площадка на 1-м Волоколамском проезде 15/16', '1-й Волоколамский проезд, д. 15/16', 37.489101, 55.802706, NULL, NULL),
(23, 0, 0, 'Детская площадка на 1-м Волоколамском проезде 13', '1-й Волоколамский проезд, д. 13', 37.489873, 55.802312, 4, 0.6),
(24, 0, 0, 'Детская площадка на 1-м Волоколамском проезде 8 к. 1', '1-й Волоколамский пр-д, 8 корпус 1', 37.491407, 55.799957, 3, 0.5),
(25, 0, 0, 'Детская площадка на Маршала Конева 2', 'Конева Маршала ул. 2, 4 к.1', 37.4927168, 55.8018517, 2, 0.45),
(26, 0, 0, 'Детская площадка на Большом Волоколамском проезде 12', 'Большой Волоколамский пр-д, 12', 37.4939807, 55.8017893, 4, 0.5);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `login` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `municipality_id` int DEFAULT NULL,
  `role` smallint DEFAULT NULL COMMENT '1 - житель, 2 - член администрации, 3 - бог',
  `auth_flag` tinyint(1) DEFAULT '0',
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `login`, `municipality_id`, `role`, `auth_flag`, `password_hash`) VALUES
(1, 'admin', NULL, 3, 0, '919062b9ab9b81c54dd1e55d0481c1c0');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ages`
--
ALTER TABLE `ages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1-ages` (`municipality_id`),
  ADD KEY `fk2-ages` (`ages_interval_id`);

--
-- Индексы таблицы `ages_interval`
--
ALTER TABLE `ages_interval`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ages_weight`
--
ALTER TABLE `ages_weight`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1-ages_weight` (`ages_interval_id`);

--
-- Индексы таблицы `ages_weight_changeable`
--
ALTER TABLE `ages_weight_changeable`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1-ages_weight_changeable` (`ages_interval_id`),
  ADD KEY `fk2-ages_weight_changeable` (`territory_id`);

--
-- Индексы таблицы `arrangement`
--
ALTER TABLE `arrangement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1-arrangement` (`user_id`),
  ADD KEY `fk2-arrangement` (`territory_id`);

--
-- Индексы таблицы `arrangement_template`
--
ALTER TABLE `arrangement_template`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fixed_arrangement`
--
ALTER TABLE `fixed_arrangement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1-fixed_arrangement` (`territory_id`),
  ADD KEY `fk2-fixed_arrangement` (`object_id`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `municipality`
--
ALTER TABLE `municipality`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1-municipality` (`territory_id`);

--
-- Индексы таблицы `neighboring_territory`
--
ALTER TABLE `neighboring_territory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1-neighboring_territory` (`territory_id`),
  ADD KEY `fk2-neighboring_territory` (`neighboring_territory_id`);

--
-- Индексы таблицы `object`
--
ALTER TABLE `object`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1-object` (`object_type_id`);

--
-- Индексы таблицы `object_type`
--
ALTER TABLE `object_type`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `people_territory`
--
ALTER TABLE `people_territory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1-people_territory` (`ages_interval_id`),
  ADD KEY `fk2-people_territory` (`territory_id`);

--
-- Индексы таблицы `playground`
--
ALTER TABLE `playground`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1-playground` (`playground_type_id`);

--
-- Индексы таблицы `playground_type`
--
ALTER TABLE `playground_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1-playground_type` (`priority_ages_id`);

--
-- Индексы таблицы `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1-questionnaire` (`user_id`),
  ADD KEY `fk2-questionnaire` (`ages_interval_id`),
  ADD KEY `fk3-questionnaire` (`territory_id`);

--
-- Индексы таблицы `restrict_object_territory`
--
ALTER TABLE `restrict_object_territory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1-restrict_object_territory` (`object_type_id`),
  ADD KEY `fk2-restrict_object_territory` (`territory_id`);

--
-- Индексы таблицы `template_block`
--
ALTER TABLE `template_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1-template_block` (`object_type_id`),
  ADD KEY `fk2-template_block` (`arrangement_template_id`);

--
-- Индексы таблицы `territory`
--
ALTER TABLE `territory`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk1-user` (`municipality_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ages`
--
ALTER TABLE `ages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT для таблицы `ages_interval`
--
ALTER TABLE `ages_interval`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `ages_weight`
--
ALTER TABLE `ages_weight`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `ages_weight_changeable`
--
ALTER TABLE `ages_weight_changeable`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `arrangement`
--
ALTER TABLE `arrangement`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `arrangement_template`
--
ALTER TABLE `arrangement_template`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `fixed_arrangement`
--
ALTER TABLE `fixed_arrangement`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT для таблицы `municipality`
--
ALTER TABLE `municipality`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `neighboring_territory`
--
ALTER TABLE `neighboring_territory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `object`
--
ALTER TABLE `object`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT для таблицы `object_type`
--
ALTER TABLE `object_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `people_territory`
--
ALTER TABLE `people_territory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT для таблицы `playground`
--
ALTER TABLE `playground`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `playground_type`
--
ALTER TABLE `playground_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `restrict_object_territory`
--
ALTER TABLE `restrict_object_territory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `template_block`
--
ALTER TABLE `template_block`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `territory`
--
ALTER TABLE `territory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `ages`
--
ALTER TABLE `ages`
  ADD CONSTRAINT `fk1-ages` FOREIGN KEY (`municipality_id`) REFERENCES `municipality` (`id`),
  ADD CONSTRAINT `fk2-ages` FOREIGN KEY (`ages_interval_id`) REFERENCES `ages_interval` (`id`);

--
-- Ограничения внешнего ключа таблицы `ages_weight`
--
ALTER TABLE `ages_weight`
  ADD CONSTRAINT `fk1-ages_weight` FOREIGN KEY (`ages_interval_id`) REFERENCES `ages_interval` (`id`);

--
-- Ограничения внешнего ключа таблицы `ages_weight_changeable`
--
ALTER TABLE `ages_weight_changeable`
  ADD CONSTRAINT `fk1-ages_weight_changeable` FOREIGN KEY (`ages_interval_id`) REFERENCES `ages_interval` (`id`),
  ADD CONSTRAINT `fk2-ages_weight_changeable` FOREIGN KEY (`territory_id`) REFERENCES `territory` (`id`);

--
-- Ограничения внешнего ключа таблицы `arrangement`
--
ALTER TABLE `arrangement`
  ADD CONSTRAINT `fk1-arrangement` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `fk2-arrangement` FOREIGN KEY (`territory_id`) REFERENCES `territory` (`id`);

--
-- Ограничения внешнего ключа таблицы `fixed_arrangement`
--
ALTER TABLE `fixed_arrangement`
  ADD CONSTRAINT `fk1-fixed_arrangement` FOREIGN KEY (`territory_id`) REFERENCES `territory` (`id`),
  ADD CONSTRAINT `fk2-fixed_arrangement` FOREIGN KEY (`object_id`) REFERENCES `object` (`id`);

--
-- Ограничения внешнего ключа таблицы `municipality`
--
ALTER TABLE `municipality`
  ADD CONSTRAINT `fk1-municipality` FOREIGN KEY (`territory_id`) REFERENCES `territory` (`id`);

--
-- Ограничения внешнего ключа таблицы `neighboring_territory`
--
ALTER TABLE `neighboring_territory`
  ADD CONSTRAINT `fk1-neighboring_territory` FOREIGN KEY (`territory_id`) REFERENCES `territory` (`id`),
  ADD CONSTRAINT `fk2-neighboring_territory` FOREIGN KEY (`neighboring_territory_id`) REFERENCES `territory` (`id`);

--
-- Ограничения внешнего ключа таблицы `object`
--
ALTER TABLE `object`
  ADD CONSTRAINT `fk1-object` FOREIGN KEY (`object_type_id`) REFERENCES `object_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `people_territory`
--
ALTER TABLE `people_territory`
  ADD CONSTRAINT `fk1-people_territory` FOREIGN KEY (`ages_interval_id`) REFERENCES `ages_interval` (`id`),
  ADD CONSTRAINT `fk2-people_territory` FOREIGN KEY (`territory_id`) REFERENCES `territory` (`id`);

--
-- Ограничения внешнего ключа таблицы `playground`
--
ALTER TABLE `playground`
  ADD CONSTRAINT `fk1-playground` FOREIGN KEY (`playground_type_id`) REFERENCES `playground_type` (`id`);

--
-- Ограничения внешнего ключа таблицы `playground_type`
--
ALTER TABLE `playground_type`
  ADD CONSTRAINT `fk1-playground_type` FOREIGN KEY (`priority_ages_id`) REFERENCES `ages` (`id`);

--
-- Ограничения внешнего ключа таблицы `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD CONSTRAINT `fk1-questionnaire` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `fk2-questionnaire` FOREIGN KEY (`ages_interval_id`) REFERENCES `ages_interval` (`id`),
  ADD CONSTRAINT `fk3-questionnaire` FOREIGN KEY (`territory_id`) REFERENCES `territory` (`id`);

--
-- Ограничения внешнего ключа таблицы `restrict_object_territory`
--
ALTER TABLE `restrict_object_territory`
  ADD CONSTRAINT `fk1-restrict_object_territory` FOREIGN KEY (`object_type_id`) REFERENCES `object_type` (`id`),
  ADD CONSTRAINT `fk2-restrict_object_territory` FOREIGN KEY (`territory_id`) REFERENCES `territory` (`id`);

--
-- Ограничения внешнего ключа таблицы `template_block`
--
ALTER TABLE `template_block`
  ADD CONSTRAINT `fk1-template_block` FOREIGN KEY (`object_type_id`) REFERENCES `object_type` (`id`),
  ADD CONSTRAINT `fk2-template_block` FOREIGN KEY (`arrangement_template_id`) REFERENCES `arrangement_template` (`id`);

--
-- Ограничения внешнего ключа таблицы `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk1-user` FOREIGN KEY (`municipality_id`) REFERENCES `municipality` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
