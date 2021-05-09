-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Май 09 2021 г., 14:28
-- Версия сервера: 10.4.18-MariaDB
-- Версия PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `avtomash`
--
CREATE DATABASE IF NOT EXISTS `avtomash` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `avtomash`;

-- --------------------------------------------------------

--
-- Структура таблицы `auto_models`
--

CREATE TABLE `auto_models` (
  `ID` int(10) NOT NULL,
  `marka` varchar(25) DEFAULT NULL,
  `model` varchar(25) DEFAULT NULL,
  `maxmass` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `auto_models`
--

INSERT INTO `auto_models` (`ID`, `marka`, `model`, `maxmass`) VALUES
(1, 'ГАЗ', '3302', 3500),
(2, 'ГАЗ', 'A21R22', 3500),
(3, 'ГАЗ', '3302', 3500),
(4, 'ГАЗ', 'A21R22', 3500),
(5, 'ГАЗ', 'C41R22', 8700),
(6, 'ГАЗ', 'C41RB3', 10000),
(7, 'ГАЗ', 'C41R22', 8700),
(8, 'ГАЗ', 'C41RB3', 10000),
(9, 'КАМАЗ', NULL, 12000),
(10, 'VOLVO', NULL, 16000);

-- --------------------------------------------------------

--
-- Структура таблицы `client`
--

CREATE TABLE `client` (
  `ID` int(10) NOT NULL COMMENT 'Все заказчики',
  `date` date NOT NULL DEFAULT current_timestamp(),
  `name` varchar(100) NOT NULL COMMENT 'Название орг-ции или ФИО',
  `address` varchar(100) DEFAULT NULL COMMENT 'Юр. адрес или адрес регистрации',
  `phone` varchar(12) DEFAULT NULL COMMENT 'Телефон',
  `email` varchar(25) DEFAULT NULL COMMENT 'Эл. почта',
  `passport` varchar(50) DEFAULT NULL COMMENT 'Паспортные данные',
  `inn` int(20) DEFAULT NULL COMMENT 'ИНН для юр. лица',
  `kpp` int(20) DEFAULT NULL COMMENT 'КПП для юр. лица',
  `ind_count` int(25) DEFAULT NULL COMMENT 'расчетный счет',
  `korr_count` int(25) DEFAULT NULL COMMENT 'Корр. счет',
  `bik_bankname` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'БИК и наименование банка'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `client`
--

INSERT INTO `client` (`ID`, `date`, `name`, `address`, `phone`, `email`, `passport`, `inn`, `kpp`, `ind_count`, `korr_count`, `bik_bankname`) VALUES
(1, '2021-05-06', '\"Автокомпас\" ООО', 'г. Пермь', '+79222430001', NULL, NULL, NULL, NULL, NULL, 0, NULL),
(2, '2021-05-06', '\"Грузавтоимпорт\" ООО', 'Пермский край. г. Пермь, ул. Рязанская, д. 103', '-7342195197', NULL, NULL, NULL, NULL, NULL, 0, NULL),
(3, '2021-05-06', 'name', 'address', 'phone', 'email', 'passport', 0, 0, 0, 0, 'bik_bankname'),
(4, '0000-00-00', 'jkjk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(5, '0000-00-00', 'jkjk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(6, '0000-00-00', 'jkjk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(7, '0000-00-00', 'jkjk', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(8, '2021-05-07', 'try', 'perm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, '2021-05-07', 'try', 'perm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, '0000-00-00', 'jgkgkjgkg', 'hjguy', '123456', '', '5704655039', 0, 0, 0, 789123456, ''),
(11, '0000-00-00', 'Петров Сергей Иванович', 'г. Пермь, ул. Лесная, д. 1', '89125689478', 'utr@mail.ru', '5704655039', 2147483647, 0, 0, 0, ''),
(12, '0000-00-00', 'Милорадович', 'г. Пермь, ул. Лесная, д. 1', '89125689478', 'utr@mail.ru', '5704655039', 2147483647, 0, 0, 0, ''),
(13, '0000-00-00', 'Борисова', 'г. Пермь, ул. ПРистанционначв', '89125689478', 'utr@mail.ru', '5704655039', 2147483647, 0, 0, 0, ''),
(14, '0000-00-00', 'рпсопагл', 'tyron', '', '', '', 0, 0, 0, 0, ''),
(15, '0000-00-00', 'Крылов Никита', '', '', 'nbh##@mail.ru', '', 0, 0, 0, 0, ''),
(16, '0000-00-00', 'john brown', 'los-artos', '8912345678', '', '', 0, 0, 0, 0, ''),
(17, '0000-00-00', 'автоцентр', 'г. ижевск', '789456123', '', '', 0, 0, 0, 0, ''),
(18, '0000-00-00', '', '', '', '', '', 0, 0, 0, 0, ''),
(19, '0000-00-00', '', '', '', '', '', 0, 0, 0, 0, ''),
(20, '0000-00-00', '', '', '', '', '', 0, 0, 0, 0, ''),
(21, '0000-00-00', 'Длорпи', '', '', '', '', 0, 0, 0, 0, ''),
(22, '0000-00-00', '', '', '', '', '', 0, 0, 0, 0, ''),
(23, '0000-00-00', 'jkop', 'perm', '', '', '', 0, 0, 0, 0, ''),
(24, '0000-00-00', 'Вап', 'Мск', '789456123', '', '', 0, 0, 0, 0, ''),
(25, '0000-00-00', '', '', '', '', '', 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `dop_options`
--

CREATE TABLE `dop_options` (
  `id` int(3) NOT NULL COMMENT 'id',
  `option_name` varchar(50) NOT NULL COMMENT 'Название доп. опции',
  `option_length` int(5) NOT NULL COMMENT 'Длина',
  `model` varchar(50) DEFAULT NULL COMMENT 'Модель а/м (по необходимости)',
  `price_cost` int(10) NOT NULL COMMENT 'Внутренняя цена',
  `sale_cost` int(15) NOT NULL COMMENT 'Цена продажи',
  `dop_salary_making` int(11) NOT NULL,
  `date_from` date DEFAULT NULL COMMENT 'Начало действия цен',
  `date_to` date DEFAULT NULL COMMENT 'Окончание действия цены'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dop_options`
--

INSERT INTO `dop_options` (`id`, `option_name`, `option_length`, `model`, `price_cost`, `sale_cost`, `dop_salary_making`, `date_from`, `date_to`) VALUES
(1, 'Крыша ролики (АвтоМаш)', 3, NULL, 33000, 37000, 0, '2021-05-04', NULL),
(2, 'Крыша ролики (АвтоМаш)', 4, NULL, 33000, 38000, 0, '2021-05-04', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `fourgons`
--

CREATE TABLE `fourgons` (
  `id` int(3) NOT NULL COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT 'Название',
  `length` int(5) NOT NULL COMMENT 'Длина',
  `model` varchar(50) NOT NULL COMMENT 'Модель а/м',
  `price_cost` int(10) NOT NULL COMMENT 'Внутренняя цена',
  `sale_cost` int(15) NOT NULL COMMENT 'Цена продажи',
  `fourgon_salary_making` int(11) NOT NULL,
  `date_from` date DEFAULT NULL COMMENT 'Начало действия цен',
  `date_to` date DEFAULT NULL COMMENT 'Окончание действия цены'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `fourgons`
--

INSERT INTO `fourgons` (`id`, `name`, `length`, `model`, `price_cost`, `sale_cost`, `fourgon_salary_making`, `date_from`, `date_to`) VALUES
(1, 'Бортовая платформа без тента', 3, 'Газель Бизнес (Некст)', 100000, 130000, 0, '2021-05-04', NULL),
(2, 'Бортовая платформа с каркасом и тентом', 3, 'Газель Бизнес (Некст)', 110000, 140000, 0, '2021-05-04', NULL),
(3, 'Бортовая платформа без тента', 4, 'Газель Бизнес (Некст)', 118000, 148000, 0, '2021-05-04', NULL),
(4, 'Бортовая платформа с каркасом и тентом', 4, 'Газель Бизнес (Некст)', 133000, 163000, 0, '2021-05-04', NULL),
(5, 'Бортовая платформа без тента', 5, 'Газель Бизнес (Некст)', 134000, 164000, 0, '2021-05-04', NULL),
(6, 'Бортовая платформа с каркасом и тентом', 5, 'Газель Бизнес (Некст)', 151000, 181000, 0, '2021-05-04', NULL),
(7, 'Бортовая платформа без тента', 6, 'Газель Бизнес (Некст)', 160000, 190000, 0, '2021-05-04', NULL),
(8, 'Бортовая платформа с каркасом и тентом', 6, 'Газель Бизнес (Некст)', 178000, 208000, 0, '2021-05-04', NULL),
(9, 'Европлатформа', 3, 'Газель Бизнес (Некст)', 119000, 149000, 0, '2021-05-04', NULL),
(10, 'Европлатформа', 4, 'Газель Бизнес (Некст)', 141000, 171000, 0, '2021-05-04', NULL),
(11, 'Европлатформа', 5, 'Газель Бизнес (Некст)', 157000, 187000, 0, '2021-05-04', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `lengthen`
--

CREATE TABLE `lengthen` (
  `id` int(11) NOT NULL,
  `lengthen_category` varchar(50) NOT NULL COMMENT 'До скольки м удлиняем',
  `lengthen_model` varchar(50) NOT NULL COMMENT 'Модель а/м под удлинение',
  `lengthen_price` int(15) NOT NULL COMMENT 'Цена по прайсу',
  `lengthen_sale` int(15) DEFAULT NULL COMMENT 'Цена продажи (если кузов не заказан)',
  `length_salary_new` int(11) DEFAULT NULL,
  `length_salary_bu` int(11) DEFAULT NULL,
  `date_from` date NOT NULL COMMENT 'Начало действия цены',
  `date_to` date DEFAULT NULL COMMENT 'Окончание действия цены'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `lengthen`
--

INSERT INTO `lengthen` (`id`, `lengthen_category`, `lengthen_model`, `lengthen_price`, `lengthen_sale`, `length_salary_new`, `length_salary_bu`, `date_from`, `date_to`) VALUES
(1, 'Удлинение до 4 м', 'Газель Бизнес (Некст) любым двигателем', 25000, 51000, NULL, NULL, '2021-05-04', NULL),
(2, 'Удлинение до 5 м', 'Газель Бизнес (Некст) с бензиновым двигателем', 40000, 65000, NULL, NULL, '2021-05-04', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `materials`
--

CREATE TABLE `materials` (
  `ID` int(10) NOT NULL COMMENT 'Идентификатор',
  `mat_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название',
  `measure_unit` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Единица измерения',
  `mat_price` int(11) NOT NULL COMMENT 'Цена',
  `date_from` date DEFAULT NULL COMMENT 'Дата, с которой действует цена',
  `date_to` date DEFAULT NULL COMMENT 'Дата, до которой действует цена'
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Дамп данных таблицы `materials`
--

INSERT INTO `materials` (`ID`, `mat_name`, `measure_unit`, `mat_price`, `date_from`, `date_to`) VALUES
(1, 'труба квадратная 60*40*2', 'кг', 85, '2021-05-01', NULL),
(2, 'Лист плакированный', 'мп', 650, '2021-05-01', NULL),
(3, 'Фурнитура PUSH', 'шт', 1750, '2021-05-01', NULL),
(4, 'Ткань тентовая', 'м2', 250, '2021-05-01', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `salary_vars`
--

CREATE TABLE `salary_vars` (
  `variables` int(6) NOT NULL COMMENT 'Варианты суммы для зп производства'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `salary_vars`
--

INSERT INTO `salary_vars` (`variables`) VALUES
(1000),
(2000),
(3000),
(4000),
(5000),
(6000),
(7000),
(8000),
(9000),
(10000),
(11000),
(12000),
(13000),
(14000),
(15000),
(16000),
(17000),
(18000),
(19000),
(20000),
(21000),
(22000),
(23000),
(24000),
(25000);

-- --------------------------------------------------------

--
-- Структура таблицы `sale_journal`
--

CREATE TABLE `sale_journal` (
  `id` int(10) NOT NULL,
  `sale_date` date DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `fourgon_id` int(11) DEFAULT NULL,
  `dop_option_id` int(11) DEFAULT NULL,
  `lengthen_id` int(11) DEFAULT NULL,
  `material_id` int(11) DEFAULT NULL,
  `salary_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `login` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`login`, `password`) VALUES
('borisova', '\01\02\03'),
('krutoff', '\03\02\01');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auto_models`
--
ALTER TABLE `auto_models`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `dop_options`
--
ALTER TABLE `dop_options`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `fourgons`
--
ALTER TABLE `fourgons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lengthen`
--
ALTER TABLE `lengthen`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `salary_vars`
--
ALTER TABLE `salary_vars`
  ADD PRIMARY KEY (`variables`);

--
-- Индексы таблицы `sale_journal`
--
ALTER TABLE `sale_journal`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`login`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `auto_models`
--
ALTER TABLE `auto_models`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `client`
--
ALTER TABLE `client`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Все заказчики', AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `dop_options`
--
ALTER TABLE `dop_options`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `fourgons`
--
ALTER TABLE `fourgons`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT COMMENT 'id', AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблицы `lengthen`
--
ALTER TABLE `lengthen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `materials`
--
ALTER TABLE `materials`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `sale_journal`
--
ALTER TABLE `sale_journal`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- База данных: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Структура таблицы `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

--
-- Дамп данных таблицы `pma__central_columns`
--

INSERT INTO `pma__central_columns` (`db_name`, `col_name`, `col_type`, `col_length`, `col_collation`, `col_isNull`, `col_extra`, `col_default`) VALUES
('avtomash', 'inn_kpp', 'int', '20', '', 1, ',', '');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Дамп данных таблицы `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"avtomash\",\"table\":\"client\"},{\"db\":\"avtomash\",\"table\":\"lengthen\"},{\"db\":\"avtomash\",\"table\":\"fourgons\"},{\"db\":\"avtomash\",\"table\":\"dop_options\"},{\"db\":\"avtomash\",\"table\":\"sale_journal\"},{\"db\":\"mysql\",\"table\":\"dop_options\"},{\"db\":\"mysql\",\"table\":\"fourgons\"},{\"db\":\"avtomash\",\"table\":\"materials\"},{\"db\":\"avtomash\",\"table\":\"auto_models\"},{\"db\":\"avtomash\",\"table\":\"users\"}]');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Дамп данных таблицы `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'avtomash', 'client', '[]', '2021-05-07 11:15:48');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Дамп данных таблицы `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-05-09 12:11:08', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"ru\",\"NavigationWidth\":0}');

-- --------------------------------------------------------

--
-- Структура таблицы `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Структура таблицы `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Индексы таблицы `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Индексы таблицы `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Индексы таблицы `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Индексы таблицы `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Индексы таблицы `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Индексы таблицы `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Индексы таблицы `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Индексы таблицы `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Индексы таблицы `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Индексы таблицы `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Индексы таблицы `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Индексы таблицы `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Индексы таблицы `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Индексы таблицы `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- База данных: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- База данных: `test1`
--
CREATE DATABASE IF NOT EXISTS `test1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `test1`;

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `name` varchar(25) NOT NULL,
  `value` varchar(100) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `name`, `value`, `age`) VALUES
(1, 'POL', 'Enjeneer', 0),
(2, 'john', 'worker', 0),
(3, 'john', 'worker', 0),
(4, 'john', 'worker', 0),
(5, 'john', 'worker', 0),
(6, 'john', 'worker', 0),
(7, 'john', 'worker', 0),
(8, 'hi', 'hello', 0),
(9, 'grot', 'gogo', 0),
(10, 'grot', 'gogo', 0),
(11, 'grot', 'gogo', 0),
(12, 'rock', 'music', 0),
(13, 'rock', 'music', 56),
(14, 'yuiopp', 'ghjlfdtw', 96),
(15, '', '', 0);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
