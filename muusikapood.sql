-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Loomise aeg: Märts 22, 2024 kell 01:15 PL
-- Serveri versioon: 10.4.27-MariaDB
-- PHP versioon: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Andmebaas: `muusikapood`
--
CREATE DATABASE IF NOT EXISTS `muusikapood` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `muusikapood`;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `albumid`
--

CREATE TABLE `albumid` (
  `id` int(10) NOT NULL,
  `artist` varchar(255) NOT NULL,
  `album` varchar(255) NOT NULL,
  `aasta` year(4) NOT NULL,
  `hind` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Andmete tõmmistamine tabelile `albumid`
--

INSERT INTO `albumid` (`id`, `artist`, `album`, `aasta`, `hind`) VALUES
(1, 'Onu Bella', 'Fiat', 1998, '100.20'),
(2, 'Rodolphe', 'Span', 1990, '54.35'),
(3, 'Kelli', 'Temp', 1987, '1.48'),
(4, 'Blanca', 'Toughjoyfax', 1993, '8.61'),
(5, 'Dick', 'Span', 2006, '1.48'),
(6, 'Horst', 'Stronghold', 2007, '95.30'),
(7, 'Pauli', 'Daltfresh', 2003, '13.29'),
(8, 'Clari', 'Namfix', 1995, '34.36'),
(9, 'Tonia', 'Redhold', 1962, '96.42'),
(10, 'Nalani', 'Stronghold', 2012, '64.85'),
(11, 'Bonnibelle', 'Tin', 2007, '47.47'),
(12, 'Adelice', 'Y-Solowarm', 2008, '96.99'),
(13, 'Venita', 'Bamity', 2004, '49.88'),
(14, 'Kristi', 'Zontrax', 1988, '73.46'),
(15, 'Ransom', 'Cardify', 2010, '87.35'),
(16, 'Delainey', 'Cookley', 2012, '35.67'),
(17, 'Ashla', 'Namfix', 1977, '65.68'),
(18, 'Nataniel', 'Zontrax', 1993, '87.05'),
(19, 'Johan', 'Stringtough', 1997, '2.07'),
(20, 'Kayle', 'Cookley', 1990, '73.97'),
(21, 'Theodora', 'Span', 1999, '92.27'),
(22, 'Mikkel', 'Keylex', 1995, '68.76'),
(23, 'Nathanial', 'Flexidy', 2000, '31.29'),
(24, 'Ramonda', 'Keylex', 2008, '6.48'),
(25, 'Dasie', 'Temp', 2006, '80.01'),
(26, 'Leonid', 'Veribet', 2004, '45.45'),
(27, 'Shaylyn', 'Redhold', 2010, '31.07'),
(28, 'Estele', 'Greenlam', 1992, '26.33'),
(29, 'Veronica', 'Zoolab', 2011, '99.80'),
(30, 'Rockie', 'Bitwolf', 2007, '40.72'),
(31, 'Tedman', 'Lotlux', 2002, '6.50'),
(32, 'Shae', 'Treeflex', 2005, '15.36'),
(33, 'Griffith', 'Zoolab', 1996, '66.52'),
(34, 'Miguelita', 'Y-find', 2012, '29.21'),
(35, 'Binni', 'Vagram', 1992, '34.59'),
(36, 'Desiree', 'Flowdesk', 1992, '4.01'),
(37, 'Colby', 'Sub-Ex', 1996, '59.77'),
(38, 'Gray', 'Daltfresh', 2007, '14.02'),
(39, 'Orv', 'Kanlam', 2008, '61.62'),
(40, 'Lesley', 'Regrant', 2000, '20.51'),
(41, 'Perry', 'Bytecard', 2006, '51.85'),
(42, 'Stacia', 'Stronghold', 2003, '11.20'),
(43, 'Donal', 'Voyatouch', 1993, '26.88'),
(44, 'Meggie', 'Alphazap', 1999, '35.57'),
(45, 'Teddie', 'Ronstring', 2002, '92.57'),
(46, 'Adolphe', 'Bytecard', 2003, '36.79'),
(47, 'Gilli', 'Flexidy', 1985, '15.11'),
(48, 'Dee dee', 'Home Ing', 2010, '38.78'),
(49, 'Diane', 'Cookley', 1988, '51.11'),
(50, 'Brand', 'It', 2000, '71.81'),
(51, 'Marcile', 'Regrant', 1995, '41.47'),
(52, 'Marjorie', 'Konklux', 1991, '25.95'),
(53, 'Rosmunda', 'Holdlamis', 2008, '97.82'),
(54, 'Jere', 'Alpha', 2011, '62.26'),
(55, 'Hyman', 'Zamit', 1998, '10.02'),
(56, 'Estrellita', 'Span', 1995, '58.01'),
(57, 'Jarib', 'Vagram', 1995, '34.60'),
(58, 'Krystyna', 'Veribet', 2000, '28.07'),
(59, 'Osbourne', 'Fix San', 2007, '25.25'),
(60, 'Moore', 'Zaam-Dox', 2004, '15.60'),
(61, 'Kinsley', 'Asoka', 1984, '57.41'),
(62, 'Westleigh', 'Fix San', 2003, '92.27'),
(63, 'Bertram', 'Voyatouch', 1990, '78.39'),
(64, 'Idaline', 'Solarbreeze', 2011, '68.48'),
(65, 'Arlina', 'Gembucket', 1989, '58.67'),
(66, 'Tildi', 'Flexidy', 1992, '24.59'),
(67, 'Elena', 'Subin', 2010, '41.57'),
(68, 'Pincus', 'Cardguard', 1991, '5.80'),
(69, 'Pietrek', 'Latlux', 2012, '72.12'),
(70, 'Belita', 'Y-find', 2002, '27.25'),
(71, 'Darby', 'Stringtough', 1995, '76.18'),
(72, 'Collen', 'Daltfresh', 2012, '52.47'),
(73, 'Margaretha', 'Voyatouch', 2008, '79.38'),
(74, 'Ibby', 'Vagram', 1993, '82.00'),
(75, 'Jozef', 'Stim', 2011, '73.96'),
(76, 'Dacia', 'Zoolab', 1994, '30.50'),
(77, 'Jordan', 'Fixflex', 2008, '12.89'),
(78, 'Kelly', 'Aerified', 2005, '48.91'),
(79, 'Alessandro', 'Asoka', 2012, '23.96'),
(80, 'Clary', 'Matsoft', 1992, '25.58'),
(81, 'Frannie', 'Stim', 2002, '90.35'),
(82, 'Lucina', 'Zoolab', 2012, '23.15'),
(83, 'Leonie', 'Rank', 1996, '37.09'),
(84, 'Booth', 'Tempsoft', 1999, '56.69'),
(85, 'Shelby', 'Sonsing', 2008, '85.38'),
(86, 'Sissie', 'Sonsing', 1990, '98.49'),
(87, 'Chadwick', 'Temp', 2001, '37.98'),
(88, 'Valeria', 'Span', 2001, '66.37'),
(89, 'Pate', 'Regrant', 2007, '19.69'),
(90, 'Erinn', 'Kanlam', 1990, '38.34'),
(91, 'Cinderella', 'Duobam', 2010, '55.38'),
(92, 'Brandi', 'Flowdesk', 2009, '96.62'),
(93, 'Onfre', 'Transcof', 2006, '68.44'),
(94, 'Kalina', 'Tampflex', 2009, '7.72'),
(95, 'Clerissa', 'Duobam', 2010, '34.55'),
(96, 'Emili', 'Ventosanzap', 2002, '99.06'),
(97, 'Kinsley', 'Tampflex', 2007, '58.77'),
(98, 'Stormie', 'Zoolab', 2011, '41.53'),
(99, 'Omar', 'Prodder', 1997, '27.75'),
(100, 'Nefen', 'Tampflex', 1964, '7.84'),
(101, 'Waylan', 'Fix San', 2003, '6.57');

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `albumid`
--
ALTER TABLE `albumid`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `albumid`
--
ALTER TABLE `albumid`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
--
-- Andmebaas: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Andmete tõmmistamine tabelile `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"muusikapood\",\"table\":\"albumid\"},{\"db\":\"kandres\",\"table\":\"ettevotted\"},{\"db\":\"kandres\",\"table\":\"ratings\"},{\"db\":\"login\",\"table\":\"users\"},{\"db\":\"allprojects\",\"table\":\"p_hfdgdsf\"},{\"db\":\"allprojects\",\"table\":\"p_asdasdasd\"},{\"db\":\"allprojects\",\"table\":\"p_jkljkljkl\"},{\"db\":\"allprojects\",\"table\":\"projects\"},{\"db\":\"muusikapood\",\"table\":\"muusikapood\"}]');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Andmete tõmmistamine tabelile `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-03-22 12:13:32', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"et\"}');

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Tabeli struktuur tabelile `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indeksid tõmmistatud tabelitele
--

--
-- Indeksid tabelile `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeksid tabelile `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeksid tabelile `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeksid tabelile `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeksid tabelile `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeksid tabelile `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeksid tabelile `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeksid tabelile `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeksid tabelile `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeksid tabelile `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeksid tabelile `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeksid tabelile `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeksid tabelile `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeksid tabelile `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeksid tabelile `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeksid tabelile `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeksid tabelile `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeksid tabelile `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeksid tabelile `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT tõmmistatud tabelitele
--

--
-- AUTO_INCREMENT tabelile `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabelile `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabelile `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabelile `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabelile `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabelile `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
