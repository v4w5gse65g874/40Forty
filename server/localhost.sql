-- phpMyAdmin SQL Dump
-- version 3.3.8.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 18, 2011 at 10:02 PM
-- Server version: 5.1.52
-- PHP Version: 5.2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `information_schema`
--
CREATE DATABASE `information_schema` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `information_schema`;

-- --------------------------------------------------------

--
-- Table structure for table `CHARACTER_SETS`
--

CREATE TEMPORARY TABLE `CHARACTER_SETS` (
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `DEFAULT_COLLATE_NAME` varchar(32) NOT NULL DEFAULT '',
  `DESCRIPTION` varchar(60) NOT NULL DEFAULT '',
  `MAXLEN` bigint(3) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CHARACTER_SETS`
--

INSERT INTO `CHARACTER_SETS` (`CHARACTER_SET_NAME`, `DEFAULT_COLLATE_NAME`, `DESCRIPTION`, `MAXLEN`) VALUES
('big5', 'big5_chinese_ci', 'Big5 Traditional Chinese', 2),
('dec8', 'dec8_swedish_ci', 'DEC West European', 1),
('cp850', 'cp850_general_ci', 'DOS West European', 1),
('hp8', 'hp8_english_ci', 'HP West European', 1),
('koi8r', 'koi8r_general_ci', 'KOI8-R Relcom Russian', 1),
('latin1', 'latin1_swedish_ci', 'cp1252 West European', 1),
('latin2', 'latin2_general_ci', 'ISO 8859-2 Central European', 1),
('swe7', 'swe7_swedish_ci', '7bit Swedish', 1),
('ascii', 'ascii_general_ci', 'US ASCII', 1),
('ujis', 'ujis_japanese_ci', 'EUC-JP Japanese', 3),
('sjis', 'sjis_japanese_ci', 'Shift-JIS Japanese', 2),
('hebrew', 'hebrew_general_ci', 'ISO 8859-8 Hebrew', 1),
('tis620', 'tis620_thai_ci', 'TIS620 Thai', 1),
('euckr', 'euckr_korean_ci', 'EUC-KR Korean', 2),
('koi8u', 'koi8u_general_ci', 'KOI8-U Ukrainian', 1),
('gb2312', 'gb2312_chinese_ci', 'GB2312 Simplified Chinese', 2),
('greek', 'greek_general_ci', 'ISO 8859-7 Greek', 1),
('cp1250', 'cp1250_general_ci', 'Windows Central European', 1),
('gbk', 'gbk_chinese_ci', 'GBK Simplified Chinese', 2),
('latin5', 'latin5_turkish_ci', 'ISO 8859-9 Turkish', 1),
('armscii8', 'armscii8_general_ci', 'ARMSCII-8 Armenian', 1),
('utf8', 'utf8_general_ci', 'UTF-8 Unicode', 3),
('ucs2', 'ucs2_general_ci', 'UCS-2 Unicode', 2),
('cp866', 'cp866_general_ci', 'DOS Russian', 1),
('keybcs2', 'keybcs2_general_ci', 'DOS Kamenicky Czech-Slovak', 1),
('macce', 'macce_general_ci', 'Mac Central European', 1),
('macroman', 'macroman_general_ci', 'Mac West European', 1),
('cp852', 'cp852_general_ci', 'DOS Central European', 1),
('latin7', 'latin7_general_ci', 'ISO 8859-13 Baltic', 1),
('cp1251', 'cp1251_general_ci', 'Windows Cyrillic', 1),
('cp1256', 'cp1256_general_ci', 'Windows Arabic', 1),
('cp1257', 'cp1257_general_ci', 'Windows Baltic', 1),
('binary', 'binary', 'Binary pseudo charset', 1),
('geostd8', 'geostd8_general_ci', 'GEOSTD8 Georgian', 1),
('cp932', 'cp932_japanese_ci', 'SJIS for Windows Japanese', 2),
('eucjpms', 'eucjpms_japanese_ci', 'UJIS for Windows Japanese', 3);

-- --------------------------------------------------------

--
-- Table structure for table `CLIENT_STATISTICS`
--

CREATE TEMPORARY TABLE `CLIENT_STATISTICS` (
  `CLIENT` varchar(64) NOT NULL DEFAULT '',
  `TOTAL_CONNECTIONS` int(21) NOT NULL DEFAULT '0',
  `CONCURRENT_CONNECTIONS` int(21) NOT NULL DEFAULT '0',
  `CONNECTED_TIME` int(21) NOT NULL DEFAULT '0',
  `BUSY_TIME` int(21) NOT NULL DEFAULT '0',
  `CPU_TIME` int(21) NOT NULL DEFAULT '0',
  `BYTES_RECEIVED` int(21) NOT NULL DEFAULT '0',
  `BYTES_SENT` int(21) NOT NULL DEFAULT '0',
  `BINLOG_BYTES_WRITTEN` int(21) NOT NULL DEFAULT '0',
  `ROWS_FETCHED` int(21) NOT NULL DEFAULT '0',
  `ROWS_UPDATED` int(21) NOT NULL DEFAULT '0',
  `TABLE_ROWS_READ` int(21) NOT NULL DEFAULT '0',
  `SELECT_COMMANDS` int(21) NOT NULL DEFAULT '0',
  `UPDATE_COMMANDS` int(21) NOT NULL DEFAULT '0',
  `OTHER_COMMANDS` int(21) NOT NULL DEFAULT '0',
  `COMMIT_TRANSACTIONS` int(21) NOT NULL DEFAULT '0',
  `ROLLBACK_TRANSACTIONS` int(21) NOT NULL DEFAULT '0',
  `DENIED_CONNECTIONS` int(21) NOT NULL DEFAULT '0',
  `LOST_CONNECTIONS` int(21) NOT NULL DEFAULT '0',
  `ACCESS_DENIED` int(21) NOT NULL DEFAULT '0',
  `EMPTY_QUERIES` int(21) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CLIENT_STATISTICS`
--
-- in use (#1227 - Access denied; you need the PROCESS,SUPER privilege for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `COLLATIONS`
--

CREATE TEMPORARY TABLE `COLLATIONS` (
  `COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `ID` bigint(11) NOT NULL DEFAULT '0',
  `IS_DEFAULT` varchar(3) NOT NULL DEFAULT '',
  `IS_COMPILED` varchar(3) NOT NULL DEFAULT '',
  `SORTLEN` bigint(3) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATIONS`
--

INSERT INTO `COLLATIONS` (`COLLATION_NAME`, `CHARACTER_SET_NAME`, `ID`, `IS_DEFAULT`, `IS_COMPILED`, `SORTLEN`) VALUES
('big5_chinese_ci', 'big5', 1, 'Yes', 'Yes', 1),
('big5_bin', 'big5', 84, '', 'Yes', 1),
('dec8_swedish_ci', 'dec8', 3, 'Yes', 'Yes', 1),
('dec8_bin', 'dec8', 69, '', 'Yes', 1),
('cp850_general_ci', 'cp850', 4, 'Yes', 'Yes', 1),
('cp850_bin', 'cp850', 80, '', 'Yes', 1),
('hp8_english_ci', 'hp8', 6, 'Yes', 'Yes', 1),
('hp8_bin', 'hp8', 72, '', 'Yes', 1),
('koi8r_general_ci', 'koi8r', 7, 'Yes', 'Yes', 1),
('koi8r_bin', 'koi8r', 74, '', 'Yes', 1),
('latin1_german1_ci', 'latin1', 5, '', 'Yes', 1),
('latin1_swedish_ci', 'latin1', 8, 'Yes', 'Yes', 1),
('latin1_danish_ci', 'latin1', 15, '', 'Yes', 1),
('latin1_german2_ci', 'latin1', 31, '', 'Yes', 2),
('latin1_bin', 'latin1', 47, '', 'Yes', 1),
('latin1_general_ci', 'latin1', 48, '', 'Yes', 1),
('latin1_general_cs', 'latin1', 49, '', 'Yes', 1),
('latin1_spanish_ci', 'latin1', 94, '', 'Yes', 1),
('latin2_czech_cs', 'latin2', 2, '', 'Yes', 4),
('latin2_general_ci', 'latin2', 9, 'Yes', 'Yes', 1),
('latin2_hungarian_ci', 'latin2', 21, '', 'Yes', 1),
('latin2_croatian_ci', 'latin2', 27, '', 'Yes', 1),
('latin2_bin', 'latin2', 77, '', 'Yes', 1),
('swe7_swedish_ci', 'swe7', 10, 'Yes', 'Yes', 1),
('swe7_bin', 'swe7', 82, '', 'Yes', 1),
('ascii_general_ci', 'ascii', 11, 'Yes', 'Yes', 1),
('ascii_bin', 'ascii', 65, '', 'Yes', 1),
('ujis_japanese_ci', 'ujis', 12, 'Yes', 'Yes', 1),
('ujis_bin', 'ujis', 91, '', 'Yes', 1),
('sjis_japanese_ci', 'sjis', 13, 'Yes', 'Yes', 1),
('sjis_bin', 'sjis', 88, '', 'Yes', 1),
('hebrew_general_ci', 'hebrew', 16, 'Yes', 'Yes', 1),
('hebrew_bin', 'hebrew', 71, '', 'Yes', 1),
('tis620_thai_ci', 'tis620', 18, 'Yes', 'Yes', 4),
('tis620_bin', 'tis620', 89, '', 'Yes', 1),
('euckr_korean_ci', 'euckr', 19, 'Yes', 'Yes', 1),
('euckr_bin', 'euckr', 85, '', 'Yes', 1),
('koi8u_general_ci', 'koi8u', 22, 'Yes', 'Yes', 1),
('koi8u_bin', 'koi8u', 75, '', 'Yes', 1),
('gb2312_chinese_ci', 'gb2312', 24, 'Yes', 'Yes', 1),
('gb2312_bin', 'gb2312', 86, '', 'Yes', 1),
('greek_general_ci', 'greek', 25, 'Yes', 'Yes', 1),
('greek_bin', 'greek', 70, '', 'Yes', 1),
('cp1250_general_ci', 'cp1250', 26, 'Yes', 'Yes', 1),
('cp1250_czech_cs', 'cp1250', 34, '', 'Yes', 2),
('cp1250_croatian_ci', 'cp1250', 44, '', 'Yes', 1),
('cp1250_bin', 'cp1250', 66, '', 'Yes', 1),
('cp1250_polish_ci', 'cp1250', 99, '', 'Yes', 1),
('gbk_chinese_ci', 'gbk', 28, 'Yes', 'Yes', 1),
('gbk_bin', 'gbk', 87, '', 'Yes', 1),
('latin5_turkish_ci', 'latin5', 30, 'Yes', 'Yes', 1),
('latin5_bin', 'latin5', 78, '', 'Yes', 1),
('armscii8_general_ci', 'armscii8', 32, 'Yes', 'Yes', 1),
('armscii8_bin', 'armscii8', 64, '', 'Yes', 1),
('utf8_general_ci', 'utf8', 33, 'Yes', 'Yes', 1),
('utf8_bin', 'utf8', 83, '', 'Yes', 1),
('utf8_unicode_ci', 'utf8', 192, '', 'Yes', 8),
('utf8_icelandic_ci', 'utf8', 193, '', 'Yes', 8),
('utf8_latvian_ci', 'utf8', 194, '', 'Yes', 8),
('utf8_romanian_ci', 'utf8', 195, '', 'Yes', 8),
('utf8_slovenian_ci', 'utf8', 196, '', 'Yes', 8),
('utf8_polish_ci', 'utf8', 197, '', 'Yes', 8),
('utf8_estonian_ci', 'utf8', 198, '', 'Yes', 8),
('utf8_spanish_ci', 'utf8', 199, '', 'Yes', 8),
('utf8_swedish_ci', 'utf8', 200, '', 'Yes', 8),
('utf8_turkish_ci', 'utf8', 201, '', 'Yes', 8),
('utf8_czech_ci', 'utf8', 202, '', 'Yes', 8),
('utf8_danish_ci', 'utf8', 203, '', 'Yes', 8),
('utf8_lithuanian_ci', 'utf8', 204, '', 'Yes', 8),
('utf8_slovak_ci', 'utf8', 205, '', 'Yes', 8),
('utf8_spanish2_ci', 'utf8', 206, '', 'Yes', 8),
('utf8_roman_ci', 'utf8', 207, '', 'Yes', 8),
('utf8_persian_ci', 'utf8', 208, '', 'Yes', 8),
('utf8_esperanto_ci', 'utf8', 209, '', 'Yes', 8),
('utf8_hungarian_ci', 'utf8', 210, '', 'Yes', 8),
('ucs2_general_ci', 'ucs2', 35, 'Yes', 'Yes', 1),
('ucs2_bin', 'ucs2', 90, '', 'Yes', 1),
('ucs2_unicode_ci', 'ucs2', 128, '', 'Yes', 8),
('ucs2_icelandic_ci', 'ucs2', 129, '', 'Yes', 8),
('ucs2_latvian_ci', 'ucs2', 130, '', 'Yes', 8),
('ucs2_romanian_ci', 'ucs2', 131, '', 'Yes', 8),
('ucs2_slovenian_ci', 'ucs2', 132, '', 'Yes', 8),
('ucs2_polish_ci', 'ucs2', 133, '', 'Yes', 8),
('ucs2_estonian_ci', 'ucs2', 134, '', 'Yes', 8),
('ucs2_spanish_ci', 'ucs2', 135, '', 'Yes', 8),
('ucs2_swedish_ci', 'ucs2', 136, '', 'Yes', 8),
('ucs2_turkish_ci', 'ucs2', 137, '', 'Yes', 8),
('ucs2_czech_ci', 'ucs2', 138, '', 'Yes', 8),
('ucs2_danish_ci', 'ucs2', 139, '', 'Yes', 8),
('ucs2_lithuanian_ci', 'ucs2', 140, '', 'Yes', 8),
('ucs2_slovak_ci', 'ucs2', 141, '', 'Yes', 8),
('ucs2_spanish2_ci', 'ucs2', 142, '', 'Yes', 8),
('ucs2_roman_ci', 'ucs2', 143, '', 'Yes', 8),
('ucs2_persian_ci', 'ucs2', 144, '', 'Yes', 8),
('ucs2_esperanto_ci', 'ucs2', 145, '', 'Yes', 8),
('ucs2_hungarian_ci', 'ucs2', 146, '', 'Yes', 8),
('cp866_general_ci', 'cp866', 36, 'Yes', 'Yes', 1),
('cp866_bin', 'cp866', 68, '', 'Yes', 1),
('keybcs2_general_ci', 'keybcs2', 37, 'Yes', 'Yes', 1),
('keybcs2_bin', 'keybcs2', 73, '', 'Yes', 1),
('macce_general_ci', 'macce', 38, 'Yes', 'Yes', 1),
('macce_bin', 'macce', 43, '', 'Yes', 1),
('macroman_general_ci', 'macroman', 39, 'Yes', 'Yes', 1),
('macroman_bin', 'macroman', 53, '', 'Yes', 1),
('cp852_general_ci', 'cp852', 40, 'Yes', 'Yes', 1),
('cp852_bin', 'cp852', 81, '', 'Yes', 1),
('latin7_estonian_cs', 'latin7', 20, '', 'Yes', 1),
('latin7_general_ci', 'latin7', 41, 'Yes', 'Yes', 1),
('latin7_general_cs', 'latin7', 42, '', 'Yes', 1),
('latin7_bin', 'latin7', 79, '', 'Yes', 1),
('cp1251_bulgarian_ci', 'cp1251', 14, '', 'Yes', 1),
('cp1251_ukrainian_ci', 'cp1251', 23, '', 'Yes', 1),
('cp1251_bin', 'cp1251', 50, '', 'Yes', 1),
('cp1251_general_ci', 'cp1251', 51, 'Yes', 'Yes', 1),
('cp1251_general_cs', 'cp1251', 52, '', 'Yes', 1),
('cp1256_general_ci', 'cp1256', 57, 'Yes', 'Yes', 1),
('cp1256_bin', 'cp1256', 67, '', 'Yes', 1),
('cp1257_lithuanian_ci', 'cp1257', 29, '', 'Yes', 1),
('cp1257_bin', 'cp1257', 58, '', 'Yes', 1),
('cp1257_general_ci', 'cp1257', 59, 'Yes', 'Yes', 1),
('binary', 'binary', 63, 'Yes', 'Yes', 1),
('geostd8_general_ci', 'geostd8', 92, 'Yes', 'Yes', 1),
('geostd8_bin', 'geostd8', 93, '', 'Yes', 1),
('cp932_japanese_ci', 'cp932', 95, 'Yes', 'Yes', 1),
('cp932_bin', 'cp932', 96, '', 'Yes', 1),
('eucjpms_japanese_ci', 'eucjpms', 97, 'Yes', 'Yes', 1),
('eucjpms_bin', 'eucjpms', 98, '', 'Yes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--

CREATE TEMPORARY TABLE `COLLATION_CHARACTER_SET_APPLICABILITY` (
  `COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLLATION_CHARACTER_SET_APPLICABILITY`
--

INSERT INTO `COLLATION_CHARACTER_SET_APPLICABILITY` (`COLLATION_NAME`, `CHARACTER_SET_NAME`) VALUES
('big5_chinese_ci', 'big5'),
('big5_bin', 'big5'),
('dec8_swedish_ci', 'dec8'),
('dec8_bin', 'dec8'),
('cp850_general_ci', 'cp850'),
('cp850_bin', 'cp850'),
('hp8_english_ci', 'hp8'),
('hp8_bin', 'hp8'),
('koi8r_general_ci', 'koi8r'),
('koi8r_bin', 'koi8r'),
('latin1_german1_ci', 'latin1'),
('latin1_swedish_ci', 'latin1'),
('latin1_danish_ci', 'latin1'),
('latin1_german2_ci', 'latin1'),
('latin1_bin', 'latin1'),
('latin1_general_ci', 'latin1'),
('latin1_general_cs', 'latin1'),
('latin1_spanish_ci', 'latin1'),
('latin2_czech_cs', 'latin2'),
('latin2_general_ci', 'latin2'),
('latin2_hungarian_ci', 'latin2'),
('latin2_croatian_ci', 'latin2'),
('latin2_bin', 'latin2'),
('swe7_swedish_ci', 'swe7'),
('swe7_bin', 'swe7'),
('ascii_general_ci', 'ascii'),
('ascii_bin', 'ascii'),
('ujis_japanese_ci', 'ujis'),
('ujis_bin', 'ujis'),
('sjis_japanese_ci', 'sjis'),
('sjis_bin', 'sjis'),
('hebrew_general_ci', 'hebrew'),
('hebrew_bin', 'hebrew'),
('filename', 'filename'),
('tis620_thai_ci', 'tis620'),
('tis620_bin', 'tis620'),
('euckr_korean_ci', 'euckr'),
('euckr_bin', 'euckr'),
('koi8u_general_ci', 'koi8u'),
('koi8u_bin', 'koi8u'),
('gb2312_chinese_ci', 'gb2312'),
('gb2312_bin', 'gb2312'),
('greek_general_ci', 'greek'),
('greek_bin', 'greek'),
('cp1250_general_ci', 'cp1250'),
('cp1250_czech_cs', 'cp1250'),
('cp1250_croatian_ci', 'cp1250'),
('cp1250_bin', 'cp1250'),
('cp1250_polish_ci', 'cp1250'),
('gbk_chinese_ci', 'gbk'),
('gbk_bin', 'gbk'),
('latin5_turkish_ci', 'latin5'),
('latin5_bin', 'latin5'),
('armscii8_general_ci', 'armscii8'),
('armscii8_bin', 'armscii8'),
('utf8_general_ci', 'utf8'),
('utf8_bin', 'utf8'),
('utf8_unicode_ci', 'utf8'),
('utf8_icelandic_ci', 'utf8'),
('utf8_latvian_ci', 'utf8'),
('utf8_romanian_ci', 'utf8'),
('utf8_slovenian_ci', 'utf8'),
('utf8_polish_ci', 'utf8'),
('utf8_estonian_ci', 'utf8'),
('utf8_spanish_ci', 'utf8'),
('utf8_swedish_ci', 'utf8'),
('utf8_turkish_ci', 'utf8'),
('utf8_czech_ci', 'utf8'),
('utf8_danish_ci', 'utf8'),
('utf8_lithuanian_ci', 'utf8'),
('utf8_slovak_ci', 'utf8'),
('utf8_spanish2_ci', 'utf8'),
('utf8_roman_ci', 'utf8'),
('utf8_persian_ci', 'utf8'),
('utf8_esperanto_ci', 'utf8'),
('utf8_hungarian_ci', 'utf8'),
('ucs2_general_ci', 'ucs2'),
('ucs2_bin', 'ucs2'),
('ucs2_unicode_ci', 'ucs2'),
('ucs2_icelandic_ci', 'ucs2'),
('ucs2_latvian_ci', 'ucs2'),
('ucs2_romanian_ci', 'ucs2'),
('ucs2_slovenian_ci', 'ucs2'),
('ucs2_polish_ci', 'ucs2'),
('ucs2_estonian_ci', 'ucs2'),
('ucs2_spanish_ci', 'ucs2'),
('ucs2_swedish_ci', 'ucs2'),
('ucs2_turkish_ci', 'ucs2'),
('ucs2_czech_ci', 'ucs2'),
('ucs2_danish_ci', 'ucs2'),
('ucs2_lithuanian_ci', 'ucs2'),
('ucs2_slovak_ci', 'ucs2'),
('ucs2_spanish2_ci', 'ucs2'),
('ucs2_roman_ci', 'ucs2'),
('ucs2_persian_ci', 'ucs2'),
('ucs2_esperanto_ci', 'ucs2'),
('ucs2_hungarian_ci', 'ucs2'),
('cp866_general_ci', 'cp866'),
('cp866_bin', 'cp866'),
('keybcs2_general_ci', 'keybcs2'),
('keybcs2_bin', 'keybcs2'),
('macce_general_ci', 'macce'),
('macce_bin', 'macce'),
('macroman_general_ci', 'macroman'),
('macroman_bin', 'macroman'),
('cp852_general_ci', 'cp852'),
('cp852_bin', 'cp852'),
('latin7_estonian_cs', 'latin7'),
('latin7_general_ci', 'latin7'),
('latin7_general_cs', 'latin7'),
('latin7_bin', 'latin7'),
('cp1251_bulgarian_ci', 'cp1251'),
('cp1251_ukrainian_ci', 'cp1251'),
('cp1251_bin', 'cp1251'),
('cp1251_general_ci', 'cp1251'),
('cp1251_general_cs', 'cp1251'),
('cp1256_general_ci', 'cp1256'),
('cp1256_bin', 'cp1256'),
('cp1257_lithuanian_ci', 'cp1257'),
('cp1257_bin', 'cp1257'),
('cp1257_general_ci', 'cp1257'),
('binary', 'binary'),
('geostd8_general_ci', 'geostd8'),
('geostd8_bin', 'geostd8'),
('cp932_japanese_ci', 'cp932'),
('cp932_bin', 'cp932'),
('eucjpms_japanese_ci', 'eucjpms'),
('eucjpms_bin', 'eucjpms');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMNS`
--

CREATE TEMPORARY TABLE `COLUMNS` (
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` bigint(21) unsigned NOT NULL DEFAULT '0',
  `COLUMN_DEFAULT` longtext,
  `IS_NULLABLE` varchar(3) NOT NULL DEFAULT '',
  `DATA_TYPE` varchar(64) NOT NULL DEFAULT '',
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_OCTET_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_SCALE` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_SET_NAME` varchar(32) DEFAULT NULL,
  `COLLATION_NAME` varchar(32) DEFAULT NULL,
  `COLUMN_TYPE` longtext NOT NULL,
  `COLUMN_KEY` varchar(3) NOT NULL DEFAULT '',
  `EXTRA` varchar(27) NOT NULL DEFAULT '',
  `PRIVILEGES` varchar(80) NOT NULL DEFAULT '',
  `COLUMN_COMMENT` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLUMNS`
--

INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'CHARACTER_SET_NAME', 1, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DEFAULT_COLLATE_NAME', 2, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'DESCRIPTION', 3, '', 'NO', 'varchar', 60, 180, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(60)', '', '', 'select', ''),
(NULL, 'information_schema', 'CHARACTER_SETS', 'MAXLEN', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'CLIENT', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'TOTAL_CONNECTIONS', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'CONCURRENT_CONNECTIONS', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'CONNECTED_TIME', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'BUSY_TIME', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'CPU_TIME', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'BYTES_RECEIVED', 7, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'BYTES_SENT', 8, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'BINLOG_BYTES_WRITTEN', 9, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'ROWS_FETCHED', 10, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'ROWS_UPDATED', 11, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'TABLE_ROWS_READ', 12, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'SELECT_COMMANDS', 13, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'UPDATE_COMMANDS', 14, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'OTHER_COMMANDS', 15, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'COMMIT_TRANSACTIONS', 16, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'ROLLBACK_TRANSACTIONS', 17, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'DENIED_CONNECTIONS', 18, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'LOST_CONNECTIONS', 19, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'ACCESS_DENIED', 20, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'EMPTY_QUERIES', 21, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'ID', 3, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(11)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_DEFAULT', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'IS_COMPILED', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SORTLEN', 6, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'COLLATION_NAME', 1, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'CHARACTER_SET_NAME', 2, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'ORDINAL_POSITION', 5, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_DEFAULT', 6, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'IS_NULLABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'DATA_TYPE', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_MAXIMUM_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_OCTET_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_PRECISION', 11, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'NUMERIC_SCALE', 12, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'CHARACTER_SET_NAME', 13, NULL, 'YES', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLLATION_NAME', 14, NULL, 'YES', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_TYPE', 15, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_KEY', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'EXTRA', 17, '', 'NO', 'varchar', 27, 81, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(27)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'PRIVILEGES', 18, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMNS', 'COLUMN_COMMENT', 19, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'COLUMN_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'PRIVILEGE_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'IS_GRANTABLE', 7, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'INDEX_STATISTICS', 'TABLE_SCHEMA', 1, '', 'NO', 'varchar', 192, 576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(192)', '', '', 'select', ''),
(NULL, 'information_schema', 'INDEX_STATISTICS', 'TABLE_NAME', 2, '', 'NO', 'varchar', 192, 576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(192)', '', '', 'select', ''),
(NULL, 'information_schema', 'INDEX_STATISTICS', 'INDEX_NAME', 3, '', 'NO', 'varchar', 192, 576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(192)', '', '', 'select', ''),
(NULL, 'information_schema', 'INDEX_STATISTICS', 'ROWS_READ', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'ENGINE', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'SUPPORT', 2, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'COMMENT', 3, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'TRANSACTIONS', 4, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'XA', 5, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'ENGINES', 'SAVEPOINTS', 6, NULL, 'YES', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_CATALOG', 1, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'DEFINER', 4, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'TIME_ZONE', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_BODY', 6, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_DEFINITION', 7, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_TYPE', 8, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EXECUTE_AT', 9, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'INTERVAL_VALUE', 10, NULL, 'YES', 'varchar', 256, 768, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(256)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'INTERVAL_FIELD', 11, NULL, 'YES', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'SQL_MODE', 12, '', 'NO', 'varchar', 8192, 24576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8192)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'STARTS', 13, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'ENDS', 14, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'STATUS', 15, '', 'NO', 'varchar', 18, 54, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(18)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'ON_COMPLETION', 16, '', 'NO', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'CREATED', 17, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'LAST_ALTERED', 18, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'LAST_EXECUTED', 19, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'EVENT_COMMENT', 20, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'ORIGINATOR', 21, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'CHARACTER_SET_CLIENT', 22, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'COLLATION_CONNECTION', 23, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'EVENTS', 'DATABASE_COLLATION', 24, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'FILE_ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'FILE_NAME', 2, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'FILE_TYPE', 3, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TABLESPACE_NAME', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TABLE_CATALOG', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TABLE_SCHEMA', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TABLE_NAME', 7, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'LOGFILE_GROUP_NAME', 8, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'LOGFILE_GROUP_NUMBER', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'ENGINE', 10, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'FULLTEXT_KEYS', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'DELETED_ROWS', 12, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'UPDATE_COUNT', 13, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'FREE_EXTENTS', 14, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TOTAL_EXTENTS', 15, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'EXTENT_SIZE', 16, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'INITIAL_SIZE', 17, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'MAXIMUM_SIZE', 18, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'AUTOEXTEND_SIZE', 19, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'CREATION_TIME', 20, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'LAST_UPDATE_TIME', 21, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'LAST_ACCESS_TIME', 22, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'RECOVER_TIME', 23, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TRANSACTION_COUNTER', 24, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'VERSION', 25, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'ROW_FORMAT', 26, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'TABLE_ROWS', 27, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'AVG_ROW_LENGTH', 28, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'DATA_LENGTH', 29, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'MAX_DATA_LENGTH', 30, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'INDEX_LENGTH', 31, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'DATA_FREE', 32, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'CREATE_TIME', 33, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'UPDATE_TIME', 34, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'CHECK_TIME', 35, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'CHECKSUM', 36, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'STATUS', 37, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'FILES', 'EXTRA', 38, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'GLOBAL_STATUS', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'GLOBAL_STATUS', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
(NULL, 'information_schema', 'GLOBAL_VARIABLES', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'GLOBAL_VARIABLES', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_CATALOG', 4, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'TABLE_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'COLUMN_NAME', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'ORDINAL_POSITION', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'POSITION_IN_UNIQUE_CONSTRAINT', 9, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_SCHEMA', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_TABLE_NAME', 11, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'REFERENCED_COLUMN_NAME', 12, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_NAME', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'SUBPARTITION_NAME', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_ORDINAL_POSITION', 6, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'SUBPARTITION_ORDINAL_POSITION', 7, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_METHOD', 8, NULL, 'YES', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'SUBPARTITION_METHOD', 9, NULL, 'YES', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_EXPRESSION', 10, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'SUBPARTITION_EXPRESSION', 11, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_DESCRIPTION', 12, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'TABLE_ROWS', 13, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'AVG_ROW_LENGTH', 14, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'DATA_LENGTH', 15, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'MAX_DATA_LENGTH', 16, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'INDEX_LENGTH', 17, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'DATA_FREE', 18, '0', 'NO', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'CREATE_TIME', 19, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'UPDATE_TIME', 20, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'CHECK_TIME', 21, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'CHECKSUM', 22, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'PARTITION_COMMENT', 23, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'NODEGROUP', 24, '', 'NO', 'varchar', 12, 36, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(12)', '', '', 'select', ''),
(NULL, 'information_schema', 'PARTITIONS', 'TABLESPACE_NAME', 25, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_VERSION', 2, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_STATUS', 3, '', 'NO', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_TYPE', 4, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_TYPE_VERSION', 5, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_LIBRARY', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_LIBRARY_VERSION', 7, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_AUTHOR', 8, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_DESCRIPTION', 9, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'PLUGINS', 'PLUGIN_LICENSE', 10, NULL, 'YES', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'ID', 1, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'USER', 2, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'HOST', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'DB', 4, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'COMMAND', 5, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'TIME', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(7)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'STATE', 7, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'INFO', 8, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'QUERY_ID', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SEQ', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'STATE', 3, '', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'DURATION', 4, '0.000000', 'NO', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_USER', 5, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CPU_SYSTEM', 6, NULL, 'YES', 'decimal', NULL, NULL, 9, 6, NULL, NULL, 'decimal(9,6)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_VOLUNTARY', 7, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'CONTEXT_INVOLUNTARY', 8, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_IN', 9, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'BLOCK_OPS_OUT', 10, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_SENT', 11, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'MESSAGES_RECEIVED', 12, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MAJOR', 13, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'PAGE_FAULTS_MINOR', 14, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SWAPS', 15, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FUNCTION', 16, NULL, 'YES', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(30)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_FILE', 17, NULL, 'YES', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'PROFILING', 'SOURCE_LINE', 18, NULL, 'YES', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_CATALOG', 4, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UNIQUE_CONSTRAINT_NAME', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'MATCH_OPTION', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'UPDATE_RULE', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'DELETE_RULE', 9, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'TABLE_NAME', 10, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'REFERENCED_TABLE_NAME', 11, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SPECIFIC_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_TYPE', 5, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DTD_IDENTIFIER', 6, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_BODY', 7, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_DEFINITION', 8, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_NAME', 9, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'EXTERNAL_LANGUAGE', 10, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'PARAMETER_STYLE', 11, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'IS_DETERMINISTIC', 12, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_DATA_ACCESS', 13, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_PATH', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SECURITY_TYPE', 15, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'CREATED', 16, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'LAST_ALTERED', 17, '0000-00-00 00:00:00', 'NO', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'SQL_MODE', 18, '', 'NO', 'varchar', 8192, 24576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8192)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'ROUTINE_COMMENT', 19, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DEFINER', 20, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'CHARACTER_SET_CLIENT', 21, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'COLLATION_CONNECTION', 22, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'ROUTINES', 'DATABASE_COLLATION', 23, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'CATALOG_NAME', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SCHEMA_NAME', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_CHARACTER_SET_NAME', 3, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'DEFAULT_COLLATION_NAME', 4, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SQL_PATH', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'PRIVILEGE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'IS_GRANTABLE', 5, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'SESSION_STATUS', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SESSION_STATUS', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
(NULL, 'information_schema', 'SESSION_VARIABLES', 'VARIABLE_NAME', 1, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'SESSION_VARIABLES', 'VARIABLE_VALUE', 2, NULL, 'YES', 'varchar', 1024, 3072, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1024)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NON_UNIQUE', 4, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_SCHEMA', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_NAME', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SEQ_IN_INDEX', 7, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(2)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLUMN_NAME', 8, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COLLATION', 9, NULL, 'YES', 'varchar', 1, 3, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(1)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'CARDINALITY', 10, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'SUB_PART', 11, NULL, 'YES', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'PACKED', 12, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'NULLABLE', 13, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'INDEX_TYPE', 14, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'STATISTICS', 'COMMENT', 15, NULL, 'YES', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(16)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_TYPE', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ENGINE', 5, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'VERSION', 6, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'ROW_FORMAT', 7, NULL, 'YES', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(10)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_ROWS', 8, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AVG_ROW_LENGTH', 9, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_LENGTH', 10, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'MAX_DATA_LENGTH', 11, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'INDEX_LENGTH', 12, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'DATA_FREE', 13, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'AUTO_INCREMENT', 14, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_TIME', 15, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'UPDATE_TIME', 16, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECK_TIME', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COLLATION', 18, NULL, 'YES', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CHECKSUM', 19, NULL, 'YES', 'bigint', NULL, NULL, 20, 0, NULL, NULL, 'bigint(21) unsigned', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'CREATE_OPTIONS', 20, NULL, 'YES', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(255)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLES', 'TABLE_COMMENT', 21, '', 'NO', 'varchar', 80, 240, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(80)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_SCHEMA', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'TABLE_NAME', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'CONSTRAINT_TYPE', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_SCHEMA', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'TABLE_NAME', 4, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'PRIVILEGE_TYPE', 5, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'IS_GRANTABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_STATISTICS', 'TABLE_SCHEMA', 1, '', 'NO', 'varchar', 192, 576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(192)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_STATISTICS', 'TABLE_NAME', 2, '', 'NO', 'varchar', 192, 576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(192)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_STATISTICS', 'ROWS_READ', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_STATISTICS', 'ROWS_CHANGED', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TABLE_STATISTICS', 'ROWS_CHANGED_X_INDEXES', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'THREAD_ID', 1, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'TOTAL_CONNECTIONS', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'CONCURRENT_CONNECTIONS', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'CONNECTED_TIME', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'BUSY_TIME', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'CPU_TIME', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'BYTES_RECEIVED', 7, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'BYTES_SENT', 8, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'BINLOG_BYTES_WRITTEN', 9, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'ROWS_FETCHED', 10, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'ROWS_UPDATED', 11, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'TABLE_ROWS_READ', 12, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'SELECT_COMMANDS', 13, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'UPDATE_COMMANDS', 14, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'OTHER_COMMANDS', 15, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'COMMIT_TRANSACTIONS', 16, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'ROLLBACK_TRANSACTIONS', 17, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'DENIED_CONNECTIONS', 18, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'LOST_CONNECTIONS', 19, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'ACCESS_DENIED', 20, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'EMPTY_QUERIES', 21, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'TRIGGER_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_MANIPULATION', 4, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_CATALOG', 5, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_SCHEMA', 6, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'EVENT_OBJECT_TABLE', 7, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORDER', 8, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(4)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_CONDITION', 9, NULL, 'YES', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_STATEMENT', 10, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_ORIENTATION', 11, '', 'NO', 'varchar', 9, 27, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(9)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_TIMING', 12, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(6)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_TABLE', 13, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_TABLE', 14, NULL, 'YES', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_OLD_ROW', 15, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'ACTION_REFERENCE_NEW_ROW', 16, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'CREATED', 17, NULL, 'YES', 'datetime', NULL, NULL, NULL, NULL, NULL, NULL, 'datetime', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SQL_MODE', 18, '', 'NO', 'varchar', 8192, 24576, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8192)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'DEFINER', 19, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'CHARACTER_SET_CLIENT', 20, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'COLLATION_CONNECTION', 21, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'TRIGGERS', 'DATABASE_COLLATION', 22, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'GRANTEE', 1, '', 'NO', 'varchar', 81, 243, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(81)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'TABLE_CATALOG', 2, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'PRIVILEGE_TYPE', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'IS_GRANTABLE', 4, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'USER', 1, '', 'NO', 'varchar', 48, 144, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(48)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'TOTAL_CONNECTIONS', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'CONCURRENT_CONNECTIONS', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'CONNECTED_TIME', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'BUSY_TIME', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'CPU_TIME', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'BYTES_RECEIVED', 7, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'BYTES_SENT', 8, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'BINLOG_BYTES_WRITTEN', 9, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'ROWS_FETCHED', 10, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'ROWS_UPDATED', 11, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'TABLE_ROWS_READ', 12, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'SELECT_COMMANDS', 13, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'UPDATE_COMMANDS', 14, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'OTHER_COMMANDS', 15, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'COMMIT_TRANSACTIONS', 16, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'ROLLBACK_TRANSACTIONS', 17, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'DENIED_CONNECTIONS', 18, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'LOST_CONNECTIONS', 19, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'ACCESS_DENIED', 20, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'EMPTY_QUERIES', 21, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(21)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_CATALOG', 1, NULL, 'YES', 'varchar', 512, 1536, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(512)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_SCHEMA', 2, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'TABLE_NAME', 3, '', 'NO', 'varchar', 64, 192, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(64)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'VIEW_DEFINITION', 4, NULL, 'NO', 'longtext', 4294967295, 4294967295, NULL, NULL, 'utf8', 'utf8_general_ci', 'longtext', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'CHECK_OPTION', 5, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(8)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'IS_UPDATABLE', 6, '', 'NO', 'varchar', 3, 9, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(3)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'DEFINER', 7, '', 'NO', 'varchar', 77, 231, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(77)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'SECURITY_TYPE', 8, '', 'NO', 'varchar', 7, 21, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(7)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'CHARACTER_SET_CLIENT', 9, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'information_schema', 'VIEWS', 'COLLATION_CONNECTION', 10, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_general_ci', 'varchar(32)', '', '', 'select', ''),
(NULL, 'segstsh5_appgames', 'game_participants', 'game_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'game_participants', 'username', 2, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'game_participants', 'time_joined', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'game_participants', 'time_left', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', '0 means they''re still in the game'),
(NULL, 'segstsh5_appgames', 'game_round_info', 'round_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'game_round_info', 'gID', 2, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'game_round_info', 'round_number', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'game_round_info', 'round_start', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'game_round_info', 'round_end', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'game_round_info', 'round_end_reason', 6, '', 'NO', 'varchar', 200, 200, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(200)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'game_round_info', 'cooldown_flag', 7, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'game_round_info', 'round_lock', 8, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'games', 'game_id', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'games', 'current_round', 2, '1', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'games', 'game_type', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'games', 'game_difficulty', 4, 'easy', 'NO', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'games', 'start_time', 5, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'games', 'end_time', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'games', 'latitude_center', 7, NULL, 'NO', 'float', NULL, NULL, 10, 6, NULL, NULL, 'float(10,6)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'games', 'longitude_center', 8, NULL, 'NO', 'float', NULL, NULL, 10, 6, NULL, NULL, 'float(10,6)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appgames', 'games', 'game_radius', 9, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', 'in meters'),
(NULL, 'segstsh5_appgames', 'games', 'game_lock', 10, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'pending_pool', 'uID_of_user', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'pending_pool', 'latitude', 2, NULL, 'NO', 'float', NULL, NULL, 10, 6, NULL, NULL, 'float(10,6)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'pending_pool', 'longitude', 3, NULL, 'NO', 'float', NULL, NULL, 10, 6, NULL, NULL, 'float(10,6)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'pending_pool', 'game_radius_max', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', 'this is the max they''ll join, and the max that the game they host (if they need to) will be created'),
(NULL, 'segstsh5_appusers', 'pending_pool', 'game_type', 5, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'pending_pool', 'game_difficulty', 6, 'easy', 'NO', 'varchar', 20, 20, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'pending_pool', 'user_lock', 7, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'pending_pool', 'time_entered_pool', 8, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'user_check_ins', 'rowIndex', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'user_check_ins', 'username', 2, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'user_check_ins', 'time_checked_in', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'user_check_ins', 'lat', 4, NULL, 'NO', 'float', NULL, NULL, 10, 6, NULL, NULL, 'float(10,6)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'user_check_ins', 'lng', 5, NULL, 'NO', 'float', NULL, NULL, 10, 6, NULL, NULL, 'float(10,6)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'user_ranks', 'uID', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'user_ranks', 'game_type', 2, NULL, 'NO', 'varchar', 200, 200, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(200)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'user_ranks', 'overall_score', 3, NULL, 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'user_ranks', 'undertitle', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'user_statistics', 'uID', 1, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'user_statistics', 'statistic', 2, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'user_statistics', 'game_id_it_happened_in', 3, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'user_statistics', 'game_round_it_happened_in', 4, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'user_statistics', 'value', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'user_statistics', 'time_stamp', 6, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'users', 'username', 1, NULL, 'NO', 'varchar', 50, 50, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'varchar(50)', '', '', 'select,insert,update,references', 'alphanumeric only'),
(NULL, 'segstsh5_appusers', 'users', 'password', 2, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'users', 'email_address', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'latin1', 'latin1_swedish_ci', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'users', 'current_lat', 4, '0.000000', 'NO', 'float', NULL, NULL, 10, 6, NULL, NULL, 'float(10,6)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'users', 'current_lng', 5, '0.000000', 'NO', 'float', NULL, NULL, 10, 6, NULL, NULL, 'float(10,6)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'users', 'currently_it', 6, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'users', 'entered_tag_zone_flag', 7, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'users', 'time_entered_tag_zone', 8, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_appusers', 'users', 'uID', 9, NULL, 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_groups', 'group_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_groups', 'forum_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_groups', 'auth_option_id', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_groups', 'auth_role_id', 4, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_groups', 'auth_setting', 5, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(2)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_options', 'auth_option_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_options', 'auth_option', 2, '', 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(50)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_options', 'is_global', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_options', 'is_local', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_options', 'founder_only', 5, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles', 'role_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles', 'role_name', 2, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles', 'role_description', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_bin', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles', 'role_type', 4, '', 'NO', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(10)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles', 'role_order', 5, '0', 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(4) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles_data', 'role_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles_data', 'auth_option_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles_data', 'auth_setting', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(2)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_users', 'user_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_users', 'forum_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_users', 'auth_option_id', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_users', 'auth_role_id', 4, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_users', 'auth_setting', 5, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(2)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 'attach_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 'post_msg_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 'topic_id', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 'in_message', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 'poster_id', 5, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 'is_orphan', 6, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 'physical_filename', 7, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 'real_filename', 8, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 'download_count', 9, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 'attach_comment', 10, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_bin', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 'extension', 11, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 'mimetype', 12, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 'filesize', 13, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 'filetime', 14, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 'thumbnail', 15, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 'ban_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 'ban_userid', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 'ban_ip', 3, '', 'NO', 'varchar', 40, 120, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(40)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 'ban_email', 4, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(100)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 'ban_start', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 'ban_end', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 'ban_exclude', 7, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 'ban_reason', 8, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 'ban_give_reason', 9, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bbcodes', 'bbcode_id', 1, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bbcodes', 'bbcode_tag', 2, '', 'NO', 'varchar', 16, 48, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(16)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bbcodes', 'bbcode_helpline', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bbcodes', 'display_on_posting', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bbcodes', 'bbcode_match', 5, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_bin', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bbcodes', 'bbcode_tpl', 6, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bbcodes', 'first_pass_match', 7, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bbcodes', 'first_pass_replace', 8, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bbcodes', 'second_pass_match', 9, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bbcodes', 'second_pass_replace', 10, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bookmarks', 'topic_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bookmarks', 'user_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bots', 'bot_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bots', 'bot_active', 2, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bots', 'bot_name', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bots', 'user_id', 4, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bots', 'bot_agent', 5, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_bots', 'bot_ip', 6, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_config', 'config_name', 1, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_config', 'config_value', 2, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_config', 'is_dynamic', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_confirm', 'confirm_id', 1, '', 'NO', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'char(32)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_confirm', 'session_id', 2, '', 'NO', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'char(32)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_confirm', 'confirm_type', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_confirm', 'code', 4, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(8)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_confirm', 'seed', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(10) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_confirm', 'attempts', 6, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_disallow', 'disallow_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_disallow', 'disallow_username', 2, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_drafts', 'draft_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_drafts', 'user_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_drafts', 'topic_id', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_drafts', 'forum_id', 4, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_drafts', 'save_time', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_drafts', 'draft_subject', 6, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_drafts', 'draft_message', 7, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_extension_groups', 'group_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_extension_groups', 'group_name', 2, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_extension_groups', 'cat_id', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(2)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_extension_groups', 'allow_group', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_extension_groups', 'download_mode', 5, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_extension_groups', 'upload_icon', 6, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_extension_groups', 'max_filesize', 7, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_extension_groups', 'allowed_forums', 8, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_bin', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_extension_groups', 'allow_in_pm', 9, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_extensions', 'extension_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_extensions', 'group_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_extensions', 'extension', 3, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'parent_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'left_id', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'right_id', 4, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_parents', 5, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_name', 6, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_desc', 7, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_bin', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_desc_bitfield', 8, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_desc_options', 9, '7', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_desc_uid', 10, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(8)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_link', 11, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_password', 12, '', 'NO', 'varchar', 40, 120, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(40)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_style', 13, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_image', 14, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_rules', 15, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_bin', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_rules_link', 16, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_rules_bitfield', 17, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_rules_options', 18, '7', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_rules_uid', 19, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(8)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_topics_per_page', 20, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_type', 21, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_status', 22, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_posts', 23, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_topics', 24, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_topics_real', 25, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_last_post_id', 26, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_last_poster_id', 27, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_last_post_subject', 28, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_last_post_time', 29, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_last_poster_name', 30, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_last_poster_colour', 31, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(6)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_flags', 32, '32', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_options', 33, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(20) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'display_subforum_list', 34, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'display_on_index', 35, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'enable_indexing', 36, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'enable_icons', 37, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'enable_prune', 38, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'prune_next', 39, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'prune_days', 40, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'prune_viewed', 41, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'prune_freq', 42, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_access', 'forum_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_access', 'user_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'segstsh5_forum', 'phpbb_forums_access', 'session_id', 3, '', 'NO', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'char(32)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_track', 'user_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_track', 'forum_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_track', 'mark_time', 3, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_watch', 'forum_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_watch', 'user_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_watch', 'notify_status', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_type', 2, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_founder_manage', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_skip_auth', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_name', 5, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_desc', 6, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_bin', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_desc_bitfield', 7, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_desc_options', 8, '7', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_desc_uid', 9, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(8)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_display', 10, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_avatar', 11, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_avatar_type', 12, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(2)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_avatar_width', 13, '0', 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(4) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_avatar_height', 14, '0', 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(4) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_rank', 15, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_colour', 16, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(6)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_sig_chars', 17, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_receive_pm', 18, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_message_limit', 19, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_max_recipients', 20, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'group_legend', 21, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_icons', 'icons_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_icons', 'icons_url', 2, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_icons', 'icons_width', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_icons', 'icons_height', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_icons', 'icons_order', 5, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_icons', 'display_on_posting', 6, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_lang', 'lang_id', 1, NULL, 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_lang', 'lang_iso', 2, '', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(30)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_lang', 'lang_dir', 3, '', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(30)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_lang', 'lang_english_name', 4, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_lang', 'lang_local_name', 5, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_lang', 'lang_author', 6, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_log', 'log_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_log', 'log_type', 2, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_log', 'user_id', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_log', 'forum_id', 4, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_log', 'topic_id', 5, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_log', 'reportee_id', 6, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_log', 'log_ip', 7, '', 'NO', 'varchar', 40, 120, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(40)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_log', 'log_time', 8, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_log', 'log_operation', 9, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_bin', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_log', 'log_data', 10, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_moderator_cache', 'forum_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_moderator_cache', 'user_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_moderator_cache', 'username', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_moderator_cache', 'group_id', 4, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_moderator_cache', 'group_name', 5, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_moderator_cache', 'display_on_index', 6, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 'module_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 'module_enabled', 2, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 'module_display', 3, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 'module_basename', 4, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 'module_class', 5, '', 'NO', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(10)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 'parent_id', 6, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 'left_id', 7, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 'right_id', 8, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 'module_langname', 9, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 'module_mode', 10, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 'module_auth', 11, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_poll_options', 'poll_option_id', 1, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_poll_options', 'topic_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_poll_options', 'poll_option_text', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_bin', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_poll_options', 'poll_option_total', 4, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_poll_votes', 'topic_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_poll_votes', 'poll_option_id', 2, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_poll_votes', 'vote_user_id', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_poll_votes', 'vote_user_ip', 4, '', 'NO', 'varchar', 40, 120, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(40)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'post_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'topic_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'forum_id', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'poster_id', 4, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'icon_id', 5, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'poster_ip', 6, '', 'NO', 'varchar', 40, 120, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(40)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'post_time', 7, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'post_approved', 8, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'post_reported', 9, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'enable_bbcode', 10, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'enable_smilies', 11, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'enable_magic_url', 12, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'enable_sig', 13, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'post_username', 14, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'post_subject', 15, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_unicode_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'post_text', 16, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'post_checksum', 17, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'post_attachment', 18, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'bbcode_bitfield', 19, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'bbcode_uid', 20, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(8)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'post_postcount', 21, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'post_edit_time', 22, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'post_edit_reason', 23, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'post_edit_user', 24, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'post_edit_count', 25, '0', 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(4) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'post_edit_locked', 26, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'msg_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'root_level', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'author_id', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'icon_id', 4, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'author_ip', 5, '', 'NO', 'varchar', 40, 120, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(40)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'message_time', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'enable_bbcode', 7, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'enable_smilies', 8, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'enable_magic_url', 9, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'enable_sig', 10, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'message_subject', 11, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'message_text', 12, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'message_edit_reason', 13, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'message_edit_user', 14, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'message_attachment', 15, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'bbcode_bitfield', 16, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'bbcode_uid', 17, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(8)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'message_edit_time', 18, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'message_edit_count', 19, '0', 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(4) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'to_address', 20, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_bin', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'bcc_address', 21, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_bin', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'message_reported', 22, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_folder', 'folder_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_folder', 'user_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_folder', 'folder_name', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_folder', 'pm_count', 4, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_rules', 'rule_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_rules', 'user_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_rules', 'rule_check', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_rules', 'rule_connection', 4, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_rules', 'rule_string', 5, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_rules', 'rule_user_id', 6, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_rules', 'rule_group_id', 7, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_rules', 'rule_action', 8, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_rules', 'rule_folder_id', 9, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_to', 'msg_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_to', 'user_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_to', 'author_id', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_to', 'pm_deleted', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_to', 'pm_new', 5, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_to', 'pm_unread', 6, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_to', 'pm_replied', 7, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_to', 'pm_marked', 8, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_to', 'pm_forwarded', 9, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_to', 'folder_id', 10, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_name', 2, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_type', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_ident', 4, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_length', 5, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_minlen', 6, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_maxlen', 7, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_novalue', 8, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_default_value', 9, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_validation', 10, '', 'NO', 'varchar', 20, 60, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(20)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_required', 11, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_show_on_reg', 12, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_show_on_vt', 13, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_show_profile', 14, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_hide', 15, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_no_view', 16, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_active', 17, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_order', 18, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields_data', 'user_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields_lang', 'field_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields_lang', 'lang_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields_lang', 'option_id', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields_lang', 'field_type', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields_lang', 'lang_value', 5, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_lang', 'field_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_lang', 'lang_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_lang', 'lang_name', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_lang', 'lang_explain', 4, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_bin', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_lang', 'lang_default_value', 5, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_ranks', 'rank_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_ranks', 'rank_title', 2, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_ranks', 'rank_min', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_ranks', 'rank_special', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_ranks', 'rank_image', 5, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports', 'report_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports', 'reason_id', 2, '0', 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(4) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports', 'post_id', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports', 'pm_id', 4, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports', 'user_id', 5, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports', 'user_notify', 6, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports', 'report_closed', 7, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports', 'report_time', 8, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports', 'report_text', 9, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports_reasons', 'reason_id', 1, NULL, 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(4) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports_reasons', 'reason_title', 2, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports_reasons', 'reason_description', 3, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports_reasons', 'reason_order', 4, '0', 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(4) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_results', 'search_key', 1, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(32)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_results', 'search_time', 2, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_results', 'search_keywords', 3, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_results', 'search_authors', 4, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_wordlist', 'word_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_wordlist', 'word_text', 2, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_wordlist', 'word_common', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_wordlist', 'word_count', 4, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_wordmatch', 'post_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_wordmatch', 'word_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_wordmatch', 'title_match', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 'session_id', 1, '', 'NO', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'char(32)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 'session_user_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 'session_forum_id', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 'session_last_visit', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 'session_start', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 'session_time', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 'session_ip', 7, '', 'NO', 'varchar', 40, 120, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(40)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 'session_browser', 8, '', 'NO', 'varchar', 150, 450, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(150)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 'session_forwarded_for', 9, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 'session_page', 10, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 'session_viewonline', 11, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 'session_autologin', 12, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 'session_admin', 13, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions_keys', 'key_id', 1, '', 'NO', 'char', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'char(32)', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions_keys', 'user_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions_keys', 'last_ip', 3, '', 'NO', 'varchar', 40, 120, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(40)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions_keys', 'last_login', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sitelist', 'site_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sitelist', 'site_ip', 2, '', 'NO', 'varchar', 40, 120, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(40)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sitelist', 'site_hostname', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_sitelist', 'ip_exclude', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_smilies', 'smiley_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_smilies', 'code', 2, '', 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_smilies', 'emotion', 3, '', 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_smilies', 'smiley_url', 4, '', 'NO', 'varchar', 50, 150, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(50)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_smilies', 'smiley_width', 5, '0', 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(4) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_smilies', 'smiley_height', 6, '0', 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(4) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_smilies', 'smiley_order', 7, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_smilies', 'display_on_posting', 8, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles', 'style_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles', 'style_name', 2, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles', 'style_copyright', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles', 'style_active', 4, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles', 'template_id', 5, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles', 'theme_id', 6, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles', 'imageset_id', 7, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset', 'imageset_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset', 'imageset_name', 2, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset', 'imageset_copyright', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset', 'imageset_path', 4, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset_data', 'image_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset_data', 'image_name', 2, '', 'NO', 'varchar', 200, 600, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(200)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset_data', 'image_filename', 3, '', 'NO', 'varchar', 200, 600, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(200)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset_data', 'image_lang', 4, '', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(30)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset_data', 'image_height', 5, '0', 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(4) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset_data', 'image_width', 6, '0', 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(4) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset_data', 'imageset_id', 7, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template', 'template_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template', 'template_name', 2, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template', 'template_copyright', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template', 'template_path', 4, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template', 'bbcode_bitfield', 5, 'kNg=', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template', 'template_storedb', 6, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template', 'template_inherits_id', 7, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template', 'template_inherit_path', 8, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template_data', 'template_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template_data', 'template_filename', 2, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(100)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template_data', 'template_included', 3, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_bin', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template_data', 'template_mtime', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', '');
INSERT INTO `COLUMNS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `COLUMN_DEFAULT`, `IS_NULLABLE`, `DATA_TYPE`, `CHARACTER_MAXIMUM_LENGTH`, `CHARACTER_OCTET_LENGTH`, `NUMERIC_PRECISION`, `NUMERIC_SCALE`, `CHARACTER_SET_NAME`, `COLLATION_NAME`, `COLUMN_TYPE`, `COLUMN_KEY`, `EXTRA`, `PRIVILEGES`, `COLUMN_COMMENT`) VALUES
(NULL, 'segstsh5_forum', 'phpbb_styles_template_data', 'template_data', 5, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_theme', 'theme_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_theme', 'theme_name', 2, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_theme', 'theme_copyright', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_theme', 'theme_path', 4, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_theme', 'theme_storedb', 5, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_theme', 'theme_mtime', 6, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_theme', 'theme_data', 7, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'forum_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'icon_id', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_attachment', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_approved', 5, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_reported', 6, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_title', 7, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_unicode_ci', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_poster', 8, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_time', 9, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_time_limit', 10, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_views', 11, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_replies', 12, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_replies_real', 13, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_status', 14, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_type', 15, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(3)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_first_post_id', 16, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_first_poster_name', 17, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_first_poster_colour', 18, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(6)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_last_post_id', 19, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_last_poster_id', 20, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_last_poster_name', 21, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_last_poster_colour', 22, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(6)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_last_post_subject', 23, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_last_post_time', 24, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_last_view_time', 25, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_moved_id', 26, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_bumped', 27, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_bumper', 28, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'poll_title', 29, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'poll_start', 30, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'poll_length', 31, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'poll_max_options', 32, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'poll_last_vote', 33, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'poll_vote_change', 34, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_posted', 'user_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_posted', 'topic_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_posted', 'topic_posted', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_track', 'user_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_track', 'topic_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_track', 'forum_id', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_track', 'mark_time', 4, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_watch', 'topic_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_watch', 'user_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_watch', 'notify_status', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_user_group', 'group_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_user_group', 'user_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_user_group', 'group_leader', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_user_group', 'user_pending', 4, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_type', 2, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(2)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'group_id', 3, '3', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_permissions', 4, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_perm_from', 5, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_ip', 6, '', 'NO', 'varchar', 40, 120, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(40)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_regdate', 7, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'username', 8, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'username_clean', 9, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', 'UNI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_password', 10, '', 'NO', 'varchar', 40, 120, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(40)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_passchg', 11, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_pass_convert', 12, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_email', 13, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_email_hash', 14, '0', 'NO', 'bigint', NULL, NULL, 19, 0, NULL, NULL, 'bigint(20)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_birthday', 15, '', 'NO', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(10)', 'MUL', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_lastvisit', 16, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_lastmark', 17, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_lastpost_time', 18, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_lastpage', 19, '', 'NO', 'varchar', 200, 600, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(200)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_last_confirm_key', 20, '', 'NO', 'varchar', 10, 30, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(10)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_last_search', 21, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_warnings', 22, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_last_warning', 23, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_login_attempts', 24, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_inactive_reason', 25, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(2)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_inactive_time', 26, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_posts', 27, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_lang', 28, '', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(30)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_timezone', 29, '0.00', 'NO', 'decimal', NULL, NULL, 5, 2, NULL, NULL, 'decimal(5,2)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_dst', 30, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_dateformat', 31, 'd M Y H:i', 'NO', 'varchar', 30, 90, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(30)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_style', 32, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_rank', 33, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_colour', 34, '', 'NO', 'varchar', 6, 18, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(6)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_new_privmsg', 35, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_unread_privmsg', 36, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_last_privmsg', 37, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_message_rules', 38, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_full_folder', 39, '-3', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_emailtime', 40, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_topic_show_days', 41, '0', 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(4) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_topic_sortby_type', 42, 't', 'NO', 'varchar', 1, 3, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_topic_sortby_dir', 43, 'd', 'NO', 'varchar', 1, 3, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_post_show_days', 44, '0', 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(4) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_post_sortby_type', 45, 't', 'NO', 'varchar', 1, 3, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_post_sortby_dir', 46, 'a', 'NO', 'varchar', 1, 3, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(1)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_notify', 47, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_notify_pm', 48, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_notify_type', 49, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_allow_pm', 50, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_allow_viewonline', 51, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_allow_viewemail', 52, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_allow_massemail', 53, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_options', 54, '230271', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_avatar', 55, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_avatar_type', 56, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(2)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_avatar_width', 57, '0', 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(4) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_avatar_height', 58, '0', 'NO', 'smallint', NULL, NULL, 5, 0, NULL, NULL, 'smallint(4) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_sig', 59, NULL, 'NO', 'mediumtext', 16777215, 16777215, NULL, NULL, 'utf8', 'utf8_bin', 'mediumtext', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_sig_bbcode_uid', 60, '', 'NO', 'varchar', 8, 24, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(8)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_sig_bbcode_bitfield', 61, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_from', 62, '', 'NO', 'varchar', 100, 300, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(100)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_icq', 63, '', 'NO', 'varchar', 15, 45, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(15)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_aim', 64, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_yim', 65, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_msnm', 66, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_jabber', 67, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_website', 68, '', 'NO', 'varchar', 200, 600, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(200)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_occ', 69, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_bin', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_interests', 70, NULL, 'NO', 'text', 65535, 65535, NULL, NULL, 'utf8', 'utf8_bin', 'text', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_actkey', 71, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_newpasswd', 72, '', 'NO', 'varchar', 40, 120, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(40)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_form_salt', 73, '', 'NO', 'varchar', 32, 96, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(32)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_new', 74, '1', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_reminded', 75, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(4)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'user_reminded_time', 76, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_warnings', 'warning_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_warnings', 'user_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_warnings', 'post_id', 3, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_warnings', 'log_id', 4, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_warnings', 'warning_time', 5, '0', 'NO', 'int', NULL, NULL, 10, 0, NULL, NULL, 'int(11) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_words', 'word_id', 1, NULL, 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', 'auto_increment', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_words', 'word', 2, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_words', 'replacement', 3, '', 'NO', 'varchar', 255, 765, NULL, NULL, 'utf8', 'utf8_bin', 'varchar(255)', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_zebra', 'user_id', 1, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_zebra', 'zebra_id', 2, '0', 'NO', 'mediumint', NULL, NULL, 7, 0, NULL, NULL, 'mediumint(8) unsigned', 'PRI', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_zebra', 'friend', 3, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', ''),
(NULL, 'segstsh5_forum', 'phpbb_zebra', 'foe', 4, '0', 'NO', 'tinyint', NULL, NULL, 3, 0, NULL, NULL, 'tinyint(1) unsigned', '', '', 'select,insert,update,references', '');

-- --------------------------------------------------------

--
-- Table structure for table `COLUMN_PRIVILEGES`
--

CREATE TEMPORARY TABLE `COLUMN_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `COLUMN_PRIVILEGES`
--


-- --------------------------------------------------------

--
-- Table structure for table `INDEX_STATISTICS`
--

CREATE TEMPORARY TABLE `INDEX_STATISTICS` (
  `TABLE_SCHEMA` varchar(192) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(192) NOT NULL DEFAULT '',
  `INDEX_NAME` varchar(192) NOT NULL DEFAULT '',
  `ROWS_READ` int(21) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `INDEX_STATISTICS`
--

INSERT INTO `INDEX_STATISTICS` (`TABLE_SCHEMA`, `TABLE_NAME`, `INDEX_NAME`, `ROWS_READ`) VALUES
('segstsh5_forum', 'phpbb_user_group', 'user_id', 90),
('segstsh5_forum', 'phpbb_forums', 'PRIMARY', 33),
('segstsh5_forum', 'phpbb_sessions', 'session_fid', 26),
('segstsh5_forum', 'phpbb_styles_imageset', 'PRIMARY', 27),
('segstsh5_forum', 'phpbb_config', 'is_dynamic', 4020),
('segstsh5_forum', 'phpbb_sessions', 'session_user_id', 29),
('segstsh5_forum', 'phpbb_users', 'PRIMARY', 485),
('segstsh5_forum', 'phpbb_user_group', 'group_id', 1),
('segstsh5_appusers', 'pending_pool', 'uID_of_user', 34),
('segstsh5_appusers', 'user_ranks', 'game_type', 816),
('segstsh5_forum', 'phpbb_search_wordlist', 'wrd_txt', 28),
('segstsh5_forum', 'phpbb_styles_template', 'PRIMARY', 27),
('segstsh5_forum', 'phpbb_topics', 'PRIMARY', 9),
('segstsh5_forum', 'phpbb_users', 'username_clean', 4),
('segstsh5_forum', 'phpbb_modules', 'class_left_id', 59),
('segstsh5_forum', 'phpbb_acl_roles_data', 'ath_op_id', 32),
('segstsh5_forum', 'phpbb_groups', 'PRIMARY', 22),
('segstsh5_forum', 'phpbb_sessions', 'PRIMARY', 702),
('segstsh5_appgames', 'games', 'game_id', 70),
('segstsh5_forum', 'phpbb_styles_theme', 'PRIMARY', 27),
('segstsh5_forum', 'phpbb_posts', 'tid_post_time', 5),
('segstsh5_forum', 'phpbb_sessions', 'session_time', 452),
('segstsh5_forum', 'phpbb_confirm', 'PRIMARY', 403),
('segstsh5_forum', 'phpbb_forums', 'left_right_id', 6),
('segstsh5_forum', 'phpbb_groups', 'group_legend_name', 154),
('segstsh5_forum', 'phpbb_styles_imageset_data', 'i_d', 1950),
('segstsh5_forum', 'phpbb_acl_groups', 'group_id', 92),
('segstsh5_appusers', 'user_ranks', 'uID', 57),
('segstsh5_forum', 'phpbb_acl_options', 'auth_option', 8),
('segstsh5_forum', 'phpbb_config', 'PRIMARY', 374),
('segstsh5_appusers', 'users', 'uID', 830),
('segstsh5_forum', 'phpbb_topics', 'forum_id', 12);

-- --------------------------------------------------------

--
-- Table structure for table `ENGINES`
--

CREATE TEMPORARY TABLE `ENGINES` (
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `SUPPORT` varchar(8) NOT NULL DEFAULT '',
  `COMMENT` varchar(80) NOT NULL DEFAULT '',
  `TRANSACTIONS` varchar(3) DEFAULT NULL,
  `XA` varchar(3) DEFAULT NULL,
  `SAVEPOINTS` varchar(3) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ENGINES`
--

INSERT INTO `ENGINES` (`ENGINE`, `SUPPORT`, `COMMENT`, `TRANSACTIONS`, `XA`, `SAVEPOINTS`) VALUES
('MyISAM', 'DEFAULT', 'Default engine as of MySQL 3.23 with great performance', 'NO', 'NO', 'NO'),
('InnoDB', 'YES', 'Supports transactions, row-level locking, and foreign keys', 'YES', 'YES', 'YES'),
('partition', 'NO', 'Partition Storage Engine Helper', NULL, NULL, NULL),
('BLACKHOLE', 'YES', '/dev/null storage engine (anything you write to it disappears)', 'NO', 'NO', 'NO'),
('CSV', 'YES', 'CSV storage engine', 'NO', 'NO', 'NO'),
('MEMORY', 'YES', 'Hash based, stored in memory, useful for temporary tables', 'NO', 'NO', 'NO'),
('FEDERATED', 'NO', 'Federated MySQL storage engine', NULL, NULL, NULL),
('ARCHIVE', 'YES', 'Archive storage engine', 'NO', 'NO', 'NO'),
('MRG_MYISAM', 'YES', 'Collection of identical MyISAM tables', 'NO', 'NO', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `EVENTS`
--

CREATE TEMPORARY TABLE `EVENTS` (
  `EVENT_CATALOG` varchar(64) DEFAULT NULL,
  `EVENT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `EVENT_NAME` varchar(64) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `TIME_ZONE` varchar(64) NOT NULL DEFAULT '',
  `EVENT_BODY` varchar(8) NOT NULL DEFAULT '',
  `EVENT_DEFINITION` longtext NOT NULL,
  `EVENT_TYPE` varchar(9) NOT NULL DEFAULT '',
  `EXECUTE_AT` datetime DEFAULT NULL,
  `INTERVAL_VALUE` varchar(256) DEFAULT NULL,
  `INTERVAL_FIELD` varchar(18) DEFAULT NULL,
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `STARTS` datetime DEFAULT NULL,
  `ENDS` datetime DEFAULT NULL,
  `STATUS` varchar(18) NOT NULL DEFAULT '',
  `ON_COMPLETION` varchar(12) NOT NULL DEFAULT '',
  `CREATED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_EXECUTED` datetime DEFAULT NULL,
  `EVENT_COMMENT` varchar(64) NOT NULL DEFAULT '',
  `ORIGINATOR` bigint(10) NOT NULL DEFAULT '0',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `EVENTS`
--


-- --------------------------------------------------------

--
-- Table structure for table `FILES`
--

CREATE TEMPORARY TABLE `FILES` (
  `FILE_ID` bigint(4) NOT NULL DEFAULT '0',
  `FILE_NAME` varchar(64) DEFAULT NULL,
  `FILE_TYPE` varchar(20) NOT NULL DEFAULT '',
  `TABLESPACE_NAME` varchar(64) DEFAULT NULL,
  `TABLE_CATALOG` varchar(64) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) DEFAULT NULL,
  `TABLE_NAME` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NAME` varchar(64) DEFAULT NULL,
  `LOGFILE_GROUP_NUMBER` bigint(4) DEFAULT NULL,
  `ENGINE` varchar(64) NOT NULL DEFAULT '',
  `FULLTEXT_KEYS` varchar(64) DEFAULT NULL,
  `DELETED_ROWS` bigint(4) DEFAULT NULL,
  `UPDATE_COUNT` bigint(4) DEFAULT NULL,
  `FREE_EXTENTS` bigint(4) DEFAULT NULL,
  `TOTAL_EXTENTS` bigint(4) DEFAULT NULL,
  `EXTENT_SIZE` bigint(4) NOT NULL DEFAULT '0',
  `INITIAL_SIZE` bigint(21) unsigned DEFAULT NULL,
  `MAXIMUM_SIZE` bigint(21) unsigned DEFAULT NULL,
  `AUTOEXTEND_SIZE` bigint(21) unsigned DEFAULT NULL,
  `CREATION_TIME` datetime DEFAULT NULL,
  `LAST_UPDATE_TIME` datetime DEFAULT NULL,
  `LAST_ACCESS_TIME` datetime DEFAULT NULL,
  `RECOVER_TIME` bigint(4) DEFAULT NULL,
  `TRANSACTION_COUNTER` bigint(4) DEFAULT NULL,
  `VERSION` bigint(21) unsigned DEFAULT NULL,
  `ROW_FORMAT` varchar(10) DEFAULT NULL,
  `TABLE_ROWS` bigint(21) unsigned DEFAULT NULL,
  `AVG_ROW_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_FREE` bigint(21) unsigned DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `STATUS` varchar(20) NOT NULL DEFAULT '',
  `EXTRA` varchar(255) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FILES`
--


-- --------------------------------------------------------

--
-- Table structure for table `GLOBAL_STATUS`
--

CREATE TEMPORARY TABLE `GLOBAL_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GLOBAL_STATUS`
--

INSERT INTO `GLOBAL_STATUS` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('ABORTED_CLIENTS', '14537'),
('ABORTED_CONNECTS', '175547'),
('BINLOG_CACHE_DISK_USE', '0'),
('BINLOG_CACHE_USE', '0'),
('BYTES_RECEIVED', '39202630574'),
('BYTES_SENT', '1744060084718'),
('COM_ADMIN_COMMANDS', '76975'),
('COM_ASSIGN_TO_KEYCACHE', '0'),
('COM_ALTER_DB', '0'),
('COM_ALTER_DB_UPGRADE', '0'),
('COM_ALTER_EVENT', '0'),
('COM_ALTER_FUNCTION', '0'),
('COM_ALTER_PROCEDURE', '0'),
('COM_ALTER_SERVER', '0'),
('COM_ALTER_TABLE', '3182'),
('COM_ALTER_TABLESPACE', '0'),
('COM_ANALYZE', '141'),
('COM_BACKUP_TABLE', '0'),
('COM_BEGIN', '108182'),
('COM_BINLOG', '0'),
('COM_CALL_PROCEDURE', '0'),
('COM_CHANGE_DB', '9984058'),
('COM_CHANGE_MASTER', '0'),
('COM_CHECK', '340'),
('COM_CHECKSUM', '0'),
('COM_COMMIT', '98820'),
('COM_CREATE_DB', '92'),
('COM_CREATE_EVENT', '0'),
('COM_CREATE_FUNCTION', '0'),
('COM_CREATE_INDEX', '104'),
('COM_CREATE_PROCEDURE', '0'),
('COM_CREATE_SERVER', '0'),
('COM_CREATE_TABLE', '16602'),
('COM_CREATE_TRIGGER', '0'),
('COM_CREATE_UDF', '0'),
('COM_CREATE_USER', '0'),
('COM_CREATE_VIEW', '0'),
('COM_DEALLOC_SQL', '5009'),
('COM_DELETE', '819496'),
('COM_DELETE_MULTI', '867'),
('COM_DO', '0'),
('COM_DROP_DB', '23'),
('COM_DROP_EVENT', '0'),
('COM_DROP_FUNCTION', '0'),
('COM_DROP_INDEX', '0'),
('COM_DROP_PROCEDURE', '0'),
('COM_DROP_SERVER', '0'),
('COM_DROP_TABLE', '3010'),
('COM_DROP_TRIGGER', '0'),
('COM_DROP_USER', '0'),
('COM_DROP_VIEW', '0'),
('COM_EMPTY_QUERY', '1355'),
('COM_EXECUTE_SQL', '5009'),
('COM_FLUSH', '1309'),
('COM_GRANT', '9974'),
('COM_HA_CLOSE', '0'),
('COM_HA_OPEN', '0'),
('COM_HA_READ', '0'),
('COM_HELP', '0'),
('COM_INSERT', '1057246'),
('COM_INSERT_SELECT', '3327'),
('COM_INSTALL_PLUGIN', '0'),
('COM_KILL', '2477'),
('COM_LOAD', '0'),
('COM_LOAD_MASTER_DATA', '0'),
('COM_LOAD_MASTER_TABLE', '0'),
('COM_LOCK_TABLES', '15515'),
('COM_OPTIMIZE', '833'),
('COM_PRELOAD_KEYS', '0'),
('COM_PREPARE_SQL', '5009'),
('COM_PURGE', '0'),
('COM_PURGE_BEFORE_DATE', '0'),
('COM_RELEASE_SAVEPOINT', '400'),
('COM_RENAME_TABLE', '2'),
('COM_RENAME_USER', '0'),
('COM_REPAIR', '322'),
('COM_REPLACE', '321769'),
('COM_REPLACE_SELECT', '480'),
('COM_RESET', '0'),
('COM_RESTORE_TABLE', '0'),
('COM_REVOKE', '11'),
('COM_REVOKE_ALL', '0'),
('COM_ROLLBACK', '2'),
('COM_ROLLBACK_TO_SAVEPOINT', '0'),
('COM_SAVEPOINT', '400'),
('COM_SELECT', '28223986'),
('COM_SET_OPTION', '8394348'),
('COM_SHOW_AUTHORS', '0'),
('COM_SHOW_BINLOG_EVENTS', '0'),
('COM_SHOW_BINLOGS', '111'),
('COM_SHOW_CHARSETS', '1036'),
('COM_SHOW_CLIENT_STATISTICS', '0'),
('COM_SHOW_COLLATIONS', '53'),
('COM_SHOW_COLUMN_TYPES', '0'),
('COM_SHOW_CONTRIBUTORS', '0'),
('COM_SHOW_CREATE_DB', '0'),
('COM_SHOW_CREATE_EVENT', '0'),
('COM_SHOW_CREATE_FUNC', '0'),
('COM_SHOW_CREATE_PROC', '0'),
('COM_SHOW_CREATE_TABLE', '12260'),
('COM_SHOW_CREATE_TRIGGER', '0'),
('COM_SHOW_DATABASES', '482'),
('COM_SHOW_ENGINE_LOGS', '0'),
('COM_SHOW_ENGINE_MUTEX', '0'),
('COM_SHOW_ENGINE_STATUS', '0'),
('COM_SHOW_EVENTS', '0'),
('COM_SHOW_ERRORS', '0'),
('COM_SHOW_FIELDS', '4274220'),
('COM_SHOW_FUNCTION_STATUS', '155'),
('COM_SHOW_GRANTS', '2849'),
('COM_SHOW_INDEX_STATISTICS', '0'),
('COM_SHOW_KEYS', '1531'),
('COM_SHOW_MASTER_STATUS', '163'),
('COM_SHOW_NEW_MASTER', '0'),
('COM_SHOW_OPEN_TABLES', '0'),
('COM_SHOW_PLUGINS', '44'),
('COM_SHOW_PRIVILEGES', '0'),
('COM_SHOW_PROCEDURE_STATUS', '155'),
('COM_SHOW_PROCESSLIST', '6210'),
('COM_SHOW_PROFILE', '0'),
('COM_SHOW_PROFILES', '0'),
('COM_SHOW_SLAVE_HOSTS', '0'),
('COM_SHOW_SLAVE_STATUS', '163'),
('COM_SHOW_STATUS', '30151'),
('COM_SHOW_STORAGE_ENGINES', '50'),
('COM_SHOW_TABLE_STATISTICS', '0'),
('COM_SHOW_TABLE_STATUS', '42761'),
('COM_SHOW_TABLES', '521713'),
('COM_SHOW_THREAD_STATISTICS', '0'),
('COM_SHOW_TRIGGERS', '11200'),
('COM_SHOW_USER_STATISTICS', '0'),
('COM_SHOW_VARIABLES', '19497'),
('COM_SHOW_WARNINGS', '39'),
('COM_SLAVE_START', '0'),
('COM_SLAVE_STOP', '0'),
('COM_STMT_CLOSE', '5023'),
('COM_STMT_EXECUTE', '5023'),
('COM_STMT_FETCH', '0'),
('COM_STMT_PREPARE', '5023'),
('COM_STMT_REPREPARE', '0'),
('COM_STMT_RESET', '8'),
('COM_STMT_SEND_LONG_DATA', '0'),
('COM_TRUNCATE', '2083'),
('COM_UNINSTALL_PLUGIN', '0'),
('COM_UNLOCK_TABLES', '15570'),
('COM_UPDATE', '5018673'),
('COM_UPDATE_MULTI', '21740'),
('COM_XA_COMMIT', '0'),
('COM_XA_END', '0'),
('COM_XA_PREPARE', '0'),
('COM_XA_RECOVER', '0'),
('COM_XA_ROLLBACK', '0'),
('COM_XA_START', '0'),
('COMPRESSION', 'OFF'),
('CONNECTIONS', '5711102'),
('CREATED_TMP_DISK_TABLES', '1885339'),
('CREATED_TMP_FILES', '66233'),
('CREATED_TMP_TABLES', '3263670'),
('DELAYED_ERRORS', '0'),
('DELAYED_INSERT_THREADS', '1'),
('DELAYED_WRITES', '1212'),
('FLUSH_COMMANDS', '1'),
('HANDLER_COMMIT', '784965'),
('HANDLER_DELETE', '1110180'),
('HANDLER_DISCOVER', '0'),
('HANDLER_PREPARE', '0'),
('HANDLER_READ_FIRST', '1814507'),
('HANDLER_READ_KEY', '754791512'),
('HANDLER_READ_NEXT', '3393972867'),
('HANDLER_READ_PREV', '990870578'),
('HANDLER_READ_RND', '402449104'),
('HANDLER_READ_RND_NEXT', '3097521323'),
('HANDLER_ROLLBACK', '72'),
('HANDLER_SAVEPOINT', '399'),
('HANDLER_SAVEPOINT_ROLLBACK', '0'),
('HANDLER_UPDATE', '132419393'),
('HANDLER_WRITE', '851662915'),
('INNODB_BUFFER_POOL_PAGES_DATA', '8116'),
('INNODB_BUFFER_POOL_PAGES_DIRTY', '0'),
('INNODB_BUFFER_POOL_PAGES_FLUSHED', '427467'),
('INNODB_BUFFER_POOL_PAGES_FREE', '3'),
('INNODB_BUFFER_POOL_PAGES_MISC', '72'),
('INNODB_BUFFER_POOL_PAGES_TOTAL', '8191'),
('INNODB_BUFFER_POOL_READ_AHEAD', '22191'),
('INNODB_BUFFER_POOL_READ_AHEAD_EVICTED', '5585'),
('INNODB_BUFFER_POOL_READ_REQUESTS', '211712634'),
('INNODB_BUFFER_POOL_READS', '52121'),
('INNODB_BUFFER_POOL_WAIT_FREE', '0'),
('INNODB_BUFFER_POOL_WRITE_REQUESTS', '53392152'),
('INNODB_DATA_FSYNCS', '394008'),
('INNODB_DATA_PENDING_FSYNCS', '0'),
('INNODB_DATA_PENDING_READS', '0'),
('INNODB_DATA_PENDING_WRITES', '0'),
('INNODB_DATA_READ', '1223593984'),
('INNODB_DATA_READS', '57402'),
('INNODB_DATA_WRITES', '552896'),
('INNODB_DATA_WRITTEN', '3055939584'),
('INNODB_DBLWR_PAGES_WRITTEN', '427467'),
('INNODB_DBLWR_WRITES', '40016'),
('INNODB_HAVE_ATOMIC_BUILTINS', 'ON'),
('INNODB_LOG_WAITS', '0'),
('INNODB_LOG_WRITE_REQUESTS', '3719870'),
('INNODB_LOG_WRITES', '192029'),
('INNODB_OS_LOG_FSYNCS', '213524'),
('INNODB_OS_LOG_PENDING_FSYNCS', '0'),
('INNODB_OS_LOG_PENDING_WRITES', '0'),
('INNODB_OS_LOG_WRITTEN', '1922415616'),
('INNODB_PAGE_SIZE', '16384'),
('INNODB_PAGES_CREATED', '81602'),
('INNODB_PAGES_READ', '74548'),
('INNODB_PAGES_WRITTEN', '427467'),
('INNODB_ROW_LOCK_CURRENT_WAITS', '0'),
('INNODB_ROW_LOCK_TIME', '10'),
('INNODB_ROW_LOCK_TIME_AVG', '1'),
('INNODB_ROW_LOCK_TIME_MAX', '3'),
('INNODB_ROW_LOCK_WAITS', '6'),
('INNODB_ROWS_DELETED', '495234'),
('INNODB_ROWS_INSERTED', '8553082'),
('INNODB_ROWS_READ', '56677601'),
('INNODB_ROWS_UPDATED', '288631'),
('KEY_BLOCKS_NOT_FLUSHED', '0'),
('KEY_BLOCKS_UNUSED', '0'),
('KEY_BLOCKS_USED', '57990'),
('KEY_READ_REQUESTS', '24512329042'),
('KEY_READS', '35344356'),
('KEY_WRITE_REQUESTS', '214206689'),
('KEY_WRITES', '3666421'),
('LAST_QUERY_COST', '0.000000'),
('MAX_USED_CONNECTIONS', '54'),
('NOT_FLUSHED_DELAYED_ROWS', '0'),
('OPEN_FILES', '15759'),
('OPEN_STREAMS', '0'),
('OPEN_TABLE_DEFINITIONS', '7674'),
('OPEN_TABLES', '8196'),
('OPENED_FILES', '10726605'),
('OPENED_TABLE_DEFINITIONS', '676627'),
('OPENED_TABLES', '732421'),
('PREPARED_STMT_COUNT', '0'),
('QCACHE_FREE_BLOCKS', '4680'),
('QCACHE_FREE_MEMORY', '17767592'),
('QCACHE_HITS', '60953802'),
('QCACHE_INSERTS', '24049795'),
('QCACHE_LOWMEM_PRUNES', '12746668'),
('QCACHE_NOT_CACHED', '3850022'),
('QCACHE_QUERIES_IN_CACHE', '18741'),
('QCACHE_TOTAL_BLOCKS', '55130'),
('QUERIES', '125547540'),
('QUESTIONS', '125547504'),
('RPL_STATUS', 'NULL'),
('SELECT_FULL_JOIN', '39399'),
('SELECT_FULL_RANGE_JOIN', '7443'),
('SELECT_RANGE', '2110826'),
('SELECT_RANGE_CHECK', '779'),
('SELECT_SCAN', '4137656'),
('SLAVE_OPEN_TEMP_TABLES', '0'),
('SLAVE_RETRIED_TRANSACTIONS', '0'),
('SLAVE_RUNNING', 'OFF'),
('SLOW_LAUNCH_THREADS', '0'),
('SLOW_QUERIES', '297'),
('SORT_MERGE_PASSES', '33068'),
('SORT_RANGE', '3197844'),
('SORT_ROWS', '609672505'),
('SORT_SCAN', '2564156'),
('SSL_ACCEPT_RENEGOTIATES', '0'),
('SSL_ACCEPTS', '0'),
('SSL_CALLBACK_CACHE_HITS', '0'),
('SSL_CIPHER', ''),
('SSL_CIPHER_LIST', ''),
('SSL_CLIENT_CONNECTS', '0'),
('SSL_CONNECT_RENEGOTIATES', '0'),
('SSL_CTX_VERIFY_DEPTH', '0'),
('SSL_CTX_VERIFY_MODE', '0'),
('SSL_DEFAULT_TIMEOUT', '0'),
('SSL_FINISHED_ACCEPTS', '0'),
('SSL_FINISHED_CONNECTS', '0'),
('SSL_SESSION_CACHE_HITS', '0'),
('SSL_SESSION_CACHE_MISSES', '0'),
('SSL_SESSION_CACHE_MODE', 'NONE'),
('SSL_SESSION_CACHE_OVERFLOWS', '0'),
('SSL_SESSION_CACHE_SIZE', '0'),
('SSL_SESSION_CACHE_TIMEOUTS', '0'),
('SSL_SESSIONS_REUSED', '0'),
('SSL_USED_SESSION_CACHE_ENTRIES', '0'),
('SSL_VERIFY_DEPTH', '0'),
('SSL_VERIFY_MODE', '0'),
('SSL_VERSION', ''),
('TABLE_LOCKS_IMMEDIATE', '43393155'),
('TABLE_LOCKS_WAITED', '31097'),
('TC_LOG_MAX_PAGES_USED', '0'),
('TC_LOG_PAGE_SIZE', '0'),
('TC_LOG_PAGE_WAITS', '0'),
('THREADS_CACHED', '39'),
('THREADS_CONNECTED', '16'),
('THREADS_CREATED', '54'),
('THREADS_RUNNING', '5'),
('UPTIME', '446944'),
('UPTIME_SINCE_FLUSH_STATUS', '446944');

-- --------------------------------------------------------

--
-- Table structure for table `GLOBAL_VARIABLES`
--

CREATE TEMPORARY TABLE `GLOBAL_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `GLOBAL_VARIABLES`
--

INSERT INTO `GLOBAL_VARIABLES` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('MAX_PREPARED_STMT_COUNT', '16382'),
('CHARACTER_SETS_DIR', '/usr/share/mysql/charsets/'),
('HAVE_CRYPT', 'YES'),
('CONNECT_TIMEOUT', '20'),
('INNODB_VERSION', '1.0.13'),
('AUTOMATIC_SP_PRIVILEGES', 'ON'),
('MAX_BINLOG_SIZE', '1073741824'),
('BINLOG_CACHE_SIZE', '32768'),
('INNODB_LOCKS_UNSAFE_FOR_BINLOG', 'OFF'),
('BACK_LOG', '50'),
('FT_MIN_WORD_LEN', '3'),
('TABLE_OPEN_CACHE', '8196'),
('DELAYED_INSERT_TIMEOUT', '40'),
('MAX_HEAP_TABLE_SIZE', '134217728'),
('LOG_BIN_TRUST_ROUTINE_CREATORS', 'OFF'),
('CHARACTER_SET_CONNECTION', 'utf8'),
('SSL_CIPHER', ''),
('CHARACTER_SET_RESULTS', 'utf8'),
('BASEDIR', '/'),
('LOWER_CASE_FILE_SYSTEM', 'OFF'),
('UPDATABLE_VIEWS_WITH_LIMIT', 'YES'),
('TABLE_DEFINITION_CACHE', '256'),
('SLOW_LAUNCH_TIME', '2'),
('QUERY_ALLOC_BLOCK_SIZE', '8192'),
('IDENTITY', '0'),
('COMPLETION_TYPE', '0'),
('RELAY_LOG_INDEX', ''),
('CHARACTER_SET_SERVER', 'utf8'),
('SQL_QUOTE_SHOW_CREATE', 'ON'),
('EVENT_SCHEDULER', 'OFF'),
('SQL_LOG_UPDATE', 'ON'),
('COLLATION_DATABASE', 'utf8_unicode_ci'),
('WAIT_TIMEOUT', '3600'),
('FT_MAX_WORD_LEN', '84'),
('LOCKED_IN_MEMORY', 'OFF'),
('CONCURRENT_INSERT', '1'),
('MYISAM_RECOVER_OPTIONS', 'OFF'),
('INIT_FILE', ''),
('REPORT_HOST', ''),
('INIT_SLAVE', ''),
('SSL_KEY', ''),
('FLUSH', 'OFF'),
('INNODB_OLD_BLOCKS_PCT', '37'),
('DELAYED_INSERT_LIMIT', '100'),
('SLAVE_SKIP_ERRORS', 'OFF'),
('FT_QUERY_EXPANSION_LIMIT', '20'),
('INSERT_ID', '0'),
('SQL_LOW_PRIORITY_UPDATES', 'OFF'),
('RELAY_LOG_PURGE', 'ON'),
('PSEUDO_THREAD_ID', '0'),
('SKIP_SHOW_DATABASE', 'OFF'),
('NET_RETRY_COUNT', '10'),
('GROUP_CONCAT_MAX_LEN', '1024'),
('JOIN_BUFFER_SIZE', '1048576'),
('INNODB_LOG_BUFFER_SIZE', '8388608'),
('MAX_ERROR_COUNT', '64'),
('VERSION_COMPILE_MACHINE', 'i686'),
('READ_BUFFER_SIZE', '2097152'),
('INNODB_MAX_PURGE_LAG', '0'),
('DELAYED_QUEUE_SIZE', '1000'),
('TRANSACTION_PREALLOC_SIZE', '4096'),
('INTERACTIVE_TIMEOUT', '10'),
('VERSION_COMPILE_OS', 'pc-linux-gnu'),
('INNODB_CONCURRENCY_TICKETS', '500'),
('SQL_NOTES', 'ON'),
('LARGE_PAGES', 'OFF'),
('LOW_PRIORITY_UPDATES', 'OFF'),
('AUTO_INCREMENT_OFFSET', '1'),
('REPORT_PASSWORD', ''),
('MAX_CONNECT_ERRORS', '20'),
('MAX_INSERT_DELAYED_THREADS', '20'),
('LOG', 'OFF'),
('HAVE_COMPRESS', 'YES'),
('MAX_CONNECTIONS', '150'),
('TRANSACTION_ALLOC_BLOCK_SIZE', '8192'),
('MYISAM_STATS_METHOD', 'nulls_unequal'),
('THREAD_CACHE_SIZE', '128'),
('SQL_LOG_OFF', 'OFF'),
('INNODB_DOUBLEWRITE', 'ON'),
('LANGUAGE', '/usr/share/mysql/english/'),
('SQL_BIG_SELECTS', 'ON'),
('WARNING_COUNT', '0'),
('DEFAULT_WEEK_FORMAT', '0'),
('LOWER_CASE_TABLE_NAMES', '0'),
('LOG_OUTPUT', 'FILE'),
('LOG_WARNINGS', '1'),
('INNODB_IO_CAPACITY', '200'),
('KEY_CACHE_AGE_THRESHOLD', '300'),
('PROTOCOL_VERSION', '10'),
('MAX_SORT_LENGTH', '1024'),
('HAVE_SYMLINK', 'YES'),
('COLLATION_SERVER', 'utf8_unicode_ci'),
('TIME_ZONE', 'SYSTEM'),
('FT_BOOLEAN_SYNTAX', '+ -><()~*:""&|'),
('INNODB_TABLE_LOCKS', 'ON'),
('LOG_QUERIES_NOT_USING_INDEXES', 'OFF'),
('INNODB_AUTOEXTEND_INCREMENT', '8'),
('NET_BUFFER_LENGTH', '16384'),
('MYISAM_DATA_POINTER_SIZE', '6'),
('FT_STOPWORD_FILE', '(built-in)'),
('INNODB_THREAD_SLEEP_DELAY', '10000'),
('DELAY_KEY_WRITE', 'ON'),
('SQL_AUTO_IS_NULL', 'ON'),
('SQL_SLAVE_SKIP_COUNTER', ''),
('SLAVE_TRANSACTION_RETRIES', '10'),
('LONG_QUERY_TIME', '10.000000'),
('LOG_ERROR', '/var/lib/mysql/gator1251.hostgator.com.err'),
('BULK_INSERT_BUFFER_SIZE', '8388608'),
('GENERAL_LOG', 'OFF'),
('NET_WRITE_TIMEOUT', '60'),
('INNODB_REPLICATION_DELAY', '0'),
('MYISAM_USE_MMAP', 'OFF'),
('QUERY_CACHE_MIN_RES_UNIT', '4096'),
('KEY_CACHE_BLOCK_SIZE', '1024'),
('INNODB_STATS_ON_METADATA', 'ON'),
('MAX_BINLOG_CACHE_SIZE', '4294963200'),
('INNODB_ROLLBACK_ON_TIMEOUT', 'OFF'),
('QUERY_CACHE_TYPE', 'ON'),
('PROFILING_HISTORY_SIZE', '15'),
('CHARACTER_SET_FILESYSTEM', 'binary'),
('INNODB_CHANGE_BUFFERING', 'inserts'),
('TX_ISOLATION', 'REPEATABLE-READ'),
('READ_RND_BUFFER_SIZE', '2097152'),
('THREAD_HANDLING', 'one-thread-per-connection'),
('INNODB_FILE_FORMAT', 'Barracuda'),
('BINLOG_DIRECT_NON_TRANSACTIONAL_UPDATES', 'OFF'),
('BIG_TABLES', 'OFF'),
('LARGE_PAGE_SIZE', '0'),
('SQL_SELECT_LIMIT', '18446744073709551615'),
('HAVE_INNODB', 'YES'),
('DATE_FORMAT', '%Y-%m-%d'),
('OLD_PASSWORDS', 'ON'),
('READ_ONLY', 'OFF'),
('QUERY_PREALLOC_SIZE', '8192'),
('RAND_SEED1', ''),
('SLOW_QUERY_LOG_FILE', '/var/lib/mysql/gator1251-slow.log'),
('INNODB_DATA_FILE_PATH', 'ibdata1:10M:autoextend'),
('MAX_SEEKS_FOR_KEY', '4294967295'),
('QUERY_CACHE_LIMIT', '4194304'),
('SYSTEM_TIME_ZONE', 'CST'),
('PROFILING', 'OFF'),
('SSL_CERT', ''),
('INNODB_STRICT_MODE', 'OFF'),
('MYISAM_MAX_SORT_FILE_SIZE', '2146435072'),
('KEY_CACHE_DIVISION_LIMIT', '100'),
('THREAD_STACK', '196608'),
('GENERAL_LOG_FILE', '/var/lib/mysql/gator1251.log'),
('OPEN_FILES_LIMIT', '33628'),
('MYISAM_SORT_BUFFER_SIZE', '33554432'),
('SKIP_NAME_RESOLVE', 'OFF'),
('AUTO_INCREMENT_INCREMENT', '1'),
('LAST_INSERT_ID', '0'),
('TMPDIR', '/tmp'),
('PID_FILE', '/var/lib/mysql/gator1251.hostgator.com.pid'),
('EXPIRE_LOGS_DAYS', '0'),
('MAX_TMP_TABLES', '32'),
('HAVE_PARTITIONING', 'DISABLED'),
('MIN_EXAMINED_ROW_LIMIT', '0'),
('FOREIGN_KEY_CHECKS', 'ON'),
('LARGE_FILES_SUPPORT', 'ON'),
('RELAY_LOG_INFO_FILE', 'relay-log.info'),
('SSL_CAPATH', ''),
('INNODB_AUTOINC_LOCK_MODE', '1'),
('VERSION_COMMENT', 'MySQL Community Server (GPL)'),
('INNODB_COMMIT_CONCURRENCY', '0'),
('INNODB_MAX_DIRTY_PAGES_PCT', '75'),
('INNODB_MIRRORED_LOG_GROUPS', '1'),
('OPTIMIZER_PRUNE_LEVEL', '1'),
('UNIQUE_CHECKS', 'ON'),
('QUERY_CACHE_WLOCK_INVALIDATE', 'OFF'),
('VERSION', '5.1.52'),
('MAX_WRITE_LOCK_COUNT', '4294967295'),
('INNODB_SUPPORT_XA', 'ON'),
('TIMED_MUTEXES', 'OFF'),
('INNODB_SYNC_SPIN_LOOPS', '30'),
('THREAD_STATISTICS', 'OFF'),
('COLLATION_CONNECTION', 'utf8_unicode_ci'),
('LC_TIME_NAMES', 'en_US'),
('INNODB_ADAPTIVE_FLUSHING', 'ON'),
('SERVER_ID', '1'),
('INNODB_ADAPTIVE_HASH_INDEX', 'ON'),
('SKIP_NETWORKING', 'OFF'),
('SLAVE_LOAD_TMPDIR', '/tmp'),
('CHARACTER_SET_SYSTEM', 'utf8'),
('DIV_PRECISION_INCREMENT', '4'),
('INIT_CONNECT', ''),
('DATADIR', '/var/lib/mysql/'),
('OPTIMIZER_SEARCH_DEPTH', '62'),
('INNODB_DATA_HOME_DIR', ''),
('AUTOCOMMIT', 'ON'),
('INNODB_READ_IO_THREADS', '4'),
('USERSTAT_RUNNING', 'ON'),
('INNODB_WRITE_IO_THREADS', '4'),
('SQL_BIG_TABLES', 'OFF'),
('TIME_FORMAT', '%H:%i:%s'),
('TMP_TABLE_SIZE', '134217728'),
('INNODB_FORCE_RECOVERY', '0'),
('TABLE_LOCK_WAIT_TIMEOUT', '50'),
('INNODB_LOG_FILES_IN_GROUP', '2'),
('MAX_LENGTH_FOR_SORT_DATA', '1024'),
('ERROR_COUNT', '0'),
('HOSTNAME', 'gator1251.hostgator.com'),
('HAVE_DYNAMIC_LOADING', 'YES'),
('SQL_BUFFER_RESULT', 'OFF'),
('SYNC_BINLOG', '0'),
('LOG_BIN', 'OFF'),
('RELAY_LOG_SPACE_LIMIT', '0'),
('SQL_MODE', ''),
('INNODB_OPEN_FILES', '300'),
('MAX_USER_CONNECTIONS', '25'),
('INNODB_FILE_FORMAT_CHECK', 'Barracuda'),
('SLAVE_EXEC_MODE', 'STRICT'),
('INNODB_READ_AHEAD_THRESHOLD', '56'),
('SQL_MAX_JOIN_SIZE', '18446744073709551615'),
('HAVE_COMMUNITY_FEATURES', 'YES'),
('NEW', 'OFF'),
('KEY_BUFFER_SIZE', '67108864'),
('SECURE_FILE_PRIV', ''),
('HAVE_NDBCLUSTER', 'NO'),
('KEEP_FILES_ON_CREATE', 'OFF'),
('REPORT_PORT', '3306'),
('REPORT_USER', ''),
('INNODB_LOG_GROUP_HOME_DIR', './'),
('ENGINE_CONDITION_PUSHDOWN', 'ON'),
('INNODB_FAST_SHUTDOWN', '0'),
('SQL_LOG_BIN', 'ON'),
('SSL_CA', ''),
('SECURE_AUTH', 'OFF'),
('INNODB_THREAD_CONCURRENCY', '0'),
('HAVE_CSV', 'YES'),
('SLAVE_NET_TIMEOUT', '3600'),
('SQL_SAFE_UPDATES', 'OFF'),
('INNODB_STATS_SAMPLE_PAGES', '8'),
('PRELOAD_BUFFER_SIZE', '32768'),
('LOCAL_INFILE', 'ON'),
('SLAVE_COMPRESSED_PROTOCOL', 'OFF'),
('HAVE_RTREE_KEYS', 'YES'),
('HAVE_GEOMETRY', 'YES'),
('BINLOG_FORMAT', 'STATEMENT'),
('MAX_SP_RECURSION_DEPTH', '0'),
('OLD_ALTER_TABLE', 'OFF'),
('RELAY_LOG', ''),
('MYISAM_MMAP_SIZE', '4294967295'),
('PLUGIN_DIR', '/usr/lib/mysql/plugin'),
('LOG_SLOW_QUERIES', 'OFF'),
('IGNORE_BUILTIN_INNODB', 'ON'),
('TIMESTAMP', '1295409752'),
('NET_READ_TIMEOUT', '30'),
('MAX_DELAYED_THREADS', '20'),
('SYNC_FRM', 'ON'),
('DATETIME_FORMAT', '%Y-%m-%d %H:%i:%s'),
('INNODB_BUFFER_POOL_SIZE', '134217728'),
('INNODB_FLUSH_LOG_AT_TRX_COMMIT', '1'),
('MULTI_RANGE_COUNT', '256'),
('MAX_RELAY_LOG_SIZE', '0'),
('OLD', 'OFF'),
('LICENSE', 'GPL'),
('SLOW_QUERY_LOG', 'OFF'),
('MAX_ALLOWED_PACKET', '16777216'),
('INNODB_FLUSH_METHOD', ''),
('PORT', '3306'),
('RANGE_ALLOC_BLOCK_SIZE', '4096'),
('INNODB_CHECKSUMS', 'ON'),
('STORAGE_ENGINE', 'MyISAM'),
('LOG_BIN_TRUST_FUNCTION_CREATORS', 'OFF'),
('HAVE_SSL', 'DISABLED'),
('HAVE_QUERY_CACHE', 'YES'),
('INNODB_LOG_FILE_SIZE', '5242880'),
('HAVE_OPENSSL', 'DISABLED'),
('CHARACTER_SET_DATABASE', 'utf8'),
('SKIP_EXTERNAL_LOCKING', 'ON'),
('LOG_SLAVE_UPDATES', 'OFF'),
('MAX_JOIN_SIZE', '18446744073709551615'),
('SORT_BUFFER_SIZE', '2097152'),
('INNODB_SPIN_WAIT_DELAY', '6'),
('INNODB_FILE_PER_TABLE', 'ON'),
('TABLE_TYPE', 'MyISAM'),
('QUERY_CACHE_SIZE', '134217728'),
('SOCKET', '/var/lib/mysql/mysql.sock'),
('CHARACTER_SET_CLIENT', 'utf8'),
('INNODB_LOCK_WAIT_TIMEOUT', '50'),
('RAND_SEED2', ''),
('INNODB_OLD_BLOCKS_TIME', '0'),
('SQL_WARNINGS', 'OFF'),
('RPL_RECOVERY_RANK', '0'),
('MYISAM_REPAIR_THREADS', '1'),
('INNODB_ADDITIONAL_MEM_POOL_SIZE', '8388608'),
('INNODB_USE_SYS_MALLOC', 'ON'),
('OPTIMIZER_SWITCH', 'index_merge=on,index_merge_union=on,index_merge_sort_union=on,index_merge_intersection=on'),
('FLUSH_TIME', '0');

-- --------------------------------------------------------

--
-- Table structure for table `KEY_COLUMN_USAGE`
--

CREATE TEMPORARY TABLE `KEY_COLUMN_USAGE` (
  `CONSTRAINT_CATALOG` varchar(512) DEFAULT NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `ORDINAL_POSITION` bigint(10) NOT NULL DEFAULT '0',
  `POSITION_IN_UNIQUE_CONSTRAINT` bigint(10) DEFAULT NULL,
  `REFERENCED_TABLE_SCHEMA` varchar(64) DEFAULT NULL,
  `REFERENCED_TABLE_NAME` varchar(64) DEFAULT NULL,
  `REFERENCED_COLUMN_NAME` varchar(64) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `KEY_COLUMN_USAGE`
--

INSERT INTO `KEY_COLUMN_USAGE` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `COLUMN_NAME`, `ORDINAL_POSITION`, `POSITION_IN_UNIQUE_CONSTRAINT`, `REFERENCED_TABLE_SCHEMA`, `REFERENCED_TABLE_NAME`, `REFERENCED_COLUMN_NAME`) VALUES
(NULL, 'segstsh5_appgames', 'game_id', NULL, 'segstsh5_appgames', 'games', 'game_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_appusers', 'PRIMARY', NULL, 'segstsh5_appusers', 'user_check_ins', 'rowIndex', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_appusers', 'uID', NULL, 'segstsh5_appusers', 'users', 'uID', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_acl_options', 'auth_option_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'auth_option', NULL, 'segstsh5_forum', 'phpbb_acl_options', 'auth_option', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_acl_roles', 'role_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_acl_roles_data', 'role_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_acl_roles_data', 'auth_option_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_attachments', 'attach_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_banlist', 'ban_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_bbcodes', 'bbcode_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_bookmarks', 'topic_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_bookmarks', 'user_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_bots', 'bot_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_config', 'config_name', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_confirm', 'session_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_confirm', 'confirm_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_disallow', 'disallow_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_drafts', 'draft_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_extension_groups', 'group_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_extensions', 'extension_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_forums', 'forum_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_forums_access', 'forum_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_forums_access', 'user_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_forums_access', 'session_id', 3, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_forums_track', 'user_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_forums_track', 'forum_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_groups', 'group_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_icons', 'icons_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_lang', 'lang_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_log', 'log_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_modules', 'module_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_posts', 'post_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'msg_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_privmsgs_folder', 'folder_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_privmsgs_rules', 'rule_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'field_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_profile_fields_data', 'user_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_profile_fields_lang', 'field_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_profile_fields_lang', 'lang_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_profile_fields_lang', 'option_id', 3, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_profile_lang', 'field_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_profile_lang', 'lang_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_ranks', 'rank_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_reports', 'report_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_reports_reasons', 'reason_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_search_results', 'search_key', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_search_wordlist', 'word_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'wrd_txt', NULL, 'segstsh5_forum', 'phpbb_search_wordlist', 'word_text', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'unq_mtch', NULL, 'segstsh5_forum', 'phpbb_search_wordmatch', 'word_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'unq_mtch', NULL, 'segstsh5_forum', 'phpbb_search_wordmatch', 'post_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'unq_mtch', NULL, 'segstsh5_forum', 'phpbb_search_wordmatch', 'title_match', 3, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_sessions', 'session_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_sessions_keys', 'key_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_sessions_keys', 'user_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_sitelist', 'site_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_smilies', 'smiley_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_styles', 'style_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'style_name', NULL, 'segstsh5_forum', 'phpbb_styles', 'style_name', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_styles_imageset', 'imageset_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'imgset_nm', NULL, 'segstsh5_forum', 'phpbb_styles_imageset', 'imageset_name', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_styles_imageset_data', 'image_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_styles_template', 'template_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'tmplte_nm', NULL, 'segstsh5_forum', 'phpbb_styles_template', 'template_name', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_styles_theme', 'theme_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'theme_name', NULL, 'segstsh5_forum', 'phpbb_styles_theme', 'theme_name', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_topics', 'topic_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_topics_posted', 'user_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_topics_posted', 'topic_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_topics_track', 'user_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_topics_track', 'topic_id', 2, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_users', 'user_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'username_clean', NULL, 'segstsh5_forum', 'phpbb_users', 'username_clean', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_warnings', 'warning_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_words', 'word_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_zebra', 'user_id', 1, NULL, NULL, NULL, NULL),
(NULL, 'segstsh5_forum', 'PRIMARY', NULL, 'segstsh5_forum', 'phpbb_zebra', 'zebra_id', 2, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PARTITIONS`
--

CREATE TEMPORARY TABLE `PARTITIONS` (
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `PARTITION_NAME` varchar(64) DEFAULT NULL,
  `SUBPARTITION_NAME` varchar(64) DEFAULT NULL,
  `PARTITION_ORDINAL_POSITION` bigint(21) unsigned DEFAULT NULL,
  `SUBPARTITION_ORDINAL_POSITION` bigint(21) unsigned DEFAULT NULL,
  `PARTITION_METHOD` varchar(12) DEFAULT NULL,
  `SUBPARTITION_METHOD` varchar(12) DEFAULT NULL,
  `PARTITION_EXPRESSION` longtext,
  `SUBPARTITION_EXPRESSION` longtext,
  `PARTITION_DESCRIPTION` longtext,
  `TABLE_ROWS` bigint(21) unsigned NOT NULL DEFAULT '0',
  `AVG_ROW_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned NOT NULL DEFAULT '0',
  `DATA_FREE` bigint(21) unsigned NOT NULL DEFAULT '0',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `PARTITION_COMMENT` varchar(80) NOT NULL DEFAULT '',
  `NODEGROUP` varchar(12) NOT NULL DEFAULT '',
  `TABLESPACE_NAME` varchar(64) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PARTITIONS`
--

INSERT INTO `PARTITIONS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `PARTITION_NAME`, `SUBPARTITION_NAME`, `PARTITION_ORDINAL_POSITION`, `SUBPARTITION_ORDINAL_POSITION`, `PARTITION_METHOD`, `SUBPARTITION_METHOD`, `PARTITION_EXPRESSION`, `SUBPARTITION_EXPRESSION`, `PARTITION_DESCRIPTION`, `TABLE_ROWS`, `AVG_ROW_LENGTH`, `DATA_LENGTH`, `MAX_DATA_LENGTH`, `INDEX_LENGTH`, `DATA_FREE`, `CREATE_TIME`, `UPDATE_TIME`, `CHECK_TIME`, `CHECKSUM`, `PARTITION_COMMENT`, `NODEGROUP`, `TABLESPACE_NAME`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 384, 0, 132833664, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'CLIENT_STATISTICS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 274, 0, 133245104, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'COLLATIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 231, 0, 133639044, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 195, 0, 133532880, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'COLUMNS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-01-18 22:02:32', '2011-01-18 22:02:32', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2565, 0, 134059725, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'INDEX_STATISTICS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1739, 0, 134139504, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'ENGINES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 490, 0, 133672000, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'EVENTS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-01-18 22:02:32', '2011-01-18 22:02:32', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'FILES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2677, 0, 134066837, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'GLOBAL_STATUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 134053360, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'GLOBAL_VARIABLES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 134053360, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4637, 0, 134129862, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'PARTITIONS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-01-18 22:02:32', '2011-01-18 22:02:32', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'PLUGINS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-01-18 22:02:32', '2011-01-18 22:02:32', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'PROCESSLIST', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-01-18 22:02:32', '2011-01-18 22:02:32', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'PROFILING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 308, 0, 132496980, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 4814, 0, 134161366, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'ROUTINES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-01-18 22:02:32', '2011-01-18 22:02:32', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'SCHEMATA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3464, 0, 134060264, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2179, 0, 134154493, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'SESSION_STATUS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 134053360, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'SESSION_VARIABLES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3268, 0, 134053360, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'STATISTICS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2679, 0, 134166999, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'TABLES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 3545, 0, 134103805, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2504, 0, 134001560, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2372, 0, 133989536, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'TABLE_STATISTICS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1169, 0, 133873880, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'THREAD_STATISTICS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 85, 0, 129642085, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'TRIGGERS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-01-18 22:02:32', '2011-01-18 22:02:32', NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'USER_PRIVILEGES', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1986, 0, 134080818, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'USER_STATISTICS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 226, 0, 133040324, 0, 0, NULL, NULL, NULL, NULL, '', '', NULL),
(NULL, 'information_schema', 'VIEWS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-01-18 22:02:32', '2011-01-18 22:02:32', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_appgames', 'game_participants', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 76, 30, 4036, 281474976710655, 4096, 1704, '2010-11-07 19:02:20', '2011-01-18 21:18:18', '2010-11-07 19:02:20', NULL, '', '', NULL),
(NULL, 'segstsh5_appgames', 'game_round_info', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 136, 44, 6008, 281474976710655, 4096, 0, '2010-11-07 19:02:20', '2011-01-18 21:44:35', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_appgames', 'games', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 49, 196, 281474976710655, 2048, 0, '2010-11-07 19:02:20', '2011-01-18 21:43:35', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_appusers', 'pending_pool', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 44, 281474976710655, 2048, 44, '2010-11-07 19:02:20', '2011-01-18 21:18:18', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_appusers', 'user_check_ins', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2011-01-18 21:58:01', '2011-01-18 21:58:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_appusers', 'user_ranks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 40, 680, 281474976710655, 3072, 0, '2010-11-07 19:02:20', '2011-01-18 21:43:35', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_appusers', 'user_statistics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 220, 39, 8752, 281474976710655, 9216, 0, '2011-01-02 18:10:11', '2011-01-18 21:44:35', '2011-01-02 18:10:11', NULL, '', '', NULL),
(NULL, 'segstsh5_appusers', 'users', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 39, 692, 281474976710655, 2048, 20, '2010-11-07 19:02:20', '2011-01-18 21:44:35', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_acl_groups', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 14, 308, 3940649673949183, 4096, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_acl_options', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 117, 20, 2404, 281474976710655, 8192, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 63, 1520, 281474976710655, 4096, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles_data', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 392, 8, 3136, 2251799813685247, 13312, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_acl_users', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14, 14, 3940649673949183, 4096, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_attachments', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_banlist', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 2048, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_bbcodes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_bookmarks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1970324836974591, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_bots', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, 46, 2348, 281474976710655, 3072, 0, '2010-11-07 20:00:01', '2010-11-28 19:36:32', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_config', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 263, 27, 7236, 281474976710655, 23552, 36, '2010-11-07 20:00:01', '2011-01-18 20:39:02', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_confirm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 104, 2516, 281474976710655, 5120, 0, '2010-11-07 20:00:01', '2011-01-18 20:38:44', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_disallow', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_drafts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_extension_groups', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 23, 208, 281474976710655, 2048, 0, '2010-11-07 20:00:01', '2010-11-28 19:36:32', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_extensions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 66, 20, 1320, 281474976710655, 2048, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_forums', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 214, 428, 281474976710655, 4096, 0, '2010-11-07 20:00:01', '2011-01-18 20:39:11', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_forums_access', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 28991922601197567, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_forums_track', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 11, 11, 3096224743817215, 2048, 0, '2010-11-07 20:00:01', '2010-12-10 11:32:31', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_forums_watch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2251799813685247, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_groups', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 36, 256, 281474976710655, 9216, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_icons', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 30, 308, 281474976710655, 3072, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_lang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 56, 56, 281474976710655, 3072, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:34', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_log', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 169, 60, 10204, 281474976710655, 19456, 0, '2010-11-07 20:00:01', '2010-12-13 17:28:45', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_moderator_cache', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-12-13 17:28:45', '2010-12-13 17:28:45', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_modules', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 198, 70, 13864, 281474976710655, 15360, 0, '2010-11-07 20:00:01', '2010-11-28 19:36:32', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_poll_options', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_poll_votes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_posts', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 370, 2592, 281474976710655, 15360, 0, '2010-11-07 20:00:01', '2011-01-18 20:39:11', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_folder', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_rules', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_to', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 5629499534213119, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields_data', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1970324836974591, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields_lang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_profile_lang', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_ranks', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 20, 20, 281474976710655, 2048, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_reports', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_reports_reasons', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 86, 344, 281474976710655, 2048, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_search_results', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_search_wordlist', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 207, 21, 4496, 281474976710655, 14336, 0, '2010-11-07 20:00:01', '2011-01-18 20:39:11', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_search_wordmatch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 174, 8, 1392, 2251799813685247, 12288, 0, '2010-11-07 20:00:01', '2011-01-18 20:39:11', '2010-12-10 10:02:37', NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_sessions', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 183, 11032, 281474976710655, 9216, 36, '2010-11-07 20:00:01', '2011-01-18 20:39:05', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_sessions_keys', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_sitelist', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_smilies', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, 46, 1940, 281474976710655, 3072, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_styles', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 92, 300, 281474976710655, 12288, 208, '2010-11-07 20:00:01', '2010-12-12 18:17:52', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 50, 296, 281474976710655, 9216, 144, '2010-11-07 20:00:01', '2010-12-10 12:05:47', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset_data', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 237, 63, 26852, 281474976710655, 13312, 11800, '2010-11-07 20:00:01', '2010-12-10 12:07:52', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_styles_template', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 56, 344, 281474976710655, 9216, 176, '2010-11-07 20:00:01', '2010-12-10 12:07:35', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_styles_template_data', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 2048, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_styles_theme', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 46532, 350816, 281474976710655, 9216, 211220, '2010-11-07 20:00:01', '2010-12-10 12:07:07', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_topics', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 128, 384, 281474976710655, 8192, 0, '2010-11-07 20:00:01', '2011-01-18 20:39:11', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_topics_posted', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 8, 24, 2251799813685247, 2048, 0, '2010-11-07 20:00:01', '2011-01-18 20:39:11', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_topics_track', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 14, 28, 3940649673949183, 4096, 0, '2010-11-07 20:00:01', '2011-01-18 20:39:11', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_topics_watch', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 8, 16, 2251799813685247, 4096, 0, '2010-11-07 20:00:01', '2011-01-18 20:39:11', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_user_group', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 63, 9, 567, 2533274790395903, 4096, 0, '2010-11-07 20:00:01', '2011-01-18 20:38:44', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_users', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57, 177, 10108, 281474976710655, 12288, 0, '2010-11-07 20:00:01', '2011-01-18 20:39:11', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_warnings', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 4785074604081151, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_words', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 281474976710655, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL),
(NULL, 'segstsh5_forum', 'phpbb_zebra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 2533274790395903, 1024, 0, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, NULL, '', '', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `PLUGINS`
--

CREATE TEMPORARY TABLE `PLUGINS` (
  `PLUGIN_NAME` varchar(64) NOT NULL DEFAULT '',
  `PLUGIN_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_STATUS` varchar(10) NOT NULL DEFAULT '',
  `PLUGIN_TYPE` varchar(80) NOT NULL DEFAULT '',
  `PLUGIN_TYPE_VERSION` varchar(20) NOT NULL DEFAULT '',
  `PLUGIN_LIBRARY` varchar(64) DEFAULT NULL,
  `PLUGIN_LIBRARY_VERSION` varchar(20) DEFAULT NULL,
  `PLUGIN_AUTHOR` varchar(64) DEFAULT NULL,
  `PLUGIN_DESCRIPTION` longtext,
  `PLUGIN_LICENSE` varchar(80) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PLUGINS`
--

INSERT INTO `PLUGINS` (`PLUGIN_NAME`, `PLUGIN_VERSION`, `PLUGIN_STATUS`, `PLUGIN_TYPE`, `PLUGIN_TYPE_VERSION`, `PLUGIN_LIBRARY`, `PLUGIN_LIBRARY_VERSION`, `PLUGIN_AUTHOR`, `PLUGIN_DESCRIPTION`, `PLUGIN_LICENSE`) VALUES
('binlog', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50152.0', NULL, NULL, 'MySQL AB', 'This is a pseudo storage engine to represent the binlog in a transaction', 'GPL'),
('partition', '1.0', 'DISABLED', 'STORAGE ENGINE', '50152.0', NULL, NULL, 'Mikael Ronstrom, MySQL AB', 'Partition Storage Engine Helper', 'GPL'),
('ARCHIVE', '3.0', 'ACTIVE', 'STORAGE ENGINE', '50152.0', NULL, NULL, 'Brian Aker, MySQL AB', 'Archive storage engine', 'GPL'),
('BLACKHOLE', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50152.0', NULL, NULL, 'MySQL AB', '/dev/null storage engine (anything you write to it disappears)', 'GPL'),
('CSV', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50152.0', NULL, NULL, 'Brian Aker, MySQL AB', 'CSV storage engine', 'GPL'),
('FEDERATED', '1.0', 'DISABLED', 'STORAGE ENGINE', '50152.0', NULL, NULL, 'Patrick Galbraith and Brian Aker, MySQL AB', 'Federated MySQL storage engine', 'GPL'),
('MEMORY', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50152.0', NULL, NULL, 'MySQL AB', 'Hash based, stored in memory, useful for temporary tables', 'GPL'),
('MyISAM', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50152.0', NULL, NULL, 'MySQL AB', 'Default engine as of MySQL 3.23 with great performance', 'GPL'),
('MRG_MYISAM', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50152.0', NULL, NULL, 'MySQL AB', 'Collection of identical MyISAM tables', 'GPL'),
('InnoDB', '1.0', 'ACTIVE', 'STORAGE ENGINE', '50152.0', 'ha_innodb_plugin.so', '1.0', 'Innobase Oy', 'Supports transactions, row-level locking, and foreign keys', 'GPL');

-- --------------------------------------------------------

--
-- Table structure for table `PROCESSLIST`
--

CREATE TEMPORARY TABLE `PROCESSLIST` (
  `ID` bigint(4) NOT NULL DEFAULT '0',
  `USER` varchar(16) NOT NULL DEFAULT '',
  `HOST` varchar(64) NOT NULL DEFAULT '',
  `DB` varchar(64) DEFAULT NULL,
  `COMMAND` varchar(16) NOT NULL DEFAULT '',
  `TIME` int(7) NOT NULL DEFAULT '0',
  `STATE` varchar(64) DEFAULT NULL,
  `INFO` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROCESSLIST`
--

INSERT INTO `PROCESSLIST` (`ID`, `USER`, `HOST`, `DB`, `COMMAND`, `TIME`, `STATE`, `INFO`) VALUES
(5711061, 'segstsh5', 'localhost', NULL, 'Query', 0, 'executing', 'SELECT * FROM `information_schema`.`PROCESSLIST`');

-- --------------------------------------------------------

--
-- Table structure for table `PROFILING`
--

CREATE TEMPORARY TABLE `PROFILING` (
  `QUERY_ID` int(20) NOT NULL DEFAULT '0',
  `SEQ` int(20) NOT NULL DEFAULT '0',
  `STATE` varchar(30) NOT NULL DEFAULT '',
  `DURATION` decimal(9,6) NOT NULL DEFAULT '0.000000',
  `CPU_USER` decimal(9,6) DEFAULT NULL,
  `CPU_SYSTEM` decimal(9,6) DEFAULT NULL,
  `CONTEXT_VOLUNTARY` int(20) DEFAULT NULL,
  `CONTEXT_INVOLUNTARY` int(20) DEFAULT NULL,
  `BLOCK_OPS_IN` int(20) DEFAULT NULL,
  `BLOCK_OPS_OUT` int(20) DEFAULT NULL,
  `MESSAGES_SENT` int(20) DEFAULT NULL,
  `MESSAGES_RECEIVED` int(20) DEFAULT NULL,
  `PAGE_FAULTS_MAJOR` int(20) DEFAULT NULL,
  `PAGE_FAULTS_MINOR` int(20) DEFAULT NULL,
  `SWAPS` int(20) DEFAULT NULL,
  `SOURCE_FUNCTION` varchar(30) DEFAULT NULL,
  `SOURCE_FILE` varchar(20) DEFAULT NULL,
  `SOURCE_LINE` int(20) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `PROFILING`
--


-- --------------------------------------------------------

--
-- Table structure for table `REFERENTIAL_CONSTRAINTS`
--

CREATE TEMPORARY TABLE `REFERENTIAL_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) DEFAULT NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_CATALOG` varchar(512) DEFAULT NULL,
  `UNIQUE_CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `UNIQUE_CONSTRAINT_NAME` varchar(64) DEFAULT NULL,
  `MATCH_OPTION` varchar(64) NOT NULL DEFAULT '',
  `UPDATE_RULE` varchar(64) NOT NULL DEFAULT '',
  `DELETE_RULE` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `REFERENCED_TABLE_NAME` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `REFERENTIAL_CONSTRAINTS`
--


-- --------------------------------------------------------

--
-- Table structure for table `ROUTINES`
--

CREATE TEMPORARY TABLE `ROUTINES` (
  `SPECIFIC_NAME` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_CATALOG` varchar(512) DEFAULT NULL,
  `ROUTINE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_NAME` varchar(64) NOT NULL DEFAULT '',
  `ROUTINE_TYPE` varchar(9) NOT NULL DEFAULT '',
  `DTD_IDENTIFIER` varchar(64) DEFAULT NULL,
  `ROUTINE_BODY` varchar(8) NOT NULL DEFAULT '',
  `ROUTINE_DEFINITION` longtext,
  `EXTERNAL_NAME` varchar(64) DEFAULT NULL,
  `EXTERNAL_LANGUAGE` varchar(64) DEFAULT NULL,
  `PARAMETER_STYLE` varchar(8) NOT NULL DEFAULT '',
  `IS_DETERMINISTIC` varchar(3) NOT NULL DEFAULT '',
  `SQL_DATA_ACCESS` varchar(64) NOT NULL DEFAULT '',
  `SQL_PATH` varchar(64) DEFAULT NULL,
  `SECURITY_TYPE` varchar(7) NOT NULL DEFAULT '',
  `CREATED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `LAST_ALTERED` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `ROUTINE_COMMENT` varchar(64) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ROUTINES`
--


-- --------------------------------------------------------

--
-- Table structure for table `SCHEMATA`
--

CREATE TEMPORARY TABLE `SCHEMATA` (
  `CATALOG_NAME` varchar(512) DEFAULT NULL,
  `SCHEMA_NAME` varchar(64) NOT NULL DEFAULT '',
  `DEFAULT_CHARACTER_SET_NAME` varchar(32) NOT NULL DEFAULT '',
  `DEFAULT_COLLATION_NAME` varchar(32) NOT NULL DEFAULT '',
  `SQL_PATH` varchar(512) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMATA`
--

INSERT INTO `SCHEMATA` (`CATALOG_NAME`, `SCHEMA_NAME`, `DEFAULT_CHARACTER_SET_NAME`, `DEFAULT_COLLATION_NAME`, `SQL_PATH`) VALUES
(NULL, 'information_schema', 'utf8', 'utf8_general_ci', NULL),
(NULL, 'segstsh5_appgames', 'latin1', 'latin1_swedish_ci', NULL),
(NULL, 'segstsh5_appusers', 'latin1', 'latin1_swedish_ci', NULL),
(NULL, 'segstsh5_forum', 'utf8', 'utf8_unicode_ci', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SCHEMA_PRIVILEGES`
--

CREATE TEMPORARY TABLE `SCHEMA_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SCHEMA_PRIVILEGES`
--

INSERT INTO `SCHEMA_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `TABLE_SCHEMA`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'SELECT', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'INSERT', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'UPDATE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'DELETE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'CREATE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'DROP', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'REFERENCES', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'INDEX', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'ALTER', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'CREATE TEMPORARY TABLES', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'LOCK TABLES', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'EXECUTE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'CREATE VIEW', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'SHOW VIEW', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'CREATE ROUTINE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'ALTER ROUTINE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'EVENT', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5', 'TRIGGER', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'SELECT', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'INSERT', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'UPDATE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'DELETE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'CREATE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'DROP', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'REFERENCES', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'INDEX', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'ALTER', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'CREATE TEMPORARY TABLES', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'LOCK TABLES', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'EXECUTE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'CREATE VIEW', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'SHOW VIEW', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'CREATE ROUTINE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'ALTER ROUTINE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'EVENT', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appgames', 'TRIGGER', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'SELECT', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'INSERT', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'UPDATE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'DELETE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'CREATE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'DROP', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'REFERENCES', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'INDEX', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'ALTER', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'CREATE TEMPORARY TABLES', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'LOCK TABLES', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'EXECUTE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'CREATE VIEW', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'SHOW VIEW', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'CREATE ROUTINE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'ALTER ROUTINE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'EVENT', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_forum', 'TRIGGER', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'SELECT', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'INSERT', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'UPDATE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'DELETE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'CREATE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'DROP', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'REFERENCES', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'INDEX', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'ALTER', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'CREATE TEMPORARY TABLES', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'LOCK TABLES', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'EXECUTE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'CREATE VIEW', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'SHOW VIEW', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'CREATE ROUTINE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'ALTER ROUTINE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'EVENT', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_appusers', 'TRIGGER', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'SELECT', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'INSERT', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'UPDATE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'DELETE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'CREATE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'DROP', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'REFERENCES', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'INDEX', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'ALTER', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'CREATE TEMPORARY TABLES', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'LOCK TABLES', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'EXECUTE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'CREATE VIEW', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'SHOW VIEW', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'CREATE ROUTINE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'ALTER ROUTINE', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'EVENT', 'NO'),
('''segstsh5''@''localhost''', NULL, 'segstsh5\\_%', 'TRIGGER', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `SESSION_STATUS`
--

CREATE TEMPORARY TABLE `SESSION_STATUS` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SESSION_STATUS`
--

INSERT INTO `SESSION_STATUS` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('ABORTED_CLIENTS', '14537'),
('ABORTED_CONNECTS', '175547'),
('BINLOG_CACHE_DISK_USE', '0'),
('BINLOG_CACHE_USE', '0'),
('BYTES_RECEIVED', '8000'),
('BYTES_SENT', '265778'),
('COM_ADMIN_COMMANDS', '0'),
('COM_ASSIGN_TO_KEYCACHE', '0'),
('COM_ALTER_DB', '0'),
('COM_ALTER_DB_UPGRADE', '0'),
('COM_ALTER_EVENT', '0'),
('COM_ALTER_FUNCTION', '0'),
('COM_ALTER_PROCEDURE', '0'),
('COM_ALTER_SERVER', '0'),
('COM_ALTER_TABLE', '0'),
('COM_ALTER_TABLESPACE', '0'),
('COM_ANALYZE', '0'),
('COM_BACKUP_TABLE', '0'),
('COM_BEGIN', '0'),
('COM_BINLOG', '0'),
('COM_CALL_PROCEDURE', '0'),
('COM_CHANGE_DB', '0'),
('COM_CHANGE_MASTER', '0'),
('COM_CHECK', '0'),
('COM_CHECKSUM', '0'),
('COM_COMMIT', '0'),
('COM_CREATE_DB', '0'),
('COM_CREATE_EVENT', '0'),
('COM_CREATE_FUNCTION', '0'),
('COM_CREATE_INDEX', '0'),
('COM_CREATE_PROCEDURE', '0'),
('COM_CREATE_SERVER', '0'),
('COM_CREATE_TABLE', '0'),
('COM_CREATE_TRIGGER', '0'),
('COM_CREATE_UDF', '0'),
('COM_CREATE_USER', '0'),
('COM_CREATE_VIEW', '0'),
('COM_DEALLOC_SQL', '0'),
('COM_DELETE', '0'),
('COM_DELETE_MULTI', '0'),
('COM_DO', '0'),
('COM_DROP_DB', '0'),
('COM_DROP_EVENT', '0'),
('COM_DROP_FUNCTION', '0'),
('COM_DROP_INDEX', '0'),
('COM_DROP_PROCEDURE', '0'),
('COM_DROP_SERVER', '0'),
('COM_DROP_TABLE', '0'),
('COM_DROP_TRIGGER', '0'),
('COM_DROP_USER', '0'),
('COM_DROP_VIEW', '0'),
('COM_EMPTY_QUERY', '0'),
('COM_EXECUTE_SQL', '0'),
('COM_FLUSH', '0'),
('COM_GRANT', '0'),
('COM_HA_CLOSE', '0'),
('COM_HA_OPEN', '0'),
('COM_HA_READ', '0'),
('COM_HELP', '0'),
('COM_INSERT', '0'),
('COM_INSERT_SELECT', '0'),
('COM_INSTALL_PLUGIN', '0'),
('COM_KILL', '0'),
('COM_LOAD', '0'),
('COM_LOAD_MASTER_DATA', '0'),
('COM_LOAD_MASTER_TABLE', '0'),
('COM_LOCK_TABLES', '0'),
('COM_OPTIMIZE', '0'),
('COM_PRELOAD_KEYS', '0'),
('COM_PREPARE_SQL', '0'),
('COM_PURGE', '0'),
('COM_PURGE_BEFORE_DATE', '0'),
('COM_RELEASE_SAVEPOINT', '0'),
('COM_RENAME_TABLE', '0'),
('COM_RENAME_USER', '0'),
('COM_REPAIR', '0'),
('COM_REPLACE', '0'),
('COM_REPLACE_SELECT', '0'),
('COM_RESET', '0'),
('COM_RESTORE_TABLE', '0'),
('COM_REVOKE', '0'),
('COM_REVOKE_ALL', '0'),
('COM_ROLLBACK', '0'),
('COM_ROLLBACK_TO_SAVEPOINT', '0'),
('COM_SAVEPOINT', '0'),
('COM_SELECT', '22'),
('COM_SET_OPTION', '25'),
('COM_SHOW_AUTHORS', '0'),
('COM_SHOW_BINLOG_EVENTS', '0'),
('COM_SHOW_BINLOGS', '0'),
('COM_SHOW_CHARSETS', '0'),
('COM_SHOW_CLIENT_STATISTICS', '0'),
('COM_SHOW_COLLATIONS', '0'),
('COM_SHOW_COLUMN_TYPES', '0'),
('COM_SHOW_CONTRIBUTORS', '0'),
('COM_SHOW_CREATE_DB', '0'),
('COM_SHOW_CREATE_EVENT', '0'),
('COM_SHOW_CREATE_FUNC', '0'),
('COM_SHOW_CREATE_PROC', '0'),
('COM_SHOW_CREATE_TABLE', '22'),
('COM_SHOW_CREATE_TRIGGER', '0'),
('COM_SHOW_DATABASES', '1'),
('COM_SHOW_ENGINE_LOGS', '0'),
('COM_SHOW_ENGINE_MUTEX', '0'),
('COM_SHOW_ENGINE_STATUS', '0'),
('COM_SHOW_EVENTS', '0'),
('COM_SHOW_ERRORS', '0'),
('COM_SHOW_FIELDS', '0'),
('COM_SHOW_FUNCTION_STATUS', '0'),
('COM_SHOW_GRANTS', '0'),
('COM_SHOW_INDEX_STATISTICS', '0'),
('COM_SHOW_KEYS', '0'),
('COM_SHOW_MASTER_STATUS', '0'),
('COM_SHOW_NEW_MASTER', '0'),
('COM_SHOW_OPEN_TABLES', '0'),
('COM_SHOW_PLUGINS', '0'),
('COM_SHOW_PRIVILEGES', '0'),
('COM_SHOW_PROCEDURE_STATUS', '0'),
('COM_SHOW_PROCESSLIST', '0'),
('COM_SHOW_PROFILE', '0'),
('COM_SHOW_PROFILES', '0'),
('COM_SHOW_SLAVE_HOSTS', '0'),
('COM_SHOW_SLAVE_STATUS', '0'),
('COM_SHOW_STATUS', '0'),
('COM_SHOW_STORAGE_ENGINES', '0'),
('COM_SHOW_TABLE_STATISTICS', '0'),
('COM_SHOW_TABLE_STATUS', '44'),
('COM_SHOW_TABLES', '1'),
('COM_SHOW_THREAD_STATISTICS', '0'),
('COM_SHOW_TRIGGERS', '21'),
('COM_SHOW_USER_STATISTICS', '0'),
('COM_SHOW_VARIABLES', '1'),
('COM_SHOW_WARNINGS', '0'),
('COM_SLAVE_START', '0'),
('COM_SLAVE_STOP', '0'),
('COM_STMT_CLOSE', '0'),
('COM_STMT_EXECUTE', '0'),
('COM_STMT_FETCH', '0'),
('COM_STMT_PREPARE', '0'),
('COM_STMT_REPREPARE', '0'),
('COM_STMT_RESET', '0'),
('COM_STMT_SEND_LONG_DATA', '0'),
('COM_TRUNCATE', '0'),
('COM_UNINSTALL_PLUGIN', '0'),
('COM_UNLOCK_TABLES', '0'),
('COM_UPDATE', '0'),
('COM_UPDATE_MULTI', '0'),
('COM_XA_COMMIT', '0'),
('COM_XA_END', '0'),
('COM_XA_PREPARE', '0'),
('COM_XA_RECOVER', '0'),
('COM_XA_ROLLBACK', '0'),
('COM_XA_START', '0'),
('COMPRESSION', 'OFF'),
('CONNECTIONS', '5711128'),
('CREATED_TMP_DISK_TABLES', '83'),
('CREATED_TMP_FILES', '66233'),
('CREATED_TMP_TABLES', '309'),
('DELAYED_ERRORS', '0'),
('DELAYED_INSERT_THREADS', '1'),
('DELAYED_WRITES', '1212'),
('FLUSH_COMMANDS', '1'),
('HANDLER_COMMIT', '0'),
('HANDLER_DELETE', '0'),
('HANDLER_DISCOVER', '0'),
('HANDLER_PREPARE', '0'),
('HANDLER_READ_FIRST', '1'),
('HANDLER_READ_KEY', '0'),
('HANDLER_READ_NEXT', '0'),
('HANDLER_READ_PREV', '0'),
('HANDLER_READ_RND', '0'),
('HANDLER_READ_RND_NEXT', '2362'),
('HANDLER_ROLLBACK', '0'),
('HANDLER_SAVEPOINT', '0'),
('HANDLER_SAVEPOINT_ROLLBACK', '0'),
('HANDLER_UPDATE', '0'),
('HANDLER_WRITE', '2449'),
('INNODB_BUFFER_POOL_PAGES_DATA', '8116'),
('INNODB_BUFFER_POOL_PAGES_DIRTY', '5'),
('INNODB_BUFFER_POOL_PAGES_FLUSHED', '427467'),
('INNODB_BUFFER_POOL_PAGES_FREE', '3'),
('INNODB_BUFFER_POOL_PAGES_MISC', '72'),
('INNODB_BUFFER_POOL_PAGES_TOTAL', '8191'),
('INNODB_BUFFER_POOL_READ_AHEAD', '22191'),
('INNODB_BUFFER_POOL_READ_AHEAD_EVICTED', '5585'),
('INNODB_BUFFER_POOL_READ_REQUESTS', '211712667'),
('INNODB_BUFFER_POOL_READS', '52121'),
('INNODB_BUFFER_POOL_WAIT_FREE', '0'),
('INNODB_BUFFER_POOL_WRITE_REQUESTS', '53392171'),
('INNODB_DATA_FSYNCS', '394011'),
('INNODB_DATA_PENDING_FSYNCS', '0'),
('INNODB_DATA_PENDING_READS', '0'),
('INNODB_DATA_PENDING_WRITES', '0'),
('INNODB_DATA_READ', '1223593984'),
('INNODB_DATA_READS', '57402'),
('INNODB_DATA_WRITES', '552899'),
('INNODB_DATA_WRITTEN', '3055942144'),
('INNODB_DBLWR_PAGES_WRITTEN', '427467'),
('INNODB_DBLWR_WRITES', '40016'),
('INNODB_HAVE_ATOMIC_BUILTINS', 'ON'),
('INNODB_LOG_WAITS', '0'),
('INNODB_LOG_WRITE_REQUESTS', '3719872'),
('INNODB_LOG_WRITES', '192032'),
('INNODB_OS_LOG_FSYNCS', '213527'),
('INNODB_OS_LOG_PENDING_FSYNCS', '0'),
('INNODB_OS_LOG_PENDING_WRITES', '0'),
('INNODB_OS_LOG_WRITTEN', '1922418176'),
('INNODB_PAGE_SIZE', '16384'),
('INNODB_PAGES_CREATED', '81602'),
('INNODB_PAGES_READ', '74548'),
('INNODB_PAGES_WRITTEN', '427467'),
('INNODB_ROW_LOCK_CURRENT_WAITS', '0'),
('INNODB_ROW_LOCK_TIME', '10'),
('INNODB_ROW_LOCK_TIME_AVG', '1'),
('INNODB_ROW_LOCK_TIME_MAX', '3'),
('INNODB_ROW_LOCK_WAITS', '6'),
('INNODB_ROWS_DELETED', '495234'),
('INNODB_ROWS_INSERTED', '8553083'),
('INNODB_ROWS_READ', '56677603'),
('INNODB_ROWS_UPDATED', '288633'),
('KEY_BLOCKS_NOT_FLUSHED', '0'),
('KEY_BLOCKS_UNUSED', '0'),
('KEY_BLOCKS_USED', '57990'),
('KEY_READ_REQUESTS', '24512334648'),
('KEY_READS', '35344448'),
('KEY_WRITE_REQUESTS', '214206709'),
('KEY_WRITES', '3666430'),
('LAST_QUERY_COST', '10.499000'),
('MAX_USED_CONNECTIONS', '54'),
('NOT_FLUSHED_DELAYED_ROWS', '0'),
('OPEN_FILES', '15759'),
('OPEN_STREAMS', '0'),
('OPEN_TABLE_DEFINITIONS', '7674'),
('OPEN_TABLES', '8196'),
('OPENED_FILES', '10727084'),
('OPENED_TABLE_DEFINITIONS', '126'),
('OPENED_TABLES', '134'),
('PREPARED_STMT_COUNT', '0'),
('QCACHE_FREE_BLOCKS', '4736'),
('QCACHE_FREE_MEMORY', '17507976'),
('QCACHE_HITS', '60954009'),
('QCACHE_INSERTS', '24049901'),
('QCACHE_LOWMEM_PRUNES', '12746668'),
('QCACHE_NOT_CACHED', '3850059'),
('QCACHE_QUERIES_IN_CACHE', '18771'),
('QCACHE_TOTAL_BLOCKS', '55253'),
('QUERIES', '125549524'),
('QUESTIONS', '137'),
('RPL_STATUS', 'NULL'),
('SELECT_FULL_JOIN', '0'),
('SELECT_FULL_RANGE_JOIN', '0'),
('SELECT_RANGE', '0'),
('SELECT_RANGE_CHECK', '0'),
('SELECT_SCAN', '90'),
('SLAVE_OPEN_TEMP_TABLES', '0'),
('SLAVE_RETRIED_TRANSACTIONS', '0'),
('SLAVE_RUNNING', 'OFF'),
('SLOW_LAUNCH_THREADS', '0'),
('SLOW_QUERIES', '0'),
('SORT_MERGE_PASSES', '0'),
('SORT_RANGE', '0'),
('SORT_ROWS', '0'),
('SORT_SCAN', '0'),
('SSL_ACCEPT_RENEGOTIATES', '0'),
('SSL_ACCEPTS', '0'),
('SSL_CALLBACK_CACHE_HITS', '0'),
('SSL_CIPHER', ''),
('SSL_CIPHER_LIST', ''),
('SSL_CLIENT_CONNECTS', '0'),
('SSL_CONNECT_RENEGOTIATES', '0'),
('SSL_CTX_VERIFY_DEPTH', '0'),
('SSL_CTX_VERIFY_MODE', '0'),
('SSL_DEFAULT_TIMEOUT', '0'),
('SSL_FINISHED_ACCEPTS', '0'),
('SSL_FINISHED_CONNECTS', '0'),
('SSL_SESSION_CACHE_HITS', '0'),
('SSL_SESSION_CACHE_MISSES', '0'),
('SSL_SESSION_CACHE_MODE', 'NONE'),
('SSL_SESSION_CACHE_OVERFLOWS', '0'),
('SSL_SESSION_CACHE_SIZE', '0'),
('SSL_SESSION_CACHE_TIMEOUTS', '0'),
('SSL_SESSIONS_REUSED', '0'),
('SSL_USED_SESSION_CACHE_ENTRIES', '0'),
('SSL_VERIFY_DEPTH', '0'),
('SSL_VERIFY_MODE', '0'),
('SSL_VERSION', ''),
('TABLE_LOCKS_IMMEDIATE', '43394765'),
('TABLE_LOCKS_WAITED', '31097'),
('TC_LOG_MAX_PAGES_USED', '0'),
('TC_LOG_PAGE_SIZE', '0'),
('TC_LOG_PAGE_WAITS', '0'),
('THREADS_CACHED', '46'),
('THREADS_CONNECTED', '9'),
('THREADS_CREATED', '54'),
('THREADS_RUNNING', '2'),
('UPTIME', '446945'),
('UPTIME_SINCE_FLUSH_STATUS', '446945');

-- --------------------------------------------------------

--
-- Table structure for table `SESSION_VARIABLES`
--

CREATE TEMPORARY TABLE `SESSION_VARIABLES` (
  `VARIABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VARIABLE_VALUE` varchar(1024) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SESSION_VARIABLES`
--

INSERT INTO `SESSION_VARIABLES` (`VARIABLE_NAME`, `VARIABLE_VALUE`) VALUES
('MAX_PREPARED_STMT_COUNT', '16382'),
('CHARACTER_SETS_DIR', '/usr/share/mysql/charsets/'),
('HAVE_CRYPT', 'YES'),
('CONNECT_TIMEOUT', '20'),
('INNODB_VERSION', '1.0.13'),
('AUTOMATIC_SP_PRIVILEGES', 'ON'),
('MAX_BINLOG_SIZE', '1073741824'),
('BINLOG_CACHE_SIZE', '32768'),
('INNODB_LOCKS_UNSAFE_FOR_BINLOG', 'OFF'),
('BACK_LOG', '50'),
('FT_MIN_WORD_LEN', '3'),
('TABLE_OPEN_CACHE', '8196'),
('DELAYED_INSERT_TIMEOUT', '40'),
('MAX_HEAP_TABLE_SIZE', '134217728'),
('LOG_BIN_TRUST_ROUTINE_CREATORS', 'OFF'),
('CHARACTER_SET_CONNECTION', 'utf8'),
('SSL_CIPHER', ''),
('CHARACTER_SET_RESULTS', 'utf8'),
('BASEDIR', '/'),
('LOWER_CASE_FILE_SYSTEM', 'OFF'),
('UPDATABLE_VIEWS_WITH_LIMIT', 'YES'),
('TABLE_DEFINITION_CACHE', '256'),
('SLOW_LAUNCH_TIME', '2'),
('QUERY_ALLOC_BLOCK_SIZE', '8192'),
('IDENTITY', '0'),
('COMPLETION_TYPE', '0'),
('RELAY_LOG_INDEX', ''),
('CHARACTER_SET_SERVER', 'utf8'),
('SQL_QUOTE_SHOW_CREATE', 'ON'),
('EVENT_SCHEDULER', 'OFF'),
('SQL_LOG_UPDATE', 'ON'),
('COLLATION_DATABASE', 'utf8_unicode_ci'),
('WAIT_TIMEOUT', '3600'),
('FT_MAX_WORD_LEN', '84'),
('LOCKED_IN_MEMORY', 'OFF'),
('CONCURRENT_INSERT', '1'),
('MYISAM_RECOVER_OPTIONS', 'OFF'),
('INIT_FILE', ''),
('REPORT_HOST', ''),
('INIT_SLAVE', ''),
('SSL_KEY', ''),
('FLUSH', 'OFF'),
('INNODB_OLD_BLOCKS_PCT', '37'),
('DELAYED_INSERT_LIMIT', '100'),
('SLAVE_SKIP_ERRORS', 'OFF'),
('FT_QUERY_EXPANSION_LIMIT', '20'),
('INSERT_ID', '0'),
('SQL_LOW_PRIORITY_UPDATES', 'OFF'),
('RELAY_LOG_PURGE', 'ON'),
('PSEUDO_THREAD_ID', '5711061'),
('SKIP_SHOW_DATABASE', 'OFF'),
('NET_RETRY_COUNT', '10'),
('GROUP_CONCAT_MAX_LEN', '1024'),
('JOIN_BUFFER_SIZE', '1048576'),
('INNODB_LOG_BUFFER_SIZE', '8388608'),
('MAX_ERROR_COUNT', '64'),
('VERSION_COMPILE_MACHINE', 'i686'),
('READ_BUFFER_SIZE', '2097152'),
('INNODB_MAX_PURGE_LAG', '0'),
('DELAYED_QUEUE_SIZE', '1000'),
('TRANSACTION_PREALLOC_SIZE', '4096'),
('INTERACTIVE_TIMEOUT', '10'),
('VERSION_COMPILE_OS', 'pc-linux-gnu'),
('INNODB_CONCURRENCY_TICKETS', '500'),
('SQL_NOTES', 'ON'),
('LARGE_PAGES', 'OFF'),
('LOW_PRIORITY_UPDATES', 'OFF'),
('AUTO_INCREMENT_OFFSET', '1'),
('REPORT_PASSWORD', ''),
('MAX_CONNECT_ERRORS', '20'),
('MAX_INSERT_DELAYED_THREADS', '20'),
('LOG', 'OFF'),
('HAVE_COMPRESS', 'YES'),
('MAX_CONNECTIONS', '150'),
('TRANSACTION_ALLOC_BLOCK_SIZE', '8192'),
('MYISAM_STATS_METHOD', 'nulls_unequal'),
('THREAD_CACHE_SIZE', '128'),
('SQL_LOG_OFF', 'OFF'),
('INNODB_DOUBLEWRITE', 'ON'),
('LANGUAGE', '/usr/share/mysql/english/'),
('SQL_BIG_SELECTS', 'ON'),
('WARNING_COUNT', '0'),
('DEFAULT_WEEK_FORMAT', '0'),
('LOWER_CASE_TABLE_NAMES', '0'),
('LOG_OUTPUT', 'FILE'),
('LOG_WARNINGS', '1'),
('INNODB_IO_CAPACITY', '200'),
('KEY_CACHE_AGE_THRESHOLD', '300'),
('PROTOCOL_VERSION', '10'),
('MAX_SORT_LENGTH', '1024'),
('HAVE_SYMLINK', 'YES'),
('COLLATION_SERVER', 'utf8_unicode_ci'),
('TIME_ZONE', 'SYSTEM'),
('FT_BOOLEAN_SYNTAX', '+ -><()~*:""&|'),
('INNODB_TABLE_LOCKS', 'ON'),
('LOG_QUERIES_NOT_USING_INDEXES', 'OFF'),
('INNODB_AUTOEXTEND_INCREMENT', '8'),
('NET_BUFFER_LENGTH', '16384'),
('MYISAM_DATA_POINTER_SIZE', '6'),
('FT_STOPWORD_FILE', '(built-in)'),
('INNODB_THREAD_SLEEP_DELAY', '10000'),
('DELAY_KEY_WRITE', 'ON'),
('SQL_AUTO_IS_NULL', 'ON'),
('SQL_SLAVE_SKIP_COUNTER', ''),
('SLAVE_TRANSACTION_RETRIES', '10'),
('LONG_QUERY_TIME', '10.000000'),
('LOG_ERROR', '/var/lib/mysql/gator1251.hostgator.com.err'),
('BULK_INSERT_BUFFER_SIZE', '8388608'),
('GENERAL_LOG', 'OFF'),
('NET_WRITE_TIMEOUT', '60'),
('INNODB_REPLICATION_DELAY', '0'),
('MYISAM_USE_MMAP', 'OFF'),
('QUERY_CACHE_MIN_RES_UNIT', '4096'),
('KEY_CACHE_BLOCK_SIZE', '1024'),
('INNODB_STATS_ON_METADATA', 'ON'),
('MAX_BINLOG_CACHE_SIZE', '4294963200'),
('INNODB_ROLLBACK_ON_TIMEOUT', 'OFF'),
('QUERY_CACHE_TYPE', 'ON'),
('PROFILING_HISTORY_SIZE', '15'),
('CHARACTER_SET_FILESYSTEM', 'binary'),
('INNODB_CHANGE_BUFFERING', 'inserts'),
('TX_ISOLATION', 'REPEATABLE-READ'),
('READ_RND_BUFFER_SIZE', '2097152'),
('THREAD_HANDLING', 'one-thread-per-connection'),
('INNODB_FILE_FORMAT', 'Barracuda'),
('BINLOG_DIRECT_NON_TRANSACTIONAL_UPDATES', 'OFF'),
('BIG_TABLES', 'OFF'),
('LARGE_PAGE_SIZE', '0'),
('SQL_SELECT_LIMIT', '18446744073709551615'),
('HAVE_INNODB', 'YES'),
('DATE_FORMAT', '%Y-%m-%d'),
('OLD_PASSWORDS', 'ON'),
('READ_ONLY', 'OFF'),
('QUERY_PREALLOC_SIZE', '8192'),
('RAND_SEED1', ''),
('SLOW_QUERY_LOG_FILE', '/var/lib/mysql/gator1251-slow.log'),
('INNODB_DATA_FILE_PATH', 'ibdata1:10M:autoextend'),
('MAX_SEEKS_FOR_KEY', '4294967295'),
('QUERY_CACHE_LIMIT', '4194304'),
('SYSTEM_TIME_ZONE', 'CST'),
('PROFILING', 'OFF'),
('SSL_CERT', ''),
('INNODB_STRICT_MODE', 'OFF'),
('MYISAM_MAX_SORT_FILE_SIZE', '2146435072'),
('KEY_CACHE_DIVISION_LIMIT', '100'),
('THREAD_STACK', '196608'),
('GENERAL_LOG_FILE', '/var/lib/mysql/gator1251.log'),
('OPEN_FILES_LIMIT', '33628'),
('MYISAM_SORT_BUFFER_SIZE', '33554432'),
('SKIP_NAME_RESOLVE', 'OFF'),
('AUTO_INCREMENT_INCREMENT', '1'),
('LAST_INSERT_ID', '0'),
('TMPDIR', '/tmp'),
('PID_FILE', '/var/lib/mysql/gator1251.hostgator.com.pid'),
('EXPIRE_LOGS_DAYS', '0'),
('MAX_TMP_TABLES', '32'),
('HAVE_PARTITIONING', 'DISABLED'),
('MIN_EXAMINED_ROW_LIMIT', '0'),
('FOREIGN_KEY_CHECKS', 'ON'),
('LARGE_FILES_SUPPORT', 'ON'),
('RELAY_LOG_INFO_FILE', 'relay-log.info'),
('SSL_CAPATH', ''),
('INNODB_AUTOINC_LOCK_MODE', '1'),
('VERSION_COMMENT', 'MySQL Community Server (GPL)'),
('INNODB_COMMIT_CONCURRENCY', '0'),
('INNODB_MAX_DIRTY_PAGES_PCT', '75'),
('INNODB_MIRRORED_LOG_GROUPS', '1'),
('OPTIMIZER_PRUNE_LEVEL', '1'),
('UNIQUE_CHECKS', 'ON'),
('QUERY_CACHE_WLOCK_INVALIDATE', 'OFF'),
('VERSION', '5.1.52'),
('MAX_WRITE_LOCK_COUNT', '4294967295'),
('INNODB_SUPPORT_XA', 'ON'),
('TIMED_MUTEXES', 'OFF'),
('INNODB_SYNC_SPIN_LOOPS', '30'),
('THREAD_STATISTICS', 'OFF'),
('COLLATION_CONNECTION', 'utf8_general_ci'),
('LC_TIME_NAMES', 'en_US'),
('INNODB_ADAPTIVE_FLUSHING', 'ON'),
('SERVER_ID', '1'),
('INNODB_ADAPTIVE_HASH_INDEX', 'ON'),
('SKIP_NETWORKING', 'OFF'),
('SLAVE_LOAD_TMPDIR', '/tmp'),
('CHARACTER_SET_SYSTEM', 'utf8'),
('DIV_PRECISION_INCREMENT', '4'),
('INIT_CONNECT', ''),
('DATADIR', '/var/lib/mysql/'),
('OPTIMIZER_SEARCH_DEPTH', '62'),
('INNODB_DATA_HOME_DIR', ''),
('AUTOCOMMIT', 'ON'),
('INNODB_READ_IO_THREADS', '4'),
('USERSTAT_RUNNING', 'ON'),
('INNODB_WRITE_IO_THREADS', '4'),
('SQL_BIG_TABLES', 'OFF'),
('TIME_FORMAT', '%H:%i:%s'),
('TMP_TABLE_SIZE', '134217728'),
('INNODB_FORCE_RECOVERY', '0'),
('TABLE_LOCK_WAIT_TIMEOUT', '50'),
('INNODB_LOG_FILES_IN_GROUP', '2'),
('MAX_LENGTH_FOR_SORT_DATA', '1024'),
('ERROR_COUNT', '0'),
('HOSTNAME', 'gator1251.hostgator.com'),
('HAVE_DYNAMIC_LOADING', 'YES'),
('SQL_BUFFER_RESULT', 'OFF'),
('SYNC_BINLOG', '0'),
('LOG_BIN', 'OFF'),
('RELAY_LOG_SPACE_LIMIT', '0'),
('SQL_MODE', ''),
('INNODB_OPEN_FILES', '300'),
('MAX_USER_CONNECTIONS', '25'),
('INNODB_FILE_FORMAT_CHECK', 'Barracuda'),
('SLAVE_EXEC_MODE', 'STRICT'),
('INNODB_READ_AHEAD_THRESHOLD', '56'),
('SQL_MAX_JOIN_SIZE', '18446744073709551615'),
('HAVE_COMMUNITY_FEATURES', 'YES'),
('NEW', 'OFF'),
('KEY_BUFFER_SIZE', '67108864'),
('SECURE_FILE_PRIV', ''),
('HAVE_NDBCLUSTER', 'NO'),
('KEEP_FILES_ON_CREATE', 'OFF'),
('REPORT_PORT', '3306'),
('REPORT_USER', ''),
('INNODB_LOG_GROUP_HOME_DIR', './'),
('ENGINE_CONDITION_PUSHDOWN', 'ON'),
('INNODB_FAST_SHUTDOWN', '0'),
('SQL_LOG_BIN', 'ON'),
('SSL_CA', ''),
('SECURE_AUTH', 'OFF'),
('INNODB_THREAD_CONCURRENCY', '0'),
('HAVE_CSV', 'YES'),
('SLAVE_NET_TIMEOUT', '3600'),
('SQL_SAFE_UPDATES', 'OFF'),
('INNODB_STATS_SAMPLE_PAGES', '8'),
('PRELOAD_BUFFER_SIZE', '32768'),
('LOCAL_INFILE', 'ON'),
('SLAVE_COMPRESSED_PROTOCOL', 'OFF'),
('HAVE_RTREE_KEYS', 'YES'),
('HAVE_GEOMETRY', 'YES'),
('BINLOG_FORMAT', 'STATEMENT'),
('MAX_SP_RECURSION_DEPTH', '0'),
('OLD_ALTER_TABLE', 'OFF'),
('RELAY_LOG', ''),
('MYISAM_MMAP_SIZE', '4294967295'),
('PLUGIN_DIR', '/usr/lib/mysql/plugin'),
('LOG_SLOW_QUERIES', 'OFF'),
('IGNORE_BUILTIN_INNODB', 'ON'),
('TIMESTAMP', '1295409753'),
('NET_READ_TIMEOUT', '30'),
('MAX_DELAYED_THREADS', '20'),
('SYNC_FRM', 'ON'),
('DATETIME_FORMAT', '%Y-%m-%d %H:%i:%s'),
('INNODB_BUFFER_POOL_SIZE', '134217728'),
('INNODB_FLUSH_LOG_AT_TRX_COMMIT', '1'),
('MULTI_RANGE_COUNT', '256'),
('MAX_RELAY_LOG_SIZE', '0'),
('OLD', 'OFF'),
('LICENSE', 'GPL'),
('SLOW_QUERY_LOG', 'OFF'),
('MAX_ALLOWED_PACKET', '16777216'),
('INNODB_FLUSH_METHOD', ''),
('PORT', '3306'),
('RANGE_ALLOC_BLOCK_SIZE', '4096'),
('INNODB_CHECKSUMS', 'ON'),
('STORAGE_ENGINE', 'MyISAM'),
('LOG_BIN_TRUST_FUNCTION_CREATORS', 'OFF'),
('HAVE_SSL', 'DISABLED'),
('HAVE_QUERY_CACHE', 'YES'),
('INNODB_LOG_FILE_SIZE', '5242880'),
('HAVE_OPENSSL', 'DISABLED'),
('CHARACTER_SET_DATABASE', 'utf8'),
('SKIP_EXTERNAL_LOCKING', 'ON'),
('LOG_SLAVE_UPDATES', 'OFF'),
('MAX_JOIN_SIZE', '18446744073709551615'),
('SORT_BUFFER_SIZE', '2097152'),
('INNODB_SPIN_WAIT_DELAY', '6'),
('INNODB_FILE_PER_TABLE', 'ON'),
('TABLE_TYPE', 'MyISAM'),
('QUERY_CACHE_SIZE', '134217728'),
('SOCKET', '/var/lib/mysql/mysql.sock'),
('CHARACTER_SET_CLIENT', 'utf8'),
('INNODB_LOCK_WAIT_TIMEOUT', '50'),
('RAND_SEED2', ''),
('INNODB_OLD_BLOCKS_TIME', '0'),
('SQL_WARNINGS', 'OFF'),
('RPL_RECOVERY_RANK', '0'),
('MYISAM_REPAIR_THREADS', '1'),
('INNODB_ADDITIONAL_MEM_POOL_SIZE', '8388608'),
('INNODB_USE_SYS_MALLOC', 'ON'),
('OPTIMIZER_SWITCH', 'index_merge=on,index_merge_union=on,index_merge_sort_union=on,index_merge_intersection=on'),
('FLUSH_TIME', '0');

-- --------------------------------------------------------

--
-- Table structure for table `STATISTICS`
--

CREATE TEMPORARY TABLE `STATISTICS` (
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `NON_UNIQUE` bigint(1) NOT NULL DEFAULT '0',
  `INDEX_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `INDEX_NAME` varchar(64) NOT NULL DEFAULT '',
  `SEQ_IN_INDEX` bigint(2) NOT NULL DEFAULT '0',
  `COLUMN_NAME` varchar(64) NOT NULL DEFAULT '',
  `COLLATION` varchar(1) DEFAULT NULL,
  `CARDINALITY` bigint(21) DEFAULT NULL,
  `SUB_PART` bigint(3) DEFAULT NULL,
  `PACKED` varchar(10) DEFAULT NULL,
  `NULLABLE` varchar(3) NOT NULL DEFAULT '',
  `INDEX_TYPE` varchar(16) NOT NULL DEFAULT '',
  `COMMENT` varchar(16) DEFAULT NULL
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `STATISTICS`
--

INSERT INTO `STATISTICS` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `NON_UNIQUE`, `INDEX_SCHEMA`, `INDEX_NAME`, `SEQ_IN_INDEX`, `COLUMN_NAME`, `COLLATION`, `CARDINALITY`, `SUB_PART`, `PACKED`, `NULLABLE`, `INDEX_TYPE`, `COMMENT`) VALUES
(NULL, 'segstsh5_appgames', 'game_participants', 1, 'segstsh5_appgames', 'game_id', 1, 'game_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_appgames', 'game_round_info', 1, 'segstsh5_appgames', 'round_id', 1, 'round_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_appgames', 'games', 0, 'segstsh5_appgames', 'game_id', 1, 'game_id', 'A', 4, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_appusers', 'pending_pool', 1, 'segstsh5_appusers', 'uID_of_user', 1, 'uID_of_user', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_appusers', 'user_check_ins', 0, 'segstsh5_appusers', 'PRIMARY', 1, 'rowIndex', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_appusers', 'user_ranks', 1, 'segstsh5_appusers', 'uID', 1, 'uID', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_appusers', 'user_ranks', 1, 'segstsh5_appusers', 'game_type', 1, 'game_type', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_appusers', 'user_statistics', 1, 'segstsh5_appusers', 'game_id_it_happened_in', 1, 'game_id_it_happened_in', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_appusers', 'user_statistics', 1, 'segstsh5_appusers', 'game_round_it_happened_in', 1, 'game_round_it_happened_in', 'A', 73, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_appusers', 'users', 0, 'segstsh5_appusers', 'uID', 1, 'uID', 'A', 17, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_groups', 1, 'segstsh5_forum', 'group_id', 1, 'group_id', 'A', 7, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_groups', 1, 'segstsh5_forum', 'auth_opt_id', 1, 'auth_option_id', 'A', 22, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_groups', 1, 'segstsh5_forum', 'auth_role_id', 1, 'auth_role_id', 'A', 7, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_options', 0, 'segstsh5_forum', 'PRIMARY', 1, 'auth_option_id', 'A', 117, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_options', 0, 'segstsh5_forum', 'auth_option', 1, 'auth_option', 'A', 117, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles', 0, 'segstsh5_forum', 'PRIMARY', 1, 'role_id', 'A', 24, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles', 1, 'segstsh5_forum', 'role_type', 1, 'role_type', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles', 1, 'segstsh5_forum', 'role_order', 1, 'role_order', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles_data', 0, 'segstsh5_forum', 'PRIMARY', 1, 'role_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles_data', 0, 'segstsh5_forum', 'PRIMARY', 2, 'auth_option_id', 'A', 392, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles_data', 1, 'segstsh5_forum', 'ath_op_id', 1, 'auth_option_id', 'A', 392, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_users', 1, 'segstsh5_forum', 'user_id', 1, 'user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_users', 1, 'segstsh5_forum', 'auth_option_id', 1, 'auth_option_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_users', 1, 'segstsh5_forum', 'auth_role_id', 1, 'auth_role_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 0, 'segstsh5_forum', 'PRIMARY', 1, 'attach_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 1, 'segstsh5_forum', 'filetime', 1, 'filetime', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 1, 'segstsh5_forum', 'post_msg_id', 1, 'post_msg_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 1, 'segstsh5_forum', 'topic_id', 1, 'topic_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 1, 'segstsh5_forum', 'poster_id', 1, 'poster_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 1, 'segstsh5_forum', 'is_orphan', 1, 'is_orphan', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 0, 'segstsh5_forum', 'PRIMARY', 1, 'ban_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 1, 'segstsh5_forum', 'ban_end', 1, 'ban_end', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 1, 'segstsh5_forum', 'ban_user', 1, 'ban_userid', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 1, 'segstsh5_forum', 'ban_user', 2, 'ban_exclude', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 1, 'segstsh5_forum', 'ban_email', 1, 'ban_email', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 1, 'segstsh5_forum', 'ban_email', 2, 'ban_exclude', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 1, 'segstsh5_forum', 'ban_ip', 1, 'ban_ip', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 1, 'segstsh5_forum', 'ban_ip', 2, 'ban_exclude', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_bbcodes', 0, 'segstsh5_forum', 'PRIMARY', 1, 'bbcode_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_bbcodes', 1, 'segstsh5_forum', 'display_on_post', 1, 'display_on_posting', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_bookmarks', 0, 'segstsh5_forum', 'PRIMARY', 1, 'topic_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_bookmarks', 0, 'segstsh5_forum', 'PRIMARY', 2, 'user_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_bots', 0, 'segstsh5_forum', 'PRIMARY', 1, 'bot_id', 'A', 51, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_bots', 1, 'segstsh5_forum', 'bot_active', 1, 'bot_active', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_config', 0, 'segstsh5_forum', 'PRIMARY', 1, 'config_name', 'A', 263, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_config', 1, 'segstsh5_forum', 'is_dynamic', 1, 'is_dynamic', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_confirm', 0, 'segstsh5_forum', 'PRIMARY', 1, 'session_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_confirm', 0, 'segstsh5_forum', 'PRIMARY', 2, 'confirm_id', 'A', 24, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_confirm', 1, 'segstsh5_forum', 'confirm_type', 1, 'confirm_type', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_disallow', 0, 'segstsh5_forum', 'PRIMARY', 1, 'disallow_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_drafts', 0, 'segstsh5_forum', 'PRIMARY', 1, 'draft_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_drafts', 1, 'segstsh5_forum', 'save_time', 1, 'save_time', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_extension_groups', 0, 'segstsh5_forum', 'PRIMARY', 1, 'group_id', 'A', 9, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_extensions', 0, 'segstsh5_forum', 'PRIMARY', 1, 'extension_id', 'A', 66, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 0, 'segstsh5_forum', 'PRIMARY', 1, 'forum_id', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 1, 'segstsh5_forum', 'left_right_id', 1, 'left_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 1, 'segstsh5_forum', 'left_right_id', 2, 'right_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 1, 'segstsh5_forum', 'forum_lastpost_id', 1, 'forum_last_post_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_access', 0, 'segstsh5_forum', 'PRIMARY', 1, 'forum_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_access', 0, 'segstsh5_forum', 'PRIMARY', 2, 'user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_access', 0, 'segstsh5_forum', 'PRIMARY', 3, 'session_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_track', 0, 'segstsh5_forum', 'PRIMARY', 1, 'user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_track', 0, 'segstsh5_forum', 'PRIMARY', 2, 'forum_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_watch', 1, 'segstsh5_forum', 'forum_id', 1, 'forum_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_watch', 1, 'segstsh5_forum', 'user_id', 1, 'user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_watch', 1, 'segstsh5_forum', 'notify_stat', 1, 'notify_status', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 0, 'segstsh5_forum', 'PRIMARY', 1, 'group_id', 'A', 7, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 1, 'segstsh5_forum', 'group_legend_name', 1, 'group_legend', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 1, 'segstsh5_forum', 'group_legend_name', 2, 'group_name', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_icons', 0, 'segstsh5_forum', 'PRIMARY', 1, 'icons_id', 'A', 10, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_icons', 1, 'segstsh5_forum', 'display_on_posting', 1, 'display_on_posting', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_lang', 0, 'segstsh5_forum', 'PRIMARY', 1, 'lang_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_lang', 1, 'segstsh5_forum', 'lang_iso', 1, 'lang_iso', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_log', 0, 'segstsh5_forum', 'PRIMARY', 1, 'log_id', 'A', 169, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_log', 1, 'segstsh5_forum', 'log_type', 1, 'log_type', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_log', 1, 'segstsh5_forum', 'forum_id', 1, 'forum_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_log', 1, 'segstsh5_forum', 'topic_id', 1, 'topic_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_log', 1, 'segstsh5_forum', 'reportee_id', 1, 'reportee_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_log', 1, 'segstsh5_forum', 'user_id', 1, 'user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_moderator_cache', 1, 'segstsh5_forum', 'disp_idx', 1, 'display_on_index', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_moderator_cache', 1, 'segstsh5_forum', 'forum_id', 1, 'forum_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 0, 'segstsh5_forum', 'PRIMARY', 1, 'module_id', 'A', 198, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 1, 'segstsh5_forum', 'left_right_id', 1, 'left_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 1, 'segstsh5_forum', 'left_right_id', 2, 'right_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 1, 'segstsh5_forum', 'module_enabled', 1, 'module_enabled', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 1, 'segstsh5_forum', 'class_left_id', 1, 'module_class', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 1, 'segstsh5_forum', 'class_left_id', 2, 'left_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_poll_options', 1, 'segstsh5_forum', 'poll_opt_id', 1, 'poll_option_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_poll_options', 1, 'segstsh5_forum', 'topic_id', 1, 'topic_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_poll_votes', 1, 'segstsh5_forum', 'topic_id', 1, 'topic_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_poll_votes', 1, 'segstsh5_forum', 'vote_user_id', 1, 'vote_user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_poll_votes', 1, 'segstsh5_forum', 'vote_user_ip', 1, 'vote_user_ip', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 0, 'segstsh5_forum', 'PRIMARY', 1, 'post_id', 'A', 7, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 1, 'segstsh5_forum', 'forum_id', 1, 'forum_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 1, 'segstsh5_forum', 'topic_id', 1, 'topic_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 1, 'segstsh5_forum', 'poster_ip', 1, 'poster_ip', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 1, 'segstsh5_forum', 'poster_id', 1, 'poster_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 1, 'segstsh5_forum', 'post_approved', 1, 'post_approved', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 1, 'segstsh5_forum', 'post_username', 1, 'post_username', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 1, 'segstsh5_forum', 'tid_post_time', 1, 'topic_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 1, 'segstsh5_forum', 'tid_post_time', 2, 'post_time', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 0, 'segstsh5_forum', 'PRIMARY', 1, 'msg_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 1, 'segstsh5_forum', 'author_ip', 1, 'author_ip', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 1, 'segstsh5_forum', 'message_time', 1, 'message_time', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 1, 'segstsh5_forum', 'author_id', 1, 'author_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 1, 'segstsh5_forum', 'root_level', 1, 'root_level', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_folder', 0, 'segstsh5_forum', 'PRIMARY', 1, 'folder_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_folder', 1, 'segstsh5_forum', 'user_id', 1, 'user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_rules', 0, 'segstsh5_forum', 'PRIMARY', 1, 'rule_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_rules', 1, 'segstsh5_forum', 'user_id', 1, 'user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_to', 1, 'segstsh5_forum', 'msg_id', 1, 'msg_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_to', 1, 'segstsh5_forum', 'author_id', 1, 'author_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_to', 1, 'segstsh5_forum', 'usr_flder_id', 1, 'user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_to', 1, 'segstsh5_forum', 'usr_flder_id', 2, 'folder_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 0, 'segstsh5_forum', 'PRIMARY', 1, 'field_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 1, 'segstsh5_forum', 'fld_type', 1, 'field_type', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 1, 'segstsh5_forum', 'fld_ordr', 1, 'field_order', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields_data', 0, 'segstsh5_forum', 'PRIMARY', 1, 'user_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields_lang', 0, 'segstsh5_forum', 'PRIMARY', 1, 'field_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields_lang', 0, 'segstsh5_forum', 'PRIMARY', 2, 'lang_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields_lang', 0, 'segstsh5_forum', 'PRIMARY', 3, 'option_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_lang', 0, 'segstsh5_forum', 'PRIMARY', 1, 'field_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_lang', 0, 'segstsh5_forum', 'PRIMARY', 2, 'lang_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_ranks', 0, 'segstsh5_forum', 'PRIMARY', 1, 'rank_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports', 0, 'segstsh5_forum', 'PRIMARY', 1, 'report_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports', 1, 'segstsh5_forum', 'post_id', 1, 'post_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports', 1, 'segstsh5_forum', 'pm_id', 1, 'pm_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports_reasons', 0, 'segstsh5_forum', 'PRIMARY', 1, 'reason_id', 'A', 4, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_results', 0, 'segstsh5_forum', 'PRIMARY', 1, 'search_key', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_wordlist', 0, 'segstsh5_forum', 'PRIMARY', 1, 'word_id', 'A', 207, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_wordlist', 0, 'segstsh5_forum', 'wrd_txt', 1, 'word_text', 'A', 207, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_wordlist', 1, 'segstsh5_forum', 'wrd_cnt', 1, 'word_count', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_wordmatch', 0, 'segstsh5_forum', 'unq_mtch', 1, 'word_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_wordmatch', 0, 'segstsh5_forum', 'unq_mtch', 2, 'post_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_wordmatch', 0, 'segstsh5_forum', 'unq_mtch', 3, 'title_match', 'A', 174, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_wordmatch', 1, 'segstsh5_forum', 'word_id', 1, 'word_id', 'A', 174, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_wordmatch', 1, 'segstsh5_forum', 'post_id', 1, 'post_id', 'A', 174, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 0, 'segstsh5_forum', 'PRIMARY', 1, 'session_id', 'A', 60, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 1, 'segstsh5_forum', 'session_time', 1, 'session_time', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 1, 'segstsh5_forum', 'session_user_id', 1, 'session_user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 1, 'segstsh5_forum', 'session_fid', 1, 'session_forum_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions_keys', 0, 'segstsh5_forum', 'PRIMARY', 1, 'key_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions_keys', 0, 'segstsh5_forum', 'PRIMARY', 2, 'user_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions_keys', 1, 'segstsh5_forum', 'last_login', 1, 'last_login', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_sitelist', 0, 'segstsh5_forum', 'PRIMARY', 1, 'site_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_smilies', 0, 'segstsh5_forum', 'PRIMARY', 1, 'smiley_id', 'A', 42, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_smilies', 1, 'segstsh5_forum', 'display_on_post', 1, 'display_on_posting', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles', 0, 'segstsh5_forum', 'PRIMARY', 1, 'style_id', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles', 0, 'segstsh5_forum', 'style_name', 1, 'style_name', 'A', 1, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles', 1, 'segstsh5_forum', 'template_id', 1, 'template_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles', 1, 'segstsh5_forum', 'theme_id', 1, 'theme_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles', 1, 'segstsh5_forum', 'imageset_id', 1, 'imageset_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset', 0, 'segstsh5_forum', 'PRIMARY', 1, 'imageset_id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset', 0, 'segstsh5_forum', 'imgset_nm', 1, 'imageset_name', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset_data', 0, 'segstsh5_forum', 'PRIMARY', 1, 'image_id', 'A', 237, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset_data', 1, 'segstsh5_forum', 'i_d', 1, 'imageset_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template', 0, 'segstsh5_forum', 'PRIMARY', 1, 'template_id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template', 0, 'segstsh5_forum', 'tmplte_nm', 1, 'template_name', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template_data', 1, 'segstsh5_forum', 'tid', 1, 'template_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template_data', 1, 'segstsh5_forum', 'tfn', 1, 'template_filename', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_theme', 0, 'segstsh5_forum', 'PRIMARY', 1, 'theme_id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_theme', 0, 'segstsh5_forum', 'theme_name', 1, 'theme_name', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 0, 'segstsh5_forum', 'PRIMARY', 1, 'topic_id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 1, 'segstsh5_forum', 'forum_id', 1, 'forum_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 1, 'segstsh5_forum', 'forum_id_type', 1, 'forum_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 1, 'segstsh5_forum', 'forum_id_type', 2, 'topic_type', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 1, 'segstsh5_forum', 'last_post_time', 1, 'topic_last_post_time', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 1, 'segstsh5_forum', 'topic_approved', 1, 'topic_approved', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 1, 'segstsh5_forum', 'forum_appr_last', 1, 'forum_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 1, 'segstsh5_forum', 'forum_appr_last', 2, 'topic_approved', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 1, 'segstsh5_forum', 'forum_appr_last', 3, 'topic_last_post_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 1, 'segstsh5_forum', 'fid_time_moved', 1, 'forum_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 1, 'segstsh5_forum', 'fid_time_moved', 2, 'topic_last_post_time', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 1, 'segstsh5_forum', 'fid_time_moved', 3, 'topic_moved_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_posted', 0, 'segstsh5_forum', 'PRIMARY', 1, 'user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_posted', 0, 'segstsh5_forum', 'PRIMARY', 2, 'topic_id', 'A', 3, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_track', 0, 'segstsh5_forum', 'PRIMARY', 1, 'user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_track', 0, 'segstsh5_forum', 'PRIMARY', 2, 'topic_id', 'A', 2, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_track', 1, 'segstsh5_forum', 'topic_id', 1, 'topic_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_track', 1, 'segstsh5_forum', 'forum_id', 1, 'forum_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_watch', 1, 'segstsh5_forum', 'topic_id', 1, 'topic_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_watch', 1, 'segstsh5_forum', 'user_id', 1, 'user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_watch', 1, 'segstsh5_forum', 'notify_stat', 1, 'notify_status', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_user_group', 1, 'segstsh5_forum', 'group_id', 1, 'group_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_user_group', 1, 'segstsh5_forum', 'user_id', 1, 'user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_user_group', 1, 'segstsh5_forum', 'group_leader', 1, 'group_leader', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 0, 'segstsh5_forum', 'PRIMARY', 1, 'user_id', 'A', 57, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 0, 'segstsh5_forum', 'username_clean', 1, 'username_clean', 'A', 57, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 1, 'segstsh5_forum', 'user_birthday', 1, 'user_birthday', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 1, 'segstsh5_forum', 'user_email_hash', 1, 'user_email_hash', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 1, 'segstsh5_forum', 'user_type', 1, 'user_type', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_warnings', 0, 'segstsh5_forum', 'PRIMARY', 1, 'warning_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_words', 0, 'segstsh5_forum', 'PRIMARY', 1, 'word_id', 'A', 0, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_zebra', 0, 'segstsh5_forum', 'PRIMARY', 1, 'user_id', 'A', NULL, NULL, NULL, '', 'BTREE', ''),
(NULL, 'segstsh5_forum', 'phpbb_zebra', 0, 'segstsh5_forum', 'PRIMARY', 2, 'zebra_id', 'A', 0, NULL, NULL, '', 'BTREE', '');

-- --------------------------------------------------------

--
-- Table structure for table `TABLES`
--

CREATE TEMPORARY TABLE `TABLES` (
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `ENGINE` varchar(64) DEFAULT NULL,
  `VERSION` bigint(21) unsigned DEFAULT NULL,
  `ROW_FORMAT` varchar(10) DEFAULT NULL,
  `TABLE_ROWS` bigint(21) unsigned DEFAULT NULL,
  `AVG_ROW_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `MAX_DATA_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `INDEX_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `DATA_FREE` bigint(21) unsigned DEFAULT NULL,
  `AUTO_INCREMENT` bigint(21) unsigned DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL,
  `CHECK_TIME` datetime DEFAULT NULL,
  `TABLE_COLLATION` varchar(32) DEFAULT NULL,
  `CHECKSUM` bigint(21) unsigned DEFAULT NULL,
  `CREATE_OPTIONS` varchar(255) DEFAULT NULL,
  `TABLE_COMMENT` varchar(80) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLES`
--

INSERT INTO `TABLES` (`TABLE_CATALOG`, `TABLE_SCHEMA`, `TABLE_NAME`, `TABLE_TYPE`, `ENGINE`, `VERSION`, `ROW_FORMAT`, `TABLE_ROWS`, `AVG_ROW_LENGTH`, `DATA_LENGTH`, `MAX_DATA_LENGTH`, `INDEX_LENGTH`, `DATA_FREE`, `AUTO_INCREMENT`, `CREATE_TIME`, `UPDATE_TIME`, `CHECK_TIME`, `TABLE_COLLATION`, `CHECKSUM`, `CREATE_OPTIONS`, `TABLE_COMMENT`) VALUES
(NULL, 'information_schema', 'CHARACTER_SETS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 384, 0, 132833664, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=349525', ''),
(NULL, 'information_schema', 'CLIENT_STATISTICS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 274, 0, 133245104, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=489845', ''),
(NULL, 'information_schema', 'COLLATIONS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 231, 0, 133639044, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=581029', ''),
(NULL, 'information_schema', 'COLLATION_CHARACTER_SET_APPLICABILITY', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 195, 0, 133532880, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=688296', ''),
(NULL, 'information_schema', 'COLUMNS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2011-01-18 22:02:33', '2011-01-18 22:02:33', NULL, 'utf8_general_ci', NULL, 'max_rows=36482', ''),
(NULL, 'information_schema', 'COLUMN_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2565, 0, 134059725, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=52326', ''),
(NULL, 'information_schema', 'INDEX_STATISTICS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 1739, 0, 134139504, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=77180', ''),
(NULL, 'information_schema', 'ENGINES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 490, 0, 133672000, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=273913', ''),
(NULL, 'information_schema', 'EVENTS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2011-01-18 22:02:33', '2011-01-18 22:02:33', NULL, 'utf8_general_ci', NULL, 'max_rows=4951', ''),
(NULL, 'information_schema', 'FILES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2677, 0, 134066837, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=50137', ''),
(NULL, 'information_schema', 'GLOBAL_STATUS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 134053360, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=41070', ''),
(NULL, 'information_schema', 'GLOBAL_VARIABLES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 134053360, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=41070', ''),
(NULL, 'information_schema', 'KEY_COLUMN_USAGE', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 4637, 0, 134129862, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=28944', ''),
(NULL, 'information_schema', 'PARTITIONS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2011-01-18 22:02:33', '2011-01-18 22:02:33', NULL, 'utf8_general_ci', NULL, 'max_rows=44903', ''),
(NULL, 'information_schema', 'PLUGINS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2011-01-18 22:02:33', '2011-01-18 22:02:33', NULL, 'utf8_general_ci', NULL, 'max_rows=104206', ''),
(NULL, 'information_schema', 'PROCESSLIST', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2011-01-18 22:02:33', '2011-01-18 22:02:33', NULL, 'utf8_general_ci', NULL, 'max_rows=191193', ''),
(NULL, 'information_schema', 'PROFILING', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 308, 0, 132496980, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=435771', ''),
(NULL, 'information_schema', 'REFERENTIAL_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 4814, 0, 134161366, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=27880', ''),
(NULL, 'information_schema', 'ROUTINES', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2011-01-18 22:02:33', '2011-01-18 22:02:33', NULL, 'utf8_general_ci', NULL, 'max_rows=4706', ''),
(NULL, 'information_schema', 'SCHEMATA', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3464, 0, 134060264, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=38746', ''),
(NULL, 'information_schema', 'SCHEMA_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2179, 0, 134154493, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=61596', ''),
(NULL, 'information_schema', 'SESSION_STATUS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 134053360, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=41070', ''),
(NULL, 'information_schema', 'SESSION_VARIABLES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3268, 0, 134053360, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=41070', ''),
(NULL, 'information_schema', 'STATISTICS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2679, 0, 134166999, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=50099', ''),
(NULL, 'information_schema', 'TABLES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 3545, 0, 134103805, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=37861', ''),
(NULL, 'information_schema', 'TABLE_CONSTRAINTS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2504, 0, 134001560, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=53601', ''),
(NULL, 'information_schema', 'TABLE_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 2372, 0, 133989536, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=56584', ''),
(NULL, 'information_schema', 'TABLE_STATISTICS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 1169, 0, 133873880, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=114814', ''),
(NULL, 'information_schema', 'THREAD_STATISTICS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 85, 0, 129642085, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=1579032', ''),
(NULL, 'information_schema', 'TRIGGERS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2011-01-18 22:02:33', '2011-01-18 22:02:33', NULL, 'utf8_general_ci', NULL, 'max_rows=4555', ''),
(NULL, 'information_schema', 'USER_PRIVILEGES', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 1986, 0, 134080818, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=67581', ''),
(NULL, 'information_schema', 'USER_STATISTICS', 'SYSTEM VIEW', 'MEMORY', 10, 'Fixed', NULL, 226, 0, 133040324, 0, 0, NULL, NULL, NULL, NULL, 'utf8_general_ci', NULL, 'max_rows=593883', ''),
(NULL, 'information_schema', 'VIEWS', 'SYSTEM VIEW', 'MyISAM', 10, 'Dynamic', NULL, 0, 0, 281474976710655, 1024, 0, NULL, '2011-01-18 22:02:33', '2011-01-18 22:02:33', NULL, 'utf8_general_ci', NULL, 'max_rows=55461', ''),
(NULL, 'segstsh5_appgames', 'game_participants', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 76, 30, 4036, 281474976710655, 4096, 1704, NULL, '2010-11-07 19:02:20', '2011-01-18 21:18:18', '2010-11-07 19:02:20', 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'segstsh5_appgames', 'game_round_info', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 136, 44, 6008, 281474976710655, 4096, 0, 139, '2010-11-07 19:02:20', '2011-01-18 21:44:35', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'segstsh5_appgames', 'games', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 4, 49, 196, 281474976710655, 2048, 0, 6, '2010-11-07 19:02:20', '2011-01-18 21:43:35', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'segstsh5_appusers', 'pending_pool', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 44, 281474976710655, 2048, 44, NULL, '2010-11-07 19:02:20', '2011-01-18 21:18:18', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'segstsh5_appusers', 'user_check_ins', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2011-01-18 21:58:01', '2011-01-18 21:58:01', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'segstsh5_appusers', 'user_ranks', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 17, 40, 680, 281474976710655, 3072, 0, NULL, '2010-11-07 19:02:20', '2011-01-18 21:43:35', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'segstsh5_appusers', 'user_statistics', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 220, 39, 8752, 281474976710655, 9216, 0, NULL, '2011-01-02 18:10:11', '2011-01-18 21:44:35', '2011-01-02 18:10:11', 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'segstsh5_appusers', 'users', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 17, 39, 692, 281474976710655, 2048, 20, 31, '2010-11-07 19:02:20', '2011-01-18 21:44:35', NULL, 'latin1_swedish_ci', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_groups', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 22, 14, 308, 3940649673949183, 4096, 0, NULL, '2010-11-07 20:00:01', '2010-11-07 20:00:01', '2010-11-07 20:00:01', 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_options', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 117, 20, 2404, 281474976710655, 8192, 0, 118, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 24, 63, 1520, 281474976710655, 4096, 0, 25, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_roles_data', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 392, 8, 3136, 2251799813685247, 13312, 0, NULL, '2010-11-07 20:00:01', '2010-11-07 20:00:01', '2010-11-07 20:00:01', 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_acl_users', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 1, 14, 14, 3940649673949183, 4096, 0, NULL, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_attachments', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_banlist', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 2048, 0, 1, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_bbcodes', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_bookmarks', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 1970324836974591, 1024, 0, NULL, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_bots', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 51, 46, 2348, 281474976710655, 3072, 0, 52, '2010-11-07 20:00:01', '2010-11-28 19:36:32', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_config', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 263, 27, 7236, 281474976710655, 23552, 36, NULL, '2010-11-07 20:00:01', '2011-01-18 20:39:02', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_confirm', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 24, 104, 2516, 281474976710655, 5120, 0, NULL, '2010-11-07 20:00:01', '2011-01-18 20:38:44', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_disallow', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_drafts', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_extension_groups', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 9, 23, 208, 281474976710655, 2048, 0, 10, '2010-11-07 20:00:01', '2010-11-28 19:36:32', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_extensions', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 66, 20, 1320, 281474976710655, 2048, 0, 67, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 2, 214, 428, 281474976710655, 4096, 0, 3, '2010-11-07 20:00:01', '2011-01-18 20:39:11', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_access', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 28991922601197567, 1024, 0, NULL, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_track', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 1, 11, 11, 3096224743817215, 2048, 0, NULL, '2010-11-07 20:00:01', '2010-12-10 11:32:31', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_forums_watch', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 2251799813685247, 1024, 0, NULL, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_groups', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 7, 36, 256, 281474976710655, 9216, 0, 8, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_icons', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 10, 30, 308, 281474976710655, 3072, 0, 11, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_lang', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 56, 56, 281474976710655, 3072, 0, 2, '2010-11-07 20:00:01', '2010-11-07 20:00:34', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_log', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 169, 60, 10204, 281474976710655, 19456, 0, 170, '2010-11-07 20:00:01', '2010-12-13 17:28:45', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_moderator_cache', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2010-12-13 17:28:45', '2010-12-13 17:28:45', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_modules', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 198, 70, 13864, 281474976710655, 15360, 0, 199, '2010-11-07 20:00:01', '2010-11-28 19:36:32', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_poll_options', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_poll_votes', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_posts', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 7, 370, 2592, 281474976710655, 15360, 0, 14, '2010-11-07 20:00:01', '2011-01-18 20:39:11', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_folder', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_rules', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_privmsgs_to', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 5629499534213119, 1024, 0, NULL, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields_data', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 1970324836974591, 1024, 0, NULL, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_fields_lang', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_profile_lang', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_ranks', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 20, 20, 281474976710655, 2048, 0, 2, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_reports_reasons', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 4, 86, 344, 281474976710655, 2048, 0, 5, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_results', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_wordlist', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 207, 21, 4496, 281474976710655, 14336, 0, 208, '2010-11-07 20:00:01', '2011-01-18 20:39:11', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_search_wordmatch', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 174, 8, 1392, 2251799813685247, 12288, 0, NULL, '2010-11-07 20:00:01', '2011-01-18 20:39:11', '2010-12-10 10:02:37', 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 60, 183, 11032, 281474976710655, 9216, 36, NULL, '2010-11-07 20:00:01', '2011-01-18 20:39:05', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_sessions_keys', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, NULL, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_sitelist', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_smilies', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 42, 46, 1940, 281474976710655, 3072, 0, 43, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 1, 92, 300, 281474976710655, 12288, 208, 12, '2010-11-07 20:00:01', '2010-12-12 18:17:52', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 50, 296, 281474976710655, 9216, 144, 7, '2010-11-07 20:00:01', '2010-12-10 12:05:47', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_imageset_data', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 237, 63, 26852, 281474976710655, 13312, 11800, 552, '2010-11-07 20:00:01', '2010-12-10 12:07:52', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 56, 344, 281474976710655, 9216, 176, 7, '2010-11-07 20:00:01', '2010-12-10 12:07:35', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_template_data', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 2048, 0, NULL, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_styles_theme', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 46532, 350816, 281474976710655, 9216, 211220, 7, '2010-11-07 20:00:01', '2010-12-10 12:07:07', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 3, 128, 384, 281474976710655, 8192, 0, 8, '2010-11-07 20:00:01', '2011-01-18 20:39:11', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_posted', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 3, 8, 24, 2251799813685247, 2048, 0, NULL, '2010-11-07 20:00:01', '2011-01-18 20:39:11', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_track', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 2, 14, 28, 3940649673949183, 4096, 0, NULL, '2010-11-07 20:00:01', '2011-01-18 20:39:11', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_topics_watch', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 2, 8, 16, 2251799813685247, 4096, 0, NULL, '2010-11-07 20:00:01', '2011-01-18 20:39:11', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_user_group', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 63, 9, 567, 2533274790395903, 4096, 0, NULL, '2010-11-07 20:00:01', '2011-01-18 20:38:44', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_users', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 57, 177, 10108, 281474976710655, 12288, 0, 58, '2010-11-07 20:00:01', '2011-01-18 20:39:11', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_warnings', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 4785074604081151, 1024, 0, 1, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_words', 'BASE TABLE', 'MyISAM', 10, 'Dynamic', 0, 0, 0, 281474976710655, 1024, 0, 1, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', ''),
(NULL, 'segstsh5_forum', 'phpbb_zebra', 'BASE TABLE', 'MyISAM', 10, 'Fixed', 0, 0, 0, 2533274790395903, 1024, 0, NULL, '2010-11-07 20:00:01', '2010-11-07 20:00:01', NULL, 'utf8_bin', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_CONSTRAINTS`
--

CREATE TEMPORARY TABLE `TABLE_CONSTRAINTS` (
  `CONSTRAINT_CATALOG` varchar(512) DEFAULT NULL,
  `CONSTRAINT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_NAME` varchar(64) NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `CONSTRAINT_TYPE` varchar(64) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE_CONSTRAINTS`
--

INSERT INTO `TABLE_CONSTRAINTS` (`CONSTRAINT_CATALOG`, `CONSTRAINT_SCHEMA`, `CONSTRAINT_NAME`, `TABLE_SCHEMA`, `TABLE_NAME`, `CONSTRAINT_TYPE`) VALUES
(NULL, 'segstsh5_appgames', 'game_id', 'segstsh5_appgames', 'games', 'UNIQUE'),
(NULL, 'segstsh5_appusers', 'PRIMARY', 'segstsh5_appusers', 'user_check_ins', 'PRIMARY KEY'),
(NULL, 'segstsh5_appusers', 'uID', 'segstsh5_appusers', 'users', 'UNIQUE'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_acl_options', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'auth_option', 'segstsh5_forum', 'phpbb_acl_options', 'UNIQUE'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_acl_roles', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_acl_roles_data', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_attachments', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_banlist', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_bbcodes', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_bookmarks', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_bots', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_config', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_confirm', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_disallow', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_drafts', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_extension_groups', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_extensions', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_forums', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_forums_access', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_forums_track', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_groups', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_icons', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_lang', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_log', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_modules', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_posts', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_privmsgs', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_privmsgs_folder', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_privmsgs_rules', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_profile_fields', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_profile_fields_data', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_profile_fields_lang', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_profile_lang', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_ranks', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_reports', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_reports_reasons', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_search_results', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_search_wordlist', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'wrd_txt', 'segstsh5_forum', 'phpbb_search_wordlist', 'UNIQUE'),
(NULL, 'segstsh5_forum', 'unq_mtch', 'segstsh5_forum', 'phpbb_search_wordmatch', 'UNIQUE'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_sessions', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_sessions_keys', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_sitelist', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_smilies', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_styles', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'style_name', 'segstsh5_forum', 'phpbb_styles', 'UNIQUE'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_styles_imageset', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'imgset_nm', 'segstsh5_forum', 'phpbb_styles_imageset', 'UNIQUE'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_styles_imageset_data', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_styles_template', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'tmplte_nm', 'segstsh5_forum', 'phpbb_styles_template', 'UNIQUE'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_styles_theme', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'theme_name', 'segstsh5_forum', 'phpbb_styles_theme', 'UNIQUE'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_topics', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_topics_posted', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_topics_track', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_users', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'username_clean', 'segstsh5_forum', 'phpbb_users', 'UNIQUE'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_warnings', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_words', 'PRIMARY KEY'),
(NULL, 'segstsh5_forum', 'PRIMARY', 'segstsh5_forum', 'phpbb_zebra', 'PRIMARY KEY');

-- --------------------------------------------------------

--
-- Table structure for table `TABLE_PRIVILEGES`
--

CREATE TEMPORARY TABLE `TABLE_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE_PRIVILEGES`
--


-- --------------------------------------------------------

--
-- Table structure for table `TABLE_STATISTICS`
--

CREATE TEMPORARY TABLE `TABLE_STATISTICS` (
  `TABLE_SCHEMA` varchar(192) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(192) NOT NULL DEFAULT '',
  `ROWS_READ` int(21) NOT NULL DEFAULT '0',
  `ROWS_CHANGED` int(21) NOT NULL DEFAULT '0',
  `ROWS_CHANGED_X_INDEXES` int(21) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TABLE_STATISTICS`
--

INSERT INTO `TABLE_STATISTICS` (`TABLE_SCHEMA`, `TABLE_NAME`, `ROWS_READ`, `ROWS_CHANGED`, `ROWS_CHANGED_X_INDEXES`) VALUES
('segstsh5_forum', 'phpbb_confirm', 403, 282, 564),
('segstsh5_appusers', 'user_check_ins', 30, 818, 818),
('segstsh5_forum', 'phpbb_lang', 36, 0, 0),
('segstsh5_forum', 'phpbb_acl_users', 5, 0, 0),
('segstsh5_forum', 'phpbb_styles_template', 27, 0, 0),
('segstsh5_forum', 'phpbb_topics_posted', 4, 2, 2),
('segstsh5_forum', 'phpbb_config', 4394, 371, 742),
('segstsh5_appgames', 'game_round_info', 238689, 600, 600),
('segstsh5_forum', 'phpbb_smilies', 252, 0, 0),
('segstsh5_appusers', 'users', 7341, 30, 30),
('segstsh5_forum', 'phpbb_user_group', 91, 8, 24),
('segstsh5_forum', 'phpbb_posts', 11, 2, 16),
('segstsh5_appgames', 'games', 82, 11, 11),
('segstsh5_appusers', 'user_statistics', 43043, 16, 32),
('segstsh5_forum', 'phpbb_topics_track', 0, 2, 6),
('segstsh5_forum', 'phpbb_acl_roles_data', 1600, 0, 0),
('segstsh5_appusers', 'user_ranks', 890, 5, 10),
('segstsh5_forum', 'phpbb_styles', 27, 0, 0),
('segstsh5_forum', 'phpbb_acl_groups', 114, 0, 0),
('segstsh5_forum', 'phpbb_users', 489, 53, 265),
('segstsh5_forum', 'phpbb_groups', 232, 0, 0),
('segstsh5_forum', 'phpbb_styles_imageset_data', 1950, 0, 0),
('segstsh5_forum', 'phpbb_forums', 219, 2, 6),
('segstsh5_forum', 'phpbb_topics', 53, 6, 42),
('segstsh5_forum', 'phpbb_styles_theme', 27, 0, 0),
('segstsh5_forum', 'phpbb_styles_imageset', 27, 0, 0),
('segstsh5_forum', 'phpbb_topics_watch', 0, 2, 6),
('segstsh5_forum', 'phpbb_acl_options', 8, 0, 0),
('segstsh5_forum', 'phpbb_search_wordmatch', 0, 164, 492),
('segstsh5_forum', 'phpbb_sessions', 1209, 384, 1536),
('segstsh5_forum', 'phpbb_modules', 59, 0, 0),
('segstsh5_appgames', 'game_participants', 4452, 6, 6),
('segstsh5_appusers', 'pending_pool', 80, 39, 39),
('segstsh5_forum', 'phpbb_forums_track', 6, 0, 0),
('segstsh5_forum', 'phpbb_search_wordlist', 489, 310, 930);

-- --------------------------------------------------------

--
-- Table structure for table `THREAD_STATISTICS`
--

CREATE TEMPORARY TABLE `THREAD_STATISTICS` (
  `THREAD_ID` int(21) NOT NULL DEFAULT '0',
  `TOTAL_CONNECTIONS` int(21) NOT NULL DEFAULT '0',
  `CONCURRENT_CONNECTIONS` int(21) NOT NULL DEFAULT '0',
  `CONNECTED_TIME` int(21) NOT NULL DEFAULT '0',
  `BUSY_TIME` int(21) NOT NULL DEFAULT '0',
  `CPU_TIME` int(21) NOT NULL DEFAULT '0',
  `BYTES_RECEIVED` int(21) NOT NULL DEFAULT '0',
  `BYTES_SENT` int(21) NOT NULL DEFAULT '0',
  `BINLOG_BYTES_WRITTEN` int(21) NOT NULL DEFAULT '0',
  `ROWS_FETCHED` int(21) NOT NULL DEFAULT '0',
  `ROWS_UPDATED` int(21) NOT NULL DEFAULT '0',
  `TABLE_ROWS_READ` int(21) NOT NULL DEFAULT '0',
  `SELECT_COMMANDS` int(21) NOT NULL DEFAULT '0',
  `UPDATE_COMMANDS` int(21) NOT NULL DEFAULT '0',
  `OTHER_COMMANDS` int(21) NOT NULL DEFAULT '0',
  `COMMIT_TRANSACTIONS` int(21) NOT NULL DEFAULT '0',
  `ROLLBACK_TRANSACTIONS` int(21) NOT NULL DEFAULT '0',
  `DENIED_CONNECTIONS` int(21) NOT NULL DEFAULT '0',
  `LOST_CONNECTIONS` int(21) NOT NULL DEFAULT '0',
  `ACCESS_DENIED` int(21) NOT NULL DEFAULT '0',
  `EMPTY_QUERIES` int(21) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `THREAD_STATISTICS`
--
-- in use (#1227 - Access denied; you need the PROCESS,SUPER privilege for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `TRIGGERS`
--

CREATE TEMPORARY TABLE `TRIGGERS` (
  `TRIGGER_CATALOG` varchar(512) DEFAULT NULL,
  `TRIGGER_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TRIGGER_NAME` varchar(64) NOT NULL DEFAULT '',
  `EVENT_MANIPULATION` varchar(6) NOT NULL DEFAULT '',
  `EVENT_OBJECT_CATALOG` varchar(512) DEFAULT NULL,
  `EVENT_OBJECT_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `EVENT_OBJECT_TABLE` varchar(64) NOT NULL DEFAULT '',
  `ACTION_ORDER` bigint(4) NOT NULL DEFAULT '0',
  `ACTION_CONDITION` longtext,
  `ACTION_STATEMENT` longtext NOT NULL,
  `ACTION_ORIENTATION` varchar(9) NOT NULL DEFAULT '',
  `ACTION_TIMING` varchar(6) NOT NULL DEFAULT '',
  `ACTION_REFERENCE_OLD_TABLE` varchar(64) DEFAULT NULL,
  `ACTION_REFERENCE_NEW_TABLE` varchar(64) DEFAULT NULL,
  `ACTION_REFERENCE_OLD_ROW` varchar(3) NOT NULL DEFAULT '',
  `ACTION_REFERENCE_NEW_ROW` varchar(3) NOT NULL DEFAULT '',
  `CREATED` datetime DEFAULT NULL,
  `SQL_MODE` varchar(8192) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT '',
  `DATABASE_COLLATION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TRIGGERS`
--


-- --------------------------------------------------------

--
-- Table structure for table `USER_PRIVILEGES`
--

CREATE TEMPORARY TABLE `USER_PRIVILEGES` (
  `GRANTEE` varchar(81) NOT NULL DEFAULT '',
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `PRIVILEGE_TYPE` varchar(64) NOT NULL DEFAULT '',
  `IS_GRANTABLE` varchar(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_PRIVILEGES`
--

INSERT INTO `USER_PRIVILEGES` (`GRANTEE`, `TABLE_CATALOG`, `PRIVILEGE_TYPE`, `IS_GRANTABLE`) VALUES
('''segstsh5''@''localhost''', NULL, 'USAGE', 'NO');

-- --------------------------------------------------------

--
-- Table structure for table `USER_STATISTICS`
--

CREATE TEMPORARY TABLE `USER_STATISTICS` (
  `USER` varchar(48) NOT NULL DEFAULT '',
  `TOTAL_CONNECTIONS` int(21) NOT NULL DEFAULT '0',
  `CONCURRENT_CONNECTIONS` int(21) NOT NULL DEFAULT '0',
  `CONNECTED_TIME` int(21) NOT NULL DEFAULT '0',
  `BUSY_TIME` int(21) NOT NULL DEFAULT '0',
  `CPU_TIME` int(21) NOT NULL DEFAULT '0',
  `BYTES_RECEIVED` int(21) NOT NULL DEFAULT '0',
  `BYTES_SENT` int(21) NOT NULL DEFAULT '0',
  `BINLOG_BYTES_WRITTEN` int(21) NOT NULL DEFAULT '0',
  `ROWS_FETCHED` int(21) NOT NULL DEFAULT '0',
  `ROWS_UPDATED` int(21) NOT NULL DEFAULT '0',
  `TABLE_ROWS_READ` int(21) NOT NULL DEFAULT '0',
  `SELECT_COMMANDS` int(21) NOT NULL DEFAULT '0',
  `UPDATE_COMMANDS` int(21) NOT NULL DEFAULT '0',
  `OTHER_COMMANDS` int(21) NOT NULL DEFAULT '0',
  `COMMIT_TRANSACTIONS` int(21) NOT NULL DEFAULT '0',
  `ROLLBACK_TRANSACTIONS` int(21) NOT NULL DEFAULT '0',
  `DENIED_CONNECTIONS` int(21) NOT NULL DEFAULT '0',
  `LOST_CONNECTIONS` int(21) NOT NULL DEFAULT '0',
  `ACCESS_DENIED` int(21) NOT NULL DEFAULT '0',
  `EMPTY_QUERIES` int(21) NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

--
-- Dumping data for table `USER_STATISTICS`
--
-- in use (#1227 - Access denied; you need the PROCESS,SUPER privilege for this operation)

-- --------------------------------------------------------

--
-- Table structure for table `VIEWS`
--

CREATE TEMPORARY TABLE `VIEWS` (
  `TABLE_CATALOG` varchar(512) DEFAULT NULL,
  `TABLE_SCHEMA` varchar(64) NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) NOT NULL DEFAULT '',
  `VIEW_DEFINITION` longtext NOT NULL,
  `CHECK_OPTION` varchar(8) NOT NULL DEFAULT '',
  `IS_UPDATABLE` varchar(3) NOT NULL DEFAULT '',
  `DEFINER` varchar(77) NOT NULL DEFAULT '',
  `SECURITY_TYPE` varchar(7) NOT NULL DEFAULT '',
  `CHARACTER_SET_CLIENT` varchar(32) NOT NULL DEFAULT '',
  `COLLATION_CONNECTION` varchar(32) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `VIEWS`
--

--
-- Database: `segstsh5_appgames`
--
CREATE DATABASE `segstsh5_appgames` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `segstsh5_appgames`;

-- --------------------------------------------------------

--
-- Table structure for table `game_participants`
--

CREATE TABLE IF NOT EXISTS `game_participants` (
  `game_id` int(11) unsigned NOT NULL,
  `username` varchar(50) NOT NULL,
  `time_joined` int(11) NOT NULL,
  `time_left` int(11) NOT NULL DEFAULT '0' COMMENT '0 means they''re still in the game',
  KEY `game_id` (`game_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `game_participants`
--

INSERT INTO `game_participants` (`game_id`, `username`, `time_joined`, `time_left`) VALUES
(5, 'test1', 1286154111, 1290213389),
(5, 'test1', 1286153161, 1290213389),
(5, 'test1', 1286151105, 1290213389),
(5, 'test1', 1285966344, 1290213389),
(5, 'test1', 1285932161, 1290213389),
(5, 'test1', 1285927785, 1290213389),
(5, 'test1', 1285810978, 1290213389),
(5, 'test1', 1285782213, 1290213389),
(5, 'test1', 1285782126, 1290213389),
(5, 'test1', 1285746993, 1290213389),
(5, 'test1', 1285707853, 1290213389),
(5, 'test1', 1285707825, 1290213389),
(5, 'test1', 1285707805, 1290213389),
(5, 'test1', 1285689655, 1290213389),
(5, 'test1', 1285621862, 1290213389),
(5, 'test1', 1285620116, 1290213389),
(5, 'test1', 1285596771, 1290213389),
(5, 'test1', 1285591850, 1290213389),
(5, 'test1', 1285551937, 1290213389),
(5, 'test1', 1285551919, 1290213389),
(5, 'test1', 1285551866, 1290213389),
(5, 'test1', 1285551508, 1290213389),
(5, 'test1', 1285551378, 1290213389),
(5, 'test1', 1285551115, 1290213389),
(5, 'test2', 1284417139, 1289780334),
(5, 'test1', 1285550726, 1290213389),
(5, 'test13', 1284417218, 0),
(5, 'test1', 1285550705, 1290213389),
(5, 'test1', 1285550680, 1290213389),
(5, 'test1', 1285550422, 1290213389),
(5, 'test1', 1295407098, 0),
(5, 'test1', 1295406987, 1295406994),
(5, 'test1', 1295320342, 1295406983),
(5, 'test1', 1294723268, 1295320311),
(5, 'test1', 1294111070, 1294513850),
(5, 'test1', 1294079538, 1294079713),
(5, 'test1', 1294014721, 1294014726),
(5, 'test1', 1294014204, 1294014209),
(5, 'test1', 1294014137, 1294014142),
(5, 'test1', 1294012732, 1294014036),
(5, 'test1', 1294012654, 1294012659),
(5, 'test1', 1294011646, 1294012650),
(5, 'test1', 1294009057, 1294011642),
(5, 'test1', 1294003876, 1294003882),
(5, 'test1', 1294001413, 1294003872),
(5, 'test1', 1293996871, 1293996874),
(5, 'test1', 1293994213, 1293996867),
(5, 'test1', 1293921300, 1293926624),
(5, 'test1', 1289521717, 1290213389),
(5, 'test1', 1289522891, 1290213389),
(5, 'test1', 1289525395, 1290213389),
(5, 'test1', 1289597678, 1290213389),
(5, 'test1', 1289760254, 1290213389),
(5, 'test1', 1289779434, 1290213389),
(5, 'test1', 1289780244, 1290213389),
(5, 'test1', 1289780292, 1290213389),
(5, 'test2', 1289780347, 1289780412),
(5, 'test2', 1289780450, 0),
(5, 'test1', 1289780544, 1290213389),
(5, 'test1', 1289780958, 1290213389),
(5, 'test1', 1289780975, 1290213389),
(5, 'test1', 1289781196, 1290213389),
(5, 'test1', 1289782971, 1290213389),
(5, 'test1', 1290212664, 1290213389),
(5, 'test1', 1290212815, 1290213389),
(5, 'test1', 1290212862, 1290213389),
(5, 'test1', 1290213427, 1290285089),
(5, 'test1', 1290285094, 1290285103),
(5, 'test1', 1291433199, 1291433229),
(5, 'test1', 1291433673, 1292548497),
(5, 'test1', 1292654011, 1292654064),
(5, 'test1', 1293399904, 1293399920),
(5, 'test1', 1293400184, 1293400209),
(5, 'test1', 1293502731, 1293815800),
(5, 'test1', 1293913601, 1293913618),
(5, 'test1', 1293914708, 1293921296);

-- --------------------------------------------------------

--
-- Table structure for table `game_round_info`
--

CREATE TABLE IF NOT EXISTS `game_round_info` (
  `round_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gID` int(10) unsigned NOT NULL,
  `round_number` int(10) unsigned NOT NULL,
  `round_start` int(11) NOT NULL,
  `round_end` int(11) NOT NULL DEFAULT '0',
  `round_end_reason` varchar(200) NOT NULL DEFAULT '',
  `cooldown_flag` tinyint(1) NOT NULL DEFAULT '0',
  `round_lock` tinyint(1) NOT NULL DEFAULT '0',
  KEY `round_id` (`round_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=139 ;

--
-- Dumping data for table `game_round_info`
--

INSERT INTO `game_round_info` (`round_id`, `gID`, `round_number`, `round_start`, `round_end`, `round_end_reason`, `cooldown_flag`, `round_lock`) VALUES
(2, 5, 1, 1280609320, 1282982031, 'test13_tagged_by_test1', 0, 0),
(4, 5, 2, 1282982031, 1282982375, 'test13_tagged_by_test1', 0, 0),
(5, 5, 3, 1282982375, 1282982613, 'test13_tagged_by_test1', 0, 0),
(6, 5, 4, 1282982613, 1282983226, 'test13_tagged_by_test1', 0, 0),
(7, 5, 5, 1282983226, 1282983348, 'test13_tagged_by_test1', 0, 0),
(8, 5, 6, 1282983348, 1282983541, 'test13_tagged_by_test1', 0, 0),
(9, 5, 7, 1282983694, 1283015582, 'test13_tagged_by_test1', 0, 0),
(10, 5, 8, 1283015582, 1283015667, 'test13_tagged_by_test1', 0, 0),
(11, 5, 9, 1283015667, 1283015755, 'test13_tagged_by_test1', 0, 0),
(12, 5, 10, 1283015755, 1283016254, 'test13_tagged_by_test1', 0, 0),
(13, 5, 11, 1283016554, 1283016586, 'test2_tagged_by_test1', 0, 0),
(14, 5, 12, 1283016586, 1283016898, 'test13_tagged_by_test1', 0, 0),
(15, 5, 13, 1283016898, 1283017002, 'test13_tagged_by_test1', 0, 0),
(16, 5, 14, 1283017062, 1283017401, 'test2_tagged_by_test1', 0, 0),
(17, 5, 15, 1283017461, 1285012546, 'test2_tagged_by_test1', 0, 0),
(18, 5, 16, 1285014002, 1285018001, 'test2_tagged_by_test1', 0, 0),
(19, 5, 17, 1285023116, 1285023217, 'test2_tagged_by_test1', 0, 0),
(20, 5, 18, 1285023473, 1285023728, 'test2_tagged_by_test1', 0, 0),
(21, 5, 19, 1285023940, 1285023940, 'test2_tagged_by_test1', 0, 0),
(22, 5, 20, 1285024000, 1285024457, 'test13_tagged_by_test1', 0, 0),
(23, 5, 21, 1285024518, 1285027659, 'test2_tagged_by_test1', 0, 0),
(24, 5, 22, 1285027719, 1285164778, 'test2_tagged_by_test1', 0, 0),
(25, 5, 23, 1285164838, 1285169654, 'test2_tagged_by_test1', 0, 0),
(26, 5, 24, 1285169714, 1285174060, 'test2_tagged_by_test1', 0, 0),
(27, 5, 25, 1285174120, 1285197540, 'test2_tagged_by_test1', 0, 0),
(28, 5, 26, 1285197600, 1285198290, 'test2_tagged_by_test1', 0, 0),
(29, 5, 27, 1285198350, 1285198350, 'test2_tagged_by_test1', 0, 0),
(30, 5, 28, 1285198410, 1285198410, 'test2_tagged_by_test1', 0, 0),
(31, 5, 29, 1285198471, 1285198471, 'test2_tagged_by_test1', 0, 0),
(32, 5, 30, 1285198628, 1285199828, 'out_of_time', 0, 0),
(33, 5, 31, 1285199927, 1285200108, 'out_of_time', 0, 0),
(34, 5, 32, 1285200601, 1285200782, 'out_of_time', 0, 0),
(35, 5, 33, 1285200843, 1285201024, 'out_of_time', 0, 0),
(36, 5, 34, 1285201084, 1285201265, 'out_of_time', 0, 0),
(37, 5, 35, 1285201325, 1285201506, 'out_of_time', 0, 0),
(38, 5, 36, 1285201566, 1285201626, 'out_of_time', 0, 0),
(39, 5, 37, 1285201656, 1285201686, 'out_of_time', 0, 0),
(40, 5, 38, 1285201696, 1285201726, 'out_of_time', 0, 0),
(41, 5, 39, 1285201736, 1285201766, 'out_of_time', 0, 0),
(42, 5, 40, 1285201776, 1285201806, 'out_of_time', 0, 0),
(43, 5, 41, 1285201816, 1285201847, 'out_of_time', 0, 0),
(44, 5, 42, 1285201857, 1285201887, 'out_of_time', 0, 0),
(45, 5, 43, 1285201898, 1285202017, 'out_of_time', 0, 0),
(46, 5, 44, 1285202027, 1285202057, 'out_of_time', 0, 0),
(47, 5, 45, 1285202067, 1285202323, 'out_of_time', 0, 0),
(48, 5, 46, 1285202333, 1285202363, 'out_of_time', 0, 0),
(49, 5, 47, 1285202373, 1285202373, 'test13_tagged_by_test1', 0, 0),
(50, 5, 48, 1285202383, 1285202413, 'out_of_time', 0, 0),
(51, 5, 49, 1285202426, 1285202456, 'out_of_time', 0, 0),
(52, 5, 50, 1285202467, 1285202819, 'out_of_time', 0, 0),
(53, 5, 51, 1285202829, 1285202860, 'out_of_time', 0, 0),
(54, 5, 52, 1285202870, 1285202901, 'out_of_time', 0, 0),
(55, 5, 53, 1285202911, 1285202941, 'out_of_time', 0, 0),
(56, 5, 54, 1285202951, 1285202951, 'test2_tagged_by_test1', 0, 0),
(57, 5, 55, 1285202961, 1285202991, 'out_of_time', 0, 0),
(58, 5, 56, 1285203001, 1285203031, 'out_of_time', 0, 0),
(59, 5, 57, 1285203042, 1285203072, 'out_of_time', 0, 0),
(60, 5, 58, 1285203082, 1285622687, 'test2_tagged_by_test1', 0, 0),
(61, 5, 59, 1285622747, 1285690264, 'test2_tagged_by_test1', 0, 0),
(62, 5, 60, 1285690323, 1285966538, 'test2_tagged_by_test1', 0, 0),
(63, 5, 61, 1285966599, 1286150123, 'test2_tagged_by_test1', 0, 0),
(64, 5, 62, 1286150183, 1286150395, 'test2_tagged_by_test1', 0, 0),
(65, 5, 63, 1286150455, 1286151115, 'test2_tagged_by_test1', 0, 0),
(66, 5, 64, 1286151175, 1286151259, 'test13_tagged_by_test1', 0, 0),
(67, 5, 65, 1286151322, 1286431535, 'test2_tagged_by_test1', 0, 0),
(68, 5, 66, 1286431596, 1286431596, 'test2_tagged_by_test1', 0, 0),
(69, 5, 67, 1286431659, 1287439581, 'test13_tagged_by_test1', 0, 0),
(70, 5, 68, 1287439641, 1288740233, 'test13_tagged_by_test1', 0, 0),
(71, 5, 69, 1288740293, 1288740293, 'test2_tagged_by_test1', 0, 0),
(72, 5, 70, 1288740353, 1288740353, 'test2_tagged_by_test1', 0, 0),
(73, 5, 71, 1288740413, 1288740413, 'test1_tagged_by_test2', 0, 0),
(74, 5, 72, 1288740473, 1288740473, 'test2_tagged_by_test1', 0, 0),
(75, 5, 73, 1288740533, 1289760329, 'test13_tagged_by_test1', 0, 0),
(76, 5, 74, 1289760389, 1289781268, 'test13_tagged_by_test2', 0, 0),
(77, 5, 75, 1289781328, 1289782004, 'test13_tagged_by_test2', 0, 0),
(78, 5, 76, 1289782064, 1289782085, 'test13_tagged_by_test2', 0, 0),
(79, 5, 77, 1289782145, 1289782145, 'test1_tagged_by_test2', 0, 0),
(80, 5, 78, 1289782205, 1289782205, 'test2_tagged_by_test1', 0, 0),
(81, 5, 79, 1289782265, 1289782373, 'test13_tagged_by_test1', 0, 0),
(82, 5, 80, 1289782433, 1289783020, 'test1_tagged_by_test2', 0, 0),
(83, 5, 81, 1289783080, 1289783244, 'test1_tagged_by_test2', 0, 0),
(84, 5, 82, 1289783304, 1289783724, 'test1_tagged_by_test2', 0, 0),
(85, 5, 83, 1289783784, 1289783784, 'test2_tagged_by_test1', 0, 0),
(86, 5, 84, 1289783844, 1289783943, 'test1_tagged_by_test2', 0, 0),
(87, 5, 85, 1289784003, 1289784056, 'test1_tagged_by_test2', 0, 0),
(88, 5, 86, 1289784116, 1290284885, 'out_of_time', 0, 0),
(89, 5, 87, 1290284945, 1293921313, 'noone_is_it', 0, 0),
(90, 5, 88, 1293921745, 1293921760, 'noone_is_it', 0, 0),
(91, 5, 89, 1293922349, 1293922362, 'noone_is_it', 0, 0),
(92, 5, 90, 1293922422, 1293922506, 'noone_is_it', 0, 0),
(93, 5, 91, 1293922566, 1294001494, 'test13_tagged_by_test1', 0, 0),
(94, 5, 92, 1294001554, 1294009145, 'test13_tagged_by_test1', 0, 0),
(95, 5, 93, 1294009206, 1294009206, 'test2_tagged_by_test1', 0, 0),
(96, 5, 94, 1294009266, 1294009466, 'test13_tagged_by_test1', 0, 0),
(97, 5, 95, 1294009526, 1294009611, 'test13_tagged_by_test1', 0, 0),
(98, 5, 96, 1294009671, 1294009671, 'test2_tagged_by_test1', 0, 0),
(99, 5, 97, 1294009731, 1294009835, 'test13_tagged_by_test1', 0, 0),
(100, 5, 98, 1294010005, 1294010005, 'test2_tagged_by_test1', 0, 0),
(101, 5, 99, 1294010349, 1294010349, 'test2_tagged_by_test1', 0, 0),
(102, 5, 100, 1294010409, 1294010533, 'test13_tagged_by_test1', 0, 0),
(103, 5, 101, 1294010593, 1294011087, 'test13_tagged_by_test1', 0, 0),
(104, 5, 102, 1294011361, 1294011361, 'test2_tagged_by_test1', 0, 0),
(105, 5, 103, 1294011603, 1294011663, 'test13_tagged_by_test1', 0, 0),
(106, 5, 104, 1294011894, 1294011894, 'test13_tagged_by_test1', 0, 0),
(107, 5, 105, 1294012247, 1294012323, 'test2_tagged_by_test1', 0, 0),
(108, 5, 106, 1294012624, 1294111071, 'out_of_time', 0, 0),
(109, 5, 107, 1294111133, 1294112761, 'out_of_time', 0, 0),
(110, 5, 108, 1294112827, 1294278769, 'out_of_time', 0, 0),
(111, 5, 109, 1294278829, 1294278829, 'test2_tagged_by_test1', 0, 0),
(112, 5, 110, 1294278889, 1294280089, 'out_of_time', 0, 0),
(113, 5, 111, 1294280187, 1294280187, 'test2_tagged_by_test1', 0, 0),
(114, 5, 112, 1294280247, 1294280247, 'test2_tagged_by_test1', 0, 0),
(115, 5, 113, 1294280307, 1294280307, 'test2_tagged_by_test1', 0, 0),
(116, 5, 114, 1294280367, 1294280367, 'test2_tagged_by_test1', 0, 0),
(117, 5, 115, 1294280427, 1294281627, 'out_of_time', 0, 0),
(118, 5, 116, 1294282430, 1294282430, 'test2_tagged_by_test1', 0, 0),
(119, 5, 117, 1294282490, 1294282553, 'out_of_time', 0, 0),
(120, 5, 118, 1294282599, 1294282599, 'test2_tagged_by_test1', 0, 0),
(121, 5, 119, 1294282609, 1294282609, 'test2_tagged_by_test1', 0, 0),
(122, 5, 120, 1294282619, 1294282679, 'out_of_time', 0, 0),
(123, 5, 121, 1294282689, 1294282689, 'test2_tagged_by_test1', 0, 0),
(124, 5, 122, 1294282997, 1294283057, 'out_of_time', 0, 0),
(125, 5, 123, 1294283067, 1294283127, 'out_of_time', 0, 0),
(126, 5, 124, 1294283137, 1294283137, 'test2_tagged_by_test1', 0, 0),
(127, 5, 125, 1294283147, 1294283147, 'test2_tagged_by_test1', 0, 0),
(128, 5, 126, 1294283157, 1294283217, 'out_of_time', 0, 0),
(129, 5, 127, 1294283227, 1294283227, 'test2_tagged_by_test1', 0, 0),
(130, 5, 128, 1294283237, 1294283297, 'out_of_time', 0, 0),
(131, 5, 129, 1294283307, 1294513635, 'out_of_time', 0, 0),
(132, 5, 130, 1294513695, 1294799068, 'out_of_time', 0, 0),
(133, 5, 131, 1295319374, 1295320820, 'out_of_time', 0, 0),
(134, 5, 132, 1295320880, 1295322632, 'out_of_time', 0, 0),
(135, 5, 133, 1295322692, 1295405008, 'out_of_time', 0, 0),
(136, 5, 134, 1295405068, 1295406907, 'out_of_time', 0, 0),
(137, 5, 135, 1295406967, 1295408615, 'out_of_time', 0, 0),
(138, 5, 136, 1295408675, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `game_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `current_round` int(10) unsigned NOT NULL DEFAULT '1',
  `game_type` text NOT NULL,
  `game_difficulty` varchar(20) NOT NULL DEFAULT 'easy',
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL DEFAULT '0',
  `latitude_center` float(10,6) NOT NULL,
  `longitude_center` float(10,6) NOT NULL,
  `game_radius` int(11) NOT NULL COMMENT 'in meters',
  `game_lock` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `game_id` (`game_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`game_id`, `current_round`, `game_type`, `game_difficulty`, `start_time`, `end_time`, `latitude_center`, `longitude_center`, `game_radius`, `game_lock`) VALUES
(1, 1, 'free_for_all', 'easy', 1, 0, 1.000000, 1.000000, 3000, 0),
(2, 1, 'free_for_all', 'easy', 33, 0, 37.331589, -122.030731, 3000, 0),
(4, 1, 'free_for_all', 'easy', 1279734755, 0, 37.331688, -122.030731, 3000, 0),
(5, 136, 'free_for_all', 'easy', 1279735130, 0, 42.920952, -78.883430, 90000, 0);
--
-- Database: `segstsh5_appusers`
--
CREATE DATABASE `segstsh5_appusers` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `segstsh5_appusers`;

-- --------------------------------------------------------

--
-- Table structure for table `pending_pool`
--

CREATE TABLE IF NOT EXISTS `pending_pool` (
  `uID_of_user` int(11) unsigned NOT NULL,
  `latitude` float(10,6) NOT NULL,
  `longitude` float(10,6) NOT NULL,
  `game_radius_max` int(11) NOT NULL COMMENT 'this is the max they''ll join, and the max that the game they host (if they need to) will be created',
  `game_type` varchar(50) NOT NULL,
  `game_difficulty` varchar(20) NOT NULL DEFAULT 'easy',
  `user_lock` tinyint(1) NOT NULL DEFAULT '0',
  `time_entered_pool` int(10) unsigned NOT NULL,
  KEY `uID_of_user` (`uID_of_user`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_pool`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_check_ins`
--

CREATE TABLE IF NOT EXISTS `user_check_ins` (
  `rowIndex` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `time_checked_in` int(11) NOT NULL,
  `lat` float(10,6) NOT NULL,
  `lng` float(10,6) NOT NULL,
  PRIMARY KEY (`rowIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `user_check_ins`
--


-- --------------------------------------------------------

--
-- Table structure for table `user_ranks`
--

CREATE TABLE IF NOT EXISTS `user_ranks` (
  `uID` int(10) unsigned NOT NULL,
  `game_type` varchar(200) NOT NULL,
  `overall_score` bigint(20) NOT NULL,
  `undertitle` text NOT NULL,
  KEY `uID` (`uID`),
  KEY `game_type` (`game_type`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_ranks`
--

INSERT INTO `user_ranks` (`uID`, `game_type`, `overall_score`, `undertitle`) VALUES
(15, 'free_for_all', 905, 'newbie'),
(14, 'free_for_all', 1890, 'newbie'),
(16, 'free_for_all', 830, 'newbie'),
(17, 'free_for_all', 1000, 'newbie'),
(18, 'free_for_all', 1000, 'newbie'),
(19, 'free_for_all', 1000, 'newbie'),
(20, 'free_for_all', 1000, 'newbie'),
(21, 'free_for_all', 1000, 'newbie'),
(22, 'free_for_all', 1000, 'newbie'),
(23, 'free_for_all', 1000, 'newbie'),
(24, 'free_for_all', 1000, 'newbie'),
(25, 'free_for_all', 1000, 'newbie'),
(26, 'free_for_all', 1000, 'newbie'),
(27, 'free_for_all', 1000, 'newbie'),
(28, 'free_for_all', 1000, 'newbie'),
(29, 'free_for_all', 1000, 'newbie'),
(30, 'free_for_all', 1000, 'newbie');

-- --------------------------------------------------------

--
-- Table structure for table `user_statistics`
--

CREATE TABLE IF NOT EXISTS `user_statistics` (
  `uID` int(10) unsigned NOT NULL,
  `statistic` text NOT NULL,
  `game_id_it_happened_in` int(11) NOT NULL,
  `game_round_it_happened_in` int(10) unsigned NOT NULL,
  `value` text NOT NULL,
  `time_stamp` int(11) NOT NULL,
  KEY `game_id_it_happened_in` (`game_id_it_happened_in`),
  KEY `game_round_it_happened_in` (`game_round_it_happened_in`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_statistics`
--

INSERT INTO `user_statistics` (`uID`, `statistic`, `game_id_it_happened_in`, `game_round_it_happened_in`, `value`, `time_stamp`) VALUES
(14, 'tagged_who', 5, 63, '15', 1286151115),
(14, 'score_change', 5, 63, '15', 1286151115),
(15, 'score_change', 5, 63, '-10', 1286151115),
(14, 'tagged_who', 5, 64, '16', 1286151259),
(14, 'score_change', 5, 64, '15', 1286151259),
(16, 'score_change', 5, 64, '-10', 1286151259),
(14, 'tagged_who', 5, 65, '15', 1286431535),
(14, 'score_change', 5, 65, '15', 1286431535),
(15, 'score_change', 5, 65, '-10', 1286431535),
(14, 'tagged_who', 5, 66, '15', 1286431596),
(14, 'score_change', 5, 66, '15', 1286431596),
(15, 'score_change', 5, 66, '-10', 1286431596),
(14, 'tagged_who', 5, 67, '16', 1287439581),
(14, 'score_change', 5, 67, '15', 1287439581),
(16, 'score_change', 5, 67, '-10', 1287439581),
(14, 'tagged_who', 5, 68, '16', 1288740233),
(14, 'score_change', 5, 68, '15', 1288740233),
(16, 'score_change', 5, 68, '-10', 1288740233),
(14, 'tagged_who', 5, 69, '15', 1288740293),
(14, 'score_change', 5, 69, '15', 1288740293),
(15, 'score_change', 5, 69, '-10', 1288740293),
(14, 'tagged_who', 5, 70, '15', 1288740353),
(14, 'score_change', 5, 70, '15', 1288740353),
(15, 'score_change', 5, 70, '-10', 1288740353),
(15, 'tagged_who', 5, 71, '14', 1288740413),
(15, 'score_change', 5, 71, '15', 1288740413),
(14, 'score_change', 5, 71, '-10', 1288740413),
(14, 'tagged_who', 5, 72, '15', 1288740473),
(14, 'score_change', 5, 72, '15', 1288740473),
(15, 'score_change', 5, 72, '-10', 1288740473),
(14, 'tagged_who', 5, 73, '16', 1289760329),
(14, 'score_change', 5, 73, '15', 1289760329),
(16, 'score_change', 5, 73, '-10', 1289760329),
(15, 'tagged_who', 5, 74, '16', 1289781268),
(15, 'score_change', 5, 74, '15', 1289781268),
(16, 'score_change', 5, 74, '-10', 1289781268),
(15, 'tagged_who', 5, 75, '16', 1289782004),
(15, 'score_change', 5, 75, '15', 1289782004),
(16, 'score_change', 5, 75, '-10', 1289782004),
(15, 'tagged_who', 5, 76, '16', 1289782085),
(15, 'score_change', 5, 76, '15', 1289782085),
(16, 'score_change', 5, 76, '-10', 1289782085),
(15, 'tagged_who', 5, 77, '14', 1289782145),
(15, 'score_change', 5, 77, '15', 1289782145),
(14, 'score_change', 5, 77, '-10', 1289782145),
(14, 'tagged_who', 5, 78, '15', 1289782205),
(14, 'score_change', 5, 78, '15', 1289782205),
(15, 'score_change', 5, 78, '-10', 1289782205),
(14, 'tagged_who', 5, 79, '16', 1289782373),
(14, 'score_change', 5, 79, '15', 1289782373),
(16, 'score_change', 5, 79, '-10', 1289782373),
(15, 'tagged_who', 5, 80, '14', 1289783020),
(15, 'score_change', 5, 80, '15', 1289783020),
(14, 'score_change', 5, 80, '-10', 1289783020),
(15, 'tagged_who', 5, 81, '14', 1289783244),
(15, 'score_change', 5, 81, '15', 1289783244),
(14, 'score_change', 5, 81, '-10', 1289783244),
(15, 'tagged_who', 5, 82, '14', 1289783724),
(15, 'score_change', 5, 82, '15', 1289783724),
(14, 'score_change', 5, 82, '-10', 1289783724),
(14, 'tagged_who', 5, 83, '15', 1289783784),
(14, 'score_change', 5, 83, '15', 1289783784),
(15, 'score_change', 5, 83, '-10', 1289783784),
(15, 'tagged_who', 5, 84, '14', 1289783943),
(15, 'score_change', 5, 84, '15', 1289783943),
(14, 'score_change', 5, 84, '-10', 1289783943),
(15, 'tagged_who', 5, 85, '14', 1289784056),
(15, 'score_change', 5, 85, '15', 1289784056),
(14, 'score_change', 5, 85, '-10', 1289784056),
(14, 'tagged_who', 5, 91, '16', 1294001494),
(14, 'score_change', 5, 91, '15', 1294001494),
(16, 'score_change', 5, 91, '-10', 1294001494),
(14, 'tagged_who', 5, 92, '16', 1294009145),
(14, 'score_change', 5, 92, '15', 1294009145),
(16, 'score_change', 5, 92, '-10', 1294009145),
(14, 'tagged_who', 5, 93, '15', 1294009206),
(14, 'score_change', 5, 93, '15', 1294009206),
(15, 'score_change', 5, 93, '-10', 1294009206),
(14, 'tagged_who', 5, 94, '16', 1294009466),
(14, 'score_change', 5, 94, '15', 1294009466),
(16, 'score_change', 5, 94, '-10', 1294009466),
(14, 'tagged_who', 5, 95, '16', 1294009611),
(14, 'score_change', 5, 95, '15', 1294009611),
(16, 'score_change', 5, 95, '-10', 1294009611),
(14, 'tagged_who', 5, 96, '15', 1294009671),
(14, 'score_change', 5, 96, '15', 1294009671),
(15, 'score_change', 5, 96, '-10', 1294009671),
(14, 'tagged_who', 5, 97, '16', 1294009835),
(14, 'score_change', 5, 97, '15', 1294009835),
(16, 'score_change', 5, 97, '-10', 1294009835),
(14, 'tagged_who', 5, 98, '15', 1294010005),
(14, 'score_change', 5, 98, '15', 1294010005),
(15, 'score_change', 5, 98, '-10', 1294010005),
(14, 'tagged_who', 5, 99, '15', 1294010349),
(14, 'score_change', 5, 99, '15', 1294010349),
(15, 'score_change', 5, 99, '-10', 1294010349),
(14, 'tagged_who', 5, 100, '16', 1294010533),
(14, 'score_change', 5, 100, '15', 1294010533),
(16, 'score_change', 5, 100, '-10', 1294010533),
(14, 'tagged_who', 5, 101, '16', 1294011087),
(14, 'score_change', 5, 101, '15', 1294011087),
(16, 'score_change', 5, 101, '-10', 1294011087),
(14, 'tagged_who', 5, 102, '15', 1294011361),
(14, 'score_change', 5, 102, '15', 1294011361),
(15, 'score_change', 5, 102, '-10', 1294011361),
(14, 'tagged_who', 5, 103, '16', 1294011663),
(14, 'score_change', 5, 103, '15', 1294011663),
(16, 'score_change', 5, 103, '-10', 1294011663),
(14, 'tagged_who', 5, 104, '16', 1294011894),
(14, 'score_change', 5, 104, '15', 1294011894),
(16, 'score_change', 5, 104, '-10', 1294011894),
(14, 'tagged_who', 5, 105, '15', 1294012323),
(14, 'score_change', 5, 105, '15', 1294012323),
(15, 'score_change', 5, 105, '-10', 1294012323),
(14, 'score_change', 0, 0, '-50', 1294014726),
(14, 'quit_when_it', 0, 0, '', 1294014726),
(15, 'assigned_as_it', 5, 109, '1', 1294278829),
(14, 'entered_tagging_zone', 5, 109, '1', 1294278829),
(14, 'tagged_who', 5, 109, '15', 1294278829),
(14, 'score_change', 5, 109, '15', 1294278829),
(15, 'score_change', 5, 109, '-10', 1294278829),
(16, 'assigned_as_it', 5, 110, '1', 1294278889),
(15, 'assigned_as_it', 5, 111, '1', 1294280187),
(14, 'entered_tagging_zone', 5, 111, '1', 1294280187),
(14, 'tagged_who', 5, 111, '15', 1294280187),
(14, 'score_change', 5, 111, '15', 1294280187),
(15, 'score_change', 5, 111, '-10', 1294280187),
(15, 'assigned_as_it', 5, 112, '1', 1294280247),
(14, 'entered_tagging_zone', 5, 112, '1', 1294280247),
(14, 'tagged_who', 5, 112, '15', 1294280247),
(14, 'score_change', 5, 112, '15', 1294280247),
(15, 'score_change', 5, 112, '-10', 1294280247),
(15, 'assigned_as_it', 5, 113, '1', 1294280307),
(14, 'entered_tagging_zone', 5, 113, '1', 1294280307),
(14, 'tagged_who', 5, 113, '15', 1294280307),
(14, 'score_change', 5, 113, '15', 1294280307),
(15, 'score_change', 5, 113, '-10', 1294280307),
(15, 'assigned_as_it', 5, 114, '1', 1294280367),
(14, 'entered_tagging_zone', 5, 114, '1', 1294280367),
(14, 'tagged_who', 5, 114, '15', 1294280367),
(14, 'score_change', 5, 114, '15', 1294280367),
(15, 'score_change', 5, 114, '-10', 1294280367),
(14, 'assigned_as_it', 5, 115, '1', 1294280427),
(14, 'score_change', 5, 115, '30', 1294281627),
(14, 'outlasted_taggers', 5, 115, '30', 1294281627),
(15, 'assigned_as_it', 5, 116, '1', 1294282430),
(14, 'entered_tagging_zone', 5, 116, '1', 1294282430),
(14, 'tagged_who', 5, 116, '15', 1294282430),
(14, 'score_change', 5, 116, '15', 1294282430),
(15, 'score_change', 5, 116, '-10', 1294282430),
(16, 'assigned_as_it', 5, 117, '1', 1294282490),
(14, 'score_change', 5, 117, '30', 1294282553),
(14, 'outlasted_taggers', 5, 117, '30', 1294282553),
(15, 'assigned_as_it', 5, 118, '1', 1294282599),
(14, 'entered_tagging_zone', 5, 118, '1', 1294282599),
(14, 'tagged_who', 5, 118, '15', 1294282599),
(14, 'score_change', 5, 118, '15', 1294282599),
(15, 'score_change', 5, 118, '-10', 1294282599),
(15, 'assigned_as_it', 5, 119, '1', 1294282609),
(14, 'entered_tagging_zone', 5, 119, '1', 1294282609),
(14, 'tagged_who', 5, 119, '15', 1294282609),
(14, 'score_change', 5, 119, '15', 1294282609),
(15, 'score_change', 5, 119, '-10', 1294282609),
(14, 'assigned_as_it', 5, 120, '1', 1294282619),
(14, 'score_change', 5, 120, '30', 1294282679),
(14, 'outlasted_taggers', 5, 120, '30', 1294282679),
(15, 'assigned_as_it', 5, 121, '1', 1294282689),
(14, 'entered_tagging_zone', 5, 121, '1', 1294282689),
(14, 'tagged_who', 5, 121, '15', 1294282689),
(14, 'score_change', 5, 121, '15', 1294282689),
(15, 'score_change', 5, 121, '-10', 1294282689),
(16, 'assigned_as_it', 5, 122, '1', 1294282997),
(14, 'score_change', 5, 122, '30', 1294283057),
(14, 'outlasted_taggers', 5, 122, '30', 1294283057),
(16, 'assigned_as_it', 5, 123, '1', 1294283067),
(14, 'score_change', 5, 123, '30', 1294283127),
(14, 'outlasted_taggers', 5, 123, '30', 1294283127),
(15, 'assigned_as_it', 5, 124, '1', 1294283137),
(14, 'entered_tagging_zone', 5, 124, '1', 1294283137),
(14, 'tagged_who', 5, 124, '15', 1294283137),
(14, 'score_change', 5, 124, '15', 1294283137),
(15, 'score_change', 5, 124, '-10', 1294283137),
(15, 'assigned_as_it', 5, 125, '1', 1294283147),
(14, 'entered_tagging_zone', 5, 125, '1', 1294283147),
(14, 'tagged_who', 5, 125, '15', 1294283147),
(14, 'score_change', 5, 125, '15', 1294283147),
(15, 'score_change', 5, 125, '-10', 1294283147),
(14, 'assigned_as_it', 5, 126, '1', 1294283157),
(14, 'score_change', 5, 126, '30', 1294283217),
(14, 'outlasted_taggers', 5, 126, '30', 1294283217),
(15, 'assigned_as_it', 5, 127, '1', 1294283227),
(14, 'entered_tagging_zone', 5, 127, '1', 1294283227),
(14, 'tagged_who', 5, 127, '15', 1294283227),
(14, 'score_change', 5, 127, '15', 1294283227),
(15, 'score_change', 5, 127, '-10', 1294283227),
(14, 'assigned_as_it', 5, 128, '1', 1294283237),
(14, 'score_change', 5, 128, '30', 1294283297),
(14, 'outlasted_taggers', 5, 128, '30', 1294283297),
(14, 'assigned_as_it', 5, 129, '1', 1294283307),
(14, 'score_change', 5, 129, '30', 1294513635),
(14, 'outlasted_taggers', 5, 129, '30', 1294513635),
(16, 'assigned_as_it', 5, 130, '1', 1294513695),
(14, 'score_change', 5, 130, '30', 1294799068),
(14, 'outlasted_taggers', 5, 130, '30', 1294799068),
(16, 'assigned_as_it', 5, 131, '1', 1295319374),
(14, 'score_change', 5, 131, '30', 1295320820),
(14, 'outlasted_taggers', 5, 131, '30', 1295320820),
(14, 'assigned_as_it', 5, 132, '1', 1295320880),
(14, 'score_change', 5, 132, '30', 1295322632),
(14, 'outlasted_taggers', 5, 132, '30', 1295322632),
(16, 'assigned_as_it', 5, 133, '1', 1295322692),
(14, 'score_change', 5, 133, '30', 1295405008),
(14, 'outlasted_taggers', 5, 133, '30', 1295405008),
(14, 'assigned_as_it', 5, 134, '1', 1295405068),
(14, 'score_change', 5, 134, '30', 1295406907),
(14, 'outlasted_taggers', 5, 134, '30', 1295406907),
(16, 'assigned_as_it', 5, 135, '1', 1295406967),
(14, 'score_change', 5, 135, '30', 1295408615),
(14, 'outlasted_taggers', 5, 135, '30', 1295408615),
(14, 'assigned_as_it', 5, 136, '1', 1295408675);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(50) NOT NULL COMMENT 'alphanumeric only',
  `password` text NOT NULL,
  `email_address` text NOT NULL,
  `current_lat` float(10,6) NOT NULL DEFAULT '0.000000',
  `current_lng` float(10,6) NOT NULL DEFAULT '0.000000',
  `currently_it` tinyint(1) NOT NULL DEFAULT '0',
  `entered_tag_zone_flag` tinyint(1) NOT NULL DEFAULT '0',
  `time_entered_tag_zone` int(11) unsigned NOT NULL DEFAULT '0',
  `uID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  UNIQUE KEY `uID` (`uID`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `email_address`, `current_lat`, `current_lng`, `currently_it`, `entered_tag_zone_flag`, `time_entered_tag_zone`, `uID`) VALUES
('test2', 'test2', '', 42.920952, -78.887428, 0, 0, 0, 15),
('test1', 'test1', '', 42.920982, -78.883652, 1, 0, 0, 14),
('test13', 'test13', '', 42.921440, -78.877808, 0, 0, 0, 16),
('test3', 'test3', '', 0.000000, 0.000000, 0, 0, 0, 17),
('test4', 'test4', '', 0.000000, 0.000000, 0, 0, 0, 18),
('test5', 'test5', '', 0.000000, 0.000000, 0, 0, 0, 19),
('test6', 'test6', '', 0.000000, 0.000000, 0, 0, 0, 20),
('test7', 'test7', '', 0.000000, 0.000000, 0, 0, 0, 21),
('test8', 'test8', '', 0.000000, 0.000000, 0, 0, 0, 22),
('test9', 'test9', '', 0.000000, 0.000000, 0, 0, 0, 23),
('ken', 'test1', 'kerufe@gmail.com', 0.000000, 0.000000, 0, 0, 0, 24),
('40FortyAdmin', 'swe5wywes4$^#G54gefg', 'kerufe@gmail.com', 0.000000, 0.000000, 0, 0, 0, 25),
('noone_is_it', 'e5n6e5jsw5s7yy', 'kerufe@gmail.com', 0.000000, 0.000000, 0, 0, 0, 26),
('_tagged_by_', 'drje6jw5hhfrhdrnr', 'kerufe@gmail.com', 0.000000, 0.000000, 0, 0, 0, 27),
('out_of_time', 'drndr6uesntfufy8', 'kerufe@gmail.com', 0.000000, 0.000000, 0, 0, 0, 28),
('ddddd', 'ddd', 'd', 0.000000, 0.000000, 0, 0, 0, 29),
('eeeee', 'eee', 'e', 0.000000, 0.000000, 0, 0, 0, 30);
--
-- Database: `segstsh5_forum`
--
CREATE DATABASE `segstsh5_forum` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `segstsh5_forum`;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_groups`
--

CREATE TABLE IF NOT EXISTS `phpbb_acl_groups` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `group_id` (`group_id`),
  KEY `auth_opt_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_groups`
--

INSERT INTO `phpbb_acl_groups` (`group_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(1, 0, 85, 0, 1),
(1, 0, 93, 0, 1),
(1, 0, 111, 0, 1),
(5, 0, 0, 5, 0),
(5, 0, 0, 1, 0),
(2, 0, 0, 6, 0),
(3, 0, 0, 6, 0),
(4, 0, 0, 5, 0),
(4, 0, 0, 10, 0),
(1, 1, 0, 17, 0),
(2, 1, 0, 17, 0),
(3, 1, 0, 17, 0),
(6, 1, 0, 17, 0),
(1, 2, 0, 17, 0),
(2, 2, 0, 15, 0),
(3, 2, 0, 15, 0),
(4, 2, 0, 21, 0),
(5, 2, 0, 14, 0),
(5, 2, 0, 10, 0),
(6, 2, 0, 19, 0),
(7, 0, 0, 23, 0),
(7, 2, 0, 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_options`
--

CREATE TABLE IF NOT EXISTS `phpbb_acl_options` (
  `auth_option_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_local` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auth_option_id`),
  UNIQUE KEY `auth_option` (`auth_option`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=118 ;

--
-- Dumping data for table `phpbb_acl_options`
--

INSERT INTO `phpbb_acl_options` (`auth_option_id`, `auth_option`, `is_global`, `is_local`, `founder_only`) VALUES
(1, 'f_', 0, 1, 0),
(2, 'f_announce', 0, 1, 0),
(3, 'f_attach', 0, 1, 0),
(4, 'f_bbcode', 0, 1, 0),
(5, 'f_bump', 0, 1, 0),
(6, 'f_delete', 0, 1, 0),
(7, 'f_download', 0, 1, 0),
(8, 'f_edit', 0, 1, 0),
(9, 'f_email', 0, 1, 0),
(10, 'f_flash', 0, 1, 0),
(11, 'f_icons', 0, 1, 0),
(12, 'f_ignoreflood', 0, 1, 0),
(13, 'f_img', 0, 1, 0),
(14, 'f_list', 0, 1, 0),
(15, 'f_noapprove', 0, 1, 0),
(16, 'f_poll', 0, 1, 0),
(17, 'f_post', 0, 1, 0),
(18, 'f_postcount', 0, 1, 0),
(19, 'f_print', 0, 1, 0),
(20, 'f_read', 0, 1, 0),
(21, 'f_reply', 0, 1, 0),
(22, 'f_report', 0, 1, 0),
(23, 'f_search', 0, 1, 0),
(24, 'f_sigs', 0, 1, 0),
(25, 'f_smilies', 0, 1, 0),
(26, 'f_sticky', 0, 1, 0),
(27, 'f_subscribe', 0, 1, 0),
(28, 'f_user_lock', 0, 1, 0),
(29, 'f_vote', 0, 1, 0),
(30, 'f_votechg', 0, 1, 0),
(31, 'm_', 1, 1, 0),
(32, 'm_approve', 1, 1, 0),
(33, 'm_chgposter', 1, 1, 0),
(34, 'm_delete', 1, 1, 0),
(35, 'm_edit', 1, 1, 0),
(36, 'm_info', 1, 1, 0),
(37, 'm_lock', 1, 1, 0),
(38, 'm_merge', 1, 1, 0),
(39, 'm_move', 1, 1, 0),
(40, 'm_report', 1, 1, 0),
(41, 'm_split', 1, 1, 0),
(42, 'm_ban', 1, 0, 0),
(43, 'm_warn', 1, 0, 0),
(44, 'a_', 1, 0, 0),
(45, 'a_aauth', 1, 0, 0),
(46, 'a_attach', 1, 0, 0),
(47, 'a_authgroups', 1, 0, 0),
(48, 'a_authusers', 1, 0, 0),
(49, 'a_backup', 1, 0, 0),
(50, 'a_ban', 1, 0, 0),
(51, 'a_bbcode', 1, 0, 0),
(52, 'a_board', 1, 0, 0),
(53, 'a_bots', 1, 0, 0),
(54, 'a_clearlogs', 1, 0, 0),
(55, 'a_email', 1, 0, 0),
(56, 'a_fauth', 1, 0, 0),
(57, 'a_forum', 1, 0, 0),
(58, 'a_forumadd', 1, 0, 0),
(59, 'a_forumdel', 1, 0, 0),
(60, 'a_group', 1, 0, 0),
(61, 'a_groupadd', 1, 0, 0),
(62, 'a_groupdel', 1, 0, 0),
(63, 'a_icons', 1, 0, 0),
(64, 'a_jabber', 1, 0, 0),
(65, 'a_language', 1, 0, 0),
(66, 'a_mauth', 1, 0, 0),
(67, 'a_modules', 1, 0, 0),
(68, 'a_names', 1, 0, 0),
(69, 'a_phpinfo', 1, 0, 0),
(70, 'a_profile', 1, 0, 0),
(71, 'a_prune', 1, 0, 0),
(72, 'a_ranks', 1, 0, 0),
(73, 'a_reasons', 1, 0, 0),
(74, 'a_roles', 1, 0, 0),
(75, 'a_search', 1, 0, 0),
(76, 'a_server', 1, 0, 0),
(77, 'a_styles', 1, 0, 0),
(78, 'a_switchperm', 1, 0, 0),
(79, 'a_uauth', 1, 0, 0),
(80, 'a_user', 1, 0, 0),
(81, 'a_userdel', 1, 0, 0),
(82, 'a_viewauth', 1, 0, 0),
(83, 'a_viewlogs', 1, 0, 0),
(84, 'a_words', 1, 0, 0),
(85, 'u_', 1, 0, 0),
(86, 'u_attach', 1, 0, 0),
(87, 'u_chgavatar', 1, 0, 0),
(88, 'u_chgcensors', 1, 0, 0),
(89, 'u_chgemail', 1, 0, 0),
(90, 'u_chggrp', 1, 0, 0),
(91, 'u_chgname', 1, 0, 0),
(92, 'u_chgpasswd', 1, 0, 0),
(93, 'u_download', 1, 0, 0),
(94, 'u_hideonline', 1, 0, 0),
(95, 'u_ignoreflood', 1, 0, 0),
(96, 'u_masspm', 1, 0, 0),
(97, 'u_masspm_group', 1, 0, 0),
(98, 'u_pm_attach', 1, 0, 0),
(99, 'u_pm_bbcode', 1, 0, 0),
(100, 'u_pm_delete', 1, 0, 0),
(101, 'u_pm_download', 1, 0, 0),
(102, 'u_pm_edit', 1, 0, 0),
(103, 'u_pm_emailpm', 1, 0, 0),
(104, 'u_pm_flash', 1, 0, 0),
(105, 'u_pm_forward', 1, 0, 0),
(106, 'u_pm_img', 1, 0, 0),
(107, 'u_pm_printpm', 1, 0, 0),
(108, 'u_pm_smilies', 1, 0, 0),
(109, 'u_readpm', 1, 0, 0),
(110, 'u_savedrafts', 1, 0, 0),
(111, 'u_search', 1, 0, 0),
(112, 'u_sendemail', 1, 0, 0),
(113, 'u_sendim', 1, 0, 0),
(114, 'u_sendpm', 1, 0, 0),
(115, 'u_sig', 1, 0, 0),
(116, 'u_viewonline', 1, 0, 0),
(117, 'u_viewprofile', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_roles`
--

CREATE TABLE IF NOT EXISTS `phpbb_acl_roles` (
  `role_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`),
  KEY `role_type` (`role_type`),
  KEY `role_order` (`role_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=25 ;

--
-- Dumping data for table `phpbb_acl_roles`
--

INSERT INTO `phpbb_acl_roles` (`role_id`, `role_name`, `role_description`, `role_type`, `role_order`) VALUES
(1, 'ROLE_ADMIN_STANDARD', 0x524f4c455f4445534352495054494f4e5f41444d494e5f5354414e44415244, 'a_', 1),
(2, 'ROLE_ADMIN_FORUM', 0x524f4c455f4445534352495054494f4e5f41444d494e5f464f52554d, 'a_', 3),
(3, 'ROLE_ADMIN_USERGROUP', 0x524f4c455f4445534352495054494f4e5f41444d494e5f5553455247524f5550, 'a_', 4),
(4, 'ROLE_ADMIN_FULL', 0x524f4c455f4445534352495054494f4e5f41444d494e5f46554c4c, 'a_', 2),
(5, 'ROLE_USER_FULL', 0x524f4c455f4445534352495054494f4e5f555345525f46554c4c, 'u_', 3),
(6, 'ROLE_USER_STANDARD', 0x524f4c455f4445534352495054494f4e5f555345525f5354414e44415244, 'u_', 1),
(7, 'ROLE_USER_LIMITED', 0x524f4c455f4445534352495054494f4e5f555345525f4c494d49544544, 'u_', 2),
(8, 'ROLE_USER_NOPM', 0x524f4c455f4445534352495054494f4e5f555345525f4e4f504d, 'u_', 4),
(9, 'ROLE_USER_NOAVATAR', 0x524f4c455f4445534352495054494f4e5f555345525f4e4f415641544152, 'u_', 5),
(10, 'ROLE_MOD_FULL', 0x524f4c455f4445534352495054494f4e5f4d4f445f46554c4c, 'm_', 3),
(11, 'ROLE_MOD_STANDARD', 0x524f4c455f4445534352495054494f4e5f4d4f445f5354414e44415244, 'm_', 1),
(12, 'ROLE_MOD_SIMPLE', 0x524f4c455f4445534352495054494f4e5f4d4f445f53494d504c45, 'm_', 2),
(13, 'ROLE_MOD_QUEUE', 0x524f4c455f4445534352495054494f4e5f4d4f445f5155455545, 'm_', 4),
(14, 'ROLE_FORUM_FULL', 0x524f4c455f4445534352495054494f4e5f464f52554d5f46554c4c, 'f_', 7),
(15, 'ROLE_FORUM_STANDARD', 0x524f4c455f4445534352495054494f4e5f464f52554d5f5354414e44415244, 'f_', 5),
(16, 'ROLE_FORUM_NOACCESS', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4e4f414343455353, 'f_', 1),
(17, 'ROLE_FORUM_READONLY', 0x524f4c455f4445534352495054494f4e5f464f52554d5f524541444f4e4c59, 'f_', 2),
(18, 'ROLE_FORUM_LIMITED', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4c494d49544544, 'f_', 3),
(19, 'ROLE_FORUM_BOT', 0x524f4c455f4445534352495054494f4e5f464f52554d5f424f54, 'f_', 9),
(20, 'ROLE_FORUM_ONQUEUE', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4f4e5155455545, 'f_', 8),
(21, 'ROLE_FORUM_POLLS', 0x524f4c455f4445534352495054494f4e5f464f52554d5f504f4c4c53, 'f_', 6),
(22, 'ROLE_FORUM_LIMITED_POLLS', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4c494d495445445f504f4c4c53, 'f_', 4),
(23, 'ROLE_USER_NEW_MEMBER', 0x524f4c455f4445534352495054494f4e5f555345525f4e45575f4d454d424552, 'u_', 6),
(24, 'ROLE_FORUM_NEW_MEMBER', 0x524f4c455f4445534352495054494f4e5f464f52554d5f4e45575f4d454d424552, 'f_', 10);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_roles_data`
--

CREATE TABLE IF NOT EXISTS `phpbb_acl_roles_data` (
  `role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`auth_option_id`),
  KEY `ath_op_id` (`auth_option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_roles_data`
--

INSERT INTO `phpbb_acl_roles_data` (`role_id`, `auth_option_id`, `auth_setting`) VALUES
(1, 44, 1),
(1, 46, 1),
(1, 47, 1),
(1, 48, 1),
(1, 50, 1),
(1, 51, 1),
(1, 52, 1),
(1, 56, 1),
(1, 57, 1),
(1, 58, 1),
(1, 59, 1),
(1, 60, 1),
(1, 61, 1),
(1, 62, 1),
(1, 63, 1),
(1, 66, 1),
(1, 68, 1),
(1, 70, 1),
(1, 71, 1),
(1, 72, 1),
(1, 73, 1),
(1, 79, 1),
(1, 80, 1),
(1, 81, 1),
(1, 82, 1),
(1, 83, 1),
(1, 84, 1),
(2, 44, 1),
(2, 47, 1),
(2, 48, 1),
(2, 56, 1),
(2, 57, 1),
(2, 58, 1),
(2, 59, 1),
(2, 66, 1),
(2, 71, 1),
(2, 79, 1),
(2, 82, 1),
(2, 83, 1),
(3, 44, 1),
(3, 47, 1),
(3, 48, 1),
(3, 50, 1),
(3, 60, 1),
(3, 61, 1),
(3, 62, 1),
(3, 72, 1),
(3, 79, 1),
(3, 80, 1),
(3, 82, 1),
(3, 83, 1),
(4, 44, 1),
(4, 45, 1),
(4, 46, 1),
(4, 47, 1),
(4, 48, 1),
(4, 49, 1),
(4, 50, 1),
(4, 51, 1),
(4, 52, 1),
(4, 53, 1),
(4, 54, 1),
(4, 55, 1),
(4, 56, 1),
(4, 57, 1),
(4, 58, 1),
(4, 59, 1),
(4, 60, 1),
(4, 61, 1),
(4, 62, 1),
(4, 63, 1),
(4, 64, 1),
(4, 65, 1),
(4, 66, 1),
(4, 67, 1),
(4, 68, 1),
(4, 69, 1),
(4, 70, 1),
(4, 71, 1),
(4, 72, 1),
(4, 73, 1),
(4, 74, 1),
(4, 75, 1),
(4, 76, 1),
(4, 77, 1),
(4, 78, 1),
(4, 79, 1),
(4, 80, 1),
(4, 81, 1),
(4, 82, 1),
(4, 83, 1),
(4, 84, 1),
(5, 85, 1),
(5, 86, 1),
(5, 87, 1),
(5, 88, 1),
(5, 89, 1),
(5, 90, 1),
(5, 91, 1),
(5, 92, 1),
(5, 93, 1),
(5, 94, 1),
(5, 95, 1),
(5, 96, 1),
(5, 97, 1),
(5, 98, 1),
(5, 99, 1),
(5, 100, 1),
(5, 101, 1),
(5, 102, 1),
(5, 103, 1),
(5, 104, 1),
(5, 105, 1),
(5, 106, 1),
(5, 107, 1),
(5, 108, 1),
(5, 109, 1),
(5, 110, 1),
(5, 111, 1),
(5, 112, 1),
(5, 113, 1),
(5, 114, 1),
(5, 115, 1),
(5, 116, 1),
(5, 117, 1),
(6, 85, 1),
(6, 86, 1),
(6, 87, 1),
(6, 88, 1),
(6, 89, 1),
(6, 92, 1),
(6, 93, 1),
(6, 94, 1),
(6, 96, 1),
(6, 97, 1),
(6, 98, 1),
(6, 99, 1),
(6, 100, 1),
(6, 101, 1),
(6, 102, 1),
(6, 103, 1),
(6, 106, 1),
(6, 107, 1),
(6, 108, 1),
(6, 109, 1),
(6, 110, 1),
(6, 111, 1),
(6, 112, 1),
(6, 113, 1),
(6, 114, 1),
(6, 115, 1),
(6, 117, 1),
(7, 85, 1),
(7, 87, 1),
(7, 88, 1),
(7, 89, 1),
(7, 92, 1),
(7, 93, 1),
(7, 94, 1),
(7, 99, 1),
(7, 100, 1),
(7, 101, 1),
(7, 102, 1),
(7, 105, 1),
(7, 106, 1),
(7, 107, 1),
(7, 108, 1),
(7, 109, 1),
(7, 114, 1),
(7, 115, 1),
(7, 117, 1),
(8, 85, 1),
(8, 87, 1),
(8, 88, 1),
(8, 89, 1),
(8, 92, 1),
(8, 93, 1),
(8, 94, 1),
(8, 115, 1),
(8, 117, 1),
(8, 96, 0),
(8, 97, 0),
(8, 109, 0),
(8, 114, 0),
(9, 85, 1),
(9, 88, 1),
(9, 89, 1),
(9, 92, 1),
(9, 93, 1),
(9, 94, 1),
(9, 99, 1),
(9, 100, 1),
(9, 101, 1),
(9, 102, 1),
(9, 105, 1),
(9, 106, 1),
(9, 107, 1),
(9, 108, 1),
(9, 109, 1),
(9, 114, 1),
(9, 115, 1),
(9, 117, 1),
(9, 87, 0),
(9, 96, 0),
(9, 97, 0),
(10, 31, 1),
(10, 32, 1),
(10, 42, 1),
(10, 33, 1),
(10, 34, 1),
(10, 35, 1),
(10, 36, 1),
(10, 37, 1),
(10, 38, 1),
(10, 39, 1),
(10, 40, 1),
(10, 41, 1),
(10, 43, 1),
(11, 31, 1),
(11, 32, 1),
(11, 34, 1),
(11, 35, 1),
(11, 36, 1),
(11, 37, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 43, 1),
(12, 31, 1),
(12, 34, 1),
(12, 35, 1),
(12, 36, 1),
(12, 40, 1),
(13, 31, 1),
(13, 32, 1),
(13, 35, 1),
(14, 1, 1),
(14, 2, 1),
(14, 3, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 1),
(14, 7, 1),
(14, 8, 1),
(14, 9, 1),
(14, 10, 1),
(14, 11, 1),
(14, 12, 1),
(14, 13, 1),
(14, 14, 1),
(14, 15, 1),
(14, 16, 1),
(14, 17, 1),
(14, 18, 1),
(14, 19, 1),
(14, 20, 1),
(14, 21, 1),
(14, 22, 1),
(14, 23, 1),
(14, 24, 1),
(14, 25, 1),
(14, 26, 1),
(14, 27, 1),
(14, 28, 1),
(14, 29, 1),
(14, 30, 1),
(15, 1, 1),
(15, 3, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 11, 1),
(15, 13, 1),
(15, 14, 1),
(15, 15, 1),
(15, 17, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 27, 1),
(15, 29, 1),
(15, 30, 1),
(16, 1, 0),
(17, 1, 1),
(17, 7, 1),
(17, 14, 1),
(17, 19, 1),
(17, 20, 1),
(17, 23, 1),
(17, 27, 1),
(18, 1, 1),
(18, 4, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 13, 1),
(18, 14, 1),
(18, 15, 1),
(18, 17, 1),
(18, 18, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 27, 1),
(18, 29, 1),
(19, 1, 1),
(19, 7, 1),
(19, 14, 1),
(19, 19, 1),
(19, 20, 1),
(20, 1, 1),
(20, 3, 1),
(20, 4, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 13, 1),
(20, 14, 1),
(20, 17, 1),
(20, 18, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 27, 1),
(20, 29, 1),
(20, 15, 0),
(21, 1, 1),
(21, 3, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 11, 1),
(21, 13, 1),
(21, 14, 1),
(21, 15, 1),
(21, 16, 1),
(21, 17, 1),
(21, 18, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 27, 1),
(21, 29, 1),
(21, 30, 1),
(22, 1, 1),
(22, 4, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 13, 1),
(22, 14, 1),
(22, 15, 1),
(22, 16, 1),
(22, 17, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 27, 1),
(22, 29, 1),
(23, 96, 0),
(23, 97, 0),
(23, 114, 0),
(24, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_users`
--

CREATE TABLE IF NOT EXISTS `phpbb_acl_users` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `user_id` (`user_id`),
  KEY `auth_option_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_users`
--

INSERT INTO `phpbb_acl_users` (`user_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(2, 0, 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_attachments`
--

CREATE TABLE IF NOT EXISTS `phpbb_attachments` (
  `attach_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `post_msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `in_message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `filetime` int(11) unsigned NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attach_id`),
  KEY `filetime` (`filetime`),
  KEY `post_msg_id` (`post_msg_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `is_orphan` (`is_orphan`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_attachments`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_banlist`
--

CREATE TABLE IF NOT EXISTS `phpbb_banlist` (
  `ban_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ban_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_end` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ban_id`),
  KEY `ban_end` (`ban_end`),
  KEY `ban_user` (`ban_userid`,`ban_exclude`),
  KEY `ban_email` (`ban_email`,`ban_exclude`),
  KEY `ban_ip` (`ban_ip`,`ban_exclude`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_banlist`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bbcodes`
--

CREATE TABLE IF NOT EXISTS `phpbb_bbcodes` (
  `bbcode_id` tinyint(3) NOT NULL DEFAULT '0',
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`bbcode_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_bbcodes`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bookmarks`
--

CREATE TABLE IF NOT EXISTS `phpbb_bookmarks` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_bookmarks`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bots`
--

CREATE TABLE IF NOT EXISTS `phpbb_bots` (
  `bot_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bot_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`bot_id`),
  KEY `bot_active` (`bot_active`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=52 ;

--
-- Dumping data for table `phpbb_bots`
--

INSERT INTO `phpbb_bots` (`bot_id`, `bot_active`, `bot_name`, `user_id`, `bot_agent`, `bot_ip`) VALUES
(1, 1, 'AdsBot [Google]', 3, 'AdsBot-Google', ''),
(2, 1, 'Alexa [Bot]', 4, 'ia_archiver', ''),
(3, 1, 'Alta Vista [Bot]', 5, 'Scooter/', ''),
(4, 1, 'Ask Jeeves [Bot]', 6, 'Ask Jeeves', ''),
(5, 1, 'Baidu [Spider]', 7, 'Baiduspider+(', ''),
(6, 1, 'Exabot [Bot]', 8, 'Exabot/', ''),
(7, 1, 'FAST Enterprise [Crawler]', 9, 'FAST Enterprise Crawler', ''),
(8, 1, 'FAST WebCrawler [Crawler]', 10, 'FAST-WebCrawler/', ''),
(9, 1, 'Francis [Bot]', 11, 'http://www.neomo.de/', ''),
(10, 1, 'Gigabot [Bot]', 12, 'Gigabot/', ''),
(11, 1, 'Google Adsense [Bot]', 13, 'Mediapartners-Google', ''),
(12, 1, 'Google Desktop', 14, 'Google Desktop', ''),
(13, 1, 'Google Feedfetcher', 15, 'Feedfetcher-Google', ''),
(14, 1, 'Google [Bot]', 16, 'Googlebot', ''),
(15, 1, 'Heise IT-Markt [Crawler]', 17, 'heise-IT-Markt-Crawler', ''),
(16, 1, 'Heritrix [Crawler]', 18, 'heritrix/1.', ''),
(17, 1, 'IBM Research [Bot]', 19, 'ibm.com/cs/crawler', ''),
(18, 1, 'ICCrawler - ICjobs', 20, 'ICCrawler - ICjobs', ''),
(19, 1, 'ichiro [Crawler]', 21, 'ichiro/', ''),
(20, 1, 'Majestic-12 [Bot]', 22, 'MJ12bot/', ''),
(21, 1, 'Metager [Bot]', 23, 'MetagerBot/', ''),
(22, 1, 'MSN NewsBlogs', 24, 'msnbot-NewsBlogs/', ''),
(23, 1, 'MSN [Bot]', 25, 'msnbot/', ''),
(24, 1, 'MSNbot Media', 26, 'msnbot-media/', ''),
(25, 1, 'NG-Search [Bot]', 27, 'NG-Search/', ''),
(26, 1, 'Nutch [Bot]', 28, 'http://lucene.apache.org/nutch/', ''),
(27, 1, 'Nutch/CVS [Bot]', 29, 'NutchCVS/', ''),
(28, 1, 'OmniExplorer [Bot]', 30, 'OmniExplorer_Bot/', ''),
(29, 1, 'Online link [Validator]', 31, 'online link validator', ''),
(30, 1, 'psbot [Picsearch]', 32, 'psbot/0', ''),
(31, 1, 'Seekport [Bot]', 33, 'Seekbot/', ''),
(32, 1, 'Sensis [Crawler]', 34, 'Sensis Web Crawler', ''),
(33, 1, 'SEO Crawler', 35, 'SEO search Crawler/', ''),
(34, 1, 'Seoma [Crawler]', 36, 'Seoma [SEO Crawler]', ''),
(35, 1, 'SEOSearch [Crawler]', 37, 'SEOsearch/', ''),
(36, 1, 'Snappy [Bot]', 38, 'Snappy/1.1 ( http://www.urltrends.com/ )', ''),
(37, 1, 'Steeler [Crawler]', 39, 'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/', ''),
(38, 1, 'Synoo [Bot]', 40, 'SynooBot/', ''),
(39, 1, 'Telekom [Bot]', 41, 'crawleradmin.t-info@telekom.de', ''),
(40, 1, 'TurnitinBot [Bot]', 42, 'TurnitinBot/', ''),
(41, 1, 'Voyager [Bot]', 43, 'voyager/1.0', ''),
(42, 1, 'W3 [Sitesearch]', 44, 'W3 SiteSearch Crawler', ''),
(43, 1, 'W3C [Linkcheck]', 45, 'W3C-checklink/', ''),
(44, 1, 'W3C [Validator]', 46, 'W3C_*Validator', ''),
(45, 1, 'WiseNut [Bot]', 47, 'http://www.WISEnutbot.com', ''),
(46, 1, 'YaCy [Bot]', 48, 'yacybot', ''),
(47, 1, 'Yahoo MMCrawler [Bot]', 49, 'Yahoo-MMCrawler/', ''),
(48, 1, 'Yahoo Slurp [Bot]', 50, 'Yahoo! DE Slurp', ''),
(49, 1, 'Yahoo [Bot]', 51, 'Yahoo! Slurp', ''),
(50, 1, 'YahooSeeker [Bot]', 52, 'YahooSeeker/', ''),
(51, 1, 'Bing [Bot]', 53, 'bingbot/', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_config`
--

CREATE TABLE IF NOT EXISTS `phpbb_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`config_name`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_config`
--

INSERT INTO `phpbb_config` (`config_name`, `config_value`, `is_dynamic`) VALUES
('active_sessions', '0', 0),
('allow_attachments', '1', 0),
('allow_autologin', '1', 0),
('allow_avatar', '0', 0),
('allow_avatar_local', '0', 0),
('allow_avatar_remote', '0', 0),
('allow_avatar_upload', '0', 0),
('allow_avatar_remote_upload', '0', 0),
('allow_bbcode', '1', 0),
('allow_birthdays', '1', 0),
('allow_bookmarks', '1', 0),
('allow_emailreuse', '0', 0),
('allow_forum_notify', '1', 0),
('allow_mass_pm', '1', 0),
('allow_name_chars', 'USERNAME_CHARS_ANY', 0),
('allow_namechange', '0', 0),
('allow_nocensors', '0', 0),
('allow_pm_attach', '0', 0),
('allow_pm_report', '1', 0),
('allow_post_flash', '1', 0),
('allow_post_links', '1', 0),
('allow_privmsg', '1', 0),
('allow_quick_reply', '1', 0),
('allow_sig', '1', 0),
('allow_sig_bbcode', '1', 0),
('allow_sig_flash', '0', 0),
('allow_sig_img', '1', 0),
('allow_sig_links', '1', 0),
('allow_sig_pm', '1', 0),
('allow_sig_smilies', '1', 0),
('allow_smilies', '1', 0),
('allow_topic_notify', '1', 0),
('attachment_quota', '52428800', 0),
('auth_bbcode_pm', '1', 0),
('auth_flash_pm', '0', 0),
('auth_img_pm', '1', 0),
('auth_method', 'db', 0),
('auth_smilies_pm', '1', 0),
('avatar_filesize', '6144', 0),
('avatar_gallery_path', 'images/avatars/gallery', 0),
('avatar_max_height', '90', 0),
('avatar_max_width', '90', 0),
('avatar_min_height', '20', 0),
('avatar_min_width', '20', 0),
('avatar_path', 'images/avatars/upload', 0),
('avatar_salt', '5bbf34d62aaacf6fe41684eec6c2e98d', 0),
('board_contact', 'kerufe@gmail.com', 0),
('board_disable', '0', 0),
('board_disable_msg', '', 0),
('board_dst', '0', 0),
('board_email', 'kerufe@gmail.com', 0),
('board_email_form', '0', 0),
('board_email_sig', 'Thanks, The Management', 0),
('board_hide_emails', '1', 0),
('board_timezone', '-5', 0),
('browser_check', '1', 0),
('bump_interval', '10', 0),
('bump_type', 'd', 0),
('cache_gc', '7200', 0),
('captcha_plugin', 'phpbb_captcha_gd', 0),
('captcha_gd', '1', 0),
('captcha_gd_foreground_noise', '0', 0),
('captcha_gd_x_grid', '25', 0),
('captcha_gd_y_grid', '25', 0),
('captcha_gd_wave', '0', 0),
('captcha_gd_3d_noise', '1', 0),
('captcha_gd_fonts', '1', 0),
('confirm_refresh', '1', 0),
('check_attachment_content', '1', 0),
('check_dnsbl', '0', 0),
('chg_passforce', '0', 0),
('cookie_domain', '.40forty.com', 0),
('cookie_name', 'phpbb3_t2asw', 0),
('cookie_path', '/', 0),
('cookie_secure', '0', 0),
('coppa_enable', '0', 0),
('coppa_fax', '', 0),
('coppa_mail', '', 0),
('database_gc', '604800', 0),
('dbms_version', '5.1.52', 0),
('default_dateformat', 'D M d, Y g:i a', 0),
('default_style', '11', 0),
('display_last_edited', '1', 0),
('display_order', '0', 0),
('edit_time', '0', 0),
('delete_time', '0', 0),
('email_check_mx', '1', 0),
('email_enable', '1', 0),
('email_function_name', 'mail', 0),
('email_package_size', '20', 0),
('enable_confirm', '1', 0),
('enable_pm_icons', '1', 0),
('enable_post_confirm', '1', 0),
('feed_enable', '0', 0),
('feed_http_auth', '0', 0),
('feed_limit_post', '15', 0),
('feed_limit_topic', '10', 0),
('feed_overall_forums', '0', 0),
('feed_overall', '1', 0),
('feed_forum', '1', 0),
('feed_topic', '1', 0),
('feed_topics_new', '1', 0),
('feed_topics_active', '0', 0),
('feed_item_statistics', '1', 0),
('flood_interval', '15', 0),
('force_server_vars', '0', 0),
('form_token_lifetime', '7200', 0),
('form_token_mintime', '0', 0),
('form_token_sid_guests', '1', 0),
('forward_pm', '1', 0),
('forwarded_for_check', '0', 0),
('full_folder_action', '2', 0),
('fulltext_mysql_max_word_len', '254', 0),
('fulltext_mysql_min_word_len', '4', 0),
('fulltext_native_common_thres', '5', 0),
('fulltext_native_load_upd', '1', 0),
('fulltext_native_max_chars', '14', 0),
('fulltext_native_min_chars', '3', 0),
('gzip_compress', '0', 0),
('hot_threshold', '25', 0),
('icons_path', 'images/icons', 0),
('img_create_thumbnail', '0', 0),
('img_display_inlined', '1', 0),
('img_imagick', '/usr/bin/', 0),
('img_link_height', '0', 0),
('img_link_width', '0', 0),
('img_max_height', '0', 0),
('img_max_thumb_width', '400', 0),
('img_max_width', '0', 0),
('img_min_thumb_filesize', '12000', 0),
('ip_check', '3', 0),
('jab_enable', '0', 0),
('jab_host', '', 0),
('jab_password', '', 0),
('jab_package_size', '20', 0),
('jab_port', '5222', 0),
('jab_use_ssl', '0', 0),
('jab_username', '', 0),
('ldap_base_dn', '', 0),
('ldap_email', '', 0),
('ldap_password', '', 0),
('ldap_port', '', 0),
('ldap_server', '', 0),
('ldap_uid', '', 0),
('ldap_user', '', 0),
('ldap_user_filter', '', 0),
('limit_load', '0', 0),
('limit_search_load', '0', 0),
('load_anon_lastread', '0', 0),
('load_birthdays', '1', 0),
('load_cpf_memberlist', '0', 0),
('load_cpf_viewprofile', '1', 0),
('load_cpf_viewtopic', '0', 0),
('load_db_lastread', '1', 0),
('load_db_track', '1', 0),
('load_jumpbox', '1', 0),
('load_moderators', '1', 0),
('load_online', '1', 0),
('load_online_guests', '1', 0),
('load_online_time', '5', 0),
('load_onlinetrack', '1', 0),
('load_search', '1', 0),
('load_tplcompile', '0', 0),
('load_user_activity', '1', 0),
('max_attachments', '3', 0),
('max_attachments_pm', '1', 0),
('max_autologin_time', '0', 0),
('max_filesize', '262144', 0),
('max_filesize_pm', '262144', 0),
('max_login_attempts', '3', 0),
('max_name_chars', '20', 0),
('max_num_search_keywords', '10', 0),
('max_pass_chars', '100', 0),
('max_poll_options', '10', 0),
('max_post_chars', '60000', 0),
('max_post_font_size', '200', 0),
('max_post_img_height', '0', 0),
('max_post_img_width', '0', 0),
('max_post_smilies', '0', 0),
('max_post_urls', '0', 0),
('max_quote_depth', '3', 0),
('max_reg_attempts', '5', 0),
('max_sig_chars', '255', 0),
('max_sig_font_size', '200', 0),
('max_sig_img_height', '0', 0),
('max_sig_img_width', '0', 0),
('max_sig_smilies', '0', 0),
('max_sig_urls', '5', 0),
('min_name_chars', '3', 0),
('min_pass_chars', '6', 0),
('min_post_chars', '1', 0),
('min_search_author_chars', '3', 0),
('mime_triggers', 'body|head|html|img|plaintext|a href|pre|script|table|title', 0),
('new_member_post_limit', '3', 0),
('new_member_group_default', '0', 0),
('override_user_style', '0', 0),
('pass_complex', 'PASS_TYPE_ANY', 0),
('pm_edit_time', '0', 0),
('pm_max_boxes', '4', 0),
('pm_max_msgs', '50', 0),
('pm_max_recipients', '0', 0),
('posts_per_page', '10', 0),
('print_pm', '1', 0),
('queue_interval', '60', 0),
('ranks_path', 'images/ranks', 0),
('require_activation', '0', 0),
('referer_validation', '1', 0),
('script_path', '/phpBB3', 0),
('search_block_size', '250', 0),
('search_gc', '7200', 0),
('search_interval', '0', 0),
('search_anonymous_interval', '0', 0),
('search_type', 'fulltext_native', 0),
('search_store_results', '1800', 0),
('secure_allow_deny', '1', 0),
('secure_allow_empty_referer', '1', 0),
('secure_downloads', '0', 0),
('server_name', 'www.40forty.com', 0),
('server_port', '80', 0),
('server_protocol', 'http://', 0),
('session_gc', '3600', 0),
('session_length', '3600', 0),
('site_desc', 'Questions, ideas for future game modes, and anything else goes here', 0),
('sitename', '40Forty Forums', 0),
('smilies_path', 'images/smilies', 0),
('smilies_per_page', '50', 0),
('smtp_auth_method', 'PLAIN', 0),
('smtp_delivery', '0', 0),
('smtp_host', '', 0),
('smtp_password', '', 0),
('smtp_port', '25', 0),
('smtp_username', '', 0),
('topics_per_page', '25', 0),
('tpl_allow_php', '0', 0),
('upload_icons_path', 'images/upload_icons', 0),
('upload_path', 'files', 0),
('version', '3.0.8', 0),
('warnings_expire_days', '90', 0),
('warnings_gc', '14400', 0),
('cache_last_gc', '1295377685', 1),
('cron_lock', '0', 1),
('database_last_gc', '1295377714', 1),
('last_queue_run', '0', 1),
('newest_user_colour', '', 1),
('newest_user_id', '57', 1),
('newest_username', 'InismintY', 1),
('num_files', '0', 1),
('num_posts', '5', 1),
('num_topics', '1', 1),
('num_users', '5', 1),
('rand_seed', '16b3946f112b8e8d3c6c153df0eb3eac', 1),
('rand_seed_last_update', '1295404742', 1),
('record_online_date', '1291999061', 1),
('record_online_users', '5', 1),
('search_indexing_state', '', 1),
('search_last_gc', '1295379031', 1),
('session_last_gc', '1294094139', 1),
('upload_dir_size', '0', 1),
('warnings_last_gc', '1295377700', 1),
('board_startdate', '1289181601', 0),
('default_lang', 'en', 0),
('questionnaire_unique_id', '7fdb9ff7aa1c1e9f', 0),
('load_unreads_search', '1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_confirm`
--

CREATE TABLE IF NOT EXISTS `phpbb_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT '0',
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) unsigned NOT NULL DEFAULT '0',
  `attempts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`,`confirm_id`),
  KEY `confirm_type` (`confirm_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_confirm`
--

INSERT INTO `phpbb_confirm` (`confirm_id`, `session_id`, `confirm_type`, `code`, `seed`, `attempts`) VALUES
('9cd18d36bd9e7bb3bd30795a2fb38657', '9b52b66448926708025b714a8bcc07e7', 1, '4WV5E', 1383154411, 1),
('a172fd6a21056c22b492a3b961ebe9d7', '1508a0c0825ff5b7fe2424ae8563ff5a', 1, '4U3TA5', 811474815, 1),
('e6bbee8d7bad2c5c436ffe06b2ec271f', 'e47fc701b6d6f10bb73a41a227b8bfaa', 1, '6LUXZ', 1596301727, 72),
('a7759c66f339b8288e1a0f6ef0d068ec', '0aa8b1d54ef53fd9b51c22bd307823d3', 1, '1FZI', 608872255, 1),
('afa904f2ceb39d66749cf86899168299', 'e7db16bbec224c8da8d3061f304fa512', 1, '399JU', 1916049076, 1),
('76b9a42b480646bd7f3d12be05a2aa6b', '8b96b6bf763ec0e156f75f38c8fcc010', 1, 'PPKMVZ5', 1673479330, 48),
('27488fa2c5ad62522a5af514d3e4d353', '975997ece3d3fee694050ad2b8dd1d17', 3, '3P1T27I', 738507838, 0),
('ac03510b4f98c6b3448b95dee51f87b8', '975997ece3d3fee694050ad2b8dd1d17', 3, '5V3K', 2056964480, 0),
('87dad28f0e585047cbfff087e8476acb', '975997ece3d3fee694050ad2b8dd1d17', 1, '66MD1UJ', 1006158892, 1),
('d07a0fd294940acd658d1dabe50eba15', '9efba6ee37ca217f16494588a3b65db2', 1, '5TNXEMR', 1431917230, 48),
('48740f4745a7de966471a0a9ea8a96f7', '86eb293dfb231843a2bb7308cf24a075', 1, '4V2VFN', 629450003, 26),
('60fa5c2183cc7be5c3907c40ec6e67d2', '1edd1e2fb7503bbddedd1fdb2338e2be', 1, '7YFZRE', 905458694, 26),
('18f80bc25f0e13f008d945ae0a2776fa', 'dbaa2ddd1542be2fd33be7dd25964815', 1, '1T2F', 97755691, 48),
('9c6c3953ea0323e6083c4a5655ae8876', 'd735c7acb5328a1c7de11fef877a572a', 1, '2C17S2V', 885872655, 32),
('f6202c47fb3c23402ef37a165e9ce607', '90803bf6b1701c523cb4fc690c876204', 1, 'FSLSYF', 1970359349, 18),
('248d895dcae4007a75b258e3b6b07474', '646eec6b6a8225901e1d867ea44b9d6b', 1, '3WRA7', 1101647256, 0),
('5a98a2f6d9d8616498b6ec4b34fe579d', '822bd72cc265c1fff935e13df5166add', 1, '56Z8', 789829664, 26),
('4d21dab288cf4fe574f4f907cf7c24a2', '5e85adb3e7d99b4a6b5106f44c7cfceb', 1, '5VM5VTD', 1034642594, 48),
('a7cc381e4715e5bc17d031fc3afcdbea', 'a7773cec1c619bbd9a68eae5de034ee4', 1, '5LJU', 208528935, 26),
('d7dc81814101117a8787b7daabacb993', '0d1023a3387c300af8ece71b759d5c67', 1, '1T7M', 634224602, 0),
('d2e9a9c640da079c667cd0354bad8c0c', 'f3debd7456fb9162aea835c37feb530f', 1, '5B6FB', 1531743624, 14),
('b628d09a3c6d43704c601c59bd3c0fac', 'cf0c12cdb206828a6d738b4ec35c11d6', 1, '3N1EDG', 1694081302, 0),
('278132529defa26b28d6bf7e72f67531', '5e693821cfeaffbe986b496bd3537cba', 1, '6UII', 2144864701, 48),
('48a250536d0e9a5598eae6c99afda647', '5bdaa18f16669d23b3a344f74870d4af', 1, '2X3Q', 966167071, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_disallow`
--

CREATE TABLE IF NOT EXISTS `phpbb_disallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`disallow_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_disallow`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_drafts`
--

CREATE TABLE IF NOT EXISTS `phpbb_drafts` (
  `draft_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `save_time` int(11) unsigned NOT NULL DEFAULT '0',
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`draft_id`),
  KEY `save_time` (`save_time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_drafts`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_extension_groups`
--

CREATE TABLE IF NOT EXISTS `phpbb_extension_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Dumping data for table `phpbb_extension_groups`
--

INSERT INTO `phpbb_extension_groups` (`group_id`, `group_name`, `cat_id`, `allow_group`, `download_mode`, `upload_icon`, `max_filesize`, `allowed_forums`, `allow_in_pm`) VALUES
(1, 'IMAGES', 1, 1, 1, '', 0, '', 0),
(2, 'ARCHIVES', 0, 1, 1, '', 0, '', 0),
(3, 'PLAIN_TEXT', 0, 0, 1, '', 0, '', 0),
(4, 'DOCUMENTS', 0, 0, 1, '', 0, '', 0),
(5, 'REAL_MEDIA', 3, 0, 1, '', 0, '', 0),
(6, 'WINDOWS_MEDIA', 2, 0, 1, '', 0, '', 0),
(7, 'FLASH_FILES', 5, 0, 1, '', 0, '', 0),
(8, 'QUICKTIME_MEDIA', 6, 0, 1, '', 0, '', 0),
(9, 'DOWNLOADABLE_FILES', 0, 0, 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_extensions`
--

CREATE TABLE IF NOT EXISTS `phpbb_extensions` (
  `extension_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=67 ;

--
-- Dumping data for table `phpbb_extensions`
--

INSERT INTO `phpbb_extensions` (`extension_id`, `group_id`, `extension`) VALUES
(1, 1, 'gif'),
(2, 1, 'png'),
(3, 1, 'jpeg'),
(4, 1, 'jpg'),
(5, 1, 'tif'),
(6, 1, 'tiff'),
(7, 1, 'tga'),
(8, 2, 'gtar'),
(9, 2, 'gz'),
(10, 2, 'tar'),
(11, 2, 'zip'),
(12, 2, 'rar'),
(13, 2, 'ace'),
(14, 2, 'torrent'),
(15, 2, 'tgz'),
(16, 2, 'bz2'),
(17, 2, '7z'),
(18, 3, 'txt'),
(19, 3, 'c'),
(20, 3, 'h'),
(21, 3, 'cpp'),
(22, 3, 'hpp'),
(23, 3, 'diz'),
(24, 3, 'csv'),
(25, 3, 'ini'),
(26, 3, 'log'),
(27, 3, 'js'),
(28, 3, 'xml'),
(29, 4, 'xls'),
(30, 4, 'xlsx'),
(31, 4, 'xlsm'),
(32, 4, 'xlsb'),
(33, 4, 'doc'),
(34, 4, 'docx'),
(35, 4, 'docm'),
(36, 4, 'dot'),
(37, 4, 'dotx'),
(38, 4, 'dotm'),
(39, 4, 'pdf'),
(40, 4, 'ai'),
(41, 4, 'ps'),
(42, 4, 'ppt'),
(43, 4, 'pptx'),
(44, 4, 'pptm'),
(45, 4, 'odg'),
(46, 4, 'odp'),
(47, 4, 'ods'),
(48, 4, 'odt'),
(49, 4, 'rtf'),
(50, 5, 'rm'),
(51, 5, 'ram'),
(52, 6, 'wma'),
(53, 6, 'wmv'),
(54, 7, 'swf'),
(55, 8, 'mov'),
(56, 8, 'm4v'),
(57, 8, 'm4a'),
(58, 8, 'mp4'),
(59, 8, '3gp'),
(60, 8, '3g2'),
(61, 8, 'qt'),
(62, 9, 'mpeg'),
(63, 9, 'mpg'),
(64, 9, 'mp3'),
(65, 9, 'ogg'),
(66, 9, 'ogm');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums`
--

CREATE TABLE IF NOT EXISTS `phpbb_forums` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` tinyint(4) NOT NULL DEFAULT '0',
  `forum_type` tinyint(4) NOT NULL DEFAULT '0',
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_real` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT '32',
  `forum_options` int(20) unsigned NOT NULL DEFAULT '0',
  `display_subforum_list` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_indexing` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_icons` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_prune` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `prune_next` int(11) unsigned NOT NULL DEFAULT '0',
  `prune_days` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_viewed` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_freq` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`forum_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `forum_lastpost_id` (`forum_last_post_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `phpbb_forums`
--

INSERT INTO `phpbb_forums` (`forum_id`, `parent_id`, `left_id`, `right_id`, `forum_parents`, `forum_name`, `forum_desc`, `forum_desc_bitfield`, `forum_desc_options`, `forum_desc_uid`, `forum_link`, `forum_password`, `forum_style`, `forum_image`, `forum_rules`, `forum_rules_link`, `forum_rules_bitfield`, `forum_rules_options`, `forum_rules_uid`, `forum_topics_per_page`, `forum_type`, `forum_status`, `forum_posts`, `forum_topics`, `forum_topics_real`, `forum_last_post_id`, `forum_last_poster_id`, `forum_last_post_subject`, `forum_last_post_time`, `forum_last_poster_name`, `forum_last_poster_colour`, `forum_flags`, `forum_options`, `display_subforum_list`, `display_on_index`, `enable_indexing`, `enable_icons`, `enable_prune`, `prune_next`, `prune_days`, `prune_viewed`, `prune_freq`) VALUES
(1, 0, 1, 4, '', '40Forty App Q&amp;A', 0x41736b207175657374696f6e732c2067657420616e7377657273, '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 1, 1, 1, 1, 2, '', 1289181601, '40FortyAdmin', 'AA0000', 32, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0),
(2, 1, 2, 3, 0x613a313a7b693a313b613a323a7b693a303b733a31393a223430466f72747920417070205126616d703b41223b693a313b693a303b7d7d, 'General', 0x4a75737420706f73742065766572797468696e6720696e206865726520666f72206e6f772c2061732074686520736974652067726f7773206d6f726520666f72756d732077696c6c206265206164646564, '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 5, 1, 3, 11, 2, 'Re: Test', 1292002351, '40FortyAdmin', 'AA0000', 96, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_access`
--

CREATE TABLE IF NOT EXISTS `phpbb_forums_access` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`,`user_id`,`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_forums_access`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_track`
--

CREATE TABLE IF NOT EXISTS `phpbb_forums_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_forums_track`
--

INSERT INTO `phpbb_forums_track` (`user_id`, `forum_id`, `mark_time`) VALUES
(2, 2, 1292002351);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_watch`
--

CREATE TABLE IF NOT EXISTS `phpbb_forums_watch` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_forums_watch`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_groups`
--

CREATE TABLE IF NOT EXISTS `phpbb_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_founder_manage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_skip_auth` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_receive_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_message_limit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_max_recipients` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_legend` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`group_id`),
  KEY `group_legend_name` (`group_legend`,`group_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Dumping data for table `phpbb_groups`
--

INSERT INTO `phpbb_groups` (`group_id`, `group_type`, `group_founder_manage`, `group_skip_auth`, `group_name`, `group_desc`, `group_desc_bitfield`, `group_desc_options`, `group_desc_uid`, `group_display`, `group_avatar`, `group_avatar_type`, `group_avatar_width`, `group_avatar_height`, `group_rank`, `group_colour`, `group_sig_chars`, `group_receive_pm`, `group_message_limit`, `group_max_recipients`, `group_legend`) VALUES
(1, 3, 0, 0, 'GUESTS', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(2, 3, 0, 0, 'REGISTERED', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(3, 3, 0, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0),
(4, 3, 0, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', 0, 0, 0, 0, '00AA00', 0, 0, 0, 0, 1),
(5, 3, 1, 0, 'ADMINISTRATORS', '', '', 7, '', 0, '', 0, 0, 0, 0, 'AA0000', 0, 0, 0, 0, 1),
(6, 3, 0, 0, 'BOTS', '', '', 7, '', 0, '', 0, 0, 0, 0, '9E8DA7', 0, 0, 0, 5, 0),
(7, 3, 0, 0, 'NEWLY_REGISTERED', '', '', 7, '', 0, '', 0, 0, 0, 0, '', 0, 0, 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_icons`
--

CREATE TABLE IF NOT EXISTS `phpbb_icons` (
  `icons_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT '0',
  `icons_height` tinyint(4) NOT NULL DEFAULT '0',
  `icons_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`icons_id`),
  KEY `display_on_posting` (`display_on_posting`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Dumping data for table `phpbb_icons`
--

INSERT INTO `phpbb_icons` (`icons_id`, `icons_url`, `icons_width`, `icons_height`, `icons_order`, `display_on_posting`) VALUES
(1, 'misc/fire.gif', 16, 16, 1, 1),
(2, 'smile/redface.gif', 16, 16, 9, 1),
(3, 'smile/mrgreen.gif', 16, 16, 10, 1),
(4, 'misc/heart.gif', 16, 16, 4, 1),
(5, 'misc/star.gif', 16, 16, 2, 1),
(6, 'misc/radioactive.gif', 16, 16, 3, 1),
(7, 'misc/thinking.gif', 16, 16, 5, 1),
(8, 'smile/info.gif', 16, 16, 8, 1),
(9, 'smile/question.gif', 16, 16, 6, 1),
(10, 'smile/alert.gif', 16, 16, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_lang`
--

CREATE TABLE IF NOT EXISTS `phpbb_lang` (
  `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`),
  KEY `lang_iso` (`lang_iso`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `phpbb_lang`
--

INSERT INTO `phpbb_lang` (`lang_id`, `lang_iso`, `lang_dir`, `lang_english_name`, `lang_local_name`, `lang_author`) VALUES
(1, 'en', 'en', 'British English', 'British English', 'phpBB Group');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_log`
--

CREATE TABLE IF NOT EXISTS `phpbb_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reportee_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `reportee_id` (`reportee_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=170 ;

--
-- Dumping data for table `phpbb_log`
--

INSERT INTO `phpbb_log` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
(1, 0, 2, 0, 0, 0, '74.77.200.111', 1289181634, 0x4c4f475f494e5354414c4c5f494e5354414c4c4544, 0x613a313a7b693a303b733a393a22332e302e372d504c31223b7d),
(2, 0, 2, 0, 0, 0, '74.77.200.111', 1289182115, 0x4c4f475f464f52554d5f45444954, 0x613a313a7b693a303b733a31393a223430466f72747920417070205126616d703b41223b7d),
(3, 0, 2, 0, 0, 0, '74.77.200.111', 1289182233, 0x4c4f475f464f52554d5f45444954, 0x613a313a7b693a303b733a373a2247656e6572616c223b7d),
(4, 1, 2, 2, 1, 0, '74.77.200.111', 1289182293, 0x4c4f475f44454c4554455f544f504943, 0x613a323a7b693a303b733a31373a2257656c636f6d6520746f20706870424233223b693a313b733a31323a223430466f72747941646d696e223b7d),
(5, 1, 2, 2, 2, 0, '74.77.200.111', 1289182321, 0x4c4f475f44454c4554455f544f504943, 0x613a323a7b693a303b733a343a2274657374223b693a313b733a31323a223430466f72747941646d696e223b7d),
(6, 0, 2, 0, 0, 0, '74.77.200.111', 1289182442, 0x4c4f475f434f4e4649475f53455454494e4753, ''),
(7, 0, 2, 0, 0, 0, '74.77.200.111', 1289183907, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(8, 0, 2, 0, 0, 0, '74.77.200.111', 1289183920, 0x4c4f475f54454d504c4154455f4144445f4653, 0x613a313a7b693a303b733a353a22426c40636b223b7d),
(9, 0, 2, 0, 0, 0, '74.77.200.111', 1289183920, 0x4c4f475f5448454d455f4144445f4442, 0x613a313a7b693a303b733a353a22426c40636b223b7d),
(10, 0, 2, 0, 0, 0, '74.77.200.111', 1289183920, 0x4c4f475f494d4147455345545f4144445f4653, 0x613a313a7b693a303b733a353a22426c40636b223b7d),
(11, 0, 2, 0, 0, 0, '74.77.200.111', 1289183920, 0x4c4f475f5354594c455f414444, 0x613a313a7b693a303b733a353a22426c40636b223b7d),
(12, 0, 2, 0, 0, 0, '74.77.200.111', 1289183936, 0x4c4f475f54454d504c4154455f4144445f4653, 0x613a313a7b693a303b733a31303a2273756273696c76657232223b7d),
(13, 0, 2, 0, 0, 0, '74.77.200.111', 1289183936, 0x4c4f475f5448454d455f4144445f4653, 0x613a313a7b693a303b733a31303a2273756273696c76657232223b7d),
(14, 0, 2, 0, 0, 0, '74.77.200.111', 1289183936, 0x4c4f475f494d4147455345545f4144445f4653, 0x613a313a7b693a303b733a31303a2273756273696c76657232223b7d),
(15, 0, 2, 0, 0, 0, '74.77.200.111', 1289183936, 0x4c4f475f5354594c455f414444, 0x613a313a7b693a303b733a31303a2273756273696c76657232223b7d),
(16, 0, 2, 0, 0, 0, '74.77.200.111', 1289183946, 0x4c4f475f50555247455f4341434845, ''),
(17, 0, 2, 0, 0, 0, '74.77.200.111', 1289184894, 0x4c4f475f50555247455f4341434845, ''),
(18, 0, 2, 0, 0, 0, '74.77.200.111', 1289185146, 0x4c4f475f50555247455f4341434845, ''),
(19, 0, 2, 0, 0, 0, '74.77.200.111', 1289185339, 0x4c4f475f50555247455f4341434845, ''),
(20, 1, 2, 2, 3, 0, '74.77.200.111', 1289186045, 0x4c4f475f44454c4554455f544f504943, 0x613a323a7b693a303b733a343a2274657374223b693a313b733a31323a223430466f72747941646d696e223b7d),
(21, 0, 2, 0, 0, 0, '38.97.88.246', 1289193778, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(22, 0, 2, 0, 0, 0, '38.97.88.246', 1289193814, 0x4c4f475f5354594c455f454449545f44455441494c53, 0x613a313a7b693a303b733a393a2270726f73696c766572223b7d),
(23, 0, 2, 0, 0, 0, '38.97.88.246', 1289193827, 0x4c4f475f5354594c455f44454c455445, 0x613a313a7b693a303b733a353a22426c40636b223b7d),
(24, 0, 2, 0, 0, 0, '38.97.88.246', 1289193834, 0x4c4f475f5354594c455f414444, 0x613a313a7b693a303b733a353a22426c40636b223b7d),
(25, 0, 2, 0, 0, 0, '38.97.88.246', 1289193842, 0x4c4f475f50555247455f4341434845, ''),
(26, 0, 2, 0, 0, 0, '74.77.200.111', 1290994172, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(27, 0, 1, 0, 0, 0, '74.77.200.111', 1290994592, 0x4c4f475f5550444154455f4441544142415345, 0x613a323a7b693a303b733a393a22332e302e372d504c31223b693a313b733a353a22332e302e38223b7d),
(28, 0, 2, 0, 0, 0, '74.77.200.111', 1290994875, 0x4c4f475f5550444154455f5048504242, 0x613a323a7b693a303b733a393a22332e302e372d504c31223b693a313b733a353a22332e302e38223b7d),
(29, 0, 2, 0, 0, 0, '74.77.200.111', 1290994979, 0x4c4f475f54454d504c4154455f4144445f4653, 0x613a313a7b693a303b733a373a2269734372756d70223b7d),
(30, 0, 2, 0, 0, 0, '74.77.200.111', 1290994979, 0x4c4f475f5448454d455f4144445f4442, 0x613a313a7b693a303b733a373a2269734372756d70223b7d),
(31, 0, 2, 0, 0, 0, '74.77.200.111', 1290994979, 0x4c4f475f494d4147455345545f4144445f4653, 0x613a313a7b693a303b733a373a2269734372756d70223b7d),
(32, 0, 2, 0, 0, 0, '74.77.200.111', 1290994979, 0x4c4f475f5354594c455f414444, 0x613a313a7b693a303b733a373a2269734372756d70223b7d),
(33, 0, 2, 0, 0, 0, '74.77.200.111', 1290995023, 0x4c4f475f50555247455f4341434845, ''),
(34, 0, 2, 0, 0, 0, '74.77.200.111', 1290996868, 0x4c4f475f5354594c455f414444, 0x613a313a7b693a303b733a31303a2273656861776567686165223b7d),
(35, 0, 2, 0, 0, 0, '74.77.200.111', 1290996874, 0x4c4f475f50555247455f4341434845, ''),
(36, 0, 2, 0, 0, 0, '74.77.200.111', 1290997505, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(37, 0, 2, 0, 0, 0, '74.77.200.111', 1290997526, 0x4c4f475f50555247455f4341434845, ''),
(38, 0, 2, 0, 0, 0, '74.77.200.111', 1290997606, 0x4c4f475f5354594c455f44454c455445, 0x613a313a7b693a303b733a31303a2273656861776567686165223b7d),
(39, 0, 2, 0, 0, 0, '74.77.200.111', 1290997614, 0x4c4f475f5354594c455f414444, 0x613a313a7b693a303b733a31303a2273656861776567686165223b7d),
(40, 0, 2, 0, 0, 0, '74.77.200.111', 1290997622, 0x4c4f475f50555247455f4341434845, ''),
(41, 0, 2, 0, 0, 0, '74.77.200.111', 1290998130, 0x4c4f475f50555247455f4341434845, ''),
(42, 0, 2, 0, 0, 0, '74.77.200.111', 1290998151, 0x4c4f475f5354594c455f454449545f44455441494c53, 0x613a313a7b693a303b733a373a2269734372756d70223b7d),
(43, 0, 2, 0, 0, 0, '74.77.200.111', 1290998191, 0x4c4f475f50555247455f4341434845, ''),
(44, 0, 2, 0, 0, 0, '74.77.200.111', 1290998212, 0x4c4f475f5354594c455f454449545f44455441494c53, 0x613a313a7b693a303b733a373a2269734372756d70223b7d),
(45, 0, 2, 0, 0, 0, '74.77.200.111', 1290998235, 0x4c4f475f50555247455f4341434845, ''),
(46, 0, 2, 0, 0, 0, '74.77.200.111', 1290998596, 0x4c4f475f5354594c455f44454c455445, 0x613a313a7b693a303b733a31303a2273656861776567686165223b7d),
(47, 0, 2, 0, 0, 0, '74.77.200.111', 1290998640, 0x4c4f475f54454d504c4154455f4144445f4653, 0x613a313a7b693a303b733a31303a2273656861776567686165223b7d),
(48, 0, 2, 0, 0, 0, '74.77.200.111', 1290998640, 0x4c4f475f5448454d455f4144445f4442, 0x613a313a7b693a303b733a31303a2273656861776567686165223b7d),
(49, 0, 2, 0, 0, 0, '74.77.200.111', 1290998640, 0x4c4f475f494d4147455345545f4144445f4653, 0x613a313a7b693a303b733a31303a2273656861776567686165223b7d),
(50, 0, 2, 0, 0, 0, '74.77.200.111', 1290998640, 0x4c4f475f5354594c455f414444, 0x613a313a7b693a303b733a31303a2273656861776567686165223b7d),
(51, 0, 2, 0, 0, 0, '74.77.200.111', 1290998650, 0x4c4f475f50555247455f4341434845, ''),
(52, 0, 2, 0, 0, 0, '74.77.200.111', 1290998725, 0x4c4f475f5354594c455f44454c455445, 0x613a313a7b693a303b733a353a22426c40636b223b7d),
(53, 0, 2, 0, 0, 0, '74.77.200.111', 1290999045, 0x4c4f475f54454d504c4154455f4144445f4653, 0x613a313a7b693a303b733a373a223430466f727479223b7d),
(54, 0, 2, 0, 0, 0, '74.77.200.111', 1290999045, 0x4c4f475f5448454d455f4144445f4442, 0x613a313a7b693a303b733a373a223430466f727479223b7d),
(55, 0, 2, 0, 0, 0, '74.77.200.111', 1290999045, 0x4c4f475f494d4147455345545f4144445f4653, 0x613a313a7b693a303b733a373a223430466f727479223b7d),
(56, 0, 2, 0, 0, 0, '74.77.200.111', 1290999045, 0x4c4f475f5354594c455f414444, 0x613a313a7b693a303b733a373a223430466f727479223b7d),
(57, 0, 2, 0, 0, 0, '74.77.200.111', 1290999057, 0x4c4f475f5354594c455f44454c455445, 0x613a313a7b693a303b733a31303a2273656861776567686165223b7d),
(58, 0, 2, 0, 0, 0, '74.77.200.111', 1291168488, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(59, 0, 2, 0, 0, 0, '74.77.200.111', 1291168496, 0x4c4f475f50555247455f4341434845, ''),
(60, 0, 2, 0, 0, 0, '74.77.200.111', 1291168614, 0x4c4f475f50555247455f4341434845, ''),
(61, 0, 2, 0, 0, 0, '74.77.200.111', 1291168673, 0x4c4f475f50555247455f4341434845, ''),
(62, 0, 2, 0, 0, 0, '74.77.200.111', 1291168887, 0x4c4f475f50555247455f4341434845, ''),
(63, 0, 2, 0, 0, 0, '74.77.200.111', 1291168953, 0x4c4f475f50555247455f4341434845, ''),
(64, 0, 2, 0, 0, 0, '74.77.200.111', 1291168987, 0x4c4f475f50555247455f4341434845, ''),
(65, 0, 2, 0, 0, 0, '74.77.200.111', 1291169009, 0x4c4f475f50555247455f4341434845, ''),
(66, 0, 2, 0, 0, 0, '74.77.200.111', 1291169210, 0x4c4f475f50555247455f4341434845, ''),
(67, 0, 2, 0, 0, 0, '74.77.200.111', 1291169254, 0x4c4f475f50555247455f4341434845, ''),
(68, 0, 2, 0, 0, 0, '74.77.200.111', 1291169309, 0x4c4f475f50555247455f4341434845, ''),
(69, 0, 2, 0, 0, 0, '74.77.200.111', 1291169406, 0x4c4f475f50555247455f4341434845, ''),
(70, 0, 2, 0, 0, 0, '74.77.200.111', 1291169503, 0x4c4f475f50555247455f4341434845, ''),
(71, 0, 2, 0, 0, 0, '74.77.200.111', 1291169613, 0x4c4f475f50555247455f4341434845, ''),
(72, 0, 2, 0, 0, 0, '74.77.200.111', 1291169631, 0x4c4f475f50555247455f4341434845, ''),
(73, 0, 2, 0, 0, 0, '74.77.200.111', 1291169807, 0x4c4f475f50555247455f4341434845, ''),
(74, 0, 2, 0, 0, 0, '74.77.200.111', 1291169861, 0x4c4f475f50555247455f4341434845, ''),
(75, 0, 2, 0, 0, 0, '74.77.200.111', 1291169894, 0x4c4f475f50555247455f4341434845, ''),
(76, 0, 2, 0, 0, 0, '74.77.200.111', 1291169915, 0x4c4f475f50555247455f4341434845, ''),
(77, 1, 2, 2, 4, 0, '74.77.200.111', 1291170020, 0x4c4f475f44454c4554455f544f504943, 0x613a323a7b693a303b733a343a2274657374223b693a313b733a31323a223430466f72747941646d696e223b7d),
(78, 0, 2, 0, 0, 0, '74.77.200.111', 1291170085, 0x4c4f475f50555247455f4341434845, ''),
(79, 0, 2, 0, 0, 0, '74.77.200.111', 1291170149, 0x4c4f475f50555247455f4341434845, ''),
(80, 0, 2, 0, 0, 0, '74.77.200.111', 1291170208, 0x4c4f475f50555247455f4341434845, ''),
(81, 0, 2, 0, 0, 0, '74.77.200.111', 1291170267, 0x4c4f475f50555247455f4341434845, ''),
(82, 0, 2, 0, 0, 0, '74.77.200.111', 1291170317, 0x4c4f475f50555247455f4341434845, ''),
(83, 0, 2, 0, 0, 0, '74.77.200.111', 1291170380, 0x4c4f475f50555247455f4341434845, ''),
(84, 0, 2, 0, 0, 0, '74.77.200.111', 1291170476, 0x4c4f475f50555247455f4341434845, ''),
(85, 0, 2, 0, 0, 0, '74.77.200.111', 1291170539, 0x4c4f475f50555247455f4341434845, ''),
(86, 0, 2, 0, 0, 0, '74.77.200.111', 1291170582, 0x4c4f475f50555247455f4341434845, ''),
(87, 0, 2, 0, 0, 0, '74.77.200.111', 1291170657, 0x4c4f475f50555247455f4341434845, ''),
(88, 0, 2, 0, 0, 0, '74.77.200.111', 1291170694, 0x4c4f475f50555247455f4341434845, ''),
(89, 0, 2, 0, 0, 0, '74.77.200.111', 1291170714, 0x4c4f475f50555247455f4341434845, ''),
(90, 0, 2, 0, 0, 0, '74.77.200.111', 1291170809, 0x4c4f475f50555247455f4341434845, ''),
(91, 0, 2, 0, 0, 0, '74.77.200.111', 1291170838, 0x4c4f475f50555247455f4341434845, ''),
(92, 0, 2, 0, 0, 0, '74.77.200.111', 1291171135, 0x4c4f475f50555247455f4341434845, ''),
(93, 0, 2, 0, 0, 0, '74.77.200.111', 1291171308, 0x4c4f475f50555247455f4341434845, ''),
(94, 0, 2, 0, 0, 0, '74.77.200.111', 1291171341, 0x4c4f475f50555247455f4341434845, ''),
(95, 0, 2, 0, 0, 0, '74.77.200.111', 1291171445, 0x4c4f475f50555247455f4341434845, ''),
(96, 0, 2, 0, 0, 0, '74.77.200.111', 1291171467, 0x4c4f475f50555247455f4341434845, ''),
(97, 0, 2, 0, 0, 0, '74.77.200.111', 1291171510, 0x4c4f475f50555247455f4341434845, ''),
(98, 0, 2, 0, 0, 0, '74.77.200.111', 1291171529, 0x4c4f475f50555247455f4341434845, ''),
(99, 0, 2, 0, 0, 0, '74.77.200.111', 1291171579, 0x4c4f475f50555247455f4341434845, ''),
(100, 0, 2, 0, 0, 0, '74.77.200.111', 1291171622, 0x4c4f475f50555247455f4341434845, ''),
(101, 0, 2, 0, 0, 0, '74.77.200.111', 1291171779, 0x4c4f475f50555247455f4341434845, ''),
(102, 0, 2, 0, 0, 0, '74.77.200.111', 1291171804, 0x4c4f475f50555247455f4341434845, ''),
(103, 0, 2, 0, 0, 0, '74.77.200.111', 1291172131, 0x4c4f475f50555247455f4341434845, ''),
(104, 0, 2, 0, 0, 0, '74.77.200.111', 1291480581, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(105, 0, 2, 0, 0, 0, '74.77.200.111', 1291480615, 0x4c4f475f434f4e4649475f53455454494e4753, ''),
(106, 0, 2, 0, 0, 0, '74.77.200.111', 1291480626, 0x4c4f475f50555247455f4341434845, ''),
(107, 0, 2, 0, 0, 0, '74.77.200.111', 1291997389, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(108, 0, 2, 0, 0, 0, '74.77.200.111', 1291997397, 0x4c4f475f50555247455f4341434845, ''),
(109, 0, 2, 0, 0, 0, '74.77.200.111', 1291997650, 0x4c4f475f50555247455f4341434845, ''),
(110, 0, 2, 0, 0, 0, '74.77.200.111', 1291997798, 0x4c4f475f50555247455f4341434845, ''),
(111, 0, 2, 0, 0, 0, '74.77.200.111', 1291997815, 0x4c4f475f5354594c455f44454c455445, 0x613a313a7b693a303b733a373a2269734372756d70223b7d),
(112, 0, 2, 0, 0, 0, '74.77.200.111', 1291998949, 0x4c4f475f50555247455f4341434845, ''),
(113, 0, 2, 0, 0, 0, '74.77.200.111', 1291999127, 0x4c4f475f50555247455f4341434845, ''),
(114, 0, 2, 0, 0, 0, '74.77.200.111', 1291999170, 0x4c4f475f50555247455f4341434845, ''),
(115, 0, 2, 0, 0, 0, '74.77.200.111', 1291999407, 0x4c4f475f50555247455f4341434845, ''),
(116, 0, 2, 0, 0, 0, '74.77.200.111', 1291999473, 0x4c4f475f50555247455f4341434845, ''),
(117, 0, 2, 0, 0, 0, '74.77.200.111', 1291999596, 0x4c4f475f50555247455f4341434845, ''),
(118, 0, 2, 0, 0, 0, '74.77.200.111', 1291999767, 0x4c4f475f50555247455f4341434845, ''),
(119, 0, 2, 0, 0, 0, '74.77.200.111', 1292000432, 0x4c4f475f50555247455f4341434845, ''),
(120, 0, 2, 0, 0, 0, '74.77.200.111', 1292000494, 0x4c4f475f50555247455f4341434845, ''),
(121, 0, 2, 0, 0, 0, '74.77.200.111', 1292000533, 0x4c4f475f50555247455f4341434845, ''),
(122, 0, 2, 0, 0, 0, '74.77.200.111', 1292000577, 0x4c4f475f50555247455f4341434845, ''),
(123, 0, 2, 0, 0, 0, '74.77.200.111', 1292000651, 0x4c4f475f50555247455f4341434845, ''),
(124, 0, 2, 0, 0, 0, '74.77.200.111', 1292000769, 0x4c4f475f50555247455f4341434845, ''),
(125, 0, 2, 0, 0, 0, '74.77.200.111', 1292000810, 0x4c4f475f50555247455f4341434845, ''),
(126, 1, 2, 2, 5, 0, '74.77.200.111', 1292000863, 0x4c4f475f44454c4554455f504f5354, 0x613a323a7b693a303b733a383a2252653a2054657374223b693a313b733a31323a223430466f72747941646d696e223b7d),
(127, 1, 2, 2, 5, 0, '74.77.200.111', 1292000868, 0x4c4f475f44454c4554455f504f5354, 0x613a323a7b693a303b733a383a2252653a2054657374223b693a313b733a31323a223430466f72747941646d696e223b7d),
(128, 0, 2, 0, 0, 0, '74.77.200.111', 1292001302, 0x4c4f475f50555247455f4341434845, ''),
(129, 0, 2, 0, 0, 0, '74.77.200.111', 1292002254, 0x4c4f475f50555247455f4341434845, ''),
(130, 0, 2, 0, 0, 0, '74.77.200.111', 1292003734, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(131, 0, 2, 0, 0, 0, '74.77.200.111', 1292003766, 0x4c4f475f50555247455f4341434845, ''),
(132, 0, 2, 0, 0, 0, '74.77.200.111', 1292004013, 0x4c4f475f5354594c455f44454c455445, 0x613a313a7b693a303b733a373a223430466f727479223b7d),
(133, 0, 2, 0, 0, 0, '74.77.200.111', 1292004051, 0x4c4f475f5354594c455f414444, 0x613a313a7b693a303b733a373a223430466f727479223b7d),
(134, 0, 2, 0, 0, 0, '74.77.200.111', 1292004323, 0x4c4f475f494d4147455345545f44454c455445, 0x613a313a7b693a303b733a353a22426c40636b223b7d),
(135, 0, 2, 0, 0, 0, '74.77.200.111', 1292004341, 0x4c4f475f494d4147455345545f44454c455445, 0x613a313a7b693a303b733a373a2269734372756d70223b7d),
(136, 0, 2, 0, 0, 0, '74.77.200.111', 1292004347, 0x4c4f475f494d4147455345545f44454c455445, 0x613a313a7b693a303b733a31303a2273656861776567686165223b7d),
(137, 0, 2, 0, 0, 0, '74.77.200.111', 1292004365, 0x4c4f475f50555247455f4341434845, ''),
(138, 0, 2, 0, 0, 0, '74.77.200.111', 1292004412, 0x4c4f475f5448454d455f44454c455445, 0x613a313a7b693a303b733a373a2269734372756d70223b7d),
(139, 0, 2, 0, 0, 0, '74.77.200.111', 1292004421, 0x4c4f475f5448454d455f44454c455445, 0x613a313a7b693a303b733a31303a2273656861776567686165223b7d),
(140, 0, 2, 0, 0, 0, '74.77.200.111', 1292004427, 0x4c4f475f5448454d455f44454c455445, 0x613a313a7b693a303b733a353a22426c40636b223b7d),
(141, 0, 2, 0, 0, 0, '74.77.200.111', 1292004439, 0x4c4f475f54454d504c4154455f44454c455445, 0x613a313a7b693a303b733a353a22426c40636b223b7d),
(142, 0, 2, 0, 0, 0, '74.77.200.111', 1292004448, 0x4c4f475f54454d504c4154455f44454c455445, 0x613a313a7b693a303b733a373a2269734372756d70223b7d),
(143, 0, 2, 0, 0, 0, '74.77.200.111', 1292004455, 0x4c4f475f54454d504c4154455f44454c455445, 0x613a313a7b693a303b733a31303a2273656861776567686165223b7d),
(144, 0, 2, 0, 0, 0, '74.77.200.111', 1292004472, 0x4c4f475f494d4147455345545f524546524553484544, 0x613a313a7b693a303b733a373a223430466f727479223b7d),
(145, 0, 2, 0, 0, 0, '74.77.200.111', 1292004543, 0x4c4f475f5354594c455f454449545f44455441494c53, 0x613a313a7b693a303b733a373a223430466f727479223b7d),
(146, 0, 2, 0, 0, 0, '74.77.200.111', 1292004560, 0x4c4f475f50555247455f4341434845, ''),
(147, 0, 2, 0, 0, 0, '74.77.200.111', 1292004757, 0x4c4f475f5354594c455f44454c455445, 0x613a313a7b693a303b733a373a223430466f727479223b7d),
(148, 0, 2, 0, 0, 0, '74.77.200.111', 1292004763, 0x4c4f475f50555247455f4341434845, ''),
(149, 0, 2, 0, 0, 0, '74.77.200.111', 1292004846, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(150, 0, 2, 0, 0, 0, '74.77.200.111', 1292004899, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(151, 0, 2, 0, 0, 0, '74.77.200.111', 1292004916, 0x4c4f475f5354594c455f414444, 0x613a313a7b693a303b733a373a223430466f727479223b7d),
(152, 0, 2, 0, 0, 0, '74.77.200.111', 1292004928, 0x4c4f475f50555247455f4341434845, ''),
(153, 0, 2, 0, 0, 0, '74.77.200.111', 1292195622, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(154, 0, 2, 0, 0, 0, '74.77.200.111', 1292195629, 0x4c4f475f50555247455f4341434845, ''),
(155, 0, 2, 0, 0, 0, '74.77.200.111', 1292195943, 0x4c4f475f50555247455f4341434845, ''),
(156, 0, 2, 0, 0, 0, '74.77.200.111', 1292197152, 0x4c4f475f50555247455f4341434845, ''),
(157, 0, 2, 0, 0, 0, '74.77.200.111', 1292197172, 0x4c4f475f50555247455f4341434845, ''),
(158, 0, 2, 0, 0, 0, '74.77.200.111', 1292197272, 0x4c4f475f50555247455f4341434845, ''),
(159, 0, 2, 0, 0, 0, '74.77.200.111', 1292198482, 0x4c4f475f50555247455f4341434845, ''),
(160, 0, 2, 0, 0, 0, '74.77.200.111', 1292199467, 0x4c4f475f5354594c455f44454c455445, 0x613a313a7b693a303b733a393a2270726f73696c766572223b7d),
(161, 0, 2, 0, 0, 0, '74.77.200.111', 1292199472, 0x4c4f475f5354594c455f44454c455445, 0x613a313a7b693a303b733a31303a2273756273696c76657232223b7d),
(162, 0, 2, 0, 0, 0, '74.77.200.111', 1292199490, 0x4c4f475f50555247455f4341434845, ''),
(163, 0, 2, 0, 0, 0, '74.77.200.111', 1292199648, 0x4c4f475f50555247455f4341434845, ''),
(164, 0, 2, 0, 0, 0, '74.77.200.111', 1292200720, 0x4c4f475f50555247455f4341434845, ''),
(165, 0, 2, 0, 0, 0, '74.77.200.111', 1292201667, 0x4c4f475f50555247455f4341434845, ''),
(166, 0, 2, 0, 0, 0, '74.77.200.111', 1292201710, 0x4c4f475f50555247455f4341434845, ''),
(167, 0, 2, 0, 0, 0, '74.77.200.111', 1292201752, 0x4c4f475f50555247455f4341434845, ''),
(168, 0, 2, 0, 0, 0, '74.77.200.111', 1292282918, 0x4c4f475f41444d494e5f415554485f53554343455353, ''),
(169, 0, 2, 0, 0, 0, '74.77.200.111', 1292282925, 0x4c4f475f50555247455f4341434845, '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_moderator_cache`
--

CREATE TABLE IF NOT EXISTS `phpbb_moderator_cache` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `disp_idx` (`display_on_index`),
  KEY `forum_id` (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_moderator_cache`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_modules`
--

CREATE TABLE IF NOT EXISTS `phpbb_modules` (
  `module_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`module_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `module_enabled` (`module_enabled`),
  KEY `class_left_id` (`module_class`,`left_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=199 ;

--
-- Dumping data for table `phpbb_modules`
--

INSERT INTO `phpbb_modules` (`module_id`, `module_enabled`, `module_display`, `module_basename`, `module_class`, `parent_id`, `left_id`, `right_id`, `module_langname`, `module_mode`, `module_auth`) VALUES
(1, 1, 1, '', 'acp', 0, 1, 64, 'ACP_CAT_GENERAL', '', ''),
(2, 1, 1, '', 'acp', 1, 4, 17, 'ACP_QUICK_ACCESS', '', ''),
(3, 1, 1, '', 'acp', 1, 18, 41, 'ACP_BOARD_CONFIGURATION', '', ''),
(4, 1, 1, '', 'acp', 1, 42, 49, 'ACP_CLIENT_COMMUNICATION', '', ''),
(5, 1, 1, '', 'acp', 1, 50, 63, 'ACP_SERVER_CONFIGURATION', '', ''),
(6, 1, 1, '', 'acp', 0, 65, 84, 'ACP_CAT_FORUMS', '', ''),
(7, 1, 1, '', 'acp', 6, 66, 71, 'ACP_MANAGE_FORUMS', '', ''),
(8, 1, 1, '', 'acp', 6, 72, 83, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(9, 1, 1, '', 'acp', 0, 85, 110, 'ACP_CAT_POSTING', '', ''),
(10, 1, 1, '', 'acp', 9, 86, 99, 'ACP_MESSAGES', '', ''),
(11, 1, 1, '', 'acp', 9, 100, 109, 'ACP_ATTACHMENTS', '', ''),
(12, 1, 1, '', 'acp', 0, 111, 166, 'ACP_CAT_USERGROUP', '', ''),
(13, 1, 1, '', 'acp', 12, 112, 145, 'ACP_CAT_USERS', '', ''),
(14, 1, 1, '', 'acp', 12, 146, 153, 'ACP_GROUPS', '', ''),
(15, 1, 1, '', 'acp', 12, 154, 165, 'ACP_USER_SECURITY', '', ''),
(16, 1, 1, '', 'acp', 0, 167, 216, 'ACP_CAT_PERMISSIONS', '', ''),
(17, 1, 1, '', 'acp', 16, 170, 179, 'ACP_GLOBAL_PERMISSIONS', '', ''),
(18, 1, 1, '', 'acp', 16, 180, 191, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(19, 1, 1, '', 'acp', 16, 192, 201, 'ACP_PERMISSION_ROLES', '', ''),
(20, 1, 1, '', 'acp', 16, 202, 215, 'ACP_PERMISSION_MASKS', '', ''),
(21, 1, 1, '', 'acp', 0, 217, 230, 'ACP_CAT_STYLES', '', ''),
(22, 1, 1, '', 'acp', 21, 218, 221, 'ACP_STYLE_MANAGEMENT', '', ''),
(23, 1, 1, '', 'acp', 21, 222, 229, 'ACP_STYLE_COMPONENTS', '', ''),
(24, 1, 1, '', 'acp', 0, 231, 250, 'ACP_CAT_MAINTENANCE', '', ''),
(25, 1, 1, '', 'acp', 24, 232, 241, 'ACP_FORUM_LOGS', '', ''),
(26, 1, 1, '', 'acp', 24, 242, 249, 'ACP_CAT_DATABASE', '', ''),
(27, 1, 1, '', 'acp', 0, 251, 276, 'ACP_CAT_SYSTEM', '', ''),
(28, 1, 1, '', 'acp', 27, 252, 255, 'ACP_AUTOMATION', '', ''),
(29, 1, 1, '', 'acp', 27, 256, 267, 'ACP_GENERAL_TASKS', '', ''),
(30, 1, 1, '', 'acp', 27, 268, 275, 'ACP_MODULE_MANAGEMENT', '', ''),
(31, 1, 1, '', 'acp', 0, 277, 278, 'ACP_CAT_DOT_MODS', '', ''),
(32, 1, 1, 'attachments', 'acp', 3, 19, 20, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(33, 1, 1, 'attachments', 'acp', 11, 101, 102, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(34, 1, 1, 'attachments', 'acp', 11, 103, 104, 'ACP_MANAGE_EXTENSIONS', 'extensions', 'acl_a_attach'),
(35, 1, 1, 'attachments', 'acp', 11, 105, 106, 'ACP_EXTENSION_GROUPS', 'ext_groups', 'acl_a_attach'),
(36, 1, 1, 'attachments', 'acp', 11, 107, 108, 'ACP_ORPHAN_ATTACHMENTS', 'orphan', 'acl_a_attach'),
(37, 1, 1, 'ban', 'acp', 15, 155, 156, 'ACP_BAN_EMAILS', 'email', 'acl_a_ban'),
(38, 1, 1, 'ban', 'acp', 15, 157, 158, 'ACP_BAN_IPS', 'ip', 'acl_a_ban'),
(39, 1, 1, 'ban', 'acp', 15, 159, 160, 'ACP_BAN_USERNAMES', 'user', 'acl_a_ban'),
(40, 1, 1, 'bbcodes', 'acp', 10, 87, 88, 'ACP_BBCODES', 'bbcodes', 'acl_a_bbcode'),
(41, 1, 1, 'board', 'acp', 3, 21, 22, 'ACP_BOARD_SETTINGS', 'settings', 'acl_a_board'),
(42, 1, 1, 'board', 'acp', 3, 23, 24, 'ACP_BOARD_FEATURES', 'features', 'acl_a_board'),
(43, 1, 1, 'board', 'acp', 3, 25, 26, 'ACP_AVATAR_SETTINGS', 'avatar', 'acl_a_board'),
(44, 1, 1, 'board', 'acp', 3, 27, 28, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(45, 1, 1, 'board', 'acp', 10, 89, 90, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(46, 1, 1, 'board', 'acp', 3, 29, 30, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(47, 1, 1, 'board', 'acp', 3, 31, 32, 'ACP_SIGNATURE_SETTINGS', 'signature', 'acl_a_board'),
(48, 1, 1, 'board', 'acp', 3, 33, 34, 'ACP_FEED_SETTINGS', 'feed', 'acl_a_board'),
(49, 1, 1, 'board', 'acp', 3, 35, 36, 'ACP_REGISTER_SETTINGS', 'registration', 'acl_a_board'),
(50, 1, 1, 'board', 'acp', 4, 43, 44, 'ACP_AUTH_SETTINGS', 'auth', 'acl_a_server'),
(51, 1, 1, 'board', 'acp', 4, 45, 46, 'ACP_EMAIL_SETTINGS', 'email', 'acl_a_server'),
(52, 1, 1, 'board', 'acp', 5, 51, 52, 'ACP_COOKIE_SETTINGS', 'cookie', 'acl_a_server'),
(53, 1, 1, 'board', 'acp', 5, 53, 54, 'ACP_SERVER_SETTINGS', 'server', 'acl_a_server'),
(54, 1, 1, 'board', 'acp', 5, 55, 56, 'ACP_SECURITY_SETTINGS', 'security', 'acl_a_server'),
(55, 1, 1, 'board', 'acp', 5, 57, 58, 'ACP_LOAD_SETTINGS', 'load', 'acl_a_server'),
(56, 1, 1, 'bots', 'acp', 29, 257, 258, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(57, 1, 1, 'captcha', 'acp', 3, 37, 38, 'ACP_VC_SETTINGS', 'visual', 'acl_a_board'),
(58, 1, 0, 'captcha', 'acp', 3, 39, 40, 'ACP_VC_CAPTCHA_DISPLAY', 'img', 'acl_a_board'),
(59, 1, 1, 'database', 'acp', 26, 243, 244, 'ACP_BACKUP', 'backup', 'acl_a_backup'),
(60, 1, 1, 'database', 'acp', 26, 245, 246, 'ACP_RESTORE', 'restore', 'acl_a_backup'),
(61, 1, 1, 'disallow', 'acp', 15, 161, 162, 'ACP_DISALLOW_USERNAMES', 'usernames', 'acl_a_names'),
(62, 1, 1, 'email', 'acp', 29, 259, 260, 'ACP_MASS_EMAIL', 'email', 'acl_a_email && cfg_email_enable'),
(63, 1, 1, 'forums', 'acp', 7, 67, 68, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(64, 1, 1, 'groups', 'acp', 14, 147, 148, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(65, 1, 1, 'icons', 'acp', 10, 93, 94, 'ACP_ICONS', 'icons', 'acl_a_icons'),
(66, 1, 1, 'icons', 'acp', 10, 95, 96, 'ACP_SMILIES', 'smilies', 'acl_a_icons'),
(67, 1, 1, 'inactive', 'acp', 13, 115, 116, 'ACP_INACTIVE_USERS', 'list', 'acl_a_user'),
(68, 1, 1, 'jabber', 'acp', 4, 47, 48, 'ACP_JABBER_SETTINGS', 'settings', 'acl_a_jabber'),
(69, 1, 1, 'language', 'acp', 29, 261, 262, 'ACP_LANGUAGE_PACKS', 'lang_packs', 'acl_a_language'),
(70, 1, 1, 'logs', 'acp', 25, 233, 234, 'ACP_ADMIN_LOGS', 'admin', 'acl_a_viewlogs'),
(71, 1, 1, 'logs', 'acp', 25, 235, 236, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(72, 1, 1, 'logs', 'acp', 25, 237, 238, 'ACP_USERS_LOGS', 'users', 'acl_a_viewlogs'),
(73, 1, 1, 'logs', 'acp', 25, 239, 240, 'ACP_CRITICAL_LOGS', 'critical', 'acl_a_viewlogs'),
(74, 1, 1, 'main', 'acp', 1, 2, 3, 'ACP_INDEX', 'main', ''),
(75, 1, 1, 'modules', 'acp', 30, 269, 270, 'ACP', 'acp', 'acl_a_modules'),
(76, 1, 1, 'modules', 'acp', 30, 271, 272, 'UCP', 'ucp', 'acl_a_modules'),
(77, 1, 1, 'modules', 'acp', 30, 273, 274, 'MCP', 'mcp', 'acl_a_modules'),
(78, 1, 1, 'permission_roles', 'acp', 19, 193, 194, 'ACP_ADMIN_ROLES', 'admin_roles', 'acl_a_roles && acl_a_aauth'),
(79, 1, 1, 'permission_roles', 'acp', 19, 195, 196, 'ACP_USER_ROLES', 'user_roles', 'acl_a_roles && acl_a_uauth'),
(80, 1, 1, 'permission_roles', 'acp', 19, 197, 198, 'ACP_MOD_ROLES', 'mod_roles', 'acl_a_roles && acl_a_mauth'),
(81, 1, 1, 'permission_roles', 'acp', 19, 199, 200, 'ACP_FORUM_ROLES', 'forum_roles', 'acl_a_roles && acl_a_fauth'),
(82, 1, 1, 'permissions', 'acp', 16, 168, 169, 'ACP_PERMISSIONS', 'intro', 'acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),
(83, 1, 0, 'permissions', 'acp', 20, 203, 204, 'ACP_PERMISSION_TRACE', 'trace', 'acl_a_viewauth'),
(84, 1, 1, 'permissions', 'acp', 18, 181, 182, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(85, 1, 1, 'permissions', 'acp', 18, 183, 184, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(86, 1, 1, 'permissions', 'acp', 18, 185, 186, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(87, 1, 1, 'permissions', 'acp', 17, 171, 172, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(88, 1, 1, 'permissions', 'acp', 13, 117, 118, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(89, 1, 1, 'permissions', 'acp', 18, 187, 188, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(90, 1, 1, 'permissions', 'acp', 13, 119, 120, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(91, 1, 1, 'permissions', 'acp', 17, 173, 174, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(92, 1, 1, 'permissions', 'acp', 14, 149, 150, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(93, 1, 1, 'permissions', 'acp', 18, 189, 190, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(94, 1, 1, 'permissions', 'acp', 14, 151, 152, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(95, 1, 1, 'permissions', 'acp', 17, 175, 176, 'ACP_ADMINISTRATORS', 'setting_admin_global', 'acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),
(96, 1, 1, 'permissions', 'acp', 17, 177, 178, 'ACP_GLOBAL_MODERATORS', 'setting_mod_global', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(97, 1, 1, 'permissions', 'acp', 20, 205, 206, 'ACP_VIEW_ADMIN_PERMISSIONS', 'view_admin_global', 'acl_a_viewauth'),
(98, 1, 1, 'permissions', 'acp', 20, 207, 208, 'ACP_VIEW_USER_PERMISSIONS', 'view_user_global', 'acl_a_viewauth'),
(99, 1, 1, 'permissions', 'acp', 20, 209, 210, 'ACP_VIEW_GLOBAL_MOD_PERMISSIONS', 'view_mod_global', 'acl_a_viewauth'),
(100, 1, 1, 'permissions', 'acp', 20, 211, 212, 'ACP_VIEW_FORUM_MOD_PERMISSIONS', 'view_mod_local', 'acl_a_viewauth'),
(101, 1, 1, 'permissions', 'acp', 20, 213, 214, 'ACP_VIEW_FORUM_PERMISSIONS', 'view_forum_local', 'acl_a_viewauth'),
(102, 1, 1, 'php_info', 'acp', 29, 263, 264, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(103, 1, 1, 'profile', 'acp', 13, 121, 122, 'ACP_CUSTOM_PROFILE_FIELDS', 'profile', 'acl_a_profile'),
(104, 1, 1, 'prune', 'acp', 7, 69, 70, 'ACP_PRUNE_FORUMS', 'forums', 'acl_a_prune'),
(105, 1, 1, 'prune', 'acp', 15, 163, 164, 'ACP_PRUNE_USERS', 'users', 'acl_a_userdel'),
(106, 1, 1, 'ranks', 'acp', 13, 123, 124, 'ACP_MANAGE_RANKS', 'ranks', 'acl_a_ranks'),
(107, 1, 1, 'reasons', 'acp', 29, 265, 266, 'ACP_MANAGE_REASONS', 'main', 'acl_a_reasons'),
(108, 1, 1, 'search', 'acp', 5, 59, 60, 'ACP_SEARCH_SETTINGS', 'settings', 'acl_a_search'),
(109, 1, 1, 'search', 'acp', 26, 247, 248, 'ACP_SEARCH_INDEX', 'index', 'acl_a_search'),
(110, 1, 1, 'send_statistics', 'acp', 5, 61, 62, 'ACP_SEND_STATISTICS', 'send_statistics', 'acl_a_server'),
(111, 1, 1, 'styles', 'acp', 22, 219, 220, 'ACP_STYLES', 'style', 'acl_a_styles'),
(112, 1, 1, 'styles', 'acp', 23, 223, 224, 'ACP_TEMPLATES', 'template', 'acl_a_styles'),
(113, 1, 1, 'styles', 'acp', 23, 225, 226, 'ACP_THEMES', 'theme', 'acl_a_styles'),
(114, 1, 1, 'styles', 'acp', 23, 227, 228, 'ACP_IMAGESETS', 'imageset', 'acl_a_styles'),
(115, 1, 1, 'update', 'acp', 28, 253, 254, 'ACP_VERSION_CHECK', 'version_check', 'acl_a_board'),
(116, 1, 1, 'users', 'acp', 13, 113, 114, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(117, 1, 0, 'users', 'acp', 13, 125, 126, 'ACP_USER_FEEDBACK', 'feedback', 'acl_a_user'),
(118, 1, 0, 'users', 'acp', 13, 127, 128, 'ACP_USER_WARNINGS', 'warnings', 'acl_a_user'),
(119, 1, 0, 'users', 'acp', 13, 129, 130, 'ACP_USER_PROFILE', 'profile', 'acl_a_user'),
(120, 1, 0, 'users', 'acp', 13, 131, 132, 'ACP_USER_PREFS', 'prefs', 'acl_a_user'),
(121, 1, 0, 'users', 'acp', 13, 133, 134, 'ACP_USER_AVATAR', 'avatar', 'acl_a_user'),
(122, 1, 0, 'users', 'acp', 13, 135, 136, 'ACP_USER_RANK', 'rank', 'acl_a_user'),
(123, 1, 0, 'users', 'acp', 13, 137, 138, 'ACP_USER_SIG', 'sig', 'acl_a_user'),
(124, 1, 0, 'users', 'acp', 13, 139, 140, 'ACP_USER_GROUPS', 'groups', 'acl_a_user && acl_a_group'),
(125, 1, 0, 'users', 'acp', 13, 141, 142, 'ACP_USER_PERM', 'perm', 'acl_a_user && acl_a_viewauth'),
(126, 1, 0, 'users', 'acp', 13, 143, 144, 'ACP_USER_ATTACH', 'attach', 'acl_a_user'),
(127, 1, 1, 'words', 'acp', 10, 97, 98, 'ACP_WORDS', 'words', 'acl_a_words'),
(128, 1, 1, 'users', 'acp', 2, 5, 6, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(129, 1, 1, 'groups', 'acp', 2, 7, 8, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(130, 1, 1, 'forums', 'acp', 2, 9, 10, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(131, 1, 1, 'logs', 'acp', 2, 11, 12, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(132, 1, 1, 'bots', 'acp', 2, 13, 14, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(133, 1, 1, 'php_info', 'acp', 2, 15, 16, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(134, 1, 1, 'permissions', 'acp', 8, 73, 74, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(135, 1, 1, 'permissions', 'acp', 8, 75, 76, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(136, 1, 1, 'permissions', 'acp', 8, 77, 78, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(137, 1, 1, 'permissions', 'acp', 8, 79, 80, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(138, 1, 1, 'permissions', 'acp', 8, 81, 82, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(139, 1, 1, '', 'mcp', 0, 1, 10, 'MCP_MAIN', '', ''),
(140, 1, 1, '', 'mcp', 0, 11, 18, 'MCP_QUEUE', '', ''),
(141, 1, 1, '', 'mcp', 0, 19, 32, 'MCP_REPORTS', '', ''),
(142, 1, 1, '', 'mcp', 0, 33, 38, 'MCP_NOTES', '', ''),
(143, 1, 1, '', 'mcp', 0, 39, 48, 'MCP_WARN', '', ''),
(144, 1, 1, '', 'mcp', 0, 49, 56, 'MCP_LOGS', '', ''),
(145, 1, 1, '', 'mcp', 0, 57, 64, 'MCP_BAN', '', ''),
(146, 1, 1, 'ban', 'mcp', 145, 58, 59, 'MCP_BAN_USERNAMES', 'user', 'acl_m_ban'),
(147, 1, 1, 'ban', 'mcp', 145, 60, 61, 'MCP_BAN_IPS', 'ip', 'acl_m_ban'),
(148, 1, 1, 'ban', 'mcp', 145, 62, 63, 'MCP_BAN_EMAILS', 'email', 'acl_m_ban'),
(149, 1, 1, 'logs', 'mcp', 144, 50, 51, 'MCP_LOGS_FRONT', 'front', 'acl_m_ || aclf_m_'),
(150, 1, 1, 'logs', 'mcp', 144, 52, 53, 'MCP_LOGS_FORUM_VIEW', 'forum_logs', 'acl_m_,$id'),
(151, 1, 1, 'logs', 'mcp', 144, 54, 55, 'MCP_LOGS_TOPIC_VIEW', 'topic_logs', 'acl_m_,$id'),
(152, 1, 1, 'main', 'mcp', 139, 2, 3, 'MCP_MAIN_FRONT', 'front', ''),
(153, 1, 1, 'main', 'mcp', 139, 4, 5, 'MCP_MAIN_FORUM_VIEW', 'forum_view', 'acl_m_,$id'),
(154, 1, 1, 'main', 'mcp', 139, 6, 7, 'MCP_MAIN_TOPIC_VIEW', 'topic_view', 'acl_m_,$id'),
(155, 1, 1, 'main', 'mcp', 139, 8, 9, 'MCP_MAIN_POST_DETAILS', 'post_details', 'acl_m_,$id || (!$id && aclf_m_)'),
(156, 1, 1, 'notes', 'mcp', 142, 34, 35, 'MCP_NOTES_FRONT', 'front', ''),
(157, 1, 1, 'notes', 'mcp', 142, 36, 37, 'MCP_NOTES_USER', 'user_notes', ''),
(158, 1, 1, 'pm_reports', 'mcp', 141, 20, 21, 'MCP_PM_REPORTS_OPEN', 'pm_reports', 'aclf_m_report'),
(159, 1, 1, 'pm_reports', 'mcp', 141, 22, 23, 'MCP_PM_REPORTS_CLOSED', 'pm_reports_closed', 'aclf_m_report'),
(160, 1, 1, 'pm_reports', 'mcp', 141, 24, 25, 'MCP_PM_REPORT_DETAILS', 'pm_report_details', 'aclf_m_report'),
(161, 1, 1, 'queue', 'mcp', 140, 12, 13, 'MCP_QUEUE_UNAPPROVED_TOPICS', 'unapproved_topics', 'aclf_m_approve'),
(162, 1, 1, 'queue', 'mcp', 140, 14, 15, 'MCP_QUEUE_UNAPPROVED_POSTS', 'unapproved_posts', 'aclf_m_approve'),
(163, 1, 1, 'queue', 'mcp', 140, 16, 17, 'MCP_QUEUE_APPROVE_DETAILS', 'approve_details', 'acl_m_approve,$id || (!$id && aclf_m_approve)'),
(164, 1, 1, 'reports', 'mcp', 141, 26, 27, 'MCP_REPORTS_OPEN', 'reports', 'aclf_m_report'),
(165, 1, 1, 'reports', 'mcp', 141, 28, 29, 'MCP_REPORTS_CLOSED', 'reports_closed', 'aclf_m_report'),
(166, 1, 1, 'reports', 'mcp', 141, 30, 31, 'MCP_REPORT_DETAILS', 'report_details', 'acl_m_report,$id || (!$id && aclf_m_report)'),
(167, 1, 1, 'warn', 'mcp', 143, 40, 41, 'MCP_WARN_FRONT', 'front', 'aclf_m_warn'),
(168, 1, 1, 'warn', 'mcp', 143, 42, 43, 'MCP_WARN_LIST', 'list', 'aclf_m_warn'),
(169, 1, 1, 'warn', 'mcp', 143, 44, 45, 'MCP_WARN_USER', 'warn_user', 'aclf_m_warn'),
(170, 1, 1, 'warn', 'mcp', 143, 46, 47, 'MCP_WARN_POST', 'warn_post', 'acl_m_warn && acl_f_read,$id'),
(171, 1, 1, '', 'ucp', 0, 1, 12, 'UCP_MAIN', '', ''),
(172, 1, 1, '', 'ucp', 0, 13, 22, 'UCP_PROFILE', '', ''),
(173, 1, 1, '', 'ucp', 0, 23, 30, 'UCP_PREFS', '', ''),
(174, 1, 1, '', 'ucp', 0, 31, 42, 'UCP_PM', '', ''),
(175, 1, 1, '', 'ucp', 0, 43, 48, 'UCP_USERGROUPS', '', ''),
(176, 1, 1, '', 'ucp', 0, 49, 54, 'UCP_ZEBRA', '', ''),
(177, 1, 1, 'attachments', 'ucp', 171, 10, 11, 'UCP_MAIN_ATTACHMENTS', 'attachments', 'acl_u_attach'),
(178, 1, 1, 'groups', 'ucp', 175, 44, 45, 'UCP_USERGROUPS_MEMBER', 'membership', ''),
(179, 1, 1, 'groups', 'ucp', 175, 46, 47, 'UCP_USERGROUPS_MANAGE', 'manage', ''),
(180, 1, 1, 'main', 'ucp', 171, 2, 3, 'UCP_MAIN_FRONT', 'front', ''),
(181, 1, 1, 'main', 'ucp', 171, 4, 5, 'UCP_MAIN_SUBSCRIBED', 'subscribed', ''),
(182, 1, 1, 'main', 'ucp', 171, 6, 7, 'UCP_MAIN_BOOKMARKS', 'bookmarks', 'cfg_allow_bookmarks'),
(183, 1, 1, 'main', 'ucp', 171, 8, 9, 'UCP_MAIN_DRAFTS', 'drafts', ''),
(184, 1, 0, 'pm', 'ucp', 174, 32, 33, 'UCP_PM_VIEW', 'view', 'cfg_allow_privmsg'),
(185, 1, 1, 'pm', 'ucp', 174, 34, 35, 'UCP_PM_COMPOSE', 'compose', 'cfg_allow_privmsg'),
(186, 1, 1, 'pm', 'ucp', 174, 36, 37, 'UCP_PM_DRAFTS', 'drafts', 'cfg_allow_privmsg'),
(187, 1, 1, 'pm', 'ucp', 174, 38, 39, 'UCP_PM_OPTIONS', 'options', 'cfg_allow_privmsg'),
(188, 1, 0, 'pm', 'ucp', 174, 40, 41, 'UCP_PM_POPUP_TITLE', 'popup', 'cfg_allow_privmsg'),
(189, 1, 1, 'prefs', 'ucp', 173, 24, 25, 'UCP_PREFS_PERSONAL', 'personal', ''),
(190, 1, 1, 'prefs', 'ucp', 173, 26, 27, 'UCP_PREFS_POST', 'post', ''),
(191, 1, 1, 'prefs', 'ucp', 173, 28, 29, 'UCP_PREFS_VIEW', 'view', ''),
(192, 1, 1, 'profile', 'ucp', 172, 14, 15, 'UCP_PROFILE_PROFILE_INFO', 'profile_info', ''),
(193, 1, 1, 'profile', 'ucp', 172, 16, 17, 'UCP_PROFILE_SIGNATURE', 'signature', ''),
(194, 1, 1, 'profile', 'ucp', 172, 18, 19, 'UCP_PROFILE_AVATAR', 'avatar', 'cfg_allow_avatar && (cfg_allow_avatar_local || cfg_allow_avatar_remote || cfg_allow_avatar_upload || cfg_allow_avatar_remote_upload)'),
(195, 1, 1, 'profile', 'ucp', 172, 20, 21, 'UCP_PROFILE_REG_DETAILS', 'reg_details', ''),
(196, 1, 1, 'zebra', 'ucp', 176, 50, 51, 'UCP_ZEBRA_FRIENDS', 'friends', ''),
(197, 1, 1, 'zebra', 'ucp', 176, 52, 53, 'UCP_ZEBRA_FOES', 'foes', ''),
(198, 1, 1, 'board', 'acp', 10, 91, 92, 'ACP_POST_SETTINGS', 'post', 'acl_a_board');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_poll_options`
--

CREATE TABLE IF NOT EXISTS `phpbb_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `poll_opt_id` (`poll_option_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_poll_options`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_poll_votes`
--

CREATE TABLE IF NOT EXISTS `phpbb_poll_votes` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `topic_id` (`topic_id`),
  KEY `vote_user_id` (`vote_user_id`),
  KEY `vote_user_ip` (`vote_user_ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_poll_votes`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_posts`
--

CREATE TABLE IF NOT EXISTS `phpbb_posts` (
  `post_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_edit_locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_ip` (`poster_ip`),
  KEY `poster_id` (`poster_id`),
  KEY `post_approved` (`post_approved`),
  KEY `post_username` (`post_username`),
  KEY `tid_post_time` (`topic_id`,`post_time`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=14 ;

--
-- Dumping data for table `phpbb_posts`
--

INSERT INTO `phpbb_posts` (`post_id`, `topic_id`, `forum_id`, `poster_id`, `icon_id`, `poster_ip`, `post_time`, `post_approved`, `post_reported`, `enable_bbcode`, `enable_smilies`, `enable_magic_url`, `enable_sig`, `post_username`, `post_subject`, `post_text`, `post_checksum`, `post_attachment`, `bbcode_bitfield`, `bbcode_uid`, `post_postcount`, `post_edit_time`, `post_edit_reason`, `post_edit_user`, `post_edit_count`, `post_edit_locked`) VALUES
(5, 5, 2, 2, 0, '74.77.200.111', 1291996957, 1, 0, 1, 1, 1, 1, '', 'Test', 0x74657374, '098f6bcd4621d373cade4e832627b4f6', 0, '', '1dh6fawo', 1, 0, '', 0, 0, 0),
(6, 5, 2, 2, 0, '74.77.200.111', 1291999195, 1, 0, 1, 1, 1, 1, '', 'Re: Test', 0x61736466, '912ec803b2ce49e4a541068d495ab570', 0, '', '1op5fnkn', 1, 0, '', 0, 0, 0),
(9, 5, 2, 2, 0, '74.77.200.111', 1292002340, 1, 0, 1, 1, 1, 1, '', 'Re: Test', 0x61736466, '912ec803b2ce49e4a541068d495ab570', 0, '', '3bh0ahqa', 1, 0, '', 0, 0, 0),
(10, 5, 2, 2, 0, '74.77.200.111', 1292002345, 1, 0, 1, 1, 1, 1, '', 'Re: Test', 0x61736466, '912ec803b2ce49e4a541068d495ab570', 0, '', '5p1a8dq3', 1, 0, '', 0, 0, 0),
(11, 5, 2, 2, 0, '74.77.200.111', 1292002351, 1, 0, 1, 1, 1, 1, '', 'Re: Test', 0x61736466, '912ec803b2ce49e4a541068d495ab570', 0, '', '1e2yebdx', 1, 0, '', 0, 0, 0),
(12, 6, 2, 55, 0, '92.241.169.160', 1295254367, 0, 0, 1, 1, 1, 1, '', 'MomoCadia  phentermine buy cheap  HiessastE', 0x546865204664612c206f72204644412c2073617973206974277320696c6c6567616c20666f7220636974697a656e73206f662074686520757320746f20627579207472616d61646f6c20646f63746f7273206f66666963652e20546f2062652065666665637469766520737572726f756e64696e6720746869732070726f626c656d2c20637573746f6d657273206d75737420676574206120707265736372697074696f6e2066726f6d206120706861726d616379206f6e6c696e652e205468697320757375616c6c792070726f647563657320612074656c6570686f6e65206f7220652d6d61696c20696e74657276696577207768696368206861732061207265616c20706861726d61636973742c207768657265627920796f757220636c69656e742077696c6c206861766520746865206472756720757020636f6e666572656e636573206f6620737563636573732e536f6d612063616e2062652061206d7573636c652072656c6178616e742e204974206163747320627920626c6f636b696e6720656c656374726963616c207369676e616c7320616d6f6e67206e65727665732077697468696e20746865207265746963756c617220666f726d6174696f6e206f6620746865206d696e6420616e6420696e7369646520746865207370696e616c2d636f72642e2043617269736f70726f646f6c2c20616c6f6e672077697468207265737420616e642070687973696f746865726170792c206973207072657363726962656420666f72207468652073686f7274207465726d2072656c696566206f66207061696e66756c206d7573636c6520636f6e646974696f6e732d20706172746963756c61726c79206d7573636c6520737061736d2028746865206c6f636174696f6e20776865726520746865206d7573636c65207469676874656e7320616e6420646f6573206e6f742072656c6178292e204d6f7374206261636b2073747261696e73206361757365206d7573636c6520737061736d2c20736f2070617469656e74732066696e642063617269736f70726f646f6c206e6f7465776f7274687920696e2072656c696576696e67206c756d626172207061696e2e5b75726c3d68747470262335383b2f2f777777262334363b666974616e646865616c7468796b696473726164696f262334363b636f6d3a32656739633779385d6368656170207068656e7465726d696e65206e6f2072785b2f75726c3a32656739633779385d57652068617665206e6f7720666f756e64206f75742061626f757420616c6c206f66207468652066616e7461737469632072657761726473207768696c65207075726368617365207472616d61646f6c206f6e2074686520696e7465726e65743a2066696e6573742072617465732c20717569636b6c79204665644578207368697070696e6720746865206e657874206461792074696d652c20616c6f6e67207769746820656173792d707265736372697074696f6e20617574686f72697a6174696f6e20287768656e206a7573742061626f757420616e7920617420616c6c292e20427574207769746820746869732067726561742065617365206973206120666577207269736b206f66207468652061636869657661626c6520646973617374657220616e642070726f626c656d2e20536f20686f7720646f20776520737465657220636c656172206f66207468657365206b696e6473206f66206368616c6c656e6765732c20627574206b65657020796f757220706f7369746976652061737065637473206c696e6b656420746f206f6e207468652077656220706861726d6163793f556c7472616365742063616e2062652061206d6978206f662061636574616d696e6f7068656e20616c6f6e672077697468207472616d61646f6c2e204974207265616c6c7920697320757375616c6c79207265636f6d6d656e64656420666f722073686f7274207465726d20286173206d756368206173203520646179732920636f6d666f727420696e766f6c76696e672072656c61746976656c7920736572696f75732073657665726520736f72656e6573732e204974277320617070726f766564207065727461696e696e6720746f20706f73742d737572676963616c20646973636f6d666f7274206f7220706572686170732061667465722064656e7469737472792070726f6365737365732e, '426589aea32b4ebc498c91ef8abc871b', 0, 'EA==', '2eg9c7y8', 1, 0, '', 0, 0, 0),
(13, 7, 2, 57, 0, '46.109.194.23', 1295404751, 0, 0, 1, 1, 1, 1, '', 'backlink tool backlink service', 0x6261636b6c696e6b207061676572616e6b20202020200a73656f20677569646520202020200a5b75726c3d68747470262335383b2f2f7872756d657273657276696365262334363b6f72672f3a31716a7a6377617a5d6261636b6c696e6b7320736572766963655b2f75726c3a31716a7a6377617a5d, 'dc81c3b18408e46ba5c22af2ac8db44d', 0, 'EA==', '1qjzcwaz', 1, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs`
--

CREATE TABLE IF NOT EXISTS `phpbb_privmsgs` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `root_level` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `message_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `author_ip` (`author_ip`),
  KEY `message_time` (`message_time`),
  KEY `author_id` (`author_id`),
  KEY `root_level` (`root_level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_privmsgs`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_folder`
--

CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_folder` (
  `folder_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`folder_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_privmsgs_folder`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_rules`
--

CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_rules` (
  `rule_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_check` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_connection` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_folder_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_privmsgs_rules`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_to`
--

CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_to` (
  `msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_unread` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_replied` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_marked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_forwarded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(11) NOT NULL DEFAULT '0',
  KEY `msg_id` (`msg_id`),
  KEY `author_id` (`author_id`),
  KEY `usr_flder_id` (`user_id`,`folder_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_privmsgs_to`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields`
--

CREATE TABLE IF NOT EXISTS `phpbb_profile_fields` (
  `field_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` tinyint(4) NOT NULL DEFAULT '0',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_reg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_vt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_profile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_hide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_no_view` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`),
  KEY `fld_type` (`field_type`),
  KEY `fld_ordr` (`field_order`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_profile_fields`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields_data`
--

CREATE TABLE IF NOT EXISTS `phpbb_profile_fields_data` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_profile_fields_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields_lang`
--

CREATE TABLE IF NOT EXISTS `phpbb_profile_fields_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_type` tinyint(4) NOT NULL DEFAULT '0',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`,`option_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_profile_fields_lang`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_lang`
--

CREATE TABLE IF NOT EXISTS `phpbb_profile_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_profile_lang`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_ranks`
--

CREATE TABLE IF NOT EXISTS `phpbb_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `phpbb_ranks`
--

INSERT INTO `phpbb_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'Site Admin', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_reports`
--

CREATE TABLE IF NOT EXISTS `phpbb_reports` (
  `report_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `reason_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_time` int(11) unsigned NOT NULL DEFAULT '0',
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`report_id`),
  KEY `post_id` (`post_id`),
  KEY `pm_id` (`pm_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_reports`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_reports_reasons`
--

CREATE TABLE IF NOT EXISTS `phpbb_reports_reasons` (
  `reason_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reason_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `phpbb_reports_reasons`
--

INSERT INTO `phpbb_reports_reasons` (`reason_id`, `reason_title`, `reason_description`, `reason_order`) VALUES
(1, 'warez', 0x54686520706f737420636f6e7461696e73206c696e6b7320746f20696c6c6567616c206f72207069726174656420736f6674776172652e, 1),
(2, 'spam', 0x546865207265706f7274656420706f73742068617320746865206f6e6c7920707572706f736520746f2061647665727469736520666f7220612077656273697465206f7220616e6f746865722070726f647563742e, 2),
(3, 'off_topic', 0x546865207265706f7274656420706f7374206973206f666620746f7069632e, 3),
(4, 'other', 0x546865207265706f7274656420706f737420646f6573206e6f742066697420696e746f20616e79206f746865722063617465676f72792c20706c656173652075736520746865206675727468657220696e666f726d6174696f6e206669656c642e, 4);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_results`
--

CREATE TABLE IF NOT EXISTS `phpbb_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) unsigned NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`search_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_search_results`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_wordlist`
--

CREATE TABLE IF NOT EXISTS `phpbb_search_wordlist` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `word_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word_id`),
  UNIQUE KEY `wrd_txt` (`word_text`),
  KEY `wrd_cnt` (`word_count`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=208 ;

--
-- Dumping data for table `phpbb_search_wordlist`
--

INSERT INTO `phpbb_search_wordlist` (`word_id`, `word_text`, `word_common`, `word_count`) VALUES
(1, 'this', 0, 1),
(2, 'example', 0, 0),
(3, 'post', 0, 1),
(4, 'your', 0, 1),
(5, 'phpbb3', 0, 0),
(6, 'installation', 0, 0),
(7, 'everything', 0, 0),
(8, 'seems', 0, 0),
(9, 'working', 0, 0),
(10, 'you', 0, 0),
(11, 'may', 0, 0),
(12, 'delete', 0, 0),
(13, 'like', 0, 0),
(14, 'and', 0, 1),
(15, 'continue', 0, 0),
(16, 'set', 0, 0),
(17, 'board', 0, 0),
(18, 'during', 0, 0),
(19, 'the', 0, 1),
(20, 'process', 0, 0),
(21, 'first', 0, 0),
(22, 'category', 0, 0),
(23, 'forum', 0, 0),
(24, 'are', 0, 0),
(25, 'assigned', 0, 0),
(26, 'appropriate', 0, 0),
(27, 'permissions', 0, 0),
(28, 'for', 0, 1),
(29, 'predefined', 0, 0),
(30, 'usergroups', 0, 0),
(31, 'administrators', 0, 0),
(32, 'bots', 0, 0),
(33, 'global', 0, 0),
(34, 'moderators', 0, 0),
(35, 'guests', 0, 0),
(36, 'registered', 0, 0),
(37, 'users', 0, 0),
(38, 'coppa', 0, 0),
(39, 'also', 0, 0),
(40, 'choose', 0, 0),
(41, 'not', 0, 1),
(42, 'forget', 0, 0),
(43, 'assign', 0, 0),
(44, 'all', 0, 1),
(45, 'these', 0, 1),
(46, 'new', 0, 0),
(47, 'categories', 0, 0),
(48, 'forums', 0, 0),
(49, 'create', 0, 0),
(50, 'recommended', 0, 1),
(51, 'rename', 0, 0),
(52, 'copy', 0, 0),
(53, 'from', 0, 1),
(54, 'while', 0, 1),
(55, 'creating', 0, 0),
(56, 'have', 0, 1),
(57, 'fun', 0, 0),
(58, 'welcome', 0, 0),
(69, 'office', 0, 1),
(68, 'doctors', 0, 1),
(67, 'tramadol', 0, 1),
(66, 'buy', 0, 2),
(65, 'citizens', 0, 1),
(64, 'illegal', 0, 1),
(63, 'says', 0, 1),
(62, 'fda', 0, 1),
(61, 'yeah', 0, 0),
(60, 'test', 0, 6),
(59, 'asdf', 0, 4),
(70, 'effective', 0, 1),
(71, 'surrounding', 0, 1),
(72, 'problem', 0, 1),
(73, 'customers', 0, 1),
(74, 'must', 0, 1),
(75, 'get', 0, 1),
(76, 'prescription', 0, 1),
(77, 'pharmacy', 0, 1),
(78, 'online', 0, 1),
(79, 'usually', 0, 1),
(80, 'produces', 0, 1),
(81, 'telephone', 0, 1),
(82, 'mail', 0, 1),
(83, 'interview', 0, 1),
(84, 'which', 0, 1),
(85, 'has', 0, 1),
(86, 'real', 0, 1),
(87, 'pharmacist', 0, 1),
(88, 'whereby', 0, 1),
(89, 'client', 0, 1),
(90, 'will', 0, 1),
(91, 'drug', 0, 1),
(92, 'conferences', 0, 1),
(93, 'success', 0, 1),
(94, 'soma', 0, 1),
(95, 'can', 0, 1),
(96, 'muscle', 0, 1),
(97, 'relaxant', 0, 1),
(98, 'acts', 0, 1),
(99, 'blocking', 0, 1),
(100, 'electrical', 0, 1),
(101, 'signals', 0, 1),
(102, 'among', 0, 1),
(103, 'nerves', 0, 1),
(104, 'within', 0, 1),
(105, 'reticular', 0, 1),
(106, 'formation', 0, 1),
(107, 'mind', 0, 1),
(108, 'inside', 0, 1),
(109, 'spinal', 0, 1),
(110, 'cord', 0, 1),
(111, 'carisoprodol', 0, 1),
(112, 'along', 0, 1),
(113, 'with', 0, 1),
(114, 'rest', 0, 1),
(115, 'physiotherapy', 0, 1),
(116, 'prescribed', 0, 1),
(117, 'short', 0, 1),
(118, 'term', 0, 1),
(119, 'relief', 0, 1),
(120, 'painful', 0, 1),
(121, 'conditions', 0, 1),
(122, 'particularly', 0, 1),
(123, 'spasm', 0, 1),
(124, 'location', 0, 1),
(125, 'where', 0, 1),
(126, 'tightens', 0, 1),
(127, 'does', 0, 1),
(128, 'relax', 0, 1),
(129, 'most', 0, 1),
(130, 'back', 0, 1),
(131, 'strains', 0, 1),
(132, 'cause', 0, 1),
(133, 'patients', 0, 1),
(134, 'find', 0, 1),
(135, 'noteworthy', 0, 1),
(136, 'relieving', 0, 1),
(137, 'lumbar', 0, 1),
(138, 'pain', 0, 1),
(139, 'cheap', 0, 2),
(140, 'phentermine', 0, 2),
(141, 'now', 0, 1),
(142, 'found', 0, 1),
(143, 'out', 0, 1),
(144, 'about', 0, 1),
(145, 'fantastic', 0, 1),
(146, 'rewards', 0, 1),
(147, 'purchase', 0, 1),
(148, 'internet', 0, 1),
(149, 'finest', 0, 1),
(150, 'rates', 0, 1),
(151, 'quickly', 0, 1),
(152, 'fedex', 0, 1),
(153, 'shipping', 0, 1),
(154, 'next', 0, 1),
(155, 'day', 0, 1),
(156, 'time', 0, 1),
(157, 'easy', 0, 1),
(158, 'authorization', 0, 1),
(159, 'when', 0, 1),
(160, 'just', 0, 1),
(161, 'any', 0, 1),
(162, 'but', 0, 1),
(163, 'great', 0, 1),
(164, 'ease', 0, 1),
(165, 'few', 0, 1),
(166, 'risk', 0, 1),
(167, 'achievable', 0, 1),
(168, 'disaster', 0, 1),
(169, 'how', 0, 1),
(170, 'steer', 0, 1),
(171, 'clear', 0, 1),
(172, 'kinds', 0, 1),
(173, 'challenges', 0, 1),
(174, 'keep', 0, 1),
(175, 'positive', 0, 1),
(176, 'aspects', 0, 1),
(177, 'linked', 0, 1),
(178, 'web', 0, 1),
(179, 'ultracet', 0, 1),
(180, 'mix', 0, 1),
(181, 'acetaminophen', 0, 1),
(182, 'really', 0, 1),
(183, 'much', 0, 1),
(184, 'days', 0, 1),
(185, 'comfort', 0, 1),
(186, 'involving', 0, 1),
(187, 'relatively', 0, 1),
(188, 'serious', 0, 1),
(189, 'severe', 0, 1),
(190, 'soreness', 0, 1),
(191, 'approved', 0, 1),
(192, 'pertaining', 0, 1),
(193, 'surgical', 0, 1),
(194, 'discomfort', 0, 1),
(195, 'perhaps', 0, 1),
(196, 'after', 0, 1),
(197, 'dentistry', 0, 1),
(198, 'processes', 0, 1),
(199, 'momocadia', 0, 1),
(200, 'hiessaste', 0, 1),
(201, 'backlink', 0, 2),
(202, 'pagerank', 0, 1),
(203, 'seo', 0, 1),
(204, 'guide', 0, 1),
(205, 'backlinks', 0, 1),
(206, 'service', 0, 2),
(207, 'tool', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_wordmatch`
--

CREATE TABLE IF NOT EXISTS `phpbb_search_wordmatch` (
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `word_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title_match` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `unq_mtch` (`word_id`,`post_id`,`title_match`),
  KEY `word_id` (`word_id`),
  KEY `post_id` (`post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_search_wordmatch`
--

INSERT INTO `phpbb_search_wordmatch` (`post_id`, `word_id`, `title_match`) VALUES
(12, 1, 0),
(12, 3, 0),
(12, 4, 0),
(12, 14, 0),
(12, 19, 0),
(12, 28, 0),
(12, 41, 0),
(12, 44, 0),
(12, 45, 0),
(12, 50, 0),
(12, 53, 0),
(12, 54, 0),
(12, 56, 0),
(6, 59, 0),
(9, 59, 0),
(10, 59, 0),
(11, 59, 0),
(5, 60, 0),
(5, 60, 1),
(6, 60, 1),
(9, 60, 1),
(10, 60, 1),
(11, 60, 1),
(12, 62, 0),
(12, 63, 0),
(12, 64, 0),
(12, 65, 0),
(12, 66, 0),
(12, 66, 1),
(12, 67, 0),
(12, 68, 0),
(12, 69, 0),
(12, 70, 0),
(12, 71, 0),
(12, 72, 0),
(12, 73, 0),
(12, 74, 0),
(12, 75, 0),
(12, 76, 0),
(12, 77, 0),
(12, 78, 0),
(12, 79, 0),
(12, 80, 0),
(12, 81, 0),
(12, 82, 0),
(12, 83, 0),
(12, 84, 0),
(12, 85, 0),
(12, 86, 0),
(12, 87, 0),
(12, 88, 0),
(12, 89, 0),
(12, 90, 0),
(12, 91, 0),
(12, 92, 0),
(12, 93, 0),
(12, 94, 0),
(12, 95, 0),
(12, 96, 0),
(12, 97, 0),
(12, 98, 0),
(12, 99, 0),
(12, 100, 0),
(12, 101, 0),
(12, 102, 0),
(12, 103, 0),
(12, 104, 0),
(12, 105, 0),
(12, 106, 0),
(12, 107, 0),
(12, 108, 0),
(12, 109, 0),
(12, 110, 0),
(12, 111, 0),
(12, 112, 0),
(12, 113, 0),
(12, 114, 0),
(12, 115, 0),
(12, 116, 0),
(12, 117, 0),
(12, 118, 0),
(12, 119, 0),
(12, 120, 0),
(12, 121, 0),
(12, 122, 0),
(12, 123, 0),
(12, 124, 0),
(12, 125, 0),
(12, 126, 0),
(12, 127, 0),
(12, 128, 0),
(12, 129, 0),
(12, 130, 0),
(12, 131, 0),
(12, 132, 0),
(12, 133, 0),
(12, 134, 0),
(12, 135, 0),
(12, 136, 0),
(12, 137, 0),
(12, 138, 0),
(12, 139, 0),
(12, 139, 1),
(12, 140, 0),
(12, 140, 1),
(12, 141, 0),
(12, 142, 0),
(12, 143, 0),
(12, 144, 0),
(12, 145, 0),
(12, 146, 0),
(12, 147, 0),
(12, 148, 0),
(12, 149, 0),
(12, 150, 0),
(12, 151, 0),
(12, 152, 0),
(12, 153, 0),
(12, 154, 0),
(12, 155, 0),
(12, 156, 0),
(12, 157, 0),
(12, 158, 0),
(12, 159, 0),
(12, 160, 0),
(12, 161, 0),
(12, 162, 0),
(12, 163, 0),
(12, 164, 0),
(12, 165, 0),
(12, 166, 0),
(12, 167, 0),
(12, 168, 0),
(12, 169, 0),
(12, 170, 0),
(12, 171, 0),
(12, 172, 0),
(12, 173, 0),
(12, 174, 0),
(12, 175, 0),
(12, 176, 0),
(12, 177, 0),
(12, 178, 0),
(12, 179, 0),
(12, 180, 0),
(12, 181, 0),
(12, 182, 0),
(12, 183, 0),
(12, 184, 0),
(12, 185, 0),
(12, 186, 0),
(12, 187, 0),
(12, 188, 0),
(12, 189, 0),
(12, 190, 0),
(12, 191, 0),
(12, 192, 0),
(12, 193, 0),
(12, 194, 0),
(12, 195, 0),
(12, 196, 0),
(12, 197, 0),
(12, 198, 0),
(12, 199, 1),
(12, 200, 1),
(13, 201, 0),
(13, 201, 1),
(13, 202, 0),
(13, 203, 0),
(13, 204, 0),
(13, 205, 0),
(13, 206, 0),
(13, 206, 1),
(13, 207, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sessions`
--

CREATE TABLE IF NOT EXISTS `phpbb_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_last_visit` int(11) unsigned NOT NULL DEFAULT '0',
  `session_start` int(11) unsigned NOT NULL DEFAULT '0',
  `session_time` int(11) unsigned NOT NULL DEFAULT '0',
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `session_autologin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `session_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `session_time` (`session_time`),
  KEY `session_user_id` (`session_user_id`),
  KEY `session_fid` (`session_forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_sessions`
--

INSERT INTO `phpbb_sessions` (`session_id`, `session_user_id`, `session_forum_id`, `session_last_visit`, `session_start`, `session_time`, `session_ip`, `session_browser`, `session_forwarded_for`, `session_page`, `session_viewonline`, `session_autologin`, `session_admin`) VALUES
('dbaa2ddd1542be2fd33be7dd25964815', 1, 0, 1295068734, 1295068734, 1295068982, '178.73.206.220', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; ru) Opera 8.01', '', 'ucp.php?mode=register', 1, 0, 0),
('6ec4dddca5941ddb91ac0c76f668ca90', 1, 0, 1295062752, 1295062752, 1295062752, '94.231.75.91', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; ru) Opera 8.01', '', 'index.php', 1, 0, 0),
('1edd1e2fb7503bbddedd1fdb2338e2be', 1, 0, 1294931069, 1294931069, 1294931167, '92.241.169.190', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)', '', 'index.php', 1, 0, 0),
('0cf9d435bf5a9fbc39874a313904fa77', 1, 0, 1294926355, 1294926355, 1294926355, '77.47.193.55', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322)', '', 'index.php', 1, 0, 0),
('86eb293dfb231843a2bb7308cf24a075', 1, 0, 1294884236, 1294884236, 1294884329, '190.120.238.64', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; Crazy Browser 2.0.0 Beta 1; .NET CLR 1.0.3705; .NET CLR 1.1.4322)', '', 'ucp.php?mode=register', 1, 0, 0),
('9efba6ee37ca217f16494588a3b65db2', 1, 0, 1294851282, 1294851282, 1294851488, '91.201.66.60', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows NT; DigExt)', '', 'ucp.php?mode=register', 1, 0, 0),
('f64e30499a5a501ff51ccddb4685e351', 1, 0, 1294836543, 1294836543, 1294836594, '164.78.248.57', 'Mozilla/4.0 (compatible- MSIE 6.0- Windows NT 5.1- SV1- .NET CLR 1.1.4322', '', 'index.php', 1, 0, 0),
('97fa937fc3aafbeda1b030b8992714a0', 1, 0, 1294825746, 1294825746, 1294825746, '193.253.141.82', 'Mozilla/5.0 (SymbianOS/9.4; Series60/5.0 NokiaN97-4/10.0.020; Profile/MIDP-2.1 Configuration/CLDC-1.1) AppleWebKit/525 (KHTML, like Gecko) BrowserNG/', '', 'index.php', 1, 0, 0),
('1508a0c0825ff5b7fe2424ae8563ff5a', 1, 0, 1294784992, 1294784992, 1294785034, '88.246.19.241', 'Opera/7.54 (Windows NT 5.1; U)  [pl]', '', 'ucp.php?mode=login', 1, 0, 0),
('e47fc701b6d6f10bb73a41a227b8bfaa', 1, 0, 1294777818, 1294777818, 1294778170, '95.68.80.68', 'Mozilla/4.76 [en] (Windows NT 5.0; U)', '', 'ucp.php?mode=register', 1, 0, 0),
('c51a1a778a35c1ef70dec546a00ad6bc', 1, 0, 1294752320, 1294752320, 1294752320, '94.231.72.156', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0)', '', 'index.php', 1, 0, 0),
('e7db16bbec224c8da8d3061f304fa512', 1, 0, 1294334500, 1294334500, 1294334520, '79.142.68.95', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; .NET CLR 1.1.4322; Alexa Toolbar; (R1 1.5))', '', 'index.php', 1, 0, 0),
('5b14178d48ce336620507c36ffb8cd74', 1, 0, 1294323382, 1294323382, 1294323382, '89.149.244.89', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1)', '', 'index.php', 1, 0, 0),
('7a5742e7063653428088380967043656', 1, 0, 1294260582, 1294260582, 1294260582, '76.73.20.202', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727; .NET CLR 3.0.4506.21', '', 'index.php', 1, 0, 0),
('051a76feae8ae86ba0f7dcb1b51b7802', 1, 0, 1294278769, 1294278769, 1294278769, '66.220.146.249', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', 'index.php', 1, 0, 0),
('485ea2b177b95cb231672a334e3d23e5', 1, 2, 1294283700, 1294283700, 1294283700, '66.220.146.251', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', 'viewtopic.php?f=2&t=5', 1, 0, 0),
('3cf4e933e2fc994331b231b8a5963eeb', 1, 2, 1294283700, 1294283700, 1294283700, '74.77.200.111', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.224 Safari/534.10', '', 'viewtopic.php?f=2&t=5', 1, 0, 0),
('8eace951d5c78c6c7ed352a9d324e913', 1, 0, 1294284856, 1294284856, 1294284856, '184.72.5.178', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US; rv:13.37) Gecko/20121221 Firefox/4.7', '', 'index.php', 1, 0, 0),
('07d2c21df8b99ad5838ec03c46a86166', 51, 0, 1295242436, 1294205086, 1295242436, '72.30.161.247', 'Mozilla/5.0 (compatible; Yahoo! Slurp; http://help.yahoo.com/help/us/ysearch/slurp)', '', 'index.php', 1, 0, 0),
('7cb9dbcaa70cdd94402db12998e1c619', 1, 0, 1294184707, 1294184707, 1294184708, '109.111.184.1', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT 5.0)', '', 'ucp.php?mode=login', 1, 0, 0),
('215fdff59b82460fcd6b348d76427998', 7, 0, 1295299702, 1294186959, 1295299702, '123.125.71.14', 'Baiduspider+(+http://www.baidu.com/search/spider.htm)', '', 'index.php', 1, 0, 0),
('23c95c774541a6c48bc1e7e6c1f0c598', 16, 1, 1295289896, 1295289896, 1295289896, '66.249.71.183', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'viewforum.php?f=1&start=0', 1, 0, 0),
('856070bfcd376ca5774c64b52807a9e9', 53, 0, 1295134061, 1295134061, 1295134061, '207.46.12.239', 'Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)', '', 'index.php', 1, 0, 0),
('975997ece3d3fee694050ad2b8dd1d17', 1, 1, 1294103990, 1294103990, 1294104015, '84.237.149.89', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)', '', 'viewforum.php?f=1', 1, 0, 0),
('83d20762f0c52fd4e7e75423c737f305', 1, 2, 1294526536, 1294526536, 1294526546, '70.45.62.229', 'Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_6_6; en-us) AppleWebKit/533.19.4 (KHTML, like Gecko) Version/5.0.3 Safari/533.19.4', '', 'viewtopic.php?f=2&t=5', 1, 0, 0),
('8b96b6bf763ec0e156f75f38c8fcc010', 1, 0, 1294139174, 1294139174, 1294139365, '109.111.184.1', 'Opera/9.00 (Windows NT 5.1; U; ru)', '', 'index.php', 1, 0, 0),
('ff2ce1572497c610201df9f768978def', 1, 2, 1294094133, 1294094133, 1294094146, '67.246.185.237', 'Mozilla/5.0 (Windows; U; Windows NT 6.1; en-US) AppleWebKit/534.10 (KHTML, like Gecko) Chrome/8.0.552.224 Safari/534.10', '', 'viewtopic.php?f=2&t=5', 1, 0, 0),
('b5203d6b19d8b4bc3d3b53065ebe766b', 1, 0, 1294511502, 1294511502, 1294511502, '67.202.28.42', 'Mozilla/5.0 (Windows; U; Windows NT 6.0; en-US; rv:1.9.2.3) Gecko/20100401 Firefox/3.6.3 GTB6 (.NET CLR 3.5.30729)', '', 'index.php', 1, 0, 0),
('945811128fbc5ba82717af161b3218a3', 1, 0, 1294367283, 1294367283, 1294367283, '95.25.144.21', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322)', '', 'index.php', 1, 0, 0),
('655ca1108123dce341d9fc488f90a281', 1, 0, 1294389126, 1294389126, 1294389170, '79.104.223.73', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows ME) Opera 7.11  [en]', '', 'ucp.php?mode=register', 1, 0, 0),
('eb65e865dfc3e3a4f8354946461929d1', 1, 0, 1294389344, 1294389344, 1294389344, '41.193.4.210', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows ME) Opera 7.11  [en]', '', 'index.php', 1, 0, 0),
('6f8612f4c0932f88d0a7b9e87182bdd5', 1, 0, 1294411336, 1294411336, 1294411336, '76.73.20.202', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 2.0.50727; .NET CLR 3.0.4506.21', '', 'index.php', 1, 0, 0),
('9b52b66448926708025b714a8bcc07e7', 1, 0, 1294435992, 1294435992, 1294436030, '76.191.100.77', 'Mozilla/4.7 (compatible; OffByOne; Windows 2000) Webster Pro V3.4', '', 'ucp.php?mode=login', 1, 0, 0),
('88db4d23868eabfaadfd87e7bdbe1291', 1, 0, 1294513635, 1294513635, 1294513635, '69.63.181.251', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', 'index.php', 1, 0, 0),
('f2261d04163b9e6e212420d4cc25fc00', 1, 0, 1294517691, 1294517691, 1294517691, '89.149.244.89', 'Opera/9.01 (Windows NT 5.1; U; en)', '', 'index.php', 1, 0, 0),
('c497f073a31bbb1243d47e5198147438', 1, 0, 1294540073, 1294540073, 1294540073, '91.196.53.52', 'Opera/9.00 (Windows NT 4.0; U; en)', '', 'index.php', 1, 0, 0),
('c3d2885fe0aecd6780a215189be82eed', 1, 0, 1294587324, 1294587324, 1294587324, '69.28.58.9', 'Wget/1.9+cvs-stable (Red Hat modified)', '', 'index.php', 1, 0, 0),
('0aa8b1d54ef53fd9b51c22bd307823d3', 1, 0, 1294664658, 1294664658, 1294664683, '79.142.68.93', 'Mozilla/4.0 (compatible; MSIE 4.01; Digital AlphaServer 1000A 4/233; Windows NT; Powered By 64-Bit Alpha Processor)', '', 'index.php', 1, 0, 0),
('822bd72cc265c1fff935e13df5166add', 1, 0, 1295234381, 1295234381, 1295234475, '95.211.9.167', 'Mozilla/1.22 (compatible; MSIE 2.0d; Windows NT)', '', 'index.php', 1, 0, 0),
('2b3583e53797dbc0f1a1160f7a96cb36', 1, 0, 1294720566, 1294720566, 1294720566, '66.220.149.250', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', 'index.php', 1, 0, 0),
('0e1134cf199c18818d1d448c8739c9c9', 1, 0, 1294740718, 1294740718, 1294740718, '64.246.165.200', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en; rv:1.9.0.13) Gecko/2009073022 Firefox/3.5.2 (.NET CLR 3.5.30729) SurveyBot/2.3 (DomainTools)', '', 'index.php', 1, 0, 0),
('d735c7acb5328a1c7de11fef877a572a', 1, 0, 1295085005, 1295085005, 1295085116, '173.242.119.37', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; .NET CLR 1.1.4322; FDM)', '', 'ucp.php?mode=register', 1, 0, 0),
('710c0a545308f3a74e846549b69767e7', 1, 0, 1295087153, 1295087153, 1295087153, '87.106.135.77', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows NT)', '', 'index.php', 1, 0, 0),
('90803bf6b1701c523cb4fc690c876204', 1, 0, 1295118773, 1295118773, 1295118859, '93.207.105.181', 'Opera/9.00 (Windows NT 5.1; U; en)', '', 'ucp.php?mode=login', 1, 0, 0),
('a53eaa5de7467d95401472573678b85c', 1, 0, 1295224496, 1295224496, 1295224496, '46.4.174.181', 'Mozilla/5.0 (compatible; Peew/1.0; http://www.peew.de/crawler/)', '', 'index.php', 1, 0, 0),
('c6c05f2ec0f3b156725120d032558ed9', 54, 0, 1295179953, 1295179953, 1295179980, '91.201.66.88', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; T312461)', '', 'memberlist.php?mode=viewprofile&u=54', 1, 0, 0),
('5e85adb3e7d99b4a6b5106f44c7cfceb', 1, 0, 1295244471, 1295244471, 1295245061, '88.246.30.155', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; en) Opera 8.00', '', 'index.php', 1, 0, 0),
('1eb11da594696d25c7362d5d31476770', 1, 0, 1295246072, 1295246072, 1295246072, '92.241.168.108', 'Mozilla/4.0 (compatible; MSIE 5.0; Windows 95) Opera 6.01  [en]', '', 'index.php', 1, 0, 0),
('a7773cec1c619bbd9a68eae5de034ee4', 1, 0, 1295252350, 1295252350, 1295252449, '92.241.169.190', 'Mozilla/2.0 (compatible; MSIE 3.02; Windows CE; 240x320)', '', 'index.php', 1, 0, 0),
('f3debd7456fb9162aea835c37feb530f', 1, 0, 1295262596, 1295262596, 1295262661, '92.241.169.233', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1', '', 'ucp.php?mode=login', 1, 0, 0),
('8b58fc088e72e60a07bc04d95b39d844', 55, 2, 1295254341, 1295254341, 1295254361, '92.241.169.160', 'Mozilla/1.22 (compatible; MSIE 2.0; Windows 95)', '', 'posting.php?mode=post&f=2', 1, 0, 0),
('5a74853481ed6c3887e9617d75f30c3b', 1, 0, 1295304948, 1295304948, 1295304948, '95.108.151.244', 'Mozilla/5.0 (compatible; YandexBot/3.0; MirrorDetector; +http://yandex.com/bots)', '', 'index.php', 1, 0, 0),
('3600f3a34163c75c84c1c4d1abf56aa7', 1, 0, 1295304949, 1295304949, 1295304949, '95.108.151.244', 'Mozilla/5.0 (compatible; YandexBot/3.0; MirrorDetector; +http://yandex.com/bots)', '', 'index.php', 1, 0, 0),
('6be4ab0641a7781ee8e93d8557fd235c', 1, 0, 1295322635, 1295322635, 1295322635, '66.220.147.250', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', 'index.php', 1, 0, 0),
('83cdbf8fa9be356e4061e15de7033236', 56, 0, 1295323908, 1295323908, 1295323914, '67.215.235.200', 'Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.0; APC; .NET CLR 1.0.3705; .NET CLR 1.1.4322; .NET CLR 2.0.50215; InfoPath.1)', '', 'ucp.php?i=profile&mode=profile_info', 1, 0, 0),
('5fcfa92b81396d15d3ba4fe41fcb24da', 1, 0, 1295377675, 1295377675, 1295377708, '38.97.88.20', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13 ( .NET CLR 3.5.30729; .NET4.0C)', '', 'memberlist.php?mode=viewprofile&u=2', 1, 0, 0),
('745d9ee2fa082abaa35e507496621d55', 1, 2, 1295379030, 1295379030, 1295379030, '71.105.132.12', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2.13) Gecko/20101203 Firefox/3.6.13 ( .NET CLR 3.5.30729)', '', 'viewtopic.php?f=2&t=5', 1, 0, 0),
('9e5004d578e3fca0594ab8a71635f270', 1, 2, 1295379033, 1295379033, 1295379033, '69.63.181.248', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', '', 'viewtopic.php?f=2&t=5', 1, 0, 0),
('5e693821cfeaffbe986b496bd3537cba', 1, 0, 1295381160, 1295381160, 1295381325, '67.215.235.200', 'Mozilla/4.0 (compatible; MSIE 5.5; Windows 95)', '', 'index.php', 1, 0, 0),
('b706fbf6e6bdea888d0fbe578ddac201', 57, 2, 1295404726, 1295404726, 1295404745, '46.109.194.23', 'Opera/7.54 (Windows NT 5.1; U)  [pl]', '', 'posting.php?mode=post&f=2', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sessions_keys`
--

CREATE TABLE IF NOT EXISTS `phpbb_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`key_id`,`user_id`),
  KEY `last_login` (`last_login`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_sessions_keys`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sitelist`
--

CREATE TABLE IF NOT EXISTS `phpbb_sitelist` (
  `site_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`site_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_sitelist`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_smilies`
--

CREATE TABLE IF NOT EXISTS `phpbb_smilies` (
  `smiley_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`smiley_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=43 ;

--
-- Dumping data for table `phpbb_smilies`
--

INSERT INTO `phpbb_smilies` (`smiley_id`, `code`, `emotion`, `smiley_url`, `smiley_width`, `smiley_height`, `smiley_order`, `display_on_posting`) VALUES
(1, ':D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 1, 1),
(2, ':-D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 2, 1),
(3, ':grin:', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 3, 1),
(4, ':)', 'Smile', 'icon_e_smile.gif', 15, 17, 4, 1),
(5, ':-)', 'Smile', 'icon_e_smile.gif', 15, 17, 5, 1),
(6, ':smile:', 'Smile', 'icon_e_smile.gif', 15, 17, 6, 1),
(7, ';)', 'Wink', 'icon_e_wink.gif', 15, 17, 7, 1),
(8, ';-)', 'Wink', 'icon_e_wink.gif', 15, 17, 8, 1),
(9, ':wink:', 'Wink', 'icon_e_wink.gif', 15, 17, 9, 1),
(10, ':(', 'Sad', 'icon_e_sad.gif', 15, 17, 10, 1),
(11, ':-(', 'Sad', 'icon_e_sad.gif', 15, 17, 11, 1),
(12, ':sad:', 'Sad', 'icon_e_sad.gif', 15, 17, 12, 1),
(13, ':o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 13, 1),
(14, ':-o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 14, 1),
(15, ':eek:', 'Surprised', 'icon_e_surprised.gif', 15, 17, 15, 1),
(16, ':shock:', 'Shocked', 'icon_eek.gif', 15, 17, 16, 1),
(17, ':?', 'Confused', 'icon_e_confused.gif', 15, 17, 17, 1),
(18, ':-?', 'Confused', 'icon_e_confused.gif', 15, 17, 18, 1),
(19, ':???:', 'Confused', 'icon_e_confused.gif', 15, 17, 19, 1),
(20, '8-)', 'Cool', 'icon_cool.gif', 15, 17, 20, 1),
(21, ':cool:', 'Cool', 'icon_cool.gif', 15, 17, 21, 1),
(22, ':lol:', 'Laughing', 'icon_lol.gif', 15, 17, 22, 1),
(23, ':x', 'Mad', 'icon_mad.gif', 15, 17, 23, 1),
(24, ':-x', 'Mad', 'icon_mad.gif', 15, 17, 24, 1),
(25, ':mad:', 'Mad', 'icon_mad.gif', 15, 17, 25, 1),
(26, ':P', 'Razz', 'icon_razz.gif', 15, 17, 26, 1),
(27, ':-P', 'Razz', 'icon_razz.gif', 15, 17, 27, 1),
(28, ':razz:', 'Razz', 'icon_razz.gif', 15, 17, 28, 1),
(29, ':oops:', 'Embarrassed', 'icon_redface.gif', 15, 17, 29, 1),
(30, ':cry:', 'Crying or Very Sad', 'icon_cry.gif', 15, 17, 30, 1),
(31, ':evil:', 'Evil or Very Mad', 'icon_evil.gif', 15, 17, 31, 1),
(32, ':twisted:', 'Twisted Evil', 'icon_twisted.gif', 15, 17, 32, 1),
(33, ':roll:', 'Rolling Eyes', 'icon_rolleyes.gif', 15, 17, 33, 1),
(34, ':!:', 'Exclamation', 'icon_exclaim.gif', 15, 17, 34, 1),
(35, ':?:', 'Question', 'icon_question.gif', 15, 17, 35, 1),
(36, ':idea:', 'Idea', 'icon_idea.gif', 15, 17, 36, 1),
(37, ':arrow:', 'Arrow', 'icon_arrow.gif', 15, 17, 37, 1),
(38, ':|', 'Neutral', 'icon_neutral.gif', 15, 17, 38, 1),
(39, ':-|', 'Neutral', 'icon_neutral.gif', 15, 17, 39, 1),
(40, ':mrgreen:', 'Mr. Green', 'icon_mrgreen.gif', 15, 17, 40, 1),
(41, ':geek:', 'Geek', 'icon_e_geek.gif', 17, 17, 41, 1),
(42, ':ugeek:', 'Uber Geek', 'icon_e_ugeek.gif', 17, 18, 42, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles`
--

CREATE TABLE IF NOT EXISTS `phpbb_styles` (
  `style_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `theme_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `imageset_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`style_id`),
  UNIQUE KEY `style_name` (`style_name`),
  KEY `template_id` (`template_id`),
  KEY `theme_id` (`theme_id`),
  KEY `imageset_id` (`imageset_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=12 ;

--
-- Dumping data for table `phpbb_styles`
--

INSERT INTO `phpbb_styles` (`style_id`, `style_name`, `style_copyright`, `style_active`, `template_id`, `theme_id`, `imageset_id`) VALUES
(11, '40Forty', '&copy; phpBB Group, 2007', 1, 6, 6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles_imageset`
--

CREATE TABLE IF NOT EXISTS `phpbb_styles_imageset` (
  `imageset_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `imageset_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `imageset_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `imageset_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`imageset_id`),
  UNIQUE KEY `imgset_nm` (`imageset_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dumping data for table `phpbb_styles_imageset`
--

INSERT INTO `phpbb_styles_imageset` (`imageset_id`, `imageset_name`, `imageset_copyright`, `imageset_path`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver'),
(3, 'subsilver2', '&copy; phpBB Group, 2003', 'subsilver2'),
(6, '40Forty', '&copy; 2009 isCrump.com', '40Forty');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles_imageset_data`
--

CREATE TABLE IF NOT EXISTS `phpbb_styles_imageset_data` (
  `image_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `image_name` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_filename` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `image_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `image_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `imageset_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`image_id`),
  KEY `i_d` (`imageset_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=552 ;

--
-- Dumping data for table `phpbb_styles_imageset_data`
--

INSERT INTO `phpbb_styles_imageset_data` (`image_id`, `image_name`, `image_filename`, `image_lang`, `image_height`, `image_width`, `imageset_id`) VALUES
(1, 'site_logo', 'site_logo.gif', '', 52, 139, 1),
(2, 'forum_link', 'forum_link.gif', '', 27, 27, 1),
(3, 'forum_read', 'forum_read.gif', '', 27, 27, 1),
(4, 'forum_read_locked', 'forum_read_locked.gif', '', 27, 27, 1),
(5, 'forum_read_subforum', 'forum_read_subforum.gif', '', 27, 27, 1),
(6, 'forum_unread', 'forum_unread.gif', '', 27, 27, 1),
(7, 'forum_unread_locked', 'forum_unread_locked.gif', '', 27, 27, 1),
(8, 'forum_unread_subforum', 'forum_unread_subforum.gif', '', 27, 27, 1),
(9, 'topic_moved', 'topic_moved.gif', '', 27, 27, 1),
(10, 'topic_read', 'topic_read.gif', '', 27, 27, 1),
(11, 'topic_read_mine', 'topic_read_mine.gif', '', 27, 27, 1),
(12, 'topic_read_hot', 'topic_read_hot.gif', '', 27, 27, 1),
(13, 'topic_read_hot_mine', 'topic_read_hot_mine.gif', '', 27, 27, 1),
(14, 'topic_read_locked', 'topic_read_locked.gif', '', 27, 27, 1),
(15, 'topic_read_locked_mine', 'topic_read_locked_mine.gif', '', 27, 27, 1),
(16, 'topic_unread', 'topic_unread.gif', '', 27, 27, 1),
(17, 'topic_unread_mine', 'topic_unread_mine.gif', '', 27, 27, 1),
(18, 'topic_unread_hot', 'topic_unread_hot.gif', '', 27, 27, 1),
(19, 'topic_unread_hot_mine', 'topic_unread_hot_mine.gif', '', 27, 27, 1),
(20, 'topic_unread_locked', 'topic_unread_locked.gif', '', 27, 27, 1),
(21, 'topic_unread_locked_mine', 'topic_unread_locked_mine.gif', '', 27, 27, 1),
(22, 'sticky_read', 'sticky_read.gif', '', 27, 27, 1),
(23, 'sticky_read_mine', 'sticky_read_mine.gif', '', 27, 27, 1),
(24, 'sticky_read_locked', 'sticky_read_locked.gif', '', 27, 27, 1),
(25, 'sticky_read_locked_mine', 'sticky_read_locked_mine.gif', '', 27, 27, 1),
(26, 'sticky_unread', 'sticky_unread.gif', '', 27, 27, 1),
(27, 'sticky_unread_mine', 'sticky_unread_mine.gif', '', 27, 27, 1),
(28, 'sticky_unread_locked', 'sticky_unread_locked.gif', '', 27, 27, 1),
(29, 'sticky_unread_locked_mine', 'sticky_unread_locked_mine.gif', '', 27, 27, 1),
(30, 'announce_read', 'announce_read.gif', '', 27, 27, 1),
(31, 'announce_read_mine', 'announce_read_mine.gif', '', 27, 27, 1),
(32, 'announce_read_locked', 'announce_read_locked.gif', '', 27, 27, 1),
(33, 'announce_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 1),
(34, 'announce_unread', 'announce_unread.gif', '', 27, 27, 1),
(35, 'announce_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 1),
(36, 'announce_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 1),
(37, 'announce_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 1),
(38, 'global_read', 'announce_read.gif', '', 27, 27, 1),
(39, 'global_read_mine', 'announce_read_mine.gif', '', 27, 27, 1),
(40, 'global_read_locked', 'announce_read_locked.gif', '', 27, 27, 1),
(41, 'global_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 1),
(42, 'global_unread', 'announce_unread.gif', '', 27, 27, 1),
(43, 'global_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 1),
(44, 'global_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 1),
(45, 'global_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 1),
(46, 'pm_read', 'topic_read.gif', '', 27, 27, 1),
(47, 'pm_unread', 'topic_unread.gif', '', 27, 27, 1),
(48, 'icon_back_top', 'icon_back_top.gif', '', 11, 11, 1),
(49, 'icon_contact_aim', 'icon_contact_aim.gif', '', 20, 20, 1),
(50, 'icon_contact_email', 'icon_contact_email.gif', '', 20, 20, 1),
(51, 'icon_contact_icq', 'icon_contact_icq.gif', '', 20, 20, 1),
(52, 'icon_contact_jabber', 'icon_contact_jabber.gif', '', 20, 20, 1),
(53, 'icon_contact_msnm', 'icon_contact_msnm.gif', '', 20, 20, 1),
(54, 'icon_contact_www', 'icon_contact_www.gif', '', 20, 20, 1),
(55, 'icon_contact_yahoo', 'icon_contact_yahoo.gif', '', 20, 20, 1),
(56, 'icon_post_delete', 'icon_post_delete.gif', '', 20, 20, 1),
(57, 'icon_post_info', 'icon_post_info.gif', '', 20, 20, 1),
(58, 'icon_post_report', 'icon_post_report.gif', '', 20, 20, 1),
(59, 'icon_post_target', 'icon_post_target.gif', '', 9, 11, 1),
(60, 'icon_post_target_unread', 'icon_post_target_unread.gif', '', 9, 11, 1),
(61, 'icon_topic_attach', 'icon_topic_attach.gif', '', 10, 7, 1),
(62, 'icon_topic_latest', 'icon_topic_latest.gif', '', 9, 11, 1),
(63, 'icon_topic_newest', 'icon_topic_newest.gif', '', 9, 11, 1),
(64, 'icon_topic_reported', 'icon_topic_reported.gif', '', 14, 16, 1),
(65, 'icon_topic_unapproved', 'icon_topic_unapproved.gif', '', 14, 16, 1),
(66, 'icon_user_warn', 'icon_user_warn.gif', '', 20, 20, 1),
(67, 'subforum_read', 'subforum_read.gif', '', 9, 11, 1),
(68, 'subforum_unread', 'subforum_unread.gif', '', 9, 11, 1),
(69, 'icon_contact_pm', 'icon_contact_pm.gif', 'en', 20, 28, 1),
(70, 'icon_post_edit', 'icon_post_edit.gif', 'en', 20, 42, 1),
(71, 'icon_post_quote', 'icon_post_quote.gif', 'en', 20, 54, 1),
(72, 'icon_user_online', 'icon_user_online.gif', 'en', 58, 58, 1),
(73, 'button_pm_forward', 'button_pm_forward.gif', 'en', 25, 96, 1),
(74, 'button_pm_new', 'button_pm_new.gif', 'en', 25, 84, 1),
(75, 'button_pm_reply', 'button_pm_reply.gif', 'en', 25, 96, 1),
(76, 'button_topic_locked', 'button_topic_locked.gif', 'en', 25, 88, 1),
(77, 'button_topic_new', 'button_topic_new.gif', 'en', 25, 96, 1),
(78, 'button_topic_reply', 'button_topic_reply.gif', 'en', 25, 96, 1),
(159, 'site_logo', 'site_logo.gif', '', 94, 170, 3),
(160, 'upload_bar', 'upload_bar.gif', '', 16, 280, 3),
(161, 'poll_left', 'poll_left.gif', '', 12, 4, 3),
(162, 'poll_center', 'poll_center.gif', '', 12, 1, 3),
(163, 'poll_right', 'poll_right.gif', '', 12, 4, 3),
(164, 'forum_link', 'forum_link.gif', '', 25, 46, 3),
(165, 'forum_read', 'forum_read.gif', '', 25, 46, 3),
(166, 'forum_read_locked', 'forum_read_locked.gif', '', 25, 46, 3),
(167, 'forum_read_subforum', 'forum_read_subforum.gif', '', 25, 46, 3),
(168, 'forum_unread', 'forum_unread.gif', '', 25, 46, 3),
(169, 'forum_unread_locked', 'forum_unread_locked.gif', '', 25, 46, 3),
(170, 'forum_unread_subforum', 'forum_unread_subforum.gif', '', 25, 46, 3),
(171, 'topic_moved', 'topic_moved.gif', '', 18, 19, 3),
(172, 'topic_read', 'topic_read.gif', '', 18, 19, 3),
(173, 'topic_read_mine', 'topic_read_mine.gif', '', 18, 19, 3),
(174, 'topic_read_hot', 'topic_read_hot.gif', '', 18, 19, 3),
(175, 'topic_read_hot_mine', 'topic_read_hot_mine.gif', '', 18, 19, 3),
(176, 'topic_read_locked', 'topic_read_locked.gif', '', 18, 19, 3),
(177, 'topic_read_locked_mine', 'topic_read_locked_mine.gif', '', 18, 19, 3),
(178, 'topic_unread', 'topic_unread.gif', '', 18, 19, 3),
(179, 'topic_unread_mine', 'topic_unread_mine.gif', '', 18, 19, 3),
(180, 'topic_unread_hot', 'topic_unread_hot.gif', '', 18, 19, 3),
(181, 'topic_unread_hot_mine', 'topic_unread_hot_mine.gif', '', 18, 19, 3),
(182, 'topic_unread_locked', 'topic_unread_locked.gif', '', 18, 19, 3),
(183, 'topic_unread_locked_mine', 'topic_unread_locked_mine.gif', '', 18, 19, 3),
(184, 'sticky_read', 'sticky_read.gif', '', 18, 19, 3),
(185, 'sticky_read_mine', 'sticky_read_mine.gif', '', 18, 19, 3),
(186, 'sticky_read_locked', 'sticky_read_locked.gif', '', 18, 19, 3),
(187, 'sticky_read_locked_mine', 'sticky_read_locked_mine.gif', '', 18, 19, 3),
(188, 'sticky_unread', 'sticky_unread.gif', '', 18, 19, 3),
(189, 'sticky_unread_mine', 'sticky_unread_mine.gif', '', 18, 19, 3),
(190, 'sticky_unread_locked', 'sticky_unread_locked.gif', '', 18, 19, 3),
(191, 'sticky_unread_locked_mine', 'sticky_unread_locked_mine.gif', '', 18, 19, 3),
(192, 'announce_read', 'announce_read.gif', '', 18, 19, 3),
(193, 'announce_read_mine', 'announce_read_mine.gif', '', 18, 19, 3),
(194, 'announce_read_locked', 'announce_read_locked.gif', '', 18, 19, 3),
(195, 'announce_read_locked_mine', 'announce_read_locked_mine.gif', '', 18, 19, 3),
(196, 'announce_unread', 'announce_unread.gif', '', 18, 19, 3),
(197, 'announce_unread_mine', 'announce_unread_mine.gif', '', 18, 19, 3),
(198, 'announce_unread_locked', 'announce_unread_locked.gif', '', 18, 19, 3),
(199, 'announce_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 18, 19, 3),
(200, 'global_read', 'announce_read.gif', '', 18, 19, 3),
(201, 'global_read_mine', 'announce_read_mine.gif', '', 18, 19, 3),
(202, 'global_read_locked', 'announce_read_locked.gif', '', 18, 19, 3),
(203, 'global_read_locked_mine', 'announce_read_locked_mine.gif', '', 18, 19, 3),
(204, 'global_unread', 'announce_unread.gif', '', 18, 19, 3),
(205, 'global_unread_mine', 'announce_unread_mine.gif', '', 18, 19, 3),
(206, 'global_unread_locked', 'announce_unread_locked.gif', '', 18, 19, 3),
(207, 'global_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 18, 19, 3),
(208, 'pm_read', 'topic_read.gif', '', 18, 19, 3),
(209, 'pm_unread', 'topic_unread.gif', '', 18, 19, 3),
(210, 'icon_post_target', 'icon_post_target.gif', '', 9, 12, 3),
(211, 'icon_post_target_unread', 'icon_post_target_unread.gif', '', 9, 12, 3),
(212, 'icon_topic_attach', 'icon_topic_attach.gif', '', 18, 14, 3),
(213, 'icon_topic_latest', 'icon_topic_latest.gif', '', 9, 18, 3),
(214, 'icon_topic_newest', 'icon_topic_newest.gif', '', 9, 18, 3),
(215, 'icon_topic_reported', 'icon_topic_reported.gif', '', 18, 19, 3),
(216, 'icon_topic_unapproved', 'icon_topic_unapproved.gif', '', 18, 19, 3),
(217, 'icon_contact_aim', 'icon_contact_aim.gif', 'en', 0, 0, 3),
(218, 'icon_contact_email', 'icon_contact_email.gif', 'en', 0, 0, 3),
(219, 'icon_contact_icq', 'icon_contact_icq.gif', 'en', 0, 0, 3),
(220, 'icon_contact_jabber', 'icon_contact_jabber.gif', 'en', 0, 0, 3),
(221, 'icon_contact_msnm', 'icon_contact_msnm.gif', 'en', 0, 0, 3),
(222, 'icon_contact_pm', 'icon_contact_pm.gif', 'en', 0, 0, 3),
(223, 'icon_contact_yahoo', 'icon_contact_yahoo.gif', 'en', 0, 0, 3),
(224, 'icon_contact_www', 'icon_contact_www.gif', 'en', 0, 0, 3),
(225, 'icon_post_delete', 'icon_post_delete.gif', 'en', 0, 0, 3),
(226, 'icon_post_edit', 'icon_post_edit.gif', 'en', 0, 0, 3),
(227, 'icon_post_info', 'icon_post_info.gif', 'en', 0, 0, 3),
(228, 'icon_post_quote', 'icon_post_quote.gif', 'en', 0, 0, 3),
(229, 'icon_post_report', 'icon_post_report.gif', 'en', 0, 0, 3),
(230, 'icon_user_online', 'icon_user_online.gif', 'en', 0, 0, 3),
(231, 'icon_user_offline', 'icon_user_offline.gif', 'en', 0, 0, 3),
(232, 'icon_user_profile', 'icon_user_profile.gif', 'en', 0, 0, 3),
(233, 'icon_user_search', 'icon_user_search.gif', 'en', 0, 0, 3),
(234, 'icon_user_warn', 'icon_user_warn.gif', 'en', 0, 0, 3),
(235, 'button_pm_new', 'button_pm_new.gif', 'en', 0, 0, 3),
(236, 'button_pm_reply', 'button_pm_reply.gif', 'en', 0, 0, 3),
(237, 'button_topic_locked', 'button_topic_locked.gif', 'en', 0, 0, 3),
(238, 'button_topic_new', 'button_topic_new.gif', 'en', 0, 0, 3),
(239, 'button_topic_reply', 'button_topic_reply.gif', 'en', 0, 0, 3),
(551, 'button_topic_reply', 'button_topic_reply.gif', 'en', 25, 96, 6),
(550, 'button_topic_new', 'button_topic_new.gif', 'en', 25, 96, 6),
(549, 'button_topic_locked', 'button_topic_locked.gif', 'en', 25, 88, 6),
(548, 'button_pm_reply', 'button_pm_reply.gif', 'en', 25, 96, 6),
(547, 'button_pm_new', 'button_pm_new.gif', 'en', 25, 84, 6),
(546, 'button_pm_forward', 'button_pm_forward.gif', 'en', 25, 96, 6),
(545, 'icon_user_online', 'icon_user_online.gif', 'en', 58, 58, 6),
(544, 'icon_post_quote', 'icon_post_quote.gif', 'en', 20, 54, 6),
(543, 'icon_post_edit', 'icon_post_edit.gif', 'en', 20, 42, 6),
(542, 'icon_contact_pm', 'icon_contact_pm.gif', 'en', 20, 28, 6),
(541, 'icon_user_warn', 'icon_user_warn.gif', '', 20, 20, 6),
(540, 'icon_topic_unapproved', 'icon_topic_unapproved.gif', '', 14, 16, 6),
(539, 'icon_topic_reported', 'icon_topic_reported.gif', '', 14, 16, 6),
(538, 'icon_topic_newest', 'icon_topic_newest.gif', '', 9, 11, 6),
(537, 'icon_topic_latest', 'icon_topic_latest.gif', '', 9, 11, 6),
(536, 'icon_topic_attach', 'icon_topic_attach.gif', '', 10, 7, 6),
(535, 'icon_post_target_unread', 'icon_post_target_unread.gif', '', 9, 11, 6),
(534, 'icon_post_target', 'icon_post_target.gif', '', 9, 11, 6),
(533, 'icon_post_report', 'icon_post_report.gif', '', 20, 20, 6),
(532, 'icon_post_info', 'icon_post_info.gif', '', 20, 20, 6),
(531, 'icon_post_delete', 'icon_post_delete.gif', '', 20, 20, 6),
(530, 'icon_contact_yahoo', 'icon_contact_yahoo.gif', '', 20, 20, 6),
(529, 'icon_contact_www', 'icon_contact_www.gif', '', 20, 20, 6),
(528, 'icon_contact_msnm', 'icon_contact_msnm.gif', '', 20, 20, 6),
(527, 'icon_contact_jabber', 'icon_contact_jabber.gif', '', 20, 20, 6),
(526, 'icon_contact_icq', 'icon_contact_icq.gif', '', 20, 20, 6),
(525, 'icon_contact_email', 'icon_contact_email.gif', '', 20, 20, 6),
(524, 'icon_contact_aim', 'icon_contact_aim.gif', '', 20, 20, 6),
(523, 'icon_back_top', 'icon_back_top.gif', '', 11, 11, 6),
(522, 'pm_unread', 'topic_unread.gif', '', 27, 27, 6),
(521, 'pm_read', 'topic_read.gif', '', 27, 27, 6),
(520, 'subforum_unread', 'subforum_unread.gif', '', 9, 11, 6),
(519, 'subforum_read', 'subforum_read.gif', '', 9, 11, 6),
(518, 'global_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 6),
(517, 'global_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 6),
(516, 'global_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 6),
(515, 'global_unread', 'announce_unread.gif', '', 27, 27, 6),
(514, 'global_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 6),
(513, 'global_read_locked', 'announce_read_locked.gif', '', 27, 27, 6),
(512, 'global_read_mine', 'announce_read_mine.gif', '', 27, 27, 6),
(511, 'global_read', 'announce_read.gif', '', 27, 27, 6),
(510, 'announce_unread_locked_mine', 'announce_unread_locked_mine.gif', '', 27, 27, 6),
(509, 'announce_unread_locked', 'announce_unread_locked.gif', '', 27, 27, 6),
(508, 'announce_unread_mine', 'announce_unread_mine.gif', '', 27, 27, 6),
(507, 'announce_unread', 'announce_unread.gif', '', 27, 27, 6),
(506, 'announce_read_locked_mine', 'announce_read_locked_mine.gif', '', 27, 27, 6),
(505, 'announce_read_locked', 'announce_read_locked.gif', '', 27, 27, 6),
(504, 'announce_read_mine', 'announce_read_mine.gif', '', 27, 27, 6),
(503, 'announce_read', 'announce_read.gif', '', 27, 27, 6),
(502, 'sticky_unread_locked_mine', 'sticky_unread_locked_mine.gif', '', 27, 27, 6),
(501, 'sticky_unread_locked', 'sticky_unread_locked.gif', '', 27, 27, 6),
(500, 'sticky_unread_mine', 'sticky_unread_mine.gif', '', 27, 27, 6),
(499, 'sticky_unread', 'sticky_unread.gif', '', 27, 27, 6),
(498, 'sticky_read_locked_mine', 'sticky_read_locked_mine.gif', '', 27, 27, 6),
(497, 'sticky_read_locked', 'sticky_read_locked.gif', '', 27, 27, 6),
(496, 'sticky_read_mine', 'sticky_read_mine.gif', '', 27, 27, 6),
(495, 'sticky_read', 'sticky_read.gif', '', 27, 27, 6),
(494, 'topic_unread_locked_mine', 'topic_unread_locked_mine.gif', '', 27, 27, 6),
(493, 'topic_unread_locked', 'topic_unread_locked.gif', '', 27, 27, 6),
(492, 'topic_unread_hot_mine', 'topic_unread_hot_mine.gif', '', 27, 27, 6),
(491, 'topic_unread_hot', 'topic_unread_hot.gif', '', 27, 27, 6),
(490, 'topic_unread_mine', 'topic_unread_mine.gif', '', 27, 27, 6),
(489, 'topic_unread', 'topic_unread.gif', '', 27, 27, 6),
(488, 'topic_read_locked_mine', 'topic_read_locked_mine.gif', '', 27, 27, 6),
(487, 'topic_read_locked', 'topic_read_locked.gif', '', 27, 27, 6),
(486, 'topic_read_hot_mine', 'topic_read_hot_mine.gif', '', 27, 27, 6),
(485, 'topic_read_hot', 'topic_read_hot.gif', '', 27, 27, 6),
(484, 'topic_read_mine', 'topic_read_mine.gif', '', 27, 27, 6),
(483, 'topic_read', 'topic_read.gif', '', 27, 27, 6),
(482, 'topic_moved', 'topic_moved.gif', '', 27, 27, 6),
(481, 'forum_unread_subforum', 'forum_unread_subforum.gif', '', 27, 27, 6),
(480, 'forum_unread_locked', 'forum_unread_locked.gif', '', 27, 27, 6),
(479, 'forum_unread', 'forum_unread.gif', '', 27, 27, 6),
(478, 'forum_read_subforum', 'forum_read_subforum.gif', '', 27, 27, 6),
(477, 'forum_read_locked', 'forum_read_locked.gif', '', 27, 27, 6),
(476, 'forum_read', 'forum_read.gif', '', 27, 27, 6),
(475, 'forum_link', 'forum_link.gif', '', 27, 27, 6),
(474, 'site_logo', 'site_logo.gif', '', 52, 139, 6);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles_template`
--

CREATE TABLE IF NOT EXISTS `phpbb_styles_template` (
  `template_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `template_storedb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `template_inherits_id` int(4) unsigned NOT NULL DEFAULT '0',
  `template_inherit_path` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`template_id`),
  UNIQUE KEY `tmplte_nm` (`template_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dumping data for table `phpbb_styles_template`
--

INSERT INTO `phpbb_styles_template` (`template_id`, `template_name`, `template_copyright`, `template_path`, `bbcode_bitfield`, `template_storedb`, `template_inherits_id`, `template_inherit_path`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver', 'lNg=', 0, 0, ''),
(3, 'subsilver2', '&copy; phpBB Group, 2003', 'subsilver2', '+Ng=', 0, 0, ''),
(6, '40Forty', '&copy; phpBB Group, 2007', '40Forty', 'lNg=', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles_template_data`
--

CREATE TABLE IF NOT EXISTS `phpbb_styles_template_data` (
  `template_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `template_filename` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `template_included` text COLLATE utf8_bin NOT NULL,
  `template_mtime` int(11) unsigned NOT NULL DEFAULT '0',
  `template_data` mediumtext COLLATE utf8_bin NOT NULL,
  KEY `tid` (`template_id`),
  KEY `tfn` (`template_filename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_styles_template_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles_theme`
--

CREATE TABLE IF NOT EXISTS `phpbb_styles_theme` (
  `theme_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `theme_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `theme_storedb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `theme_mtime` int(11) unsigned NOT NULL DEFAULT '0',
  `theme_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`theme_id`),
  UNIQUE KEY `theme_name` (`theme_name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=7 ;

--
-- Dumping data for table `phpbb_styles_theme`
--

INSERT INTO `phpbb_styles_theme` (`theme_id`, `theme_name`, `theme_copyright`, `theme_path`, `theme_storedb`, `theme_mtime`, `theme_data`) VALUES
(1, 'prosilver', '&copy; phpBB Group', 'prosilver', 1, 1292004023, 0x2f2a2020706870424220332e30205374796c652053686565740a202020202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a095374796c65206e616d653a090970726f53696c7665720a094261736564206f6e207374796c653a0970726f53696c766572202874686973206973207468652064656661756c742070687042422033207374796c65290a094f726967696e616c20617574686f723a09737562426c7565202820687474703a2f2f7777772e737562426c75652e636f6d2f20290a094d6f6469666965642062793a09090a090a09436f7079726967687420323030362070687042422047726f7570202820687474703a2f2f7777772e70687062622e636f6d2f20290a202020202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a2a2f0a0a2f2a2047656e6572616c2070726f53696c766572204d61726b7570205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2a207b0a092f2a2052657365742062726f77736572732064656661756c74206d617267696e2c2070616464696e6720616e6420666f6e742073697a6573202a2f0a096d617267696e3a20303b0a0970616464696e673a20303b0a7d0a0a68746d6c207b0a09666f6e742d73697a653a20313030253b0a092f2a20416c776179732073686f772061207363726f6c6c62617220666f722073686f7274207061676573202d2073746f707320746865206a756d70207768656e20746865207363726f6c6c62617220617070656172732e206e6f6e2d49452062726f7773657273202a2f0a096865696768743a20313031253b0a7d0a0a626f6479207b0a092f2a20546578742d53697a696e67207769746820656d733a20687474703a2f2f7777772e636c61676e75742e636f6d2f626c6f672f3334382f202a2f0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09636f6c6f723a20233832383238323b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a092f2a666f6e742d73697a653a2036322e35253b09090920546869732073657473207468652064656661756c7420666f6e742073697a6520746f206265206571756976616c656e7420746f2031307078202a2f0a09666f6e742d73697a653a20313070783b0a096d617267696e3a20303b0a0970616464696e673a203132707820303b0a7d0a0a6831207b0a092f2a20466f72756d206e616d65202a2f0a09666f6e742d66616d696c793a2022547265627563686574204d53222c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a096d617267696e2d72696768743a2032303070783b0a09636f6c6f723a20234646464646463b0a096d617267696e2d746f703a20313570783b0a09666f6e742d7765696768743a20626f6c643b0a09666f6e742d73697a653a2032656d3b0a7d0a0a6832207b0a092f2a20466f72756d20686561646572207469746c6573202a2f0a09666f6e742d66616d696c793a2022547265627563686574204d53222c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233366336633663b0a09666f6e742d73697a653a2032656d3b0a096d617267696e3a20302e38656d203020302e32656d20303b0a7d0a0a68322e736f6c6f207b0a096d617267696e2d626f74746f6d3a2031656d3b0a7d0a0a6833207b0a092f2a205375622d686561646572732028616c736f207573656420617320706f737420686561646572732c2062757420646566696e6564206c6174657229202a2f0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09666f6e742d7765696768743a20626f6c643b0a09746578742d7472616e73666f726d3a207570706572636173653b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234343434343433b0a096d617267696e2d626f74746f6d3a203370783b0a0970616464696e672d626f74746f6d3a203270783b0a09666f6e742d73697a653a20312e3035656d3b0a09636f6c6f723a20233938393839383b0a096d617267696e2d746f703a20323070783b0a7d0a0a6834207b0a092f2a20466f72756d20616e6420746f706963206c697374207469746c6573202a2f0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2053616e732d73657269663b0a09666f6e742d73697a653a20312e33656d3b0a7d0a0a70207b0a096c696e652d6865696768743a20312e33656d3b0a09666f6e742d73697a653a20312e31656d3b0a096d617267696e2d626f74746f6d3a20312e35656d3b0a7d0a0a696d67207b0a09626f726465722d77696474683a20303b0a7d0a0a6872207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a09626f726465723a2030206e6f6e6520234646464646463b0a09626f726465722d746f703a2031707820736f6c696420234343434343433b0a096865696768743a203170783b0a096d617267696e3a2035707820303b0a09646973706c61793a20626c6f636b3b0a09636c6561723a20626f74683b0a7d0a0a68722e646173686564207b0a09626f726465722d746f703a203170782064617368656420234343434343433b0a096d617267696e3a203130707820303b0a7d0a0a68722e64697669646572207b0a09646973706c61793a206e6f6e653b0a7d0a0a702e7269676874207b0a09746578742d616c69676e3a2072696768743b0a7d0a0a2f2a204d61696e20626c6f636b730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2377726170207b0a0970616464696e673a203020323070783b0a096d696e2d77696474683a2036353070783b0a7d0a0a2373696d706c652d77726170207b0a0970616464696e673a2036707820313070783b0a7d0a0a23706167652d626f6479207b0a096d617267696e3a2034707820303b0a09636c6561723a20626f74683b0a7d0a0a23706167652d666f6f746572207b0a09636c6561723a20626f74683b0a7d0a0a23706167652d666f6f746572206833207b0a096d617267696e2d746f703a20323070783b0a7d0a0a236c6f676f207b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b0a0970616464696e673a20313070782031337078203020313070783b0a7d0a0a61236c6f676f3a686f766572207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a2053656172636820626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a237365617263682d626f78207b0a09636f6c6f723a20234646464646463b0a09706f736974696f6e3a2072656c61746976653b0a096d617267696e2d746f703a20333070783b0a096d617267696e2d72696768743a203570783b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a09746578742d616c69676e3a2072696768743b0a0977686974652d73706163653a206e6f777261703b202f2a20466f72204f70657261202a2f0a7d0a0a237365617263682d626f7820236b6579776f726473207b0a0977696474683a20393570783b0a096261636b67726f756e642d636f6c6f723a20234646463b0a7d0a0a237365617263682d626f7820696e707574207b0a09626f726465723a2031707820736f6c696420236230623062303b0a7d0a0a2f2a202e627574746f6e31207374796c6520646566696e6564206c617465722c206a75737420612066657720747765616b7320666f72207468652073656172636820627574746f6e2076657273696f6e202a2f0a237365617263682d626f7820696e7075742e627574746f6e31207b0a0970616464696e673a20317078203570783b0a7d0a0a237365617263682d626f78206c69207b0a09746578742d616c69676e3a2072696768743b0a096d617267696e2d746f703a203470783b0a7d0a0a237365617263682d626f7820696d67207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a096d617267696e2d72696768743a203370783b0a7d0a0a2f2a2053697465206465736372697074696f6e20616e64206c6f676f202a2f0a23736974652d6465736372697074696f6e207b0a09666c6f61743a206c6566743b0a0977696474683a203730253b0a7d0a0a23736974652d6465736372697074696f6e206831207b0a096d617267696e2d72696768743a20303b0a7d0a0a2f2a20526f756e6420636f726e6572656420626f78657320616e64206261636b67726f756e64730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e686561646572626172207b0a096261636b67726f756e643a2023656265626562206e6f6e65207265706561742d78203020303b0a09636f6c6f723a20234646464646463b0a096d617267696e2d626f74746f6d3a203470783b0a0970616464696e673a2030203570783b0a7d0a0a2e6e6176626172207b0a096261636b67726f756e642d636f6c6f723a20236562656265623b0a0970616464696e673a203020313070783b0a7d0a0a2e666f72616267207b0a096261636b67726f756e643a2023623162316231206e6f6e65207265706561742d78203020303b0a096d617267696e2d626f74746f6d3a203470783b0a0970616464696e673a2030203570783b0a09636c6561723a20626f74683b0a7d0a0a2e666f72756d6267207b0a096261636b67726f756e643a2023656265626562206e6f6e65207265706561742d78203020303b0a096d617267696e2d626f74746f6d3a203470783b0a0970616464696e673a2030203570783b0a09636c6561723a20626f74683b0a7d0a0a2e70616e656c207b0a096d617267696e2d626f74746f6d3a203470783b0a0970616464696e673a203020313070783b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a09636f6c6f723a20233366336633663b0a7d0a0a2e706f7374207b0a0970616464696e673a203020313070783b0a096d617267696e2d626f74746f6d3a203470783b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a7d0a0a2e706f73743a746172676574202e636f6e74656e74207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e706f73743a7461726765742068332061207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e626731097b206261636b67726f756e642d636f6c6f723a20236637663766373b7d0a2e626732097b206261636b67726f756e642d636f6c6f723a20236632663266323b207d0a2e626733097b206261636b67726f756e642d636f6c6f723a20236562656265623b207d0a0a2e726f776267207b0a096d617267696e3a203570782035707820327078203570783b0a7d0a0a2e756370726f776267207b0a096261636b67726f756e642d636f6c6f723a20236532653265323b0a7d0a0a2e6669656c64736267207b0a092f2a626f726465723a20317078202344424445453220736f6c69643b2a2f0a096261636b67726f756e642d636f6c6f723a20236561656165613b0a7d0a0a7370616e2e636f726e6572732d746f702c207370616e2e636f726e6572732d626f74746f6d2c207370616e2e636f726e6572732d746f70207370616e2c207370616e2e636f726e6572732d626f74746f6d207370616e207b0a09666f6e742d73697a653a203170783b0a096c696e652d6865696768743a203170783b0a09646973706c61793a20626c6f636b3b0a096865696768743a203570783b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a7370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a096d617267696e3a2030202d3570783b0a7d0a0a7370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a096d617267696e3a2030202d3570783b0a09636c6561723a20626f74683b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203130302520313030253b0a7d0a0a2e686561646267207370616e2e636f726e6572732d626f74746f6d207b0a096d617267696e2d626f74746f6d3a202d3170783b0a7d0a0a2e706f7374207370616e2e636f726e6572732d746f702c202e706f7374207370616e2e636f726e6572732d626f74746f6d2c202e70616e656c207370616e2e636f726e6572732d746f702c202e70616e656c207370616e2e636f726e6572732d626f74746f6d2c202e6e6176626172207370616e2e636f726e6572732d746f702c202e6e6176626172207370616e2e636f726e6572732d626f74746f6d207b0a096d617267696e3a2030202d313070783b0a7d0a0a2e72756c6573207370616e2e636f726e6572732d746f70207b0a096d617267696e3a2030202d3130707820357078202d313070783b0a7d0a0a2e72756c6573207370616e2e636f726e6572732d626f74746f6d207b0a096d617267696e3a20357078202d313070782030202d313070783b0a7d0a0a2f2a20486f72697a6f6e74616c206c697374730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a756c2e6c696e6b6c697374207b0a09646973706c61793a20626c6f636b3b0a096d617267696e3a20303b0a7d0a0a756c2e6c696e6b6c697374206c69207b0a09646973706c61793a20626c6f636b3b0a096c6973742d7374796c652d747970653a206e6f6e653b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b0a096d617267696e2d72696768743a203570783b0a09666f6e742d73697a653a20312e31656d3b0a096c696e652d6865696768743a20322e32656d3b0a7d0a0a756c2e6c696e6b6c697374206c692e7269676874736964652c20702e726967687473696465207b0a09666c6f61743a2072696768743b0a096d617267696e2d72696768743a20303b0a096d617267696e2d6c6566743a203570783b0a09746578742d616c69676e3a2072696768743b0a7d0a0a756c2e6e61766c696e6b73207b0a0970616464696e672d626f74746f6d3a203170783b0a096d617267696e2d626f74746f6d3a203170783b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234646464646463b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a756c2e6c65667473696465207b0a09666c6f61743a206c6566743b0a096d617267696e2d6c6566743a20303b0a096d617267696e2d72696768743a203570783b0a09746578742d616c69676e3a206c6566743b0a7d0a0a756c2e726967687473696465207b0a09666c6f61743a2072696768743b0a096d617267696e2d6c6566743a203570783b0a096d617267696e2d72696768743a202d3570783b0a09746578742d616c69676e3a2072696768743b0a7d0a0a2f2a205461626c65207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a7461626c652e7461626c6531207b0a092f2a2053656520747765616b732e637373202a2f0a7d0a0a237563702d6d61696e207461626c652e7461626c6531207b0a0970616464696e673a203270783b0a7d0a0a7461626c652e7461626c6531207468656164207468207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09746578742d7472616e73666f726d3a207570706572636173653b0a09636f6c6f723a20234646464646463b0a096c696e652d6865696768743a20312e33656d3b0a09666f6e742d73697a653a2031656d3b0a0970616464696e673a2030203020347078203370783b0a7d0a0a7461626c652e7461626c6531207468656164207468207370616e207b0a0970616464696e672d6c6566743a203770783b0a7d0a0a7461626c652e7461626c65312074626f6479207472207b0a09626f726465723a2031707820736f6c696420236366636663663b0a7d0a0a7461626c652e7461626c65312074626f64792074723a686f7665722c207461626c652e7461626c65312074626f64792074722e686f766572207b0a096261636b67726f756e642d636f6c6f723a20236636663666363b0a09636f6c6f723a20233030303b0a7d0a0a7461626c652e7461626c6531207464207b0a09636f6c6f723a20233661366136613b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a7461626c652e7461626c65312074626f6479207464207b0a0970616464696e673a203570783b0a09626f726465722d746f703a2031707820736f6c696420234641464146413b0a7d0a0a7461626c652e7461626c65312074626f6479207468207b0a0970616464696e673a203570783b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233030303030303b0a09746578742d616c69676e3a206c6566743b0a09636f6c6f723a20233333333333333b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2f2a20537065636966696320636f6c756d6e207374796c6573202a2f0a7461626c652e7461626c6531202e6e616d6509097b20746578742d616c69676e3a206c6566743b207d0a7461626c652e7461626c6531202e706f73747309097b20746578742d616c69676e3a2063656e7465722021696d706f7274616e743b2077696474683a2037253b207d0a7461626c652e7461626c6531202e6a6f696e6564097b20746578742d616c69676e3a206c6566743b2077696474683a203135253b207d0a7461626c652e7461626c6531202e616374697665097b20746578742d616c69676e3a206c6566743b2077696474683a203135253b207d0a7461626c652e7461626c6531202e6d61726b09097b20746578742d616c69676e3a2063656e7465723b2077696474683a2037253b207d0a7461626c652e7461626c6531202e696e666f09097b20746578742d616c69676e3a206c6566743b2077696474683a203330253b207d0a7461626c652e7461626c6531202e696e666f20646976097b2077696474683a20313030253b2077686974652d73706163653a206e6f726d616c3b206f766572666c6f773a2068696464656e3b207d0a7461626c652e7461626c6531202e6175746f636f6c097b206c696e652d6865696768743a2032656d3b2077686974652d73706163653a206e6f777261703b207d0a7461626c652e7461626c6531207468656164202e6175746f636f6c207b2070616464696e672d6c6566743a2031656d3b207d0a0a7461626c652e7461626c6531207370616e2e72616e6b2d696d67207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a7d0a0a7461626c652e696e666f207464207b0a0970616464696e673a203370783b0a7d0a0a7461626c652e696e666f2074626f6479207468207b0a0970616464696e673a203370783b0a09746578742d616c69676e3a2072696768743b0a09766572746963616c2d616c69676e3a20746f703b0a09636f6c6f723a20233030303030303b0a09666f6e742d7765696768743a206e6f726d616c3b0a7d0a0a2e666f72756d6267207461626c652e7461626c6531207b0a096d617267696e3a2030202d327078202d317078202d3170783b0a7d0a0a2f2a204d697363206c61796f7574207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2f2a20636f6c756d6e5b312d325d207374796c65732061726520636f6e7461696e65727320666f722074776f20636f6c756d6e206c61796f757473200a202020416c736f2073656520747765616b732e637373202a2f0a2e636f6c756d6e31207b0a09666c6f61743a206c6566743b0a09636c6561723a206c6566743b0a0977696474683a203439253b0a7d0a0a2e636f6c756d6e32207b0a09666c6f61743a2072696768743b0a09636c6561723a2072696768743b0a0977696474683a203439253b0a7d0a0a2f2a2047656e6572616c20636c617373657320666f7220706c6163696e6720666c6f6174696e6720626c6f636b73202a2f0a2e6c6566742d626f78207b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b0a09746578742d616c69676e3a206c6566743b0a7d0a0a2e72696768742d626f78207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a09746578742d616c69676e3a2072696768743b0a7d0a0a646c2e64657461696c73207b0a092f2a666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b2a2f0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a646c2e64657461696c73206474207b0a09666c6f61743a206c6566743b0a09636c6561723a206c6566743b0a0977696474683a203330253b0a09746578742d616c69676e3a2072696768743b0a09636f6c6f723a20233030303030303b0a09646973706c61793a20626c6f636b3b0a7d0a0a646c2e64657461696c73206464207b0a096d617267696e2d6c6566743a20303b0a0970616464696e672d6c6566743a203570783b0a096d617267696e2d626f74746f6d3a203570783b0a09636f6c6f723a20233832383238323b0a09666c6f61743a206c6566743b0a0977696474683a203635253b0a7d0a0a2f2a20506167696e6174696f6e0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e706167696e6174696f6e207b0a096865696768743a2031253b202f2a20494520747765616b2028686f6c6c79206861636b29202a2f0a0977696474683a206175746f3b0a09746578742d616c69676e3a2072696768743b0a096d617267696e2d746f703a203570783b0a09666c6f61743a2072696768743b0a7d0a0a2e706167696e6174696f6e207370616e2e706167652d736570207b0a09646973706c61793a206e6f6e653b0a7d0a0a6c692e706167696e6174696f6e207b0a096d617267696e2d746f703a20303b0a7d0a0a2e706167696e6174696f6e207374726f6e672c202e706167696e6174696f6e2062207b0a09666f6e742d7765696768743a206e6f726d616c3b0a7d0a0a2e706167696e6174696f6e207370616e207374726f6e67207b0a0970616464696e673a2030203270783b0a096d617267696e3a2030203270783b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20234646464646463b0a096261636b67726f756e642d636f6c6f723a20236266626662663b0a09626f726465723a2031707820736f6c696420236266626662663b0a09666f6e742d73697a653a20302e39656d3b0a7d0a0a2e706167696e6174696f6e207370616e20612c202e706167696e6174696f6e207370616e20613a6c696e6b2c202e706167696e6174696f6e207370616e20613a766973697465642c202e706167696e6174696f6e207370616e20613a616374697665207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20233734373437343b0a096d617267696e3a2030203270783b0a0970616464696e673a2030203270783b0a096261636b67726f756e642d636f6c6f723a20236565656565653b0a09626f726465723a2031707820736f6c696420236261626162613b0a09666f6e742d73697a653a20302e39656d3b0a096c696e652d6865696768743a20312e35656d3b0a7d0a0a2e706167696e6174696f6e207370616e20613a686f766572207b0a09626f726465722d636f6c6f723a20236432643264323b0a096261636b67726f756e642d636f6c6f723a20236432643264323b0a09636f6c6f723a20234646463b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2e706167696e6174696f6e20696d67207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a7d0a0a2f2a20506167696e6174696f6e20696e2076696577666f72756d20666f72206d756c74697061676520746f70696373202a2f0a2e726f77202e706167696e6174696f6e207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a096d617267696e2d746f703a20303b0a0970616464696e673a2031707820302031707820313570783b0a09666f6e742d73697a653a20302e39656d3b0a096261636b67726f756e643a206e6f6e65203020353025206e6f2d7265706561743b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20612c206c692e706167696e6174696f6e207370616e2061207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20613a686f7665722c206c692e706167696e6174696f6e207370616e20613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236432643264323b0a7d0a0a2f2a204d697363656c6c616e656f7573207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a23666f72756d2d7065726d697373696f6e73207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a0970616464696e672d6c6566743a203570783b0a096d617267696e2d6c6566743a203570783b0a096d617267696e2d746f703a20313070783b0a09746578742d616c69676e3a2072696768743b0a7d0a0a2e636f70797269676874207b0a0970616464696e673a203570783b0a09746578742d616c69676e3a2063656e7465723b0a09636f6c6f723a20233535353535353b0a7d0a0a2e736d616c6c207b0a09666f6e742d73697a653a20302e39656d2021696d706f7274616e743b0a7d0a0a2e7469746c657370616365207b0a096d617267696e2d626f74746f6d3a20313570783b0a7d0a0a2e6865616465727370616365207b0a096d617267696e2d746f703a20323070783b0a7d0a0a2e6572726f72207b0a09636f6c6f723a20236263626362633b0a09666f6e742d7765696768743a20626f6c643b0a09666f6e742d73697a653a2031656d3b0a7d0a0a2e7265706f72746564207b0a096261636b67726f756e642d636f6c6f723a20236637663766373b0a7d0a0a6c692e7265706f727465643a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236563656365633b0a7d0a0a6469762e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20236563656365633b0a09636f6c6f723a20236263626362633b0a0970616464696e673a203020313070783b0a096d617267696e3a203130707820303b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a6469762e72756c657320756c2c206469762e72756c6573206f6c207b0a096d617267696e2d6c6566743a20323070783b0a7d0a0a702e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20236563656365633b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0970616464696e673a203570783b0a7d0a0a702e72756c657320696d67207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a0970616464696e672d746f703a203570783b0a7d0a0a702e72756c65732061207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a09636c6561723a20626f74683b0a7d0a0a23746f70207b0a09706f736974696f6e3a206162736f6c7574653b0a09746f703a202d323070783b0a7d0a0a2e636c656172207b0a09646973706c61793a20626c6f636b3b0a09636c6561723a20626f74683b0a09666f6e742d73697a653a203170783b0a096c696e652d6865696768743a203170783b0a096261636b67726f756e643a207472616e73706172656e743b0a7d0a2f2a2070726f53696c766572204c696e6b205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a204c696e6b732061646a7573746d656e7420746f20636f72726563746c7920646973706c617920616e206f72646572206f662072746c2f6c7472206d6978656420636f6e74656e74202a2f0a61207b0a09646972656374696f6e3a206c74723b0a09756e69636f64652d626964693a20656d6265643b0a7d0a0a613a6c696e6b097b20636f6c6f723a20233839383938393b20746578742d6465636f726174696f6e3a206e6f6e653b207d0a613a76697369746564097b20636f6c6f723a20233839383938393b20746578742d6465636f726174696f6e3a206e6f6e653b207d0a613a686f766572097b20636f6c6f723a20236433643364333b20746578742d6465636f726174696f6e3a20756e6465726c696e653b207d0a613a616374697665097b20636f6c6f723a20236432643264323b20746578742d6465636f726174696f6e3a206e6f6e653b207d0a0a2f2a20436f6c6f7572656420757365726e616d6573202a2f0a2e757365726e616d652d636f6c6f75726564207b0a09666f6e742d7765696768743a20626f6c643b0a09646973706c61793a20696e6c696e652021696d706f7274616e743b0a0970616464696e673a20302021696d706f7274616e743b0a7d0a0a2f2a204c696e6b73206f6e206772616469656e74206261636b67726f756e6473202a2f0a237365617263682d626f7820613a6c696e6b2c202e6e6176626720613a6c696e6b2c202e666f72756d6267202e68656164657220613a6c696e6b2c202e666f72616267202e68656164657220613a6c696e6b2c20746820613a6c696e6b207b0a09636f6c6f723a20234646464646463b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a237365617263682d626f7820613a766973697465642c202e6e6176626720613a766973697465642c202e666f72756d6267202e68656164657220613a766973697465642c202e666f72616267202e68656164657220613a766973697465642c20746820613a76697369746564207b0a09636f6c6f723a20234646464646463b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a237365617263682d626f7820613a686f7665722c202e6e6176626720613a686f7665722c202e666f72756d6267202e68656164657220613a686f7665722c202e666f72616267202e68656164657220613a686f7665722c20746820613a686f766572207b0a09636f6c6f723a20236666666666663b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a7d0a0a237365617263682d626f7820613a6163746976652c202e6e6176626720613a6163746976652c202e666f72756d6267202e68656164657220613a6163746976652c202e666f72616267202e68656164657220613a6163746976652c20746820613a616374697665207b0a09636f6c6f723a20236666666666663b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a204c696e6b7320666f7220666f72756d2f746f706963206c69737473202a2f0a612e666f72756d7469746c65207b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2048656c7665746963612c20417269616c2c2053616e732d73657269663b0a09666f6e742d73697a653a20312e32656d3b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a20612e666f72756d7469746c653a76697369746564207b20636f6c6f723a20233839383938393b207d202a2f0a0a612e666f72756d7469746c653a686f766572207b0a09636f6c6f723a20236263626362633b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a7d0a0a612e666f72756d7469746c653a616374697665207b0a09636f6c6f723a20233839383938393b0a7d0a0a612e746f7069637469746c65207b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2048656c7665746963612c20417269616c2c2053616e732d73657269663b0a09666f6e742d73697a653a20312e32656d3b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a20612e746f7069637469746c653a76697369746564207b20636f6c6f723a20236432643264323b207d202a2f0a0a612e746f7069637469746c653a686f766572207b0a09636f6c6f723a20236263626362633b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a7d0a0a612e746f7069637469746c653a616374697665207b0a09636f6c6f723a20233839383938393b0a7d0a0a2f2a20506f737420626f6479206c696e6b73202a2f0a2e706f73746c696e6b207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20236432643264323b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236432643264323b0a0970616464696e672d626f74746f6d3a20303b0a7d0a0a2e706f73746c696e6b3a76697369746564207b0a09636f6c6f723a20236264626462643b0a09626f726465722d626f74746f6d2d7374796c653a20646f747465643b0a09626f726465722d626f74746f6d2d636f6c6f723a20233636363636363b0a7d0a0a2e706f73746c696e6b3a616374697665207b0a09636f6c6f723a20236432643264323b0a7d0a0a2e706f73746c696e6b3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236636663666363b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20233430343034303b0a7d0a0a2e7369676e617475726520612c202e7369676e617475726520613a766973697465642c202e7369676e617475726520613a6163746976652c202e7369676e617475726520613a686f766572207b0a09626f726465723a206e6f6e653b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a2f2a2050726f66696c65206c696e6b73202a2f0a2e706f737470726f66696c6520613a6c696e6b2c202e706f737470726f66696c6520613a6163746976652c202e706f737470726f66696c6520613a766973697465642c202e706f737470726f66696c652064742e617574686f722061207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2e706f737470726f66696c6520613a686f7665722c202e706f737470726f66696c652064742e617574686f7220613a686f766572207b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a09636f6c6f723a20236433643364333b0a7d0a0a0a2f2a2050726f66696c6520736561726368726573756c7473202a2f090a2e736561726368202e706f737470726f66696c652061207b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b200a09666f6e742d7765696768743a206e6f726d616c3b0a7d0a0a2e736561726368202e706f737470726f66696c6520613a686f766572207b0a09636f6c6f723a20236433643364333b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b200a7d0a0a2f2a204261636b20746f20746f70206f662070616765202a2f0a2e6261636b32746f70207b0a09636c6561723a20626f74683b0a096865696768743a20313170783b0a09746578742d616c69676e3a2072696768743b0a7d0a0a612e746f70207b0a096261636b67726f756e643a206e6f6e65206e6f2d72657065617420746f70206c6566743b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a0977696474683a207b494d475f49434f4e5f4241434b5f544f505f57494454487d70783b0a096865696768743a207b494d475f49434f4e5f4241434b5f544f505f4845494748547d70783b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a096f766572666c6f773a2068696464656e3b0a096c65747465722d73706163696e673a203130303070783b0a09746578742d696e64656e743a20313170783b0a7d0a0a612e746f7032207b0a096261636b67726f756e643a206e6f6e65206e6f2d7265706561742030203530253b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a0970616464696e672d6c6566743a20313570783b0a7d0a0a2f2a204172726f77206c696e6b7320202a2f0a612e757009097b206261636b67726f756e643a206e6f6e65206e6f2d726570656174206c6566742063656e7465723b207d0a612e646f776e09097b206261636b67726f756e643a206e6f6e65206e6f2d7265706561742072696768742063656e7465723b207d0a612e6c65667409097b206261636b67726f756e643a206e6f6e65206e6f2d72657065617420337078203630253b207d0a612e726967687409097b206261636b67726f756e643a206e6f6e65206e6f2d72657065617420393525203630253b207d0a0a612e75702c20612e75703a6c696e6b2c20612e75703a6163746976652c20612e75703a76697369746564207b0a0970616464696e672d6c6566743a20313070783b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09626f726465722d626f74746f6d2d77696474683a20303b0a7d0a0a612e75703a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a206c65667420746f703b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a612e646f776e2c20612e646f776e3a6c696e6b2c20612e646f776e3a6163746976652c20612e646f776e3a76697369746564207b0a0970616464696e672d72696768743a20313070783b0a7d0a0a612e646f776e3a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a20726967687420626f74746f6d3b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a612e6c6566742c20612e6c6566743a6163746976652c20612e6c6566743a76697369746564207b0a0970616464696e672d6c6566743a20313270783b0a7d0a0a612e6c6566743a686f766572207b0a09636f6c6f723a20236432643264323b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2030203630253b0a7d0a0a612e72696768742c20612e72696768743a6163746976652c20612e72696768743a76697369746564207b0a0970616464696e672d72696768743a20313270783b0a7d0a0a612e72696768743a686f766572207b0a09636f6c6f723a20236432643264323b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2031303025203630253b0a7d0a0a2f2a20696e76697369626c6520736b6970206c696e6b2c207573656420666f72206163636573736962696c69747920202a2f0a2e736b69706c696e6b207b0a09706f736974696f6e3a206162736f6c7574653b0a096c6566743a202d39393970783b0a0977696474683a2039393070783b0a7d0a0a2f2a20466565642069636f6e20696e20666f72756d6c6973745f626f64792e68746d6c202a2f0a612e666565642d69636f6e2d666f72756d207b0a09666c6f61743a2072696768743b0a096d617267696e3a203370783b0a7d0a2f2a2070726f53696c76657220436f6e74656e74205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a756c2e746f7069636c697374207b0a09646973706c61793a20626c6f636b3b0a096c6973742d7374796c652d747970653a206e6f6e653b0a096d617267696e3a20303b0a7d0a0a756c2e666f72756d73207b0a096261636b67726f756e643a2023663966396639206e6f6e65207265706561742d78203020303b0a7d0a0a756c2e746f7069636c697374206c69207b0a09646973706c61793a20626c6f636b3b0a096c6973742d7374796c652d747970653a206e6f6e653b0a09636f6c6f723a20233737373737373b0a096d617267696e3a20303b0a7d0a0a756c2e746f7069636c69737420646c207b0a09706f736974696f6e3a2072656c61746976653b0a7d0a0a756c2e746f7069636c697374206c692e726f7720646c207b0a0970616464696e673a2032707820303b0a7d0a0a756c2e746f7069636c697374206474207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a206c6566743b0a0977696474683a203530253b0a09666f6e742d73697a653a20312e31656d3b0a0970616464696e672d6c6566743a203570783b0a0970616464696e672d72696768743a203570783b0a7d0a0a756c2e746f7069636c697374206464207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a206c6566743b0a09626f726465722d6c6566743a2031707820736f6c696420234646464646463b0a0970616464696e673a2034707820303b0a7d0a0a756c2e746f7069636c6973742064666e207b0a092f2a204c6162656c7320666f7220706f73742f7669657720636f756e7473202a2f0a09706f736974696f6e3a206162736f6c7574653b0a096c6566743a202d39393970783b0a0977696474683a2039393070783b0a7d0a0a756c2e746f7069636c697374206c692e726f7720647420612e737562666f72756d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2030203530253b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a09706f736974696f6e3a2072656c61746976653b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e673a20302030203020313270783b0a7d0a0a2e666f72756d2d696d616765207b0a09666c6f61743a206c6566743b0a0970616464696e672d746f703a203570783b0a096d617267696e2d72696768743a203570783b0a7d0a0a6c692e726f77207b0a09626f726465722d746f703a2031707820736f6c696420234646464646463b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233866386638663b0a7d0a0a6c692e726f77207374726f6e67207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233030303030303b0a7d0a0a6c692e726f773a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236636663666363b0a7d0a0a6c692e726f773a686f766572206464207b0a09626f726465722d6c6566742d636f6c6f723a20234343434343433b0a7d0a0a6c692e6865616465722064742c206c692e686561646572206464207b0a096c696e652d6865696768743a2031656d3b0a09626f726465722d6c6566742d77696474683a20303b0a096d617267696e3a2032707820302034707820303b0a09636f6c6f723a20234646464646463b0a0970616464696e672d746f703a203270783b0a0970616464696e672d626f74746f6d3a203270783b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09746578742d7472616e73666f726d3a207570706572636173653b0a7d0a0a6c692e686561646572206474207b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a6c692e686561646572206464207b0a096d617267696e2d6c6566743a203170783b0a7d0a0a6c692e68656164657220646c2e69636f6e207b0a096d696e2d6865696768743a20303b0a7d0a0a6c692e68656164657220646c2e69636f6e206474207b0a092f2a20547765616b20666f72206865616465727320616c69676e6d656e74207768656e20666f6c6465722069636f6e2075736564202a2f0a0970616464696e672d6c6566743a20303b0a0970616464696e672d72696768743a20353070783b0a7d0a0a2f2a20466f72756d206c69737420636f6c756d6e207374796c6573202a2f0a646c2e69636f6e207b0a096d696e2d6865696768743a20333570783b0a096261636b67726f756e642d706f736974696f6e3a2031307078203530253b09092f2a20506f736974696f6e206f6620666f6c6465722069636f6e202a2f0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a646c2e69636f6e206474207b0a0970616464696e672d6c6566743a20343570783b09090909092f2a20537061636520666f7220666f6c6465722069636f6e202a2f0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d706f736974696f6e3a20357078203935253b09092f2a20506f736974696f6e206f6620746f7069632069636f6e202a2f0a7d0a0a64642e706f7374732c2064642e746f706963732c2064642e7669657773207b0a0977696474683a2038253b0a09746578742d616c69676e3a2063656e7465723b0a096c696e652d6865696768743a20322e32656d3b0a09666f6e742d73697a653a20312e32656d3b0a7d0a0a2f2a204c69737420696e20666f72756d206465736372697074696f6e202a2f0a646c2e69636f6e206474206f6c2c0a646c2e69636f6e20647420756c207b0a096c6973742d7374796c652d706f736974696f6e3a20696e736964653b0a096d617267696e2d6c6566743a2031656d3b0a7d0a0a646c2e69636f6e206474206c69207b0a09646973706c61793a206c6973742d6974656d3b0a096c6973742d7374796c652d747970653a20696e68657269743b0a7d0a0a64642e6c617374706f7374207b0a0977696474683a203235253b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e7265646972656374207b0a09666f6e742d73697a653a20312e31656d3b0a096c696e652d6865696768743a20322e35656d3b0a7d0a0a64642e6d6f6465726174696f6e207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e6c617374706f7374207370616e2c20756c2e746f7069636c6973742064642e7365617263686279207370616e2c20756c2e746f7069636c6973742064642e696e666f207370616e2c20756c2e746f7069636c6973742064642e74696d65207370616e2c2064642e7265646972656374207370616e2c2064642e6d6f6465726174696f6e207370616e207b0a09646973706c61793a20626c6f636b3b0a0970616464696e672d6c6566743a203570783b0a7d0a0a64642e74696d65207b0a0977696474683a206175746f3b0a096c696e652d6865696768743a20323030253b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e6578747261207b0a0977696474683a203132253b0a096c696e652d6865696768743a20323030253b0a09746578742d616c69676e3a2063656e7465723b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e6d61726b207b0a09666c6f61743a2072696768742021696d706f7274616e743b0a0977696474683a2039253b0a09746578742d616c69676e3a2063656e7465723b0a096c696e652d6865696768743a20323030253b0a09666f6e742d73697a653a20312e32656d3b0a7d0a0a64642e696e666f207b0a0977696474683a203330253b0a7d0a0a64642e6f7074696f6e207b0a0977696474683a203135253b0a096c696e652d6865696768743a20323030253b0a09746578742d616c69676e3a2063656e7465723b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e7365617263686279207b0a0977696474683a203437253b0a09666f6e742d73697a653a20312e31656d3b0a096c696e652d6865696768743a2031656d3b0a7d0a0a756c2e746f7069636c6973742064642e7365617263686578747261207b0a096d617267696e2d6c6566743a203570783b0a0970616464696e673a20302e32656d20303b0a09666f6e742d73697a653a20312e31656d3b0a09636f6c6f723a20233333333333333b0a09626f726465722d6c6566743a206e6f6e653b0a09636c6561723a20626f74683b0a0977696474683a203938253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a20436f6e7461696e657220666f7220706f73742f7265706c7920627574746f6e7320616e6420706167696e6174696f6e202a2f0a2e746f7069632d616374696f6e73207b0a096d617267696e2d626f74746f6d3a203370783b0a09666f6e742d73697a653a20312e31656d3b0a096865696768743a20323870783b0a096d696e2d6865696768743a20323870783b0a7d0a6469765b636c6173735d2e746f7069632d616374696f6e73207b0a096865696768743a206175746f3b0a7d0a0a2f2a20506f737420626f6479207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f7374626f6479207b0a0970616464696e673a20303b0a096c696e652d6865696768743a20312e3438656d3b0a09636f6c6f723a20233333333333333b0a0977696474683a203736253b0a09666c6f61743a206c6566743b0a09636c6561723a20626f74683b0a7d0a0a2e706f7374626f6479202e69676e6f7265207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2e706f7374626f64792068332e6669727374207b0a092f2a2054686520666972737420706f7374206f6e20746865207061676520757365732074686973202a2f0a09666f6e742d73697a653a20312e37656d3b0a7d0a0a2e706f7374626f6479206833207b0a092f2a20506f7374626f6479207265717569726573206120646966666572656e7420683320666f726d6174202d20736f206368616e67652069742068657265202a2f0a09666f6e742d73697a653a20312e35656d3b0a0970616464696e673a203270782030203020303b0a096d617267696e3a2030203020302e33656d20302021696d706f7274616e743b0a09746578742d7472616e73666f726d3a206e6f6e653b0a09626f726465723a206e6f6e653b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a096c696e652d6865696768743a20313235253b0a7d0a0a2e706f7374626f647920683320696d67207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a09766572746963616c2d616c69676e3a20626f74746f6d3b0a7d0a0a2e706f7374626f6479202e636f6e74656e74207b0a09666f6e742d73697a653a20312e33656d3b0a7d0a0a2e736561726368202e706f7374626f6479207b0a0977696474683a203638250a7d0a0a2f2a20546f706963207265766965772070616e656c0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a23726576696577207b0a096d617267696e2d746f703a2032656d3b0a7d0a0a23746f706963726576696577207b0a0970616464696e672d72696768743a203570783b0a096f766572666c6f773a206175746f3b0a096865696768743a2033303070783b0a7d0a0a23746f706963726576696577202e706f7374626f6479207b0a0977696474683a206175746f3b0a09666c6f61743a206e6f6e653b0a096d617267696e3a20303b0a096865696768743a206175746f3b0a7d0a0a23746f706963726576696577202e706f7374207b0a096865696768743a206175746f3b0a7d0a0a23746f706963726576696577206832207b0a09626f726465722d626f74746f6d2d77696474683a20303b0a7d0a0a2e706f73742d69676e6f7265202e706f7374626f6479207b0a09646973706c61793a206e6f6e653b0a7d0a0a2f2a204d435020506f73742064657461696c730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a23706f73745f64657461696c730a7b0a092f2a20546869732077696c6c206f6e6c7920776f726b20696e204945372b2c20706c757320746865206f7468657273202a2f0a096f766572666c6f773a206175746f3b0a096d61782d6865696768743a2033303070783b0a7d0a0a23657870616e640a7b0a09636c6561723a20626f74683b0a7d0a0a2f2a20436f6e74656e7420636f6e7461696e6572207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e636f6e74656e74207b0a096d696e2d6865696768743a2033656d3b0a096f766572666c6f773a2068696464656e3b0a096c696e652d6865696768743a20312e34656d3b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a2031656d3b0a09636f6c6f723a20233333333333333b0a0970616464696e672d626f74746f6d3a203170783b0a7d0a0a2e636f6e74656e742068322c202e70616e656c206832207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233938393839383b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234343434343433b0a09666f6e742d73697a653a20312e36656d3b0a096d617267696e2d746f703a20302e35656d3b0a096d617267696e2d626f74746f6d3a20302e35656d3b0a0970616464696e672d626f74746f6d3a20302e35656d3b0a7d0a0a2e70616e656c206833207b0a096d617267696e3a20302e35656d20303b0a7d0a0a2e70616e656c2070207b0a09666f6e742d73697a653a20312e32656d3b0a096d617267696e2d626f74746f6d3a2031656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a2e636f6e74656e742070207b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a20312e32656d3b0a096d617267696e2d626f74746f6d3a2031656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a646c2e666171207b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a20312e31656d3b0a096d617267696e2d746f703a2031656d3b0a096d617267696e2d626f74746f6d3a2032656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a646c2e666171206474207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233333333333333b0a7d0a0a2e636f6e74656e7420646c2e666171207b0a09666f6e742d73697a653a20312e32656d3b0a096d617267696e2d626f74746f6d3a20302e35656d3b0a7d0a0a2e636f6e74656e74206c69207b0a096c6973742d7374796c652d747970653a20696e68657269743b0a7d0a0a2e636f6e74656e7420756c2c202e636f6e74656e74206f6c207b0a096d617267696e2d626f74746f6d3a2031656d3b0a096d617267696e2d6c6566743a2033656d3b0a7d0a0a2e706f737468696c6974207b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a09636f6c6f723a20234243424342433b0a0970616464696e673a20302032707820317078203270783b0a7d0a0a2e616e6e6f756e63652c202e756e72656164706f7374207b0a092f2a20486967686c696768742074686520616e6e6f756e63656d656e7473202620756e7265616420706f73747320626f78202a2f0a09626f726465722d6c6566742d636f6c6f723a20234243424342433b0a09626f726465722d72696768742d636f6c6f723a20234243424342433b0a7d0a0a2f2a20506f737420617574686f72202a2f0a702e617574686f72207b0a096d617267696e3a2030203135656d20302e36656d20303b0a0970616464696e673a203020302035707820303b0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a2031656d3b0a096c696e652d6865696768743a20312e32656d3b0a7d0a0a2f2a20506f7374207369676e6174757265202a2f0a2e7369676e6174757265207b0a096d617267696e2d746f703a20312e35656d3b0a0970616464696e672d746f703a20302e32656d3b0a09666f6e742d73697a653a20312e31656d3b0a09626f726465722d746f703a2031707820736f6c696420234343434343433b0a09636c6561723a206c6566743b0a096c696e652d6865696768743a20313430253b0a096f766572666c6f773a2068696464656e3b0a0977696474683a20313030253b0a7d0a0a6464202e7369676e6174757265207b0a096d617267696e3a20303b0a0970616464696e673a20303b0a09636c6561723a206e6f6e653b0a09626f726465723a206e6f6e653b0a7d0a0a2e7369676e6174757265206c69207b0a096c6973742d7374796c652d747970653a20696e68657269743b0a7d0a0a2e7369676e617475726520756c2c202e7369676e6174757265206f6c207b0a096d617267696e2d626f74746f6d3a2031656d3b0a096d617267696e2d6c6566743a2033656d3b0a7d0a0a2f2a20506f7374206e6f746963696573202a2f0a2e6e6f74696365207b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a0977696474683a206175746f3b0a096d617267696e2d746f703a20312e35656d3b0a0970616464696e672d746f703a20302e32656d3b0a09666f6e742d73697a653a2031656d3b0a09626f726465722d746f703a203170782064617368656420234343434343433b0a09636c6561723a206c6566743b0a096c696e652d6865696768743a20313330253b0a7d0a0a2f2a204a756d7020746f20706f7374206c696e6b20666f72206e6f77202a2f0a756c2e736561726368726573756c7473207b0a096c6973742d7374796c653a206e6f6e653b0a09746578742d616c69676e3a2072696768743b0a09636c6561723a20626f74683b0a7d0a0a2f2a20424220436f6465207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a2051756f746520626c6f636b202a2f0a626c6f636b71756f7465207b0a096261636b67726f756e643a2023656265626562206e6f6e652036707820387078206e6f2d7265706561743b0a09626f726465723a2031707820736f6c696420236462646264623b0a09666f6e742d73697a653a20302e3935656d3b0a096d617267696e3a20302e35656d20317078203020323570783b0a096f766572666c6f773a2068696464656e3b0a0970616464696e673a203570783b0a7d0a0a626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a20236261626162613b0a09666f6e742d73697a653a2031656d3b0a096d617267696e3a20302e35656d20317078203020313570783b090a7d0a0a626c6f636b71756f746520626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a20236534653465343b0a7d0a0a626c6f636b71756f74652063697465207b0a092f2a20557365726e616d652f736f75726365206f662071756f746572202a2f0a09666f6e742d7374796c653a206e6f726d616c3b0a09666f6e742d7765696768743a20626f6c643b0a096d617267696e2d6c6566743a20323070783b0a09646973706c61793a20626c6f636b3b0a09666f6e742d73697a653a20302e39656d3b0a7d0a0a626c6f636b71756f746520636974652063697465207b0a09666f6e742d73697a653a2031656d3b0a7d0a0a626c6f636b71756f74652e756e6369746564207b0a0970616464696e672d746f703a20323570783b0a7d0a0a2f2a20436f646520626c6f636b202a2f0a646c2e636f6465626f78207b0a0970616464696e673a203370783b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465723a2031707820736f6c696420236438643864383b0a09666f6e742d73697a653a2031656d3b0a7d0a0a646c2e636f6465626f78206474207b0a09746578742d7472616e73666f726d3a207570706572636173653b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234343434343433b0a096d617267696e2d626f74746f6d3a203370783b0a09666f6e742d73697a653a20302e38656d3b0a09666f6e742d7765696768743a20626f6c643b0a09646973706c61793a20626c6f636b3b0a7d0a0a626c6f636b71756f746520646c2e636f6465626f78207b0a096d617267696e2d6c6566743a20303b0a7d0a0a646c2e636f6465626f7820636f6465207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a096f766572666c6f773a206175746f3b0a09646973706c61793a20626c6f636b3b0a096865696768743a206175746f3b0a096d61782d6865696768743a2032303070783b0a0977686974652d73706163653a206e6f726d616c3b0a0970616464696e672d746f703a203570783b0a09666f6e743a20302e39656d204d6f6e61636f2c2022416e64616c65204d6f6e6f222c22436f7572696572204e6577222c20436f75726965722c206d6f6e6f3b0a096c696e652d6865696768743a20312e33656d3b0a09636f6c6f723a20233862386238623b0a096d617267696e3a2032707820303b0a7d0a0a2e73796e746178626709097b20636f6c6f723a20234646464646463b207d0a2e73796e746178636f6d6d656e74097b20636f6c6f723a20233030303030303b207d0a2e73796e74617864656661756c74097b20636f6c6f723a20236263626362633b207d0a2e73796e74617868746d6c09097b20636f6c6f723a20233030303030303b207d0a2e73796e7461786b6579776f7264097b20636f6c6f723a20233538353835383b207d0a2e73796e746178737472696e67097b20636f6c6f723a20236137613761373b207d0a0a2f2a204174746163686d656e74730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e617474616368626f78207b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b200a096d617267696e3a20357078203570782035707820303b0a0970616464696e673a203670783b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465723a203170782064617368656420236438643864383b0a09636c6561723a206c6566743b0a7d0a0a2e706d2d6d657373616765202e617474616368626f78207b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a7d0a0a2e617474616368626f78206474207b0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09746578742d7472616e73666f726d3a207570706572636173653b0a7d0a0a2e617474616368626f78206464207b0a096d617267696e2d746f703a203470783b0a0970616464696e672d746f703a203470783b0a09636c6561723a206c6566743b0a09626f726465722d746f703a2031707820736f6c696420236438643864383b0a7d0a0a2e617474616368626f78206464206464207b0a09626f726465723a206e6f6e653b0a7d0a0a2e617474616368626f782070207b0a096c696e652d6865696768743a20313130253b0a09636f6c6f723a20233636363636363b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636c6561723a206c6566743b0a7d0a0a2e617474616368626f7820702e73746174730a7b0a096c696e652d6865696768743a20313130253b0a09636f6c6f723a20233636363636363b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636c6561723a206c6566743b0a7d0a0a2e6174746163682d696d616765207b0a096d617267696e3a2033707820303b0a0977696474683a20313030253b0a096d61782d6865696768743a2033353070783b0a096f766572666c6f773a206175746f3b0a7d0a0a2e6174746163682d696d61676520696d67207b0a09626f726465723a2031707820736f6c696420233939393939393b0a2f2a09637572736f723a206d6f76653b202a2f0a09637572736f723a2064656661756c743b0a7d0a0a2f2a20496e6c696e6520696d616765207468756d626e61696c73202a2f0a6469762e696e6c696e652d6174746163686d656e7420646c2e7468756d626e61696c2c206469762e696e6c696e652d6174746163686d656e7420646c2e66696c65207b0a09646973706c61793a20626c6f636b3b0a096d617267696e2d626f74746f6d3a203470783b0a7d0a0a6469762e696e6c696e652d6174746163686d656e742070207b0a09666f6e742d73697a653a20313030253b0a7d0a0a646c2e66696c65207b0a09666f6e742d66616d696c793a2056657264616e612c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09646973706c61793a20626c6f636b3b0a7d0a0a646c2e66696c65206474207b0a09746578742d7472616e73666f726d3a206e6f6e653b0a096d617267696e3a20303b0a0970616464696e673a20303b0a09666f6e742d7765696768743a20626f6c643b0a09666f6e742d66616d696c793a2056657264616e612c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a7d0a0a646c2e66696c65206464207b0a09636f6c6f723a20233636363636363b0a096d617267696e3a20303b0a0970616464696e673a20303b090a7d0a0a646c2e7468756d626e61696c20696d67207b0a0970616464696e673a203370783b0a09626f726465723a2031707820736f6c696420233636363636363b0a096261636b67726f756e642d636f6c6f723a20234646463b0a7d0a0a646c2e7468756d626e61696c206464207b0a09636f6c6f723a20233636363636363b0a09666f6e742d7374796c653a206974616c69633b0a09666f6e742d66616d696c793a2056657264616e612c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a7d0a0a2e617474616368626f7820646c2e7468756d626e61696c206464207b0a09666f6e742d73697a653a20313030253b0a7d0a0a646c2e7468756d626e61696c20647420613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545454545453b0a7d0a0a646c2e7468756d626e61696c20647420613a686f76657220696d67207b0a09626f726465723a2031707820736f6c696420236432643264323b0a7d0a0a2f2a20506f737420706f6c6c207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a6669656c647365742e706f6c6c73207b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a7d0a0a6669656c647365742e706f6c6c7320646c207b0a096d617267696e2d746f703a203570783b0a09626f726465722d746f703a2031707820736f6c696420236532653265323b0a0970616464696e673a203570782030203020303b0a096c696e652d6865696768743a20313230253b0a09636f6c6f723a20233636363636363b0a7d0a0a6669656c647365742e706f6c6c7320646c2e766f746564207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e706f6c6c73206474207b0a09746578742d616c69676e3a206c6566743b0a09666c6f61743a206c6566743b0a09646973706c61793a20626c6f636b3b0a0977696474683a203330253b0a09626f726465722d72696768743a206e6f6e653b0a0970616464696e673a20303b0a096d617267696e3a20303b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a6669656c647365742e706f6c6c73206464207b0a09666c6f61743a206c6566743b0a0977696474683a203130253b0a09626f726465722d6c6566743a206e6f6e653b0a0970616464696e673a2030203570783b0a096d617267696e2d6c6566743a20303b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a6669656c647365742e706f6c6c732064642e726573756c74626172207b0a0977696474683a203530253b0a7d0a0a6669656c647365742e706f6c6c7320646420696e707574207b0a096d617267696e3a2032707820303b0a7d0a0a6669656c647365742e706f6c6c7320646420646976207b0a09746578742d616c69676e3a2072696768743b0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09636f6c6f723a20234646464646463b0a09666f6e742d7765696768743a20626f6c643b0a0970616464696e673a2030203270783b0a096f766572666c6f773a2076697369626c653b0a096d696e2d77696474683a2032253b0a7d0a0a2e706f6c6c62617231207b0a096261636b67726f756e642d636f6c6f723a20236161616161613b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233734373437343b0a09626f726465722d72696768743a2031707820736f6c696420233734373437343b0a7d0a0a2e706f6c6c62617232207b0a096261636b67726f756e642d636f6c6f723a20236265626562653b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233863386338633b0a09626f726465722d72696768743a2031707820736f6c696420233863386338633b0a7d0a0a2e706f6c6c62617233207b0a096261636b67726f756e642d636f6c6f723a20234431443144313b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236161616161613b0a09626f726465722d72696768743a2031707820736f6c696420236161616161613b0a7d0a0a2e706f6c6c62617234207b0a096261636b67726f756e642d636f6c6f723a20236534653465343b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236265626562653b0a09626f726465722d72696768743a2031707820736f6c696420236265626562653b0a7d0a0a2e706f6c6c62617235207b0a096261636b67726f756e642d636f6c6f723a20236638663866383b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234431443144313b0a09626f726465722d72696768743a2031707820736f6c696420234431443144313b0a7d0a0a2f2a20506f737465722070726f66696c6520626c6f636b0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f737470726f66696c65207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a096d617267696e3a203570782030203130707820303b0a096d696e2d6865696768743a20383070783b0a09636f6c6f723a20233636363636363b0a09626f726465722d6c6566743a2031707820736f6c696420234646464646463b0a0977696474683a203232253b0a09666c6f61743a2072696768743b0a09646973706c61793a20696e6c696e653b0a7d0a2e706d202e706f737470726f66696c65207b0a09626f726465722d6c6566743a2031707820736f6c696420234444444444443b0a7d0a0a2e706f737470726f66696c652064642c202e706f737470726f66696c65206474207b0a096c696e652d6865696768743a20312e32656d3b0a096d617267696e2d6c6566743a203870783b0a7d0a0a2e706f737470726f66696c65207374726f6e67207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233030303030303b0a7d0a0a2e617661746172207b0a09626f726465723a206e6f6e653b0a096d617267696e2d626f74746f6d3a203370783b0a7d0a0a2e6f6e6c696e65207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a2f2a20506f737465722070726f66696c652075736564206279207365617263682a2f0a2e736561726368202e706f737470726f66696c65207b0a0977696474683a203330253b0a7d0a0a2f2a20706d206c69737420696e20636f6d706f7365206d657373616765206966206d61737320706d20697320656e61626c6564202a2f0a646c2e706d6c697374206474207b0a0977696474683a203630252021696d706f7274616e743b0a7d0a0a646c2e706d6c697374206474207465787461726561207b0a0977696474683a203935253b0a7d0a0a646c2e706d6c697374206464207b0a096d617267696e2d6c6566743a203631252021696d706f7274616e743b0a096d617267696e2d626f74746f6d3a203270783b0a7d0a2f2a2070726f53696c76657220427574746f6e205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a20526f6c6c6f76657220627574746f6e730a2020204261736564206f6e3a20687474703a2f2f77656c6c7374796c65642e636f6d2f6373732d6e6f7072656c6f61642d726f6c6c6f766572732e68746d6c0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e627574746f6e73207b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b0a096865696768743a206175746f3b0a7d0a0a2f2a20526f6c6c6f766572207374617465202a2f0a2e627574746f6e7320646976207b0a09666c6f61743a206c6566743b0a096d617267696e3a203020357078203020303b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a7d0a0a2f2a20526f6c6c6f6666207374617465202a2f0a2e627574746f6e73206469762061207b0a09646973706c61793a20626c6f636b3b0a0977696474683a20313030253b0a096865696768743a20313030253b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a09706f736974696f6e3a2072656c61746976653b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a2048696465203c613e207465787420616e642068696465206f66662d737461746520696d616765207768656e20726f6c6c696e67206f766572202870726576656e747320666c69636b657220696e20494529202a2f0a2f2a2e627574746f6e7320646976207370616e09097b20646973706c61793a206e6f6e653b207d2a2f0a2f2a2e627574746f6e732064697620613a686f766572097b206261636b67726f756e642d696d6167653a206e6f6e653b207d2a2f0a2e627574746f6e7320646976207370616e0909097b20706f736974696f6e3a206162736f6c7574653b2077696474683a20313030253b206865696768743a20313030253b20637572736f723a20706f696e7465723b7d0a2e627574746f6e732064697620613a686f766572207370616e097b206261636b67726f756e642d706f736974696f6e3a203020313030253b207d0a0a2f2a2042696720627574746f6e20696d61676573202a2f0a2e7265706c792d69636f6e207370616e097b206261636b67726f756e643a207472616e73706172656e74206e6f6e6520302030206e6f2d7265706561743b207d0a2e706f73742d69636f6e207370616e09097b206261636b67726f756e643a207472616e73706172656e74206e6f6e6520302030206e6f2d7265706561743b207d0a2e6c6f636b65642d69636f6e207370616e097b206261636b67726f756e643a207472616e73706172656e74206e6f6e6520302030206e6f2d7265706561743b207d0a2e706d7265706c792d69636f6e207370616e097b206261636b67726f756e643a206e6f6e6520302030206e6f2d7265706561743b207d0a2e6e6577706d2d69636f6e207370616e20097b206261636b67726f756e643a206e6f6e6520302030206e6f2d7265706561743b207d0a2e666f7277617264706d2d69636f6e207370616e20097b206261636b67726f756e643a206e6f6e6520302030206e6f2d7265706561743b207d0a0a2f2a205365742062696720627574746f6e2064696d656e73696f6e73202a2f0a2e627574746f6e73206469762e7265706c792d69636f6e09097b2077696474683a207b494d475f425554544f4e5f544f5049435f5245504c595f57494454487d70783b206865696768743a207b494d475f425554544f4e5f544f5049435f5245504c595f4845494748547d70783b207d0a2e627574746f6e73206469762e706f73742d69636f6e09097b2077696474683a207b494d475f425554544f4e5f544f5049435f4e45575f57494454487d70783b206865696768743a207b494d475f425554544f4e5f544f5049435f4e45575f4845494748547d70783b207d0a2e627574746f6e73206469762e6c6f636b65642d69636f6e097b2077696474683a207b494d475f425554544f4e5f544f5049435f4c4f434b45445f57494454487d70783b206865696768743a207b494d475f425554544f4e5f544f5049435f4c4f434b45445f4845494748547d70783b207d0a2e627574746f6e73206469762e706d7265706c792d69636f6e097b2077696474683a207b494d475f425554544f4e5f504d5f5245504c595f57494454487d70783b206865696768743a207b494d475f425554544f4e5f504d5f5245504c595f4845494748547d70783b207d0a2e627574746f6e73206469762e6e6577706d2d69636f6e09097b2077696474683a207b494d475f425554544f4e5f504d5f4e45575f57494454487d70783b206865696768743a207b494d475f425554544f4e5f504d5f4e45575f4845494748547d70783b207d0a2e627574746f6e73206469762e666f7277617264706d2d69636f6e097b2077696474683a207b494d475f425554544f4e5f504d5f464f52574152445f57494454487d70783b206865696768743a207b494d475f425554544f4e5f504d5f464f52574152445f4845494748547d70783b207d0a0a2f2a205375622d68656164657220286e617669676174696f6e20626172290a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a612e7072696e742c20612e73656e64656d61696c2c20612e666f6e7473697a65207b0a09646973706c61793a20626c6f636b3b0a096f766572666c6f773a2068696464656e3b0a096865696768743a20313870783b0a09746578742d696e64656e743a202d3530303070783b0a09746578742d616c69676e3a206c6566743b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a612e7072696e74207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0977696474683a20323270783b0a7d0a0a612e73656e64656d61696c207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0977696474683a20323270783b0a7d0a0a612e666f6e7473697a65207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2030202d3170783b0a0977696474683a20323970783b0a7d0a0a612e666f6e7473697a653a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a2030202d323070783b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a2049636f6e20696d616765730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e73697465686f6d652c202e69636f6e2d6661712c202e69636f6e2d6d656d626572732c202e69636f6e2d686f6d652c202e69636f6e2d7563702c202e69636f6e2d72656769737465722c202e69636f6e2d6c6f676f75742c0a2e69636f6e2d626f6f6b6d61726b2c202e69636f6e2d62756d702c202e69636f6e2d7375627363726962652c202e69636f6e2d756e7375627363726962652c202e69636f6e2d70616765732c202e69636f6e2d736561726368207b0a096261636b67726f756e642d706f736974696f6e3a2030203530253b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0970616464696e673a203170782030203020313770783b0a7d0a0a2f2a20506f737465722070726f66696c652069636f6e730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a756c2e70726f66696c652d69636f6e73207b0a0970616464696e672d746f703a20313070783b0a096c6973742d7374796c653a206e6f6e653b0a7d0a0a2f2a20526f6c6c6f766572207374617465202a2f0a756c2e70726f66696c652d69636f6e73206c69207b0a09666c6f61743a206c6566743b0a096d617267696e3a2030203670782033707820303b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a7d0a0a2f2a20526f6c6c6f6666207374617465202a2f0a756c2e70726f66696c652d69636f6e73206c692061207b0a09646973706c61793a20626c6f636b3b0a0977696474683a20313030253b0a096865696768743a20313030253b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a7d0a0a2f2a2048696465203c613e207465787420616e642068696465206f66662d737461746520696d616765207768656e20726f6c6c696e67206f766572202870726576656e747320666c69636b657220696e20494529202a2f0a756c2e70726f66696c652d69636f6e73206c69207370616e207b20646973706c61793a6e6f6e653b207d0a756c2e70726f66696c652d69636f6e73206c6920613a686f766572207b206261636b67726f756e643a206e6f6e653b207d0a0a2f2a20506f736974696f6e696e67206f66206d6f64657261746f722069636f6e73202a2f0a2e706f7374626f647920756c2e70726f66696c652d69636f6e73207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a0970616464696e673a20303b0a7d0a0a2e706f7374626f647920756c2e70726f66696c652d69636f6e73206c69207b0a096d617267696e3a2030203370783b0a7d0a0a2f2a2050726f66696c652026206e617669676174696f6e2069636f6e73202a2f0a2e656d61696c2d69636f6e2c202e656d61696c2d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e61696d2d69636f6e2c202e61696d2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e7961686f6f2d69636f6e2c202e7961686f6f2d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e7765622d69636f6e2c202e7765622d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e6d736e6d2d69636f6e2c202e6d736e6d2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e6963712d69636f6e2c202e6963712d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e6a61626265722d69636f6e2c202e6a61626265722d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e706d2d69636f6e2c202e706d2d69636f6e2061090909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e71756f74652d69636f6e2c202e71756f74652d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a0a2f2a204d6f64657261746f722069636f6e73202a2f0a2e7265706f72742d69636f6e2c202e7265706f72742d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e7761726e2d69636f6e2c202e7761726e2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e656469742d69636f6e2c202e656469742d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e64656c6574652d69636f6e2c202e64656c6574652d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e696e666f2d69636f6e2c202e696e666f2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a0a2f2a205365742070726f66696c652069636f6e2064696d656e73696f6e73202a2f0a756c2e70726f66696c652d69636f6e73206c692e656d61696c2d69636f6e09097b2077696474683a207b494d475f49434f4e5f434f4e544143545f454d41494c5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f454d41494c5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e61696d2d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f41494d5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f41494d5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7961686f6f2d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f5941484f4f5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f5941484f4f5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7765622d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f5757575f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f5757575f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e6d736e6d2d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f4d534e4d5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f4d534e4d5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e6963712d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f4943515f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f4943515f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e6a61626265722d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f4a41424245525f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f4a41424245525f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e706d2d69636f6e09097b2077696474683a207b494d475f49434f4e5f434f4e544143545f504d5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f504d5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e71756f74652d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f51554f54455f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f51554f54455f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7265706f72742d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f5245504f52545f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f5245504f52545f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e656469742d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f454449545f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f454449545f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e64656c6574652d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f44454c4554455f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f44454c4554455f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e696e666f2d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f494e464f5f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f494e464f5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7761726e2d69636f6e097b2077696474683a207b494d475f49434f4e5f555345525f5741524e5f57494454487d70783b206865696768743a207b494d475f49434f4e5f555345525f5741524e5f4845494748547d70783b207d0a0a2f2a204669782070726f66696c652069636f6e2064656661756c74206d617267696e73202a2f0a756c2e70726f66696c652d69636f6e73206c692e656469742d69636f6e097b206d617267696e3a203020302030203370783b207d0a756c2e70726f66696c652d69636f6e73206c692e71756f74652d69636f6e097b206d617267696e3a20302030203020313070783b207d0a756c2e70726f66696c652d69636f6e73206c692e696e666f2d69636f6e2c20756c2e70726f66696c652d69636f6e73206c692e7265706f72742d69636f6e097b206d617267696e3a203020337078203020303b207d0a2f2a2070726f53696c76657220436f6e74726f6c2050616e656c205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a0a2f2a204d61696e20435020626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2363702d6d656e75207b0a09666c6f61743a6c6566743b0a0977696474683a203139253b0a096d617267696e2d746f703a2031656d3b0a096d617267696e2d626f74746f6d3a203570783b0a7d0a0a2363702d6d61696e207b0a09666c6f61743a206c6566743b0a0977696474683a203831253b0a7d0a0a2363702d6d61696e202e636f6e74656e74207b0a0970616464696e673a20303b0a7d0a0a2363702d6d61696e2068332c202363702d6d61696e2068722c202363702d6d656e75206872207b0a09626f726465722d636f6c6f723a20236266626662663b0a7d0a0a2363702d6d61696e202e70616e656c2070207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2363702d6d61696e202e70616e656c206f6c207b0a096d617267696e2d6c6566743a2032656d3b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2363702d6d61696e202e70616e656c206c692e726f77207b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236362636263623b0a09626f726465722d746f703a2031707820736f6c696420234639463946393b0a7d0a0a756c2e63706c697374207b0a096d617267696e2d626f74746f6d3a203570783b0a09626f726465722d746f703a2031707820736f6c696420236362636263623b0a7d0a0a2363702d6d61696e202e70616e656c206c692e6865616465722064642c202363702d6d61696e202e70616e656c206c692e686561646572206474207b0a09636f6c6f723a20233030303030303b0a096d617267696e2d626f74746f6d3a203270783b0a7d0a0a2363702d6d61696e207461626c652e7461626c6531207b0a096d617267696e2d626f74746f6d3a2031656d3b0a7d0a0a2363702d6d61696e207461626c652e7461626c6531207468656164207468207b0a09636f6c6f723a20233333333333333b0a09666f6e742d7765696768743a20626f6c643b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233333333333333b0a0970616464696e673a203570783b0a7d0a0a2363702d6d61696e207461626c652e7461626c65312074626f6479207468207b0a09666f6e742d7374796c653a206974616c69633b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e742021696d706f7274616e743b0a09626f726465722d626f74746f6d3a206e6f6e653b0a7d0a0a2363702d6d61696e202e706167696e6174696f6e207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a0970616464696e672d746f703a203170783b0a7d0a0a2363702d6d61696e202e706f7374626f64792070207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2363702d6d61696e202e706d2d6d657373616765207b0a09626f726465723a2031707820736f6c696420236532653265323b0a096d617267696e3a203130707820303b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a0977696474683a206175746f3b0a09666c6f61743a206e6f6e653b0a7d0a0a2e706d2d6d657373616765206832207b0a0970616464696e672d626f74746f6d3a203570783b0a7d0a0a2363702d6d61696e202e706f7374626f64792068332c202363702d6d61696e202e626f7832206833207b0a096d617267696e2d746f703a20303b0a7d0a0a2363702d6d61696e202e627574746f6e73207b0a096d617267696e2d6c6566743a20303b0a7d0a0a2363702d6d61696e20756c2e6c696e6b6c697374207b0a096d617267696e3a20303b0a7d0a0a2f2a204d435020537065636966696320747765616b73202a2f0a2e6d63702d6d61696e202e706f7374626f6479207b0a0977696474683a20313030253b0a7d0a0a2f2a20435020746162626564206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2374616273207b0a096c696e652d6865696768743a206e6f726d616c3b0a096d617267696e3a20323070782030202d317078203770783b0a096d696e2d77696474683a2035373070783b0a7d0a0a237461627320756c207b0a096d617267696e3a303b0a0970616464696e673a20303b0a096c6973742d7374796c653a206e6f6e653b0a7d0a0a2374616273206c69207b0a09646973706c61793a20696e6c696e653b0a096d617267696e3a20303b0a0970616464696e673a20303b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a23746162732061207b0a09666c6f61743a206c6566743b0a096261636b67726f756e643a206e6f6e65206e6f2d726570656174203025202d333570783b0a096d617267696e3a203020317078203020303b0a0970616464696e673a203020302030203570783b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09706f736974696f6e3a2072656c61746976653b0a09637572736f723a20706f696e7465723b0a7d0a0a23746162732061207370616e207b0a09666c6f61743a206c6566743b0a09646973706c61793a20626c6f636b3b0a096261636b67726f756e643a206e6f6e65206e6f2d7265706561742031303025202d333570783b0a0970616464696e673a20367078203130707820367078203570783b0a09636f6c6f723a20233832383238323b0a0977686974652d73706163653a206e6f777261703b0a7d0a0a237461627320613a686f766572207370616e207b0a09636f6c6f723a20236263626362633b0a7d0a0a2374616273202e6163746976657461622061207b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236562656265623b0a7d0a0a2374616273202e6163746976657461622061207370616e207b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a0970616464696e672d626f74746f6d3a203770783b0a09636f6c6f723a20233333333333333b0a7d0a0a237461627320613a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a2030202d373070783b0a7d0a0a237461627320613a686f766572207370616e207b0a096261636b67726f756e642d706f736974696f6e3a31303025202d373070783b0a7d0a0a2374616273202e61637469766574616220613a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a7d0a0a2374616273202e61637469766574616220613a686f766572207370616e207b0a09636f6c6f723a20233030303030303b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a7d0a0a2f2a204d696e6920746162626564206d656e75207573656420696e204d43500a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a236d696e6974616273207b0a096c696e652d6865696768743a206e6f726d616c3b0a096d617267696e3a202d3230707820377078203020303b0a7d0a0a236d696e697461627320756c207b0a096d617267696e3a303b0a0970616464696e673a20303b0a096c6973742d7374796c653a206e6f6e653b0a7d0a0a236d696e6974616273206c69207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a0970616464696e673a203020313070782034707820313070783b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d7765696768743a20626f6c643b0a096261636b67726f756e642d636f6c6f723a20236632663266323b0a096d617267696e2d6c6566743a203270783b0a7d0a0a236d696e69746162732061207b0a7d0a0a236d696e697461627320613a686f766572207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a236d696e6974616273206c692e616374697665746162207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a236d696e6974616273206c692e61637469766574616220612c20236d696e6974616273206c692e61637469766574616220613a686f766572207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20554350206e617669676174696f6e206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a20436f6e7461696e657220666f72207375622d6e617669676174696f6e206c697374202a2f0a236e617669676174696f6e207b0a0977696474683a20313030253b0a0970616464696e672d746f703a20333670783b0a7d0a0a236e617669676174696f6e20756c207b0a096c6973742d7374796c653a6e6f6e653b0a7d0a0a2f2a2044656661756c74206c697374207374617465202a2f0a236e617669676174696f6e206c69207b0a096d617267696e3a2031707820303b0a0970616464696e673a20303b0a09666f6e742d7765696768743a20626f6c643b0a09646973706c61793a20696e6c696e653b0a7d0a0a2f2a204c696e6b207374796c657320666f7220746865207375622d73656374696f6e206c696e6b73202a2f0a236e617669676174696f6e2061207b0a09646973706c61793a20626c6f636b3b0a0970616464696e673a203570783b0a096d617267696e3a2031707820303b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233333333b0a096261636b67726f756e643a2023636663666366206e6f6e65207265706561742d79203130302520303b0a7d0a0a236e617669676174696f6e20613a686f766572207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a096261636b67726f756e642d636f6c6f723a20236336633663363b0a09636f6c6f723a20236263626362633b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e2061207b0a09646973706c61793a20626c6f636b3b0a09636f6c6f723a20236433643364333b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e20613a686f766572207b0a09636f6c6f723a20236433643364333b0a7d0a0a2f2a20507265666572656e6365732070616e65206c61796f75740a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2363702d6d61696e206832207b0a09626f726465722d626f74746f6d3a206e6f6e653b0a0970616464696e673a20303b0a096d617267696e2d6c6566743a20313070783b0a09636f6c6f723a20233333333333333b0a7d0a0a2363702d6d61696e202e70616e656c207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a2363702d6d61696e202e706d207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f702c202363702d6d656e75207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a20546f706963726576696577202a2f0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f702c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a20467269656e6473206c697374202a2f0a2e63702d6d696e69207b0a096261636b67726f756e642d636f6c6f723a20236639663966393b0a0970616464696e673a2030203570783b0a096d617267696e3a203130707820313570782031307078203570783b0a7d0a0a2e63702d6d696e69207370616e2e636f726e6572732d746f702c202e63702d6d696e69207370616e2e636f726e6572732d626f74746f6d207b0a096d617267696e3a2030202d3570783b0a7d0a0a646c2e6d696e69206474207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233637363736373b0a7d0a0a646c2e6d696e69206464207b0a0970616464696e672d746f703a203470783b0a7d0a0a2e667269656e642d6f6e6c696e65207b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a2e667269656e642d6f66666c696e65207b0a09666f6e742d7374796c653a206974616c69633b0a7d0a0a2f2a20504d205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a23706d2d6d656e75207b0a096c696e652d6865696768743a20322e35656d3b0a7d0a0a2f2a20504d2070616e656c2061646a7573746d656e7473202a2f0a2e706d2d70616e656c2d686561646572207b0a096d617267696e3a20303b200a0970616464696e672d626f74746f6d3a20313070783b200a09626f726465722d626f74746f6d3a203170782064617368656420234134423342463b0a7d0a0a2e7265706c792d616c6c207b0a09646973706c61793a20626c6f636b3b200a0970616464696e672d746f703a203470783b200a09636c6561723a20626f74683b0a09666c6f61743a206c6566743b0a7d0a0a2e706d2d70616e656c2d6d657373616765207b0a0970616464696e672d746f703a20313070783b0a7d0a0a2e706d2d72657475726e2d746f207b0a0970616464696e672d746f703a20323370783b0a7d0a0a2363702d6d61696e202e706d2d6d6573736167652d6e6176207b0a096d617267696e3a20303b200a0970616464696e673a2032707820313070782035707820313070783b200a09626f726465722d626f74746f6d3a203170782064617368656420234134423342463b0a7d0a0a2f2a20504d204d65737361676520686973746f7279202a2f0a2e63757272656e74207b0a09636f6c6f723a20233939393939393b0a7d0a0a2f2a20446566696e65642072756c6573206c69737420666f7220504d206f7074696f6e73202a2f0a6f6c2e6465662d72756c6573207b0a0970616464696e672d6c6566743a20303b0a7d0a0a6f6c2e6465662d72756c6573206c69207b0a096c696e652d6865696768743a20313830253b0a0970616464696e673a203170783b0a7d0a0a2f2a20504d206d61726b696e6720636f6c6f757273202a2f0a2e706d6c697374206c692e626731207b0a09626f726465723a20736f6c696420337078207472616e73706172656e743b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e626732207b0a09626f726465723a20736f6c696420337078207472616e73706172656e743b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e706d5f6d6573736167655f7265706f727465645f636f6c6f75722c202e706d5f6d6573736167655f7265706f727465645f636f6c6f7572207b0a09626f726465722d6c6566742d636f6c6f723a20236263626362633b0a09626f726465722d72696768742d636f6c6f723a20236263626362633b0a7d0a0a2e706d6c697374206c692e706d5f6d61726b65645f636f6c6f75722c202e706d5f6d61726b65645f636f6c6f7572207b0a09626f726465723a20736f6c69642033707820236666666666663b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e706d5f7265706c6965645f636f6c6f75722c202e706d5f7265706c6965645f636f6c6f7572207b0a09626f726465723a20736f6c69642033707820236332633263323b0a09626f726465722d77696474683a2030203370783b090a7d0a0a2e706d6c697374206c692e706d5f667269656e645f636f6c6f75722c202e706d5f667269656e645f636f6c6f7572207b0a09626f726465723a20736f6c69642033707820236264626462643b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e706d5f666f655f636f6c6f75722c202e706d5f666f655f636f6c6f7572207b0a09626f726465723a20736f6c69642033707820233030303030303b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d2d6c6567656e64207b0a09626f726465722d6c6566742d77696474683a20313070783b0a09626f726465722d6c6566742d7374796c653a20736f6c69643b0a09626f726465722d72696768742d77696474683a20303b0a096d617267696e2d626f74746f6d3a203370783b0a0970616464696e672d6c6566743a203370783b0a7d0a0a2f2a204176617461722067616c6c657279202a2f0a2367616c6c657279206c6162656c207b0a09706f736974696f6e3a2072656c61746976653b0a09666c6f61743a206c6566743b0a096d617267696e3a20313070783b0a0970616464696e673a203570783b0a0977696474683a206175746f3b0a096261636b67726f756e643a20234646464646463b0a09626f726465723a2031707820736f6c696420234343433b0a09746578742d616c69676e3a2063656e7465723b0a7d0a0a2367616c6c657279206c6162656c3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545453b0a7d0a2f2a2070726f53696c76657220466f726d205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a2047656e6572616c20666f726d207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a6669656c64736574207b0a09626f726465722d77696474683a20303b0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a696e707574207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09637572736f723a20706f696e7465723b0a09766572746963616c2d616c69676e3a206d6964646c653b0a0970616464696e673a2030203370783b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a7d0a0a73656c656374207b0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d7765696768743a206e6f726d616c3b0a09637572736f723a20706f696e7465723b0a09766572746963616c2d616c69676e3a206d6964646c653b0a09626f726465723a2031707820736f6c696420233636363636363b0a0970616464696e673a203170783b0a096261636b67726f756e642d636f6c6f723a20234641464146413b0a7d0a0a6f7074696f6e207b0a0970616464696e672d72696768743a2031656d3b0a7d0a0a6f7074696f6e2e64697361626c65642d6f7074696f6e207b0a09636f6c6f723a2067726179746578743b0a7d0a0a7465787461726561207b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a0977696474683a203630253b0a0970616464696e673a203270783b0a09666f6e742d73697a653a2031656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a6c6162656c207b0a09637572736f723a2064656661756c743b0a0970616464696e672d72696768743a203570783b0a09636f6c6f723a20233637363736373b0a7d0a0a6c6162656c20696e707574207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a7d0a0a6c6162656c20696d67207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a7d0a0a2f2a20446566696e6974696f6e206c697374206c61796f757420666f7220666f726d730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a6669656c6473657420646c207b0a0970616464696e673a2034707820303b0a7d0a0a6669656c64736574206474207b0a09666c6f61743a206c6566743b090a0977696474683a203430253b0a09746578742d616c69676e3a206c6566743b0a09646973706c61793a20626c6f636b3b0a7d0a0a6669656c64736574206464207b0a096d617267696e2d6c6566743a203431253b0a09766572746963616c2d616c69676e3a20746f703b0a096d617267696e2d626f74746f6d3a203370783b0a7d0a0a2f2a205370656369666963206c61796f75742031202a2f0a6669656c647365742e6669656c647331206474207b0a0977696474683a203135656d3b0a09626f726465722d72696768742d77696474683a20303b0a7d0a0a6669656c647365742e6669656c647331206464207b0a096d617267696e2d6c6566743a203135656d3b0a09626f726465722d6c6566742d77696474683a20303b0a7d0a0a6669656c647365742e6669656c647331207b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a6669656c647365742e6669656c64733120646976207b0a096d617267696e2d626f74746f6d3a203370783b0a7d0a0a2f2a20536574206974206261636b20746f2030707820666f72207468652072654361707463686120646976733a205048504242332d39353837202a2f0a6669656c647365742e6669656c64733120237265636170746368615f7769646765745f64697620646976207b0a096d617267696e2d626f74746f6d3a20303b0a7d0a0a2f2a205370656369666963206c61796f75742032202a2f0a6669656c647365742e6669656c647332206474207b0a0977696474683a203135656d3b0a09626f726465722d72696768742d77696474683a20303b0a7d0a0a6669656c647365742e6669656c647332206464207b0a096d617267696e2d6c6566743a203136656d3b0a09626f726465722d6c6566742d77696474683a20303b0a7d0a0a2f2a20466f726d20656c656d656e7473202a2f0a6474206c6162656c207b0a09666f6e742d7765696768743a20626f6c643b0a09746578742d616c69676e3a206c6566743b0a7d0a0a6464206c6162656c207b0a0977686974652d73706163653a206e6f777261703b0a09636f6c6f723a20233333333b0a7d0a0a646420696e7075742c206464207465787461726561207b0a096d617267696e2d72696768743a203370783b0a7d0a0a64642073656c656374207b0a0977696474683a206175746f3b0a7d0a0a6464207465787461726561207b0a0977696474683a203835253b0a7d0a0a2f2a20486f7665722065666665637473202a2f0a6669656c6473657420646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e6669656c64733220646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20696e68657269743b0a7d0a0a2374696d657a6f6e65207b0a0977696474683a203935253b0a7d0a0a2a2068746d6c202374696d657a6f6e65207b0a0977696474683a203530253b0a7d0a0a2f2a20517569636b2d6c6f67696e206f6e20696e6465782070616765202a2f0a6669656c647365742e717569636b2d6c6f67696e207b0a096d617267696e2d746f703a203570783b0a7d0a0a6669656c647365742e717569636b2d6c6f67696e20696e707574207b0a0977696474683a206175746f3b0a7d0a0a6669656c647365742e717569636b2d6c6f67696e20696e7075742e696e707574626f78207b0a0977696474683a203135253b0a09766572746963616c2d616c69676e3a206d6964646c653b0a096d617267696e2d72696768743a203570783b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a7d0a0a6669656c647365742e717569636b2d6c6f67696e206c6162656c207b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e672d72696768743a203270783b0a7d0a0a2f2a20446973706c6179206f7074696f6e73206f6e2076696577746f7069632f76696577666f72756d20706167657320202a2f0a6669656c647365742e646973706c61792d6f7074696f6e73207b0a09746578742d616c69676e3a2063656e7465723b0a096d617267696e3a2033707820302035707820303b0a7d0a0a6669656c647365742e646973706c61792d6f7074696f6e73206c6162656c207b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e672d72696768743a203270783b0a7d0a0a6669656c647365742e646973706c61792d6f7074696f6e732061207b0a096d617267696e2d746f703a203370783b0a7d0a0a2f2a20446973706c617920616374696f6e7320666f722075637020616e64206d6370207061676573202a2f0a6669656c647365742e646973706c61792d616374696f6e73207b0a09746578742d616c69676e3a2072696768743b0a096c696e652d6865696768743a2032656d3b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e672d72696768743a2031656d3b0a7d0a0a6669656c647365742e646973706c61792d616374696f6e73206c6162656c207b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e672d72696768743a203270783b0a7d0a0a6669656c647365742e736f72742d6f7074696f6e73207b0a096c696e652d6865696768743a2032656d3b0a7d0a0a2f2a204d435020666f72756d2073656c656374696f6e2a2f0a6669656c647365742e666f72756d2d73656c656374696f6e207b0a096d617267696e3a2035707820302033707820303b0a09666c6f61743a2072696768743b0a7d0a0a6669656c647365742e666f72756d2d73656c656374696f6e32207b0a096d617267696e3a203133707820302033707820303b0a09666c6f61743a2072696768743b0a7d0a0a2f2a204a756d70626f78202a2f0a6669656c647365742e6a756d70626f78207b0a09746578742d616c69676e3a2072696768743b0a096d617267696e2d746f703a20313570783b0a096865696768743a20322e35656d3b0a7d0a0a6669656c647365742e717569636b6d6f64207b0a0977696474683a203530253b0a09666c6f61743a2072696768743b0a09746578742d616c69676e3a2072696768743b0a096865696768743a20322e35656d3b0a7d0a0a2f2a205375626d697420627574746f6e206669656c64736574202a2f0a6669656c647365742e7375626d69742d627574746f6e73207b0a09746578742d616c69676e3a2063656e7465723b0a09766572746963616c2d616c69676e3a206d6964646c653b0a096d617267696e3a2035707820303b0a7d0a0a6669656c647365742e7375626d69742d627574746f6e7320696e707574207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a0970616464696e672d746f703a203370783b0a0970616464696e672d626f74746f6d3a203370783b0a7d0a0a2f2a20506f7374696e672070616765207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2f2a20427574746f6e73207573656420696e2074686520656469746f72202a2f0a23666f726d61742d627574746f6e73207b0a096d617267696e3a203135707820302032707820303b0a7d0a0a23666f726d61742d627574746f6e7320696e7075742c2023666f726d61742d627574746f6e732073656c656374207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a7d0a0a2f2a204d61696e206d65737361676520626f78202a2f0a236d6573736167652d626f78207b0a0977696474683a203830253b0a7d0a0a236d6573736167652d626f78207465787461726561207b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a0977696474683a20313030253b0a09666f6e742d73697a653a20312e32656d3b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20456d6f7469636f6e732070616e656c202a2f0a23736d696c65792d626f78207b0a0977696474683a203138253b0a09666c6f61743a2072696768743b0a7d0a0a23736d696c65792d626f7820696d67207b0a096d617267696e3a203370783b0a7d0a0a2f2a20496e707574206669656c64207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e696e707574626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465723a2031707820736f6c696420236330633063303b0a09636f6c6f723a20233333333333333b0a0970616464696e673a203270783b0a09637572736f723a20746578743b0a7d0a0a2e696e707574626f783a686f766572207b0a09626f726465723a2031707820736f6c696420236561656165613b0a7d0a0a2e696e707574626f783a666f637573207b0a09626f726465723a2031707820736f6c696420236561656165613b0a09636f6c6f723a20233462346234623b0a7d0a0a696e7075742e696e707574626f78097b2077696474683a203835253b207d0a696e7075742e6d656469756d097b2077696474683a203530253b207d0a696e7075742e6e6172726f77097b2077696474683a203235253b207d0a696e7075742e74696e7909097b2077696474683a2031323570783b207d0a0a74657874617265612e696e707574626f78207b0a0977696474683a203835253b0a7d0a0a2e6175746f7769647468207b0a0977696474683a206175746f2021696d706f7274616e743b0a7d0a0a2f2a20466f726d20627574746f6e207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a696e7075742e627574746f6e312c20696e7075742e627574746f6e32207b0a09666f6e742d73697a653a2031656d3b0a7d0a0a612e627574746f6e312c20696e7075742e627574746f6e312c20696e7075742e627574746f6e332c20612e627574746f6e322c20696e7075742e627574746f6e32207b0a0977696474683a206175746f2021696d706f7274616e743b0a0970616464696e672d746f703a203170783b0a0970616464696e672d626f74746f6d3a203170783b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09636f6c6f723a20233030303b0a096261636b67726f756e643a2023464146414641206e6f6e65207265706561742d7820746f70206c6566743b0a7d0a0a612e627574746f6e312c20696e7075742e627574746f6e31207b0a09666f6e742d7765696768743a20626f6c643b0a09626f726465723a2031707820736f6c696420233636363636363b0a7d0a0a696e7075742e627574746f6e33207b0a0970616464696e673a20303b0a096d617267696e3a20303b0a096c696e652d6865696768743a203570783b0a096865696768743a20313270783b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a09666f6e742d76617269616e743a20736d616c6c2d636170733b0a7d0a0a2f2a20416c7465726e617469766520627574746f6e202a2f0a612e627574746f6e322c20696e7075742e627574746f6e322c20696e7075742e627574746f6e33207b0a09626f726465723a2031707820736f6c696420233636363636363b0a7d0a0a2f2a203c613e20627574746f6e20696e20746865207374796c65206f662074686520666f726d20627574746f6e73202a2f0a612e627574746f6e312c20612e627574746f6e313a6c696e6b2c20612e627574746f6e313a766973697465642c20612e627574746f6e313a6163746976652c20612e627574746f6e322c20612e627574746f6e323a6c696e6b2c20612e627574746f6e323a766973697465642c20612e627574746f6e323a616374697665207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20233030303030303b0a0970616464696e673a20327078203870783b0a096c696e652d6865696768743a20323530253b0a09766572746963616c2d616c69676e3a20746578742d626f74746f6d3b0a096261636b67726f756e642d706f736974696f6e3a2030203170783b0a7d0a0a2f2a20486f76657220737461746573202a2f0a612e627574746f6e313a686f7665722c20696e7075742e627574746f6e313a686f7665722c20612e627574746f6e323a686f7665722c20696e7075742e627574746f6e323a686f7665722c20696e7075742e627574746f6e333a686f766572207b0a09626f726465723a2031707820736f6c696420234243424342433b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a09636f6c6f723a20234243424342433b0a7d0a0a696e7075742e64697361626c6564207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233636363636363b0a7d0a0a2f2a20546f70696320616e6420666f72756d20536561726368202a2f0a2e7365617263682d626f78207b0a096d617267696e2d746f703a203370783b0a096d617267696e2d6c6566743a203570783b0a09666c6f61743a206c6566743b0a7d0a0a2e7365617263682d626f7820696e707574207b0a7d0a0a696e7075742e736561726368207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d706f736974696f6e3a206c656674203170783b0a0970616464696e672d6c6566743a20313770783b0a7d0a0a2e66756c6c207b2077696474683a203935253b207d0a2e6d656469756d207b2077696474683a203530253b7d0a2e6e6172726f77207b2077696474683a203235253b7d0a2e74696e79207b2077696474683a203130253b7d0a2f2a2070726f53696c766572205374796c6520536865657420547765616b730a0a5468657365207374796c6520646566696e6974696f6e7320617265206d61696e6c79204945207370656369666963200a747765616b732072657175697265642064756520746f2069747320706f6f722043535320737570706f72742e0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2a2068746d6c207461626c652c202a2068746d6c2073656c6563742c202a2068746d6c20696e707574207b20666f6e742d73697a653a20313030253b207d0a2a2068746d6c206872207b206d617267696e3a20303b207d0a2a2068746d6c207370616e2e636f726e6572732d746f702c202a2068746d6c207370616e2e636f726e6572732d626f74746f6d207b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e67696622293b207d0a2a2068746d6c207370616e2e636f726e6572732d746f70207370616e2c202a2068746d6c207370616e2e636f726e6572732d626f74746f6d207370616e207b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e67696622293b207d0a0a7461626c652e7461626c6531207b0a0977696474683a203939253b09092f2a204945203c20362062726f7773657273202a2f0a092f2a2054616e74656b206861636b202a2f0a09766f6963652d66616d696c793a20225c227d5c22223b0a09766f6963652d66616d696c793a20696e68657269743b0a0977696474683a20313030253b0a7d0a68746d6c3e626f6479207461626c652e7461626c6531207b2077696474683a20313030253b207d092f2a205265736574203130302520666f72206f70657261202a2f0a0a2a2068746d6c20756c2e746f7069636c697374206c69207b20706f736974696f6e3a2072656c61746976653b207d0a2a2068746d6c202e706f7374626f647920683320696d67207b20766572746963616c2d616c69676e3a206d6964646c653b207d0a0a2f2a20466f726d207374796c6573202a2f0a68746d6c3e626f6479206464206c6162656c20696e707574207b20766572746963616c2d616c69676e3a20746578742d626f74746f6d3b207d092f2a20416c69676e20636865636b626f7865732f726164696f20627574746f6e73206e6963656c79202a2f0a0a2a2068746d6c20696e7075742e627574746f6e312c202a2068746d6c20696e7075742e627574746f6e32207b0a0970616464696e672d626f74746f6d3a20303b0a096d617267696e2d626f74746f6d3a203170783b0a7d0a0a2f2a204d697363206c61796f7574207374796c6573202a2f0a2a2068746d6c202e636f6c756d6e312c202a2068746d6c202e636f6c756d6e32207b2077696474683a203435253b207d0a0a2f2a204e696365206d6574686f6420666f7220636c656172696e6720666c6f6174656420626c6f636b7320776974686f757420686176696e6720746f20696e7365727420616e79206578747261206d61726b757020286c696b65207370616365722061626f7665290a20202046726f6d20687474703a2f2f7777772e706f736974696f6e697365766572797468696e672e6e65742f65617379636c656172696e672e68746d6c200a23746162733a61667465722c20236d696e69746162733a61667465722c202e706f73743a61667465722c202e6e61766261723a61667465722c206669656c6473657420646c3a61667465722c20756c2e746f7069636c69737420646c3a61667465722c20756c2e6c696e6b6c6973743a61667465722c20646c2e706f6c6c733a6166746572207b0a09636f6e74656e743a20222e223b200a09646973706c61793a20626c6f636b3b200a096865696768743a20303b200a09636c6561723a20626f74683b200a097669736962696c6974793a2068696464656e3b0a7d2a2f0a0a2e636c6561726669782c2023746162732c20236d696e69746162732c206669656c6473657420646c2c20756c2e746f7069636c69737420646c2c20646c2e706f6c6c73207b0a096865696768743a2031253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a2076696577746f70696320666978202a2f0a2a2068746d6c202e706f7374207b0a096865696768743a203235253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a206e617662617220666978202a2f0a2a2068746d6c202e636c6561726669782c202a2068746d6c202e6e61766261722c20756c2e6c696e6b6c697374207b0a096865696768743a2034253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a2053696d706c652066697820736f20666f72756d20616e6420746f706963206c6973747320616c7761797320686176652061206d696e2d686569676874207365742c206576656e20696e204945360a0946726f6d20687474703a2f2f7777772e64757374696e6469617a2e636f6d2f6d696e2d6865696768742d666173742d6861636b202a2f0a646c2e69636f6e207b0a096d696e2d6865696768743a20333570783b0a096865696768743a206175746f2021696d706f7274616e743b0a096865696768743a20333570783b0a7d0a0a2a2068746d6c206c692e726f7720646c2e69636f6e206474207b0a096865696768743a20333570783b0a096f766572666c6f773a2076697369626c653b0a7d0a0a2a2068746d6c20237365617263682d626f78207b0a0977696474683a203235253b0a7d0a0a2f2a20436f72726563746c7920636c65617220666c6f6174696e6720666f722064657461696c73206f6e2070726f66696c652076696577202a2f0a2a3a66697273742d6368696c642b68746d6c20646c2e64657461696c73206464207b0a096d617267696e2d6c6566743a203330253b0a09666c6f61743a206e6f6e653b0a7d0a0a2a2068746d6c20646c2e64657461696c73206464207b0a096d617267696e2d6c6566743a203330253b0a09666c6f61743a206e6f6e653b0a7d0a0a2a2068746d6c202e666f72756d6267207461626c652e7461626c6531207b0a096d617267696e3a2030202d32707820307078202d3170783b0a7d0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220636f6d6d6f6e2e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a68746d6c2c20626f6479207b0a09636f6c6f723a20233533363438323b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a6831207b0a09636f6c6f723a20234646464646463b0a7d0a0a6832207b0a09636f6c6f723a20233238333133463b0a7d0a0a6833207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234343434343433b0a09636f6c6f723a20233131353039383b0a7d0a0a6872207b0a09626f726465722d636f6c6f723a20234646464646463b0a09626f726465722d746f702d636f6c6f723a20234343434343433b0a7d0a0a68722e646173686564207b0a09626f726465722d746f702d636f6c6f723a20234343434343433b0a7d0a0a2f2a2053656172636820626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a237365617263682d626f78207b0a09636f6c6f723a20234646464646463b0a7d0a0a237365617263682d626f7820236b6579776f726473207b0a096261636b67726f756e642d636f6c6f723a20234646463b0a7d0a0a237365617263682d626f7820696e707574207b0a09626f726465722d636f6c6f723a20233030373542303b0a7d0a0a2f2a20526f756e6420636f726e6572656420626f78657320616e64206261636b67726f756e64730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e686561646572626172207b0a096261636b67726f756e642d636f6c6f723a20233132413345423b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6865616465722e67696622293b0a09636f6c6f723a20234646464646463b0a7d0a0a2e6e6176626172207b0a096261636b67726f756e642d636f6c6f723a20236361646365623b0a7d0a0a2e666f72616267207b0a096261636b67726f756e642d636f6c6f723a20233030373662313b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6c6973742e67696622293b0a7d0a0a2e666f72756d6267207b0a096261636b67726f756e642d636f6c6f723a20233132413345423b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6865616465722e67696622293b0a7d0a0a2e70616e656c207b0a096261636b67726f756e642d636f6c6f723a20234543463146333b0a09636f6c6f723a20233238333133463b0a7d0a0a2e706f73743a746172676574202e636f6e74656e74207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e706f73743a7461726765742068332061207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e626731097b206261636b67726f756e642d636f6c6f723a20234543463346373b207d0a2e626732097b206261636b67726f756e642d636f6c6f723a20236531656266323b20207d0a2e626733097b206261636b67726f756e642d636f6c6f723a20236361646365623b207d0a0a2e756370726f776267207b0a096261636b67726f756e642d636f6c6f723a20234443444545323b0a7d0a0a2e6669656c64736267207b0a096261636b67726f756e642d636f6c6f723a20234537453845413b0a7d0a0a7370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e706e6722293b0a7d0a0a7370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e706e6722293b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e706e6722293b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e706e6722293b0a7d0a0a2f2a20486f72697a6f6e74616c206c697374730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a756c2e6e61766c696e6b73207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234646464646463b0a7d0a0a2f2a205461626c65207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a7461626c652e7461626c6531207468656164207468207b0a09636f6c6f723a20234646464646463b0a7d0a0a7461626c652e7461626c65312074626f6479207472207b0a09626f726465722d636f6c6f723a20234246433143463b0a7d0a0a7461626c652e7461626c65312074626f64792074723a686f7665722c207461626c652e7461626c65312074626f64792074722e686f766572207b0a096261636b67726f756e642d636f6c6f723a20234346453146363b0a09636f6c6f723a20233030303b0a7d0a0a7461626c652e7461626c6531207464207b0a09636f6c6f723a20233533363438323b0a7d0a0a7461626c652e7461626c65312074626f6479207464207b0a09626f726465722d746f702d636f6c6f723a20234641464146413b0a7d0a0a7461626c652e7461626c65312074626f6479207468207b0a09626f726465722d626f74746f6d2d636f6c6f723a20233030303030303b0a09636f6c6f723a20233333333333333b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a7461626c652e696e666f2074626f6479207468207b0a09636f6c6f723a20233030303030303b0a7d0a0a2f2a204d697363206c61796f7574207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a646c2e64657461696c73206474207b0a09636f6c6f723a20233030303030303b0a7d0a0a646c2e64657461696c73206464207b0a09636f6c6f723a20233533363438323b0a7d0a0a2e736570207b0a09636f6c6f723a20233131393844393b0a7d0a0a2f2a20506167696e6174696f6e0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2e706167696e6174696f6e207370616e207374726f6e67207b0a09636f6c6f723a20234646464646463b0a096261636b67726f756e642d636f6c6f723a20233436393242463b0a09626f726465722d636f6c6f723a20233436393242463b0a7d0a0a2e706167696e6174696f6e207370616e20612c202e706167696e6174696f6e207370616e20613a6c696e6b2c202e706167696e6174696f6e207370616e20613a766973697465642c202e706167696e6174696f6e207370616e20613a616374697665207b0a09636f6c6f723a20233543373538433b0a096261636b67726f756e642d636f6c6f723a20234543454445453b0a09626f726465722d636f6c6f723a20234234424143303b0a7d0a0a2e706167696e6174696f6e207370616e20613a686f766572207b0a09626f726465722d636f6c6f723a20233336384144323b0a096261636b67726f756e642d636f6c6f723a20233336384144323b0a09636f6c6f723a20234646463b0a7d0a0a2f2a20506167696e6174696f6e20696e2076696577666f72756d20666f72206d756c74697061676520746f70696373202a2f0a2e726f77202e706167696e6174696f6e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f70616765732e67696622293b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20612c206c692e706167696e6174696f6e207370616e2061207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20613a686f7665722c206c692e706167696e6174696f6e207370616e20613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20233336384144323b0a7d0a0a2f2a204d697363656c6c616e656f7573207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2e636f70797269676874207b0a09636f6c6f723a20233535353535353b0a7d0a0a2e6572726f72207b0a09636f6c6f723a20234243324134443b0a7d0a0a2e7265706f72746564207b0a096261636b67726f756e642d636f6c6f723a20234637454345463b0a7d0a0a6c692e7265706f727465643a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234543443544382021696d706f7274616e743b0a7d0a2e737469636b792c202e616e6e6f756e6365207b0a092f2a20796f752063616e206164642061206261636b67726f756e6420666f7220737469636b69657320616e6420616e6e6f756e63656d656e74732a2f0a7d0a0a6469762e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20234543443544383b0a09636f6c6f723a20234243324134443b0a7d0a0a702e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20234543443544383b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f72206c696e6b732e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a613a6c696e6b097b20636f6c6f723a20233130353238393b207d0a613a76697369746564097b20636f6c6f723a20233130353238393b207d0a613a686f766572097b20636f6c6f723a20234433313134313b207d0a613a616374697665097b20636f6c6f723a20233336384144323b207d0a0a2f2a204c696e6b73206f6e206772616469656e74206261636b67726f756e6473202a2f0a237365617263682d626f7820613a6c696e6b2c202e6e6176626720613a6c696e6b2c202e666f72756d6267202e68656164657220613a6c696e6b2c202e666f72616267202e68656164657220613a6c696e6b2c20746820613a6c696e6b207b0a09636f6c6f723a20234646464646463b0a7d0a0a237365617263682d626f7820613a766973697465642c202e6e6176626720613a766973697465642c202e666f72756d6267202e68656164657220613a766973697465642c202e666f72616267202e68656164657220613a766973697465642c20746820613a76697369746564207b0a09636f6c6f723a20234646464646463b0a7d0a0a237365617263682d626f7820613a686f7665722c202e6e6176626720613a686f7665722c202e666f72756d6267202e68656164657220613a686f7665722c202e666f72616267202e68656164657220613a686f7665722c20746820613a686f766572207b0a09636f6c6f723a20234138443846463b0a7d0a0a237365617263682d626f7820613a6163746976652c202e6e6176626720613a6163746976652c202e666f72756d6267202e68656164657220613a6163746976652c202e666f72616267202e68656164657220613a6163746976652c20746820613a616374697665207b0a09636f6c6f723a20234338453646463b0a7d0a0a2f2a204c696e6b7320666f7220666f72756d2f746f706963206c69737473202a2f0a612e666f72756d7469746c65207b0a09636f6c6f723a20233130353238393b0a7d0a0a2f2a20612e666f72756d7469746c653a76697369746564207b20636f6c6f723a20233130353238393b207d202a2f0a0a612e666f72756d7469746c653a686f766572207b0a09636f6c6f723a20234243324134443b0a7d0a0a612e666f72756d7469746c653a616374697665207b0a09636f6c6f723a20233130353238393b0a7d0a0a612e746f7069637469746c65207b0a09636f6c6f723a20233130353238393b0a7d0a0a2f2a20612e746f7069637469746c653a76697369746564207b20636f6c6f723a20233336384144323b207d202a2f0a0a612e746f7069637469746c653a686f766572207b0a09636f6c6f723a20234243324134443b0a7d0a0a612e746f7069637469746c653a616374697665207b0a09636f6c6f723a20233130353238393b0a7d0a0a2f2a20506f737420626f6479206c696e6b73202a2f0a2e706f73746c696e6b207b0a09636f6c6f723a20233336384144323b0a09626f726465722d626f74746f6d2d636f6c6f723a20233336384144323b0a7d0a0a2e706f73746c696e6b3a76697369746564207b0a09636f6c6f723a20233544384642443b0a09626f726465722d626f74746f6d2d636f6c6f723a20233636363636363b0a7d0a0a2e706f73746c696e6b3a616374697665207b0a09636f6c6f723a20233336384144323b0a7d0a0a2e706f73746c696e6b3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234430453446363b0a09636f6c6f723a20233044343437333b0a7d0a0a2e7369676e617475726520612c202e7369676e617475726520613a766973697465642c202e7369676e617475726520613a6163746976652c202e7369676e617475726520613a686f766572207b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a2f2a2050726f66696c65206c696e6b73202a2f0a2e706f737470726f66696c6520613a6c696e6b2c202e706f737470726f66696c6520613a6163746976652c202e706f737470726f66696c6520613a766973697465642c202e706f737470726f66696c652064742e617574686f722061207b0a09636f6c6f723a20233130353238393b0a7d0a0a2e706f737470726f66696c6520613a686f7665722c202e706f737470726f66696c652064742e617574686f7220613a686f766572207b0a09636f6c6f723a20234433313134313b0a7d0a0a2f2a2050726f66696c6520736561726368726573756c7473202a2f090a2e736561726368202e706f737470726f66696c652061207b0a09636f6c6f723a20233130353238393b0a7d0a0a2e736561726368202e706f737470726f66696c6520613a686f766572207b0a09636f6c6f723a20234433313134313b0a7d0a0a2f2a204261636b20746f20746f70206f662070616765202a2f0a612e746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f4241434b5f544f505f5352437d22293b0a7d0a0a612e746f7032207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f4241434b5f544f505f5352437d22293b0a7d0a0a2f2a204172726f77206c696e6b7320202a2f0a612e757009097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f75702e6769662229207d0a612e646f776e09097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f646f776e2e6769662229207d0a612e6c65667409097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f6c6566742e6769662229207d0a612e726967687409097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f72696768742e6769662229207d0a0a612e75703a686f766572207b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a612e6c6566743a686f766572207b0a09636f6c6f723a20233336384144323b0a7d0a0a612e72696768743a686f766572207b0a09636f6c6f723a20233336384144323b0a7d0a0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220636f6e74656e742e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a756c2e666f72756d73207b0a096261636b67726f756e642d636f6c6f723a20236565663566393b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6772616469656e742e67696622293b0a7d0a0a756c2e746f7069636c697374206c69207b0a09636f6c6f723a20233443354437373b0a7d0a0a756c2e746f7069636c697374206464207b0a09626f726465722d6c6566742d636f6c6f723a20234646464646463b0a7d0a0a2e72746c20756c2e746f7069636c697374206464207b0a09626f726465722d72696768742d636f6c6f723a20236666663b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a756c2e746f7069636c697374206c692e726f7720647420612e737562666f72756d2e72656164207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f535542464f52554d5f524541445f5352437d22293b0a7d0a0a756c2e746f7069636c697374206c692e726f7720647420612e737562666f72756d2e756e72656164207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f535542464f52554d5f554e524541445f5352437d22293b0a7d0a0a6c692e726f77207b0a09626f726465722d746f702d636f6c6f723a2020234646464646463b0a09626f726465722d626f74746f6d2d636f6c6f723a20233030363038463b0a7d0a0a6c692e726f77207374726f6e67207b0a09636f6c6f723a20233030303030303b0a7d0a0a6c692e726f773a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234636463444303b0a7d0a0a6c692e726f773a686f766572206464207b0a09626f726465722d6c6566742d636f6c6f723a20234343434343433b0a7d0a0a2e72746c206c692e726f773a686f766572206464207b0a09626f726465722d72696768742d636f6c6f723a20234343434343433b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a6c692e6865616465722064742c206c692e686561646572206464207b0a09636f6c6f723a20234646464646463b0a7d0a0a2f2a20466f72756d206c69737420636f6c756d6e207374796c6573202a2f0a756c2e746f7069636c6973742064642e7365617263686578747261207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20506f737420626f6479207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f7374626f6479207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20436f6e74656e7420636f6e7461696e6572207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e636f6e74656e74207b0a09636f6c6f723a20233333333333333b0a7d0a0a2e636f6e74656e742068322c202e70616e656c206832207b0a09636f6c6f723a20233131353039383b0a09626f726465722d626f74746f6d2d636f6c6f723a2020234343434343433b0a7d0a0a646c2e666171206474207b0a09636f6c6f723a20233333333333333b0a7d0a0a2e706f737468696c6974207b0a096261636b67726f756e642d636f6c6f723a20234633424643433b0a09636f6c6f723a20234243324134443b0a7d0a0a2f2a20506f7374207369676e6174757265202a2f0a2e7369676e6174757265207b0a09626f726465722d746f702d636f6c6f723a20234343434343433b0a7d0a0a2f2a20506f7374206e6f746963696573202a2f0a2e6e6f74696365207b0a09626f726465722d746f702d636f6c6f723a2020234343434343433b0a7d0a0a2f2a20424220436f6465207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a2051756f746520626c6f636b202a2f0a626c6f636b71756f7465207b0a096261636b67726f756e642d636f6c6f723a20234542454144443b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f71756f74652e67696622293b0a09626f726465722d636f6c6f723a234442444243453b0a7d0a0a2e72746c20626c6f636b71756f7465207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f71756f74655f72746c2e67696622293b0a7d0a0a626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a234546454544393b0a7d0a0a626c6f636b71756f746520626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a20234542454144443b0a7d0a0a2f2a20436f646520626c6f636b202a2f0a646c2e636f6465626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465722d636f6c6f723a20234339443244383b0a7d0a0a646c2e636f6465626f78206474207b0a09626f726465722d626f74746f6d2d636f6c6f723a2020234343434343433b0a7d0a0a646c2e636f6465626f7820636f6465207b0a09636f6c6f723a20233245384235373b0a7d0a0a2e73796e746178626709097b20636f6c6f723a20234646464646463b207d0a2e73796e746178636f6d6d656e74097b20636f6c6f723a20234646383030303b207d0a2e73796e74617864656661756c74097b20636f6c6f723a20233030303042423b207d0a2e73796e74617868746d6c09097b20636f6c6f723a20233030303030303b207d0a2e73796e7461786b6579776f7264097b20636f6c6f723a20233030373730303b207d0a2e73796e746178737472696e67097b20636f6c6f723a20234444303030303b207d0a0a2f2a204174746163686d656e74730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e617474616368626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465722d636f6c6f723a2020234339443244383b0a7d0a0a2e706d2d6d657373616765202e617474616368626f78207b0a096261636b67726f756e642d636f6c6f723a20234632463346333b0a7d0a0a2e617474616368626f78206464207b0a09626f726465722d746f702d636f6c6f723a20234339443244383b0a7d0a0a2e617474616368626f782070207b0a09636f6c6f723a20233636363636363b0a7d0a0a2e617474616368626f7820702e7374617473207b0a09636f6c6f723a20233636363636363b0a7d0a0a2e6174746163682d696d61676520696d67207b0a09626f726465722d636f6c6f723a20233939393939393b0a7d0a0a2f2a20496e6c696e6520696d616765207468756d626e61696c73202a2f0a0a646c2e66696c65206464207b0a09636f6c6f723a20233636363636363b0a7d0a0a646c2e7468756d626e61696c20696d67207b0a09626f726465722d636f6c6f723a20233636363636363b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a646c2e7468756d626e61696c206464207b0a09636f6c6f723a20233636363636363b0a7d0a0a646c2e7468756d626e61696c20647420613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545454545453b0a7d0a0a646c2e7468756d626e61696c20647420613a686f76657220696d67207b0a09626f726465722d636f6c6f723a20233336384144323b0a7d0a0a2f2a20506f737420706f6c6c207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a6669656c647365742e706f6c6c7320646c207b0a09626f726465722d746f702d636f6c6f723a20234443444545323b0a09636f6c6f723a20233636363636363b0a7d0a0a6669656c647365742e706f6c6c7320646c2e766f746564207b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e706f6c6c7320646420646976207b0a09636f6c6f723a20234646464646463b0a7d0a0a2e72746c202e706f6c6c626172312c202e72746c202e706f6c6c626172322c202e72746c202e706f6c6c626172332c202e72746c202e706f6c6c626172342c202e72746c202e706f6c6c62617235207b0a09626f726465722d72696768742d636f6c6f723a207472616e73706172656e743b0a7d0a0a2e706f6c6c62617231207b0a096261636b67726f756e642d636f6c6f723a20234141323334363b0a09626f726465722d626f74746f6d2d636f6c6f723a20233734313632433b0a09626f726465722d72696768742d636f6c6f723a20233734313632433b0a7d0a0a2e72746c202e706f6c6c62617231207b0a09626f726465722d6c6566742d636f6c6f723a20233734313632433b0a7d0a0a2e706f6c6c62617232207b0a096261636b67726f756e642d636f6c6f723a20234245314534413b0a09626f726465722d626f74746f6d2d636f6c6f723a20233843314333383b0a09626f726465722d72696768742d636f6c6f723a20233843314333383b0a7d0a0a2e72746c202e706f6c6c62617232207b0a09626f726465722d6c6566742d636f6c6f723a20233843314333383b0a7d0a0a2e706f6c6c62617233207b0a096261636b67726f756e642d636f6c6f723a20234431314134453b0a09626f726465722d626f74746f6d2d636f6c6f723a20234141323334363b0a09626f726465722d72696768742d636f6c6f723a20234141323334363b0a7d0a0a2e72746c202e706f6c6c62617233207b0a09626f726465722d6c6566742d636f6c6f723a20234141323334363b0a7d0a0a2e706f6c6c62617234207b0a096261636b67726f756e642d636f6c6f723a20234534313635333b0a09626f726465722d626f74746f6d2d636f6c6f723a20234245314534413b0a09626f726465722d72696768742d636f6c6f723a20234245314534413b0a7d0a0a2e72746c202e706f6c6c62617234207b0a09626f726465722d6c6566742d636f6c6f723a20234245314534413b0a7d0a0a2e706f6c6c62617235207b0a096261636b67726f756e642d636f6c6f723a20234638313135373b0a09626f726465722d626f74746f6d2d636f6c6f723a20234431314134453b0a09626f726465722d72696768742d636f6c6f723a20234431314134453b0a7d0a0a2e72746c202e706f6c6c62617235207b0a09626f726465722d6c6566742d636f6c6f723a20234431314134453b0a7d0a0a2f2a20506f737465722070726f66696c6520626c6f636b0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f737470726f66696c65207b0a09636f6c6f723a20233636363636363b0a09626f726465722d6c6566742d636f6c6f723a20234646464646463b0a7d0a0a2e72746c202e706f737470726f66696c65207b0a09626f726465722d72696768742d636f6c6f723a20234646464646463b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a2e706d202e706f737470726f66696c65207b0a09626f726465722d6c6566742d636f6c6f723a20234444444444443b0a7d0a0a2e72746c202e706d202e706f737470726f66696c65207b0a09626f726465722d72696768742d636f6c6f723a20234444444444443b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a2e706f737470726f66696c65207374726f6e67207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e6f6e6c696e65207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f494d4147455345545f4c414e475f504154487d2f69636f6e5f757365725f6f6e6c696e652e67696622293b0a7d0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220627574746f6e732e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a2042696720627574746f6e20696d61676573202a2f0a2e7265706c792d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f544f5049435f5245504c595f5352437d22293b207d0a2e706f73742d69636f6e207370616e09097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f544f5049435f4e45575f5352437d22293b207d0a2e6c6f636b65642d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f544f5049435f4c4f434b45445f5352437d22293b207d0a2e706d7265706c792d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f504d5f5245504c595f5352437d2229203b7d0a2e6e6577706d2d69636f6e207370616e20097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f504d5f4e45575f5352437d2229203b7d0a2e666f7277617264706d2d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f504d5f464f52574152445f5352437d2229203b7d0a0a612e7072696e74207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7072696e742e67696622293b0a7d0a0a612e73656e64656d61696c207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f73656e64656d61696c2e67696622293b0a7d0a0a612e666f6e7473697a65207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f666f6e7473697a652e67696622293b0a7d0a0a2f2a2049636f6e20696d616765730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e73697465686f6d650909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f686f6d652e67696622293b207d0a2e69636f6e2d6661710909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f6661712e67696622293b207d0a2e69636f6e2d6d656d6265727309090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f6d656d626572732e67696622293b207d0a2e69636f6e2d686f6d650909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f686f6d652e67696622293b207d0a2e69636f6e2d7563700909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7563702e67696622293b207d0a2e69636f6e2d726567697374657209090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f72656769737465722e67696622293b207d0a2e69636f6e2d6c6f676f757409090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f6c6f676f75742e67696622293b207d0a2e69636f6e2d626f6f6b6d61726b09090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f626f6f6b6d61726b2e67696622293b207d0a2e69636f6e2d62756d700909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f62756d702e67696622293b207d0a2e69636f6e2d73756273637269626509090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7375627363726962652e67696622293b207d0a2e69636f6e2d756e737562736372696265090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f756e7375627363726962652e67696622293b207d0a2e69636f6e2d70616765730909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f70616765732e67696622293b207d0a2e69636f6e2d73656172636809090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7365617263682e67696622293b207d0a0a2f2a2050726f66696c652026206e617669676174696f6e2069636f6e73202a2f0a2e656d61696c2d69636f6e2c202e656d61696c2d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f454d41494c5f5352437d22293b207d0a2e61696d2d69636f6e2c202e61696d2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f41494d5f5352437d22293b207d0a2e7961686f6f2d69636f6e2c202e7961686f6f2d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f5941484f4f5f5352437d22293b207d0a2e7765622d69636f6e2c202e7765622d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f5757575f5352437d22293b207d0a2e6d736e6d2d69636f6e2c202e6d736e6d2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f4d534e4d5f5352437d22293b207d0a2e6963712d69636f6e2c202e6963712d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f4943515f5352437d22293b207d0a2e6a61626265722d69636f6e2c202e6a61626265722d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f4a41424245525f5352437d22293b207d0a2e706d2d69636f6e2c202e706d2d69636f6e2061090909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f504d5f5352437d22293b207d0a2e71756f74652d69636f6e2c202e71756f74652d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f51554f54455f5352437d22293b207d0a0a2f2a204d6f64657261746f722069636f6e73202a2f0a2e7265706f72742d69636f6e2c202e7265706f72742d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f5245504f52545f5352437d22293b207d0a2e656469742d69636f6e2c202e656469742d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f454449545f5352437d22293b207d0a2e64656c6574652d69636f6e2c202e64656c6574652d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f44454c4554455f5352437d22293b207d0a2e696e666f2d69636f6e2c202e696e666f2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f494e464f5f5352437d22293b207d0a2e7761726e2d69636f6e2c202e7761726e2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f555345525f5741524e5f5352437d22293b207d202f2a204e6565642075706461746564207761726e2069636f6e202a2f0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f722063702e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a204d61696e20435020626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2363702d6d61696e2068332c202363702d6d61696e2068722c202363702d6d656e75206872207b0a09626f726465722d636f6c6f723a20234134423342463b0a7d0a0a2363702d6d61696e202e70616e656c206c692e726f77207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234235433143423b0a09626f726465722d746f702d636f6c6f723a20234639463946393b0a7d0a0a756c2e63706c697374207b0a09626f726465722d746f702d636f6c6f723a20234235433143423b0a7d0a0a2363702d6d61696e202e70616e656c206c692e6865616465722064642c202363702d6d61696e202e70616e656c206c692e686561646572206474207b0a09636f6c6f723a20233030303030303b0a7d0a0a2363702d6d61696e207461626c652e7461626c6531207468656164207468207b0a09636f6c6f723a20233333333333333b0a09626f726465722d626f74746f6d2d636f6c6f723a20233333333333333b0a7d0a0a2363702d6d61696e202e706d2d6d657373616765207b0a09626f726465722d636f6c6f723a20234442444545323b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2f2a20435020746162626564206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a23746162732061207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f74616273312e67696622293b0a7d0a0a23746162732061207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f74616273322e67696622293b0a09636f6c6f723a20233533363438323b0a7d0a0a237461627320613a686f766572207370616e207b0a09636f6c6f723a20234243324134443b0a7d0a0a2374616273202e6163746976657461622061207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234341444345423b0a7d0a0a2374616273202e6163746976657461622061207370616e207b0a09636f6c6f723a20233333333333333b0a7d0a0a2374616273202e61637469766574616220613a686f766572207370616e207b0a09636f6c6f723a20233030303030303b0a7d0a0a2f2a204d696e6920746162626564206d656e75207573656420696e204d43500a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a236d696e6974616273206c69207b0a096261636b67726f756e642d636f6c6f723a20234531454246323b0a7d0a0a236d696e6974616273206c692e616374697665746162207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a236d696e6974616273206c692e61637469766574616220612c20236d696e6974616273206c692e61637469766574616220613a686f766572207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20554350206e617669676174696f6e206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2f2a204c696e6b207374796c657320666f7220746865207375622d73656374696f6e206c696e6b73202a2f0a236e617669676174696f6e2061207b0a09636f6c6f723a20233333333b0a096261636b67726f756e642d636f6c6f723a20234232433243463b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6d656e752e67696622293b0a7d0a0a2e72746c20236e617669676174696f6e2061207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6d656e755f72746c2e67696622293b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a7d0a0a236e617669676174696f6e20613a686f766572207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d636f6c6f723a20236161626163363b0a09636f6c6f723a20234243324134443b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e2061207b0a09636f6c6f723a20234433313134313b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e20613a686f766572207b0a09636f6c6f723a20234433313134313b0a7d0a0a2f2a20507265666572656e6365732070616e65206c61796f75740a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2363702d6d61696e206832207b0a09636f6c6f723a20233333333333333b0a7d0a0a2363702d6d61696e202e70616e656c207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a2363702d6d61696e202e706d207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f702c202363702d6d656e75207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c656674322e67696622293b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f7269676874322e67696622293b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c656674322e67696622293b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f7269676874322e67696622293b0a7d0a0a2f2a20546f706963726576696577202a2f0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f702c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e67696622293b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e67696622293b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e67696622293b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e67696622293b0a7d0a0a2f2a20467269656e6473206c697374202a2f0a2e63702d6d696e69207b0a096261636b67726f756e642d636f6c6f723a20236565663566393b0a7d0a0a646c2e6d696e69206474207b0a09636f6c6f723a20233432353036373b0a7d0a0a2f2a20504d205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a20504d204d65737361676520686973746f7279202a2f0a2e63757272656e74207b0a09636f6c6f723a20233030303030302021696d706f7274616e743b0a7d0a0a2f2a20504d2070616e656c2061646a7573746d656e7473202a2f0a2e706d2d70616e656c2d6865616465722c0a2363702d6d61696e202e706d2d6d6573736167652d6e6176207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234134423342463b0a7d0a0a2f2a20504d206d61726b696e6720636f6c6f757273202a2f0a2e706d6c697374206c692e706d5f6d6573736167655f7265706f727465645f636f6c6f75722c202e706d5f6d6573736167655f7265706f727465645f636f6c6f7572207b0a09626f726465722d6c6566742d636f6c6f723a20234243324134443b0a09626f726465722d72696768742d636f6c6f723a20234243324134443b0a7d0a0a2e706d6c697374206c692e706d5f6d61726b65645f636f6c6f75722c202e706d5f6d61726b65645f636f6c6f7572207b0a09626f726465722d636f6c6f723a20234646363630303b0a7d0a0a2e706d6c697374206c692e706d5f7265706c6965645f636f6c6f75722c202e706d5f7265706c6965645f636f6c6f7572207b0a09626f726465722d636f6c6f723a20234139423843323b0a7d0a0a2e706d6c697374206c692e706d5f667269656e645f636f6c6f75722c202e706d5f667269656e645f636f6c6f7572207b0a09626f726465722d636f6c6f723a20233544384642443b0a7d0a0a2e706d6c697374206c692e706d5f666f655f636f6c6f75722c202e706d5f666f655f636f6c6f7572207b0a09626f726465722d636f6c6f723a20233030303030303b0a7d0a0a2f2a204176617461722067616c6c657279202a2f0a2367616c6c657279206c6162656c207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465722d636f6c6f723a20234343433b0a7d0a0a2367616c6c657279206c6162656c3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545453b0a7d0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220666f726d732e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a2047656e6572616c20666f726d207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a73656c656374207b0a09626f726465722d636f6c6f723a20233636363636363b0a096261636b67726f756e642d636f6c6f723a20234641464146413b0a09636f6c6f723a20233030303b0a7d0a0a6c6162656c207b0a09636f6c6f723a20233432353036373b0a7d0a0a6f7074696f6e2e64697361626c65642d6f7074696f6e207b0a09636f6c6f723a2067726179746578743b0a7d0a0a2f2a20446566696e6974696f6e206c697374206c61796f757420666f7220666f726d730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a6464206c6162656c207b0a09636f6c6f723a20233333333b0a7d0a0a2f2a20486f7665722065666665637473202a2f0a6669656c6473657420646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e6669656c64733220646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20696e68657269743b0a7d0a0a2f2a20517569636b2d6c6f67696e206f6e20696e6465782070616765202a2f0a6669656c647365742e717569636b2d6c6f67696e20696e7075742e696e707574626f78207b0a096261636b67726f756e642d636f6c6f723a20234632463346333b0a7d0a0a2f2a20506f7374696e672070616765207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a236d6573736167652d626f78207465787461726561207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20496e707574206669656c64207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e696e707574626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b200a09626f726465722d636f6c6f723a20234234424143303b0a09636f6c6f723a20233333333333333b0a7d0a0a2e696e707574626f783a686f766572207b0a09626f726465722d636f6c6f723a20233131413345413b0a7d0a0a2e696e707574626f783a666f637573207b0a09626f726465722d636f6c6f723a20233131413345413b0a09636f6c6f723a20233046343938373b0a7d0a0a2f2a20466f726d20627574746f6e207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a612e627574746f6e312c20696e7075742e627574746f6e312c20696e7075742e627574746f6e332c20612e627574746f6e322c20696e7075742e627574746f6e32207b0a09636f6c6f723a20233030303b0a096261636b67726f756e642d636f6c6f723a20234641464146413b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f627574746f6e2e67696622293b0a7d0a0a612e627574746f6e312c20696e7075742e627574746f6e31207b0a09626f726465722d636f6c6f723a20233636363636363b0a7d0a0a696e7075742e627574746f6e33207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a20416c7465726e617469766520627574746f6e202a2f0a612e627574746f6e322c20696e7075742e627574746f6e322c20696e7075742e627574746f6e33207b0a09626f726465722d636f6c6f723a20233636363636363b0a7d0a0a2f2a203c613e20627574746f6e20696e20746865207374796c65206f662074686520666f726d20627574746f6e73202a2f0a612e627574746f6e312c20612e627574746f6e313a6c696e6b2c20612e627574746f6e313a766973697465642c20612e627574746f6e313a6163746976652c20612e627574746f6e322c20612e627574746f6e323a6c696e6b2c20612e627574746f6e323a766973697465642c20612e627574746f6e323a616374697665207b0a09636f6c6f723a20233030303030303b0a7d0a0a2f2a20486f76657220737461746573202a2f0a612e627574746f6e313a686f7665722c20696e7075742e627574746f6e313a686f7665722c20612e627574746f6e323a686f7665722c20696e7075742e627574746f6e323a686f7665722c20696e7075742e627574746f6e333a686f766572207b0a09626f726465722d636f6c6f723a20234243324134443b0a09636f6c6f723a20234243324134443b0a7d0a0a696e7075742e736561726368207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f74657874626f785f7365617263682e67696622293b0a7d0a0a696e7075742e64697361626c6564207b0a09636f6c6f723a20233636363636363b0a7d0a);
INSERT INTO `phpbb_styles_theme` (`theme_id`, `theme_name`, `theme_copyright`, `theme_path`, `theme_storedb`, `theme_mtime`, `theme_data`) VALUES
(3, 'subsilver2', '&copy; phpBB Group, 2003', 'subsilver2', 0, 1267821444, '');
INSERT INTO `phpbb_styles_theme` (`theme_id`, `theme_name`, `theme_copyright`, `theme_path`, `theme_storedb`, `theme_mtime`, `theme_data`) VALUES
(6, '40Forty', '&copy; 2009 isCrump.com', '40Forty', 1, 1256806560, 0x2f2a2020706870424220332e30205374796c652053686565740a202020202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a095374796c65206e616d653a090970726f53696c7665720a094261736564206f6e207374796c653a0970726f53696c766572202874686973206973207468652064656661756c742070687042422033207374796c65290a094f726967696e616c20617574686f723a09737562426c7565202820687474703a2f2f7777772e737562426c75652e636f6d2f20290a094d6f6469666965642062793a09090a090a09436f7079726967687420323030362070687042422047726f7570202820687474703a2f2f7777772e70687062622e636f6d2f20290a202020202d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a2a2f0a0a2f2a2047656e6572616c2070726f53696c766572204d61726b7570205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2a207b0a092f2a2052657365742062726f77736572732064656661756c74206d617267696e2c2070616464696e6720616e6420666f6e742073697a6573202a2f0a096d617267696e3a20303b0a0970616464696e673a20303b0a7d0a0a68746d6c207b0a09666f6e742d73697a653a20313030253b0a092f2a20416c776179732073686f772061207363726f6c6c62617220666f722073686f7274207061676573202d2073746f707320746865206a756d70207768656e20746865207363726f6c6c62617220617070656172732e206e6f6e2d49452062726f7773657273202a2f0a096865696768743a20313030253b0a7d0a0a626f6479207b0a092f2a20546578742d53697a696e67207769746820656d733a20687474703a2f2f7777772e636c61676e75742e636f6d2f626c6f672f3334382f202a2f0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09636f6c6f723a20233832383238323b0a092f2a666f6e742d73697a653a2036322e35253b09090920546869732073657473207468652064656661756c7420666f6e742073697a6520746f206265206571756976616c656e7420746f2031307078202a2f0a09666f6e742d73697a653a20313070783b0a096d617267696e3a20303b0a0970616464696e673a2030707820303b0a0a7d0a0a23746c6f207b0a096261636b67726f756e642d696d6167653a2075726c287b545f5448454d455f504154487d2f696d616765732f746c6f2e676966293b0a096261636b67726f756e642d7265706561743a207265706561742d783b0a096261636b67726f756e642d6174746163686d656e743a2066697865643b0a7d0a0a0a0a6831207b0a092f2a20466f72756d206e616d65202a2f0a09666f6e742d66616d696c793a2022547265627563686574204d53222c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a096d617267696e2d72696768743a2032303070783b0a09636f6c6f723a20234646464646463b0a096d617267696e2d746f703a20313570783b0a09666f6e742d7765696768743a20626f6c643b0a09666f6e742d73697a653a2032656d3b0a7d0a0a6832207b0a092f2a20466f72756d20686561646572207469746c6573202a2f0a09666f6e742d66616d696c793a2022547265627563686574204d53222c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233366336633663b0a09666f6e742d73697a653a2032656d3b0a096d617267696e3a20302e38656d203020302e32656d20303b0a7d0a0a68322e736f6c6f207b0a096d617267696e2d626f74746f6d3a2031656d3b0a7d0a0a6833207b0a092f2a205375622d686561646572732028616c736f207573656420617320706f737420686561646572732c2062757420646566696e6564206c6174657229202a2f0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09666f6e742d7765696768743a20626f6c643b0a09746578742d7472616e73666f726d3a207570706572636173653b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234343434343433b0a096d617267696e2d626f74746f6d3a203370783b0a0970616464696e672d626f74746f6d3a203270783b0a09666f6e742d73697a653a20312e3035656d3b0a09636f6c6f723a20233938393839383b0a096d617267696e2d746f703a20323070783b0a7d0a0a6834207b0a092f2a20466f72756d20616e6420746f706963206c697374207469746c6573202a2f0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2053616e732d73657269663b0a09666f6e742d73697a653a20312e33656d3b0a7d0a0a70207b0a096c696e652d6865696768743a20312e33656d3b0a09666f6e742d73697a653a20312e31656d3b0a096d617267696e2d626f74746f6d3a20312e35656d3b0a7d0a0a696d67207b0a09626f726465722d77696474683a20303b0a7d0a0a6872207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a09626f726465723a2030206e6f6e6520234646464646463b0a09626f726465722d746f703a2031707820736f6c696420234343434343433b0a096865696768743a203170783b0a096d617267696e3a2035707820303b0a09646973706c61793a20626c6f636b3b0a09636c6561723a20626f74683b0a7d0a0a68722e646173686564207b0a09626f726465722d746f703a203170782064617368656420234343434343433b0a096d617267696e3a203130707820303b0a7d0a0a68722e64697669646572207b0a09646973706c61793a206e6f6e653b0a7d0a0a702e7269676874207b0a09746578742d616c69676e3a2072696768743b0a7d0a0a2f2a204d61696e20626c6f636b730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2377726170207b0a2020206d696e2d77696474683a2036353070783b0a2020206d617267696e3a307078206175746f3b0a20202070616464696e673a3070783b0a202020746578742d616c69676e3a6c6566743b0a20202077696474683a39303070783b0a202020626f726465723a2032707820736f6c696420236534613331663b0a2020206261636b67726f756e642d636f6c6f723a20236666663b0a7d0a0a237772617032207b0a0977696474683a2038383070783b0a202020206d617267696e3a307078206175746f3b0a2020202070616464696e673a3070783b0a7d0a0a0a2e6f6e6509097b20746578742d6465636f726174696f6e3a206e6f6e653b20666f6e742d776569676874203a20626f6c643b20666f6e742d73697a65203a20313170783b20636f6c6f72203a20236666656363393b20666f6e742d66616d696c793a207461686f6d613b2070616464696e672d6c6566743a203770783b2070616464696e672d72696768743a203770783b7d0a612e6f6e6509097b2070616464696e672d6c6566743a203770783b2070616464696e672d72696768743a203770783b207d0a612e6f6e653a686f766572207b20636f6c6f72203a20236164373330313b2070616464696e672d6c6566743a203770783b2070616464696e672d72696768743a203770783b2070616464696e672d626f74746f6d3a203670783b2070616464696e672d746f703a203570783b20666f6e742d776569676874203a20626f6c643b7d0a0a0a2373696d706c652d77726170207b0a0970616464696e673a2036707820313070783b0a7d0a0a23706167652d626f6479207b0a096d617267696e3a2034707820303b0a09636c6561723a20626f74683b0a7d0a0a23706167652d666f6f746572207b0a09636c6561723a20626f74683b0a7d0a0a23706167652d666f6f746572206833207b0a096d617267696e2d746f703a20323070783b0a7d0a0a236c6f676f207b0a0977696474683a2039303070783b0a096865696768743a2031383670783b0a096261636b67726f756e643a2075726c287b545f5448454d455f504154487d2f696d616765732f746f702e676966293b0a09666c6f61743a206c6566743b0a7d0a0a61236c6f676f3a686f766572207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a2053656172636820626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a237365617263682d626f78207b0a09636f6c6f723a20234646464646463b0a09706f736974696f6e3a2072656c61746976653b0a096d617267696e2d746f703a20333070783b0a096d617267696e2d72696768743a203570783b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a09746578742d616c69676e3a2072696768743b0a0977686974652d73706163653a206e6f777261703b202f2a20466f72204f70657261202a2f0a7d0a0a237365617263682d626f7820236b6579776f726473207b0a0977696474683a20393570783b0a096261636b67726f756e642d636f6c6f723a20234646463b0a7d0a0a237365617263682d626f7820696e707574207b0a09626f726465723a2031707820736f6c696420236230623062303b0a7d0a0a2f2a202e627574746f6e31207374796c6520646566696e6564206c617465722c206a75737420612066657720747765616b7320666f72207468652073656172636820627574746f6e2076657273696f6e202a2f0a237365617263682d626f7820696e7075742e627574746f6e31207b0a0970616464696e673a20317078203570783b0a7d0a0a237365617263682d626f78206c69207b0a09746578742d616c69676e3a2072696768743b0a096d617267696e2d746f703a203470783b0a7d0a0a237365617263682d626f7820696d67207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a096d617267696e2d72696768743a203370783b0a7d0a0a2f2a2053697465206465736372697074696f6e20616e64206c6f676f202a2f0a23736974652d6465736372697074696f6e207b0a09666c6f61743a206c6566743b0a0977696474683a203730253b0a7d0a0a23736974652d6465736372697074696f6e206831207b0a096d617267696e2d72696768743a20303b0a7d0a0a2f2a20526f756e6420636f726e6572656420626f78657320616e64206261636b67726f756e64730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e686561646572626172207b0a096261636b67726f756e643a2023656265626562206e6f6e65207265706561742d78203020303b0a09636f6c6f723a20234646464646463b0a096d617267696e2d626f74746f6d3a203470783b0a0970616464696e673a2030203570783b0a7d0a0a2e6e6176626172207b0a096261636b67726f756e642d636f6c6f723a20236562656265623b0a0970616464696e673a203020313070783b0a7d0a0a2e666f72616267207b0a096261636b67726f756e643a2023623162316231206e6f6e65207265706561742d78203020303b0a096d617267696e2d626f74746f6d3a203470783b0a0970616464696e673a2030203570783b0a09636c6561723a20626f74683b0a7d0a0a2e666f72756d6267207b0a096261636b67726f756e643a2023656265626562206e6f6e65207265706561742d78203020303b0a096d617267696e2d626f74746f6d3a203470783b0a0970616464696e673a2030203570783b0a09636c6561723a20626f74683b0a7d0a0a2e70616e656c207b0a096d617267696e2d626f74746f6d3a203470783b0a0970616464696e673a203020313070783b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a09636f6c6f723a20233366336633663b0a7d0a0a2e706f7374207b0a0970616464696e673a203020313070783b0a096d617267696e2d626f74746f6d3a203470783b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a7d0a0a2e706f73743a746172676574202e636f6e74656e74207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e706f73743a7461726765742068332061207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e626731097b206261636b67726f756e642d636f6c6f723a20236637663766373b7d0a2e626732097b206261636b67726f756e642d636f6c6f723a20236632663266323b207d0a2e626733097b206261636b67726f756e642d636f6c6f723a20236562656265623b207d0a0a2e726f776267207b0a096d617267696e3a203570782035707820327078203570783b0a7d0a0a2e756370726f776267207b0a096261636b67726f756e642d636f6c6f723a20236532653265323b0a7d0a0a2e6669656c64736267207b0a092f2a626f726465723a20317078202344424445453220736f6c69643b2a2f0a096261636b67726f756e642d636f6c6f723a20236561656165613b0a7d0a0a7370616e2e636f726e6572732d746f702c207370616e2e636f726e6572732d626f74746f6d2c207370616e2e636f726e6572732d746f70207370616e2c207370616e2e636f726e6572732d626f74746f6d207370616e207b0a09666f6e742d73697a653a203170783b0a096c696e652d6865696768743a203170783b0a09646973706c61793a20626c6f636b3b0a096865696768743a203570783b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a7370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a096d617267696e3a2030202d3570783b0a7d0a0a7370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a096d617267696e3a2030202d3570783b0a09636c6561723a20626f74683b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203130302520313030253b0a7d0a0a2e686561646267207370616e2e636f726e6572732d626f74746f6d207b0a096d617267696e2d626f74746f6d3a202d3170783b0a7d0a0a2e706f7374207370616e2e636f726e6572732d746f702c202e706f7374207370616e2e636f726e6572732d626f74746f6d2c202e70616e656c207370616e2e636f726e6572732d746f702c202e70616e656c207370616e2e636f726e6572732d626f74746f6d2c202e6e6176626172207370616e2e636f726e6572732d746f702c202e6e6176626172207370616e2e636f726e6572732d626f74746f6d207b0a096d617267696e3a2030202d313070783b0a7d0a0a2e72756c6573207370616e2e636f726e6572732d746f70207b0a096d617267696e3a2030202d3130707820357078202d313070783b0a7d0a0a2e72756c6573207370616e2e636f726e6572732d626f74746f6d207b0a096d617267696e3a20357078202d313070782030202d313070783b0a7d0a0a2f2a20486f72697a6f6e74616c206c697374730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a756c2e6c696e6b6c697374207b0a09646973706c61793a20626c6f636b3b0a096d617267696e3a20303b0a7d0a0a756c2e6c696e6b6c697374206c69207b0a09646973706c61793a20626c6f636b3b0a096c6973742d7374796c652d747970653a206e6f6e653b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b0a096d617267696e2d72696768743a203570783b0a09666f6e742d73697a653a20312e31656d3b0a096c696e652d6865696768743a20322e32656d3b0a7d0a0a756c2e6c696e6b6c697374206c692e7269676874736964652c20702e726967687473696465207b0a09666c6f61743a2072696768743b0a096d617267696e2d72696768743a20303b0a096d617267696e2d6c6566743a203570783b0a09746578742d616c69676e3a2072696768743b0a7d0a0a756c2e6e61766c696e6b73207b0a0970616464696e672d626f74746f6d3a203170783b0a096d617267696e2d626f74746f6d3a203170783b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234646464646463b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a756c2e6c65667473696465207b0a09666c6f61743a206c6566743b0a096d617267696e2d6c6566743a20303b0a096d617267696e2d72696768743a203570783b0a09746578742d616c69676e3a206c6566743b0a7d0a0a756c2e726967687473696465207b0a09666c6f61743a2072696768743b0a096d617267696e2d6c6566743a203570783b0a096d617267696e2d72696768743a202d3570783b0a09746578742d616c69676e3a2072696768743b0a7d0a0a2f2a205461626c65207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a7461626c652e7461626c6531207b0a092f2a2053656520747765616b732e637373202a2f0a7d0a0a237563702d6d61696e207461626c652e7461626c6531207b0a0970616464696e673a203270783b0a7d0a0a7461626c652e7461626c6531207468656164207468207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09746578742d7472616e73666f726d3a207570706572636173653b0a09636f6c6f723a20234646464646463b0a096c696e652d6865696768743a20312e33656d3b0a09666f6e742d73697a653a2031656d3b0a0970616464696e673a2030203020347078203370783b0a7d0a0a7461626c652e7461626c6531207468656164207468207370616e207b0a0970616464696e672d6c6566743a203770783b0a7d0a0a7461626c652e7461626c65312074626f6479207472207b0a09626f726465723a2031707820736f6c696420236366636663663b0a7d0a0a7461626c652e7461626c65312074626f64792074723a686f7665722c207461626c652e7461626c65312074626f64792074722e686f766572207b0a096261636b67726f756e642d636f6c6f723a20236636663666363b0a09636f6c6f723a20233030303b0a7d0a0a7461626c652e7461626c6531207464207b0a09636f6c6f723a20233661366136613b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a7461626c652e7461626c65312074626f6479207464207b0a0970616464696e673a203570783b0a09626f726465722d746f703a2031707820736f6c696420234641464146413b0a7d0a0a7461626c652e7461626c65312074626f6479207468207b0a0970616464696e673a203570783b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233030303030303b0a09746578742d616c69676e3a206c6566743b0a09636f6c6f723a20233333333333333b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2f2a20537065636966696320636f6c756d6e207374796c6573202a2f0a7461626c652e7461626c6531202e6e616d6509097b20746578742d616c69676e3a206c6566743b207d0a7461626c652e7461626c6531202e706f73747309097b20746578742d616c69676e3a2063656e7465722021696d706f7274616e743b2077696474683a2037253b207d0a7461626c652e7461626c6531202e6a6f696e6564097b20746578742d616c69676e3a206c6566743b2077696474683a203135253b207d0a7461626c652e7461626c6531202e616374697665097b20746578742d616c69676e3a206c6566743b2077696474683a203135253b207d0a7461626c652e7461626c6531202e6d61726b09097b20746578742d616c69676e3a2063656e7465723b2077696474683a2037253b207d0a7461626c652e7461626c6531202e696e666f09097b20746578742d616c69676e3a206c6566743b2077696474683a203330253b207d0a7461626c652e7461626c6531202e696e666f20646976097b2077696474683a20313030253b2077686974652d73706163653a206e6f777261703b206f766572666c6f773a2068696464656e3b207d0a7461626c652e7461626c6531202e6175746f636f6c097b206c696e652d6865696768743a2032656d3b2077686974652d73706163653a206e6f777261703b207d0a7461626c652e7461626c6531207468656164202e6175746f636f6c207b2070616464696e672d6c6566743a2031656d3b207d0a0a7461626c652e7461626c6531207370616e2e72616e6b2d696d67207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a7d0a0a7461626c652e696e666f207464207b0a0970616464696e673a203370783b0a7d0a0a7461626c652e696e666f2074626f6479207468207b0a0970616464696e673a203370783b0a09746578742d616c69676e3a2072696768743b0a09766572746963616c2d616c69676e3a20746f703b0a09636f6c6f723a20233030303030303b0a09666f6e742d7765696768743a206e6f726d616c3b0a7d0a0a2e666f72756d6267207461626c652e7461626c6531207b0a096d617267696e3a2030202d327078202d317078202d3170783b0a7d0a0a2f2a204d697363206c61796f7574207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2f2a20636f6c756d6e5b312d325d207374796c65732061726520636f6e7461696e65727320666f722074776f20636f6c756d6e206c61796f757473200a202020416c736f2073656520747765616b732e637373202a2f0a2e636f6c756d6e31207b0a09666c6f61743a206c6566743b0a09636c6561723a206c6566743b0a0977696474683a203439253b0a7d0a0a2e636f6c756d6e32207b0a09666c6f61743a2072696768743b0a09636c6561723a2072696768743b0a0977696474683a203439253b0a7d0a0a2f2a2047656e6572616c20636c617373657320666f7220706c6163696e6720666c6f6174696e6720626c6f636b73202a2f0a2e6c6566742d626f78207b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b0a09746578742d616c69676e3a206c6566743b0a7d0a0a2e72696768742d626f78207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a09746578742d616c69676e3a2072696768743b0a7d0a0a646c2e64657461696c73207b0a092f2a666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b2a2f0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a646c2e64657461696c73206474207b0a09666c6f61743a206c6566743b0a09636c6561723a206c6566743b0a0977696474683a203330253b0a09746578742d616c69676e3a2072696768743b0a09636f6c6f723a20233030303030303b0a09646973706c61793a20626c6f636b3b0a7d0a0a646c2e64657461696c73206464207b0a096d617267696e2d6c6566743a20303b0a0970616464696e672d6c6566743a203570783b0a096d617267696e2d626f74746f6d3a203570783b0a09636f6c6f723a20233832383238323b0a09666c6f61743a206c6566743b0a0977696474683a203635253b0a7d0a0a2f2a20506167696e6174696f6e0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e706167696e6174696f6e207b0a096865696768743a2031253b202f2a20494520747765616b2028686f6c6c79206861636b29202a2f0a0977696474683a206175746f3b0a09746578742d616c69676e3a2072696768743b0a096d617267696e2d746f703a203570783b0a09666c6f61743a2072696768743b0a7d0a0a2e706167696e6174696f6e207370616e2e706167652d736570207b0a09646973706c61793a206e6f6e653b0a7d0a0a6c692e706167696e6174696f6e207b0a096d617267696e2d746f703a20303b0a7d0a0a2e706167696e6174696f6e207374726f6e672c202e706167696e6174696f6e2062207b0a09666f6e742d7765696768743a206e6f726d616c3b0a7d0a0a2e706167696e6174696f6e207370616e207374726f6e67207b0a0970616464696e673a2030203270783b0a096d617267696e3a2030203270783b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20234646464646463b0a096261636b67726f756e642d636f6c6f723a20236266626662663b0a09626f726465723a2031707820736f6c696420236266626662663b0a09666f6e742d73697a653a20302e39656d3b0a7d0a0a2e706167696e6174696f6e207370616e20612c202e706167696e6174696f6e207370616e20613a6c696e6b2c202e706167696e6174696f6e207370616e20613a766973697465642c202e706167696e6174696f6e207370616e20613a616374697665207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20233734373437343b0a096d617267696e3a2030203270783b0a0970616464696e673a2030203270783b0a096261636b67726f756e642d636f6c6f723a20236565656565653b0a09626f726465723a2031707820736f6c696420236261626162613b0a09666f6e742d73697a653a20302e39656d3b0a096c696e652d6865696768743a20312e35656d3b0a7d0a0a2e706167696e6174696f6e207370616e20613a686f766572207b0a09626f726465722d636f6c6f723a20236432643264323b0a096261636b67726f756e642d636f6c6f723a20236432643264323b0a09636f6c6f723a20234646463b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2e706167696e6174696f6e20696d67207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a7d0a0a2f2a20506167696e6174696f6e20696e2076696577666f72756d20666f72206d756c74697061676520746f70696373202a2f0a2e726f77202e706167696e6174696f6e207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a096d617267696e2d746f703a20303b0a0970616464696e673a2031707820302031707820313570783b0a09666f6e742d73697a653a20302e39656d3b0a096261636b67726f756e643a206e6f6e65203020353025206e6f2d7265706561743b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20612c206c692e706167696e6174696f6e207370616e2061207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20613a686f7665722c206c692e706167696e6174696f6e207370616e20613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236432643264323b0a7d0a0a2f2a204d697363656c6c616e656f7573207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a23666f72756d2d7065726d697373696f6e73207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a0970616464696e672d6c6566743a203570783b0a096d617267696e2d6c6566743a203570783b0a096d617267696e2d746f703a20313070783b0a09746578742d616c69676e3a2072696768743b0a7d0a0a2e636f70797269676874207b0a0970616464696e673a203570783b0a09746578742d616c69676e3a2063656e7465723b0a09636f6c6f723a20233535353535353b0a7d0a0a2e736d616c6c207b0a09666f6e742d73697a653a20302e39656d2021696d706f7274616e743b0a7d0a0a2e7469746c657370616365207b0a096d617267696e2d626f74746f6d3a20313570783b0a7d0a0a2e6865616465727370616365207b0a096d617267696e2d746f703a20323070783b0a7d0a0a2e6572726f72207b0a09636f6c6f723a20236263626362633b0a09666f6e742d7765696768743a20626f6c643b0a09666f6e742d73697a653a2031656d3b0a7d0a0a2e7265706f72746564207b0a096261636b67726f756e642d636f6c6f723a20236637663766373b0a7d0a0a6c692e7265706f727465643a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236563656365633b0a7d0a0a6469762e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20236563656365633b0a09636f6c6f723a20236263626362633b0a0970616464696e673a203020313070783b0a096d617267696e3a203130707820303b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a6469762e72756c657320756c207b0a096d617267696e2d6c6566743a20323070783b0a7d0a0a702e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20236563656365633b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0970616464696e673a203570783b0a7d0a0a702e72756c657320696d67207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a7d0a0a702e72756c65732061207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a09636c6561723a20626f74683b0a7d0a0a23746f70207b0a09706f736974696f6e3a206162736f6c7574653b0a09746f703a202d323070783b0a7d0a0a2e636c656172207b0a09646973706c61793a20626c6f636b3b0a09636c6561723a20626f74683b0a09666f6e742d73697a653a203170783b0a096c696e652d6865696768743a203170783b0a096261636b67726f756e643a207472616e73706172656e743b0a7d0a2f2a2070726f53696c766572204c696e6b205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a613a6c696e6b097b20636f6c6f723a20233839383938393b20746578742d6465636f726174696f6e3a206e6f6e653b207d0a613a76697369746564097b20636f6c6f723a20233839383938393b20746578742d6465636f726174696f6e3a206e6f6e653b207d0a613a686f766572097b20636f6c6f723a20236433643364333b20746578742d6465636f726174696f6e3a20756e6465726c696e653b207d0a613a616374697665097b20636f6c6f723a20236432643264323b20746578742d6465636f726174696f6e3a206e6f6e653b207d0a0a2f2a20436f6c6f7572656420757365726e616d6573202a2f0a2e757365726e616d652d636f6c6f75726564207b0a09666f6e742d7765696768743a20626f6c643b0a09646973706c61793a20696e6c696e652021696d706f7274616e743b0a7d0a0a2f2a204c696e6b73206f6e206772616469656e74206261636b67726f756e6473202a2f0a237365617263682d626f7820613a6c696e6b2c202e6e6176626720613a6c696e6b2c202e666f72756d6267202e68656164657220613a6c696e6b2c202e666f72616267202e68656164657220613a6c696e6b2c20746820613a6c696e6b207b0a09636f6c6f723a20234646464646463b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a237365617263682d626f7820613a766973697465642c202e6e6176626720613a766973697465642c202e666f72756d6267202e68656164657220613a766973697465642c202e666f72616267202e68656164657220613a766973697465642c20746820613a76697369746564207b0a09636f6c6f723a20234646464646463b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a237365617263682d626f7820613a686f7665722c202e6e6176626720613a686f7665722c202e666f72756d6267202e68656164657220613a686f7665722c202e666f72616267202e68656164657220613a686f7665722c20746820613a686f766572207b0a09636f6c6f723a20236666666666663b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a7d0a0a237365617263682d626f7820613a6163746976652c202e6e6176626720613a6163746976652c202e666f72756d6267202e68656164657220613a6163746976652c202e666f72616267202e68656164657220613a6163746976652c20746820613a616374697665207b0a09636f6c6f723a20236666666666663b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a204c696e6b7320666f7220666f72756d2f746f706963206c69737473202a2f0a612e666f72756d7469746c65207b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2048656c7665746963612c20417269616c2c2053616e732d73657269663b0a09666f6e742d73697a653a20312e32656d3b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a20612e666f72756d7469746c653a76697369746564207b20636f6c6f723a20233839383938393b207d202a2f0a0a612e666f72756d7469746c653a686f766572207b0a09636f6c6f723a20236263626362633b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a7d0a0a612e666f72756d7469746c653a616374697665207b0a09636f6c6f723a20233839383938393b0a7d0a0a612e746f7069637469746c65207b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2048656c7665746963612c20417269616c2c2053616e732d73657269663b0a09666f6e742d73697a653a20312e32656d3b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a20612e746f7069637469746c653a76697369746564207b20636f6c6f723a20236432643264323b207d202a2f0a0a612e746f7069637469746c653a686f766572207b0a09636f6c6f723a20236263626362633b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a7d0a0a612e746f7069637469746c653a616374697665207b0a09636f6c6f723a20233839383938393b0a7d0a0a2f2a20506f737420626f6479206c696e6b73202a2f0a2e706f73746c696e6b207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20236432643264323b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236432643264323b0a0970616464696e672d626f74746f6d3a20303b0a7d0a0a2e706f73746c696e6b3a76697369746564207b0a09636f6c6f723a20236264626462643b0a09626f726465722d626f74746f6d2d7374796c653a20646f747465643b0a09626f726465722d626f74746f6d2d636f6c6f723a20233636363636363b0a7d0a0a2e706f73746c696e6b3a616374697665207b0a09636f6c6f723a20236432643264323b0a7d0a0a2e706f73746c696e6b3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236636663666363b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20233430343034303b0a7d0a0a2e7369676e617475726520612c202e7369676e617475726520613a766973697465642c202e7369676e617475726520613a6163746976652c202e7369676e617475726520613a686f766572207b0a09626f726465723a206e6f6e653b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a2f2a2050726f66696c65206c696e6b73202a2f0a2e706f737470726f66696c6520613a6c696e6b2c202e706f737470726f66696c6520613a6163746976652c202e706f737470726f66696c6520613a766973697465642c202e706f737470726f66696c652064742e617574686f722061207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2e706f737470726f66696c6520613a686f7665722c202e706f737470726f66696c652064742e617574686f7220613a686f766572207b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b0a09636f6c6f723a20236433643364333b0a7d0a0a0a2f2a2050726f66696c6520736561726368726573756c7473202a2f090a2e736561726368202e706f737470726f66696c652061207b0a09636f6c6f723a20233839383938393b0a09746578742d6465636f726174696f6e3a206e6f6e653b200a09666f6e742d7765696768743a206e6f726d616c3b0a7d0a0a2e736561726368202e706f737470726f66696c6520613a686f766572207b0a09636f6c6f723a20236433643364333b0a09746578742d6465636f726174696f6e3a20756e6465726c696e653b200a7d0a0a2f2a204261636b20746f20746f70206f662070616765202a2f0a2e6261636b32746f70207b0a09636c6561723a20626f74683b0a096865696768743a20313170783b0a09746578742d616c69676e3a2072696768743b0a7d0a0a612e746f70207b0a096261636b67726f756e643a206e6f6e65206e6f2d72657065617420746f70206c6566743b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a0977696474683a207b494d475f49434f4e5f4241434b5f544f505f57494454487d70783b0a096865696768743a207b494d475f49434f4e5f4241434b5f544f505f4845494748547d70783b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a096f766572666c6f773a2068696464656e3b0a096c65747465722d73706163696e673a203130303070783b0a09746578742d696e64656e743a20313170783b0a7d0a0a612e746f7032207b0a096261636b67726f756e643a206e6f6e65206e6f2d7265706561742030203530253b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a0970616464696e672d6c6566743a20313570783b0a7d0a0a2f2a204172726f77206c696e6b7320202a2f0a612e757009097b206261636b67726f756e643a206e6f6e65206e6f2d726570656174206c6566742063656e7465723b207d0a612e646f776e09097b206261636b67726f756e643a206e6f6e65206e6f2d7265706561742072696768742063656e7465723b207d0a612e6c65667409097b206261636b67726f756e643a206e6f6e65206e6f2d72657065617420337078203630253b207d0a612e726967687409097b206261636b67726f756e643a206e6f6e65206e6f2d72657065617420393525203630253b207d0a0a612e75702c20612e75703a6c696e6b2c20612e75703a6163746976652c20612e75703a76697369746564207b0a0970616464696e672d6c6566743a20313070783b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09626f726465722d626f74746f6d2d77696474683a20303b0a7d0a0a612e75703a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a206c65667420746f703b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a612e646f776e2c20612e646f776e3a6c696e6b2c20612e646f776e3a6163746976652c20612e646f776e3a76697369746564207b0a0970616464696e672d72696768743a20313070783b0a7d0a0a612e646f776e3a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a20726967687420626f74746f6d3b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a612e6c6566742c20612e6c6566743a6163746976652c20612e6c6566743a76697369746564207b0a0970616464696e672d6c6566743a20313270783b0a7d0a0a612e6c6566743a686f766572207b0a09636f6c6f723a20236432643264323b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2030203630253b0a7d0a0a612e72696768742c20612e72696768743a6163746976652c20612e72696768743a76697369746564207b0a0970616464696e672d72696768743a20313270783b0a7d0a0a612e72696768743a686f766572207b0a09636f6c6f723a20236432643264323b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2031303025203630253b0a7d0a2f2a2070726f53696c76657220436f6e74656e74205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a756c2e746f7069636c697374207b0a09646973706c61793a20626c6f636b3b0a096c6973742d7374796c652d747970653a206e6f6e653b0a096d617267696e3a20303b0a7d0a0a756c2e666f72756d73207b0a096261636b67726f756e643a2023663966396639206e6f6e65207265706561742d78203020303b0a7d0a0a756c2e746f7069636c697374206c69207b0a09646973706c61793a20626c6f636b3b0a096c6973742d7374796c652d747970653a206e6f6e653b0a09636f6c6f723a20233737373737373b0a096d617267696e3a20303b0a7d0a0a756c2e746f7069636c69737420646c207b0a09706f736974696f6e3a2072656c61746976653b0a7d0a0a756c2e746f7069636c697374206c692e726f7720646c207b0a0970616464696e673a2032707820303b0a7d0a0a756c2e746f7069636c697374206474207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a206c6566743b0a0977696474683a203530253b0a09666f6e742d73697a653a20312e31656d3b0a0970616464696e672d6c6566743a203570783b0a0970616464696e672d72696768743a203570783b0a7d0a0a756c2e746f7069636c697374206464207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a206c6566743b0a09626f726465722d6c6566743a2031707820736f6c696420234646464646463b0a0970616464696e673a2034707820303b0a7d0a0a756c2e746f7069636c6973742064666e207b0a092f2a204c6162656c7320666f7220706f73742f7669657720636f756e7473202a2f0a09646973706c61793a206e6f6e653b0a7d0a0a756c2e746f7069636c697374206c692e726f7720647420612e737562666f72756d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2030203530253b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a09706f736974696f6e3a2072656c61746976653b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e673a20302030203020313270783b0a7d0a0a2e666f72756d2d696d616765207b0a09666c6f61743a206c6566743b0a0970616464696e672d746f703a203570783b0a096d617267696e2d72696768743a203570783b0a7d0a0a6c692e726f77207b0a09626f726465722d746f703a2031707820736f6c696420234646464646463b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233866386638663b0a7d0a0a6c692e726f77207374726f6e67207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233030303030303b0a7d0a0a6c692e726f773a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236636663666363b0a7d0a0a6c692e726f773a686f766572206464207b0a09626f726465722d6c6566742d636f6c6f723a20234343434343433b0a7d0a0a6c692e6865616465722064742c206c692e686561646572206464207b0a096c696e652d6865696768743a2031656d3b0a09626f726465722d6c6566742d77696474683a20303b0a096d617267696e3a2032707820302034707820303b0a09636f6c6f723a20234646464646463b0a0970616464696e672d746f703a203270783b0a0970616464696e672d626f74746f6d3a203270783b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09746578742d7472616e73666f726d3a207570706572636173653b0a7d0a0a6c692e686561646572206474207b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a6c692e686561646572206464207b0a096d617267696e2d6c6566743a203170783b0a7d0a0a6c692e68656164657220646c2e69636f6e207b0a096d696e2d6865696768743a20303b0a7d0a0a6c692e68656164657220646c2e69636f6e206474207b0a092f2a20547765616b20666f72206865616465727320616c69676e6d656e74207768656e20666f6c6465722069636f6e2075736564202a2f0a0970616464696e672d6c6566743a20303b0a0970616464696e672d72696768743a20353070783b0a7d0a0a2f2a20466f72756d206c69737420636f6c756d6e207374796c6573202a2f0a646c2e69636f6e207b0a096d696e2d6865696768743a20333570783b0a096261636b67726f756e642d706f736974696f6e3a2031307078203530253b09092f2a20506f736974696f6e206f6620666f6c6465722069636f6e202a2f0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a646c2e69636f6e206474207b0a0970616464696e672d6c6566743a20343570783b09090909092f2a20537061636520666f7220666f6c6465722069636f6e202a2f0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d706f736974696f6e3a20357078203935253b09092f2a20506f736974696f6e206f6620746f7069632069636f6e202a2f0a7d0a0a64642e706f7374732c2064642e746f706963732c2064642e7669657773207b0a0977696474683a2038253b0a09746578742d616c69676e3a2063656e7465723b0a096c696e652d6865696768743a20322e32656d3b0a09666f6e742d73697a653a20312e32656d3b0a7d0a0a64642e6c617374706f7374207b0a0977696474683a203235253b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e7265646972656374207b0a09666f6e742d73697a653a20312e31656d3b0a096c696e652d6865696768743a20322e35656d3b0a7d0a0a64642e6d6f6465726174696f6e207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e6c617374706f7374207370616e2c20756c2e746f7069636c6973742064642e7365617263686279207370616e2c20756c2e746f7069636c6973742064642e696e666f207370616e2c20756c2e746f7069636c6973742064642e74696d65207370616e2c2064642e7265646972656374207370616e2c2064642e6d6f6465726174696f6e207370616e207b0a09646973706c61793a20626c6f636b3b0a0970616464696e672d6c6566743a203570783b0a7d0a0a64642e74696d65207b0a0977696474683a206175746f3b0a096c696e652d6865696768743a20323030253b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e6578747261207b0a0977696474683a203132253b0a096c696e652d6865696768743a20323030253b0a09746578742d616c69676e3a2063656e7465723b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e6d61726b207b0a09666c6f61743a2072696768742021696d706f7274616e743b0a0977696474683a2039253b0a09746578742d616c69676e3a2063656e7465723b0a096c696e652d6865696768743a20323030253b0a09666f6e742d73697a653a20312e32656d3b0a7d0a0a64642e696e666f207b0a0977696474683a203330253b0a7d0a0a64642e6f7074696f6e207b0a0977696474683a203135253b0a096c696e652d6865696768743a20323030253b0a09746578742d616c69676e3a2063656e7465723b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a64642e7365617263686279207b0a0977696474683a203437253b0a09666f6e742d73697a653a20312e31656d3b0a096c696e652d6865696768743a2031656d3b0a7d0a0a756c2e746f7069636c6973742064642e7365617263686578747261207b0a096d617267696e2d6c6566743a203570783b0a0970616464696e673a20302e32656d20303b0a09666f6e742d73697a653a20312e31656d3b0a09636f6c6f723a20233333333333333b0a09626f726465722d6c6566743a206e6f6e653b0a09636c6561723a20626f74683b0a0977696474683a203938253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a20436f6e7461696e657220666f7220706f73742f7265706c7920627574746f6e7320616e6420706167696e6174696f6e202a2f0a2e746f7069632d616374696f6e73207b0a096d617267696e2d626f74746f6d3a203370783b0a09666f6e742d73697a653a20312e31656d3b0a096865696768743a20323870783b0a096d696e2d6865696768743a20323870783b0a7d0a6469765b636c6173735d2e746f7069632d616374696f6e73207b0a096865696768743a206175746f3b0a7d0a0a2f2a20506f737420626f6479207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f7374626f6479207b0a0970616464696e673a20303b0a096c696e652d6865696768743a20312e3438656d3b0a09636f6c6f723a20233333333333333b0a0977696474683a203736253b0a09666c6f61743a206c6566743b0a09636c6561723a20626f74683b0a7d0a0a2e706f7374626f6479202e69676e6f7265207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2e706f7374626f64792068332e6669727374207b0a092f2a2054686520666972737420706f7374206f6e20746865207061676520757365732074686973202a2f0a09666f6e742d73697a653a20312e37656d3b0a7d0a0a2e706f7374626f6479206833207b0a092f2a20506f7374626f6479207265717569726573206120646966666572656e7420683320666f726d6174202d20736f206368616e67652069742068657265202a2f0a09666f6e742d73697a653a20312e35656d3b0a0970616464696e673a203270782030203020303b0a096d617267696e3a2030203020302e33656d20302021696d706f7274616e743b0a09746578742d7472616e73666f726d3a206e6f6e653b0a09626f726465723a206e6f6e653b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a096c696e652d6865696768743a20313235253b0a7d0a0a2e706f7374626f647920683320696d67207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a09766572746963616c2d616c69676e3a20626f74746f6d3b0a7d0a0a2e706f7374626f6479202e636f6e74656e74207b0a09666f6e742d73697a653a20312e33656d3b0a7d0a0a2e736561726368202e706f7374626f6479207b0a0977696474683a203638250a7d0a0a2f2a20546f706963207265766965772070616e656c0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a23726576696577207b0a096d617267696e2d746f703a2032656d3b0a7d0a0a23746f706963726576696577207b0a0970616464696e672d72696768743a203570783b0a096f766572666c6f773a206175746f3b0a096865696768743a2033303070783b0a7d0a0a23746f706963726576696577202e706f7374626f6479207b0a0977696474683a206175746f3b0a09666c6f61743a206e6f6e653b0a096d617267696e3a20303b0a096865696768743a206175746f3b0a7d0a0a23746f706963726576696577202e706f7374207b0a096865696768743a206175746f3b0a7d0a0a23746f706963726576696577206832207b0a09626f726465722d626f74746f6d2d77696474683a20303b0a7d0a0a2f2a20436f6e74656e7420636f6e7461696e6572207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e636f6e74656e74207b0a096d696e2d6865696768743a2033656d3b0a096f766572666c6f773a2068696464656e3b0a096c696e652d6865696768743a20312e34656d3b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a2031656d3b0a09636f6c6f723a20233333333333333b0a7d0a0a2e636f6e74656e742068322c202e70616e656c206832207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233938393839383b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234343434343433b0a09666f6e742d73697a653a20312e36656d3b0a096d617267696e2d746f703a20302e35656d3b0a096d617267696e2d626f74746f6d3a20302e35656d3b0a0970616464696e672d626f74746f6d3a20302e35656d3b0a7d0a0a2e70616e656c206833207b0a096d617267696e3a20302e35656d20303b0a7d0a0a2e70616e656c2070207b0a09666f6e742d73697a653a20312e32656d3b0a096d617267696e2d626f74746f6d3a2031656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a2e636f6e74656e742070207b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a20312e32656d3b0a096d617267696e2d626f74746f6d3a2031656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a646c2e666171207b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a20312e31656d3b0a096d617267696e2d746f703a2031656d3b0a096d617267696e2d626f74746f6d3a2032656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a646c2e666171206474207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233333333333333b0a7d0a0a2e636f6e74656e7420646c2e666171207b0a09666f6e742d73697a653a20312e32656d3b0a096d617267696e2d626f74746f6d3a20302e35656d3b0a7d0a0a2e636f6e74656e74206c69207b0a096c6973742d7374796c652d747970653a20696e68657269743b0a7d0a0a2e636f6e74656e7420756c2c202e636f6e74656e74206f6c207b0a096d617267696e2d626f74746f6d3a2031656d3b0a096d617267696e2d6c6566743a2033656d3b0a7d0a0a2e706f737468696c6974207b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a09636f6c6f723a20234243424342433b0a0970616464696e673a20302032707820317078203270783b0a7d0a0a2e616e6e6f756e63652c202e756e72656164706f7374207b0a092f2a20486967686c696768742074686520616e6e6f756e63656d656e7473202620756e7265616420706f73747320626f78202a2f0a09626f726465722d6c6566742d636f6c6f723a20234243424342433b0a09626f726465722d72696768742d636f6c6f723a20234243424342433b0a7d0a0a2f2a20506f737420617574686f72202a2f0a702e617574686f72207b0a096d617267696e3a2030203135656d20302e36656d20303b0a0970616464696e673a203020302035707820303b0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a2031656d3b0a096c696e652d6865696768743a20312e32656d3b0a7d0a0a2f2a20506f7374207369676e6174757265202a2f0a2e7369676e6174757265207b0a096d617267696e2d746f703a20312e35656d3b0a0970616464696e672d746f703a20302e32656d3b0a09666f6e742d73697a653a20312e31656d3b0a09626f726465722d746f703a2031707820736f6c696420234343434343433b0a09636c6561723a206c6566743b0a096c696e652d6865696768743a20313430253b0a096f766572666c6f773a2068696464656e3b0a0977696474683a20313030253b0a7d0a0a6464202e7369676e6174757265207b0a096d617267696e3a20303b0a0970616464696e673a20303b0a09636c6561723a206e6f6e653b0a09626f726465723a206e6f6e653b0a7d0a0a2f2a20506f7374206e6f746963696573202a2f0a2e6e6f74696365207b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a0977696474683a206175746f3b0a096d617267696e2d746f703a20312e35656d3b0a0970616464696e672d746f703a20302e32656d3b0a09666f6e742d73697a653a2031656d3b0a09626f726465722d746f703a203170782064617368656420234343434343433b0a09636c6561723a206c6566743b0a096c696e652d6865696768743a20313330253b0a7d0a0a2f2a204a756d7020746f20706f7374206c696e6b20666f72206e6f77202a2f0a756c2e736561726368726573756c7473207b0a096c6973742d7374796c653a206e6f6e653b0a09746578742d616c69676e3a2072696768743b0a09636c6561723a20626f74683b0a7d0a0a2f2a20424220436f6465207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a2051756f746520626c6f636b202a2f0a626c6f636b71756f7465207b0a096261636b67726f756e643a2023656265626562206e6f6e652036707820387078206e6f2d7265706561743b0a09626f726465723a2031707820736f6c696420236462646264623b0a09666f6e742d73697a653a20302e3935656d3b0a096d617267696e3a20302e35656d20317078203020323570783b0a096f766572666c6f773a2068696464656e3b0a0970616464696e673a203570783b0a7d0a0a626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a20236261626162613b0a09666f6e742d73697a653a2031656d3b0a096d617267696e3a20302e35656d20317078203020313570783b090a7d0a0a626c6f636b71756f746520626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a20236534653465343b0a7d0a0a626c6f636b71756f74652063697465207b0a092f2a20557365726e616d652f736f75726365206f662071756f746572202a2f0a09666f6e742d7374796c653a206e6f726d616c3b0a09666f6e742d7765696768743a20626f6c643b0a096d617267696e2d6c6566743a20323070783b0a09646973706c61793a20626c6f636b3b0a09666f6e742d73697a653a20302e39656d3b0a7d0a0a626c6f636b71756f746520636974652063697465207b0a09666f6e742d73697a653a2031656d3b0a7d0a0a626c6f636b71756f74652e756e6369746564207b0a0970616464696e672d746f703a20323570783b0a7d0a0a2f2a20436f646520626c6f636b202a2f0a646c2e636f6465626f78207b0a0970616464696e673a203370783b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465723a2031707820736f6c696420236438643864383b0a09666f6e742d73697a653a2031656d3b0a7d0a0a646c2e636f6465626f78206474207b0a09746578742d7472616e73666f726d3a207570706572636173653b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234343434343433b0a096d617267696e2d626f74746f6d3a203370783b0a09666f6e742d73697a653a20302e38656d3b0a09666f6e742d7765696768743a20626f6c643b0a09646973706c61793a20626c6f636b3b0a7d0a0a626c6f636b71756f746520646c2e636f6465626f78207b0a096d617267696e2d6c6566743a20303b0a7d0a0a646c2e636f6465626f7820636f6465207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a096f766572666c6f773a206175746f3b0a09646973706c61793a20626c6f636b3b0a096865696768743a206175746f3b0a096d61782d6865696768743a2032303070783b0a0977686974652d73706163653a206e6f726d616c3b0a0970616464696e672d746f703a203570783b0a09666f6e743a20302e39656d204d6f6e61636f2c2022416e64616c65204d6f6e6f222c22436f7572696572204e6577222c20436f75726965722c206d6f6e6f3b0a096c696e652d6865696768743a20312e33656d3b0a09636f6c6f723a20233862386238623b0a096d617267696e3a2032707820303b0a7d0a0a2e73796e746178626709097b20636f6c6f723a20234646464646463b207d0a2e73796e746178636f6d6d656e74097b20636f6c6f723a20233030303030303b207d0a2e73796e74617864656661756c74097b20636f6c6f723a20236263626362633b207d0a2e73796e74617868746d6c09097b20636f6c6f723a20233030303030303b207d0a2e73796e7461786b6579776f7264097b20636f6c6f723a20233538353835383b207d0a2e73796e746178737472696e67097b20636f6c6f723a20236137613761373b207d0a0a2f2a204174746163686d656e74730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e617474616368626f78207b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b200a096d617267696e3a20357078203570782035707820303b0a0970616464696e673a203670783b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465723a203170782064617368656420236438643864383b0a09636c6561723a206c6566743b0a7d0a0a2e706d2d6d657373616765202e617474616368626f78207b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a7d0a0a2e617474616368626f78206474207b0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09746578742d7472616e73666f726d3a207570706572636173653b0a7d0a0a2e617474616368626f78206464207b0a096d617267696e2d746f703a203470783b0a0970616464696e672d746f703a203470783b0a09636c6561723a206c6566743b0a09626f726465722d746f703a2031707820736f6c696420236438643864383b0a7d0a0a2e617474616368626f78206464206464207b0a09626f726465723a206e6f6e653b0a7d0a0a2e617474616368626f782070207b0a096c696e652d6865696768743a20313130253b0a09636f6c6f723a20233636363636363b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636c6561723a206c6566743b0a7d0a0a2e617474616368626f7820702e73746174730a7b0a096c696e652d6865696768743a20313130253b0a09636f6c6f723a20233636363636363b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636c6561723a206c6566743b0a7d0a0a2e6174746163682d696d616765207b0a096d617267696e3a2033707820303b0a0977696474683a20313030253b0a096d61782d6865696768743a2033353070783b0a096f766572666c6f773a206175746f3b0a7d0a0a2e6174746163682d696d61676520696d67207b0a09626f726465723a2031707820736f6c696420233939393939393b0a2f2a09637572736f723a206d6f76653b202a2f0a09637572736f723a2064656661756c743b0a7d0a0a2f2a20496e6c696e6520696d616765207468756d626e61696c73202a2f0a6469762e696e6c696e652d6174746163686d656e7420646c2e7468756d626e61696c2c206469762e696e6c696e652d6174746163686d656e7420646c2e66696c65207b0a09646973706c61793a20626c6f636b3b0a096d617267696e2d626f74746f6d3a203470783b0a7d0a0a6469762e696e6c696e652d6174746163686d656e742070207b0a09666f6e742d73697a653a20313030253b0a7d0a0a646c2e66696c65207b0a09666f6e742d66616d696c793a2056657264616e612c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09646973706c61793a20626c6f636b3b0a7d0a0a646c2e66696c65206474207b0a09746578742d7472616e73666f726d3a206e6f6e653b0a096d617267696e3a20303b0a0970616464696e673a20303b0a09666f6e742d7765696768743a20626f6c643b0a09666f6e742d66616d696c793a2056657264616e612c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a7d0a0a646c2e66696c65206464207b0a09636f6c6f723a20233636363636363b0a096d617267696e3a20303b0a0970616464696e673a20303b090a7d0a0a646c2e7468756d626e61696c20696d67207b0a0970616464696e673a203370783b0a09626f726465723a2031707820736f6c696420233636363636363b0a096261636b67726f756e642d636f6c6f723a20234646463b0a7d0a0a646c2e7468756d626e61696c206464207b0a09636f6c6f723a20233636363636363b0a09666f6e742d7374796c653a206974616c69633b0a09666f6e742d66616d696c793a2056657264616e612c20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a7d0a0a2e617474616368626f7820646c2e7468756d626e61696c206464207b0a09666f6e742d73697a653a20313030253b0a7d0a0a646c2e7468756d626e61696c20647420613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545454545453b0a7d0a0a646c2e7468756d626e61696c20647420613a686f76657220696d67207b0a09626f726465723a2031707820736f6c696420236432643264323b0a7d0a0a2f2a20506f737420706f6c6c207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a6669656c647365742e706f6c6c73207b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a7d0a0a6669656c647365742e706f6c6c7320646c207b0a096d617267696e2d746f703a203570783b0a09626f726465722d746f703a2031707820736f6c696420236532653265323b0a0970616464696e673a203570782030203020303b0a096c696e652d6865696768743a20313230253b0a09636f6c6f723a20233636363636363b0a7d0a0a6669656c647365742e706f6c6c7320646c2e766f746564207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e706f6c6c73206474207b0a09746578742d616c69676e3a206c6566743b0a09666c6f61743a206c6566743b0a09646973706c61793a20626c6f636b3b0a0977696474683a203330253b0a09626f726465722d72696768743a206e6f6e653b0a0970616464696e673a20303b0a096d617267696e3a20303b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a6669656c647365742e706f6c6c73206464207b0a09666c6f61743a206c6566743b0a0977696474683a203130253b0a09626f726465722d6c6566743a206e6f6e653b0a0970616464696e673a2030203570783b0a096d617267696e2d6c6566743a20303b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a6669656c647365742e706f6c6c732064642e726573756c74626172207b0a0977696474683a203530253b0a7d0a0a6669656c647365742e706f6c6c7320646420696e707574207b0a096d617267696e3a2032707820303b0a7d0a0a6669656c647365742e706f6c6c7320646420646976207b0a09746578742d616c69676e3a2072696768743b0a09666f6e742d66616d696c793a20417269616c2c2048656c7665746963612c2073616e732d73657269663b0a09636f6c6f723a20234646464646463b0a09666f6e742d7765696768743a20626f6c643b0a0970616464696e673a2030203270783b0a096f766572666c6f773a2076697369626c653b0a096d696e2d77696474683a2032253b0a7d0a0a2e706f6c6c62617231207b0a096261636b67726f756e642d636f6c6f723a20236161616161613b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233734373437343b0a09626f726465722d72696768743a2031707820736f6c696420233734373437343b0a7d0a0a2e706f6c6c62617232207b0a096261636b67726f756e642d636f6c6f723a20236265626562653b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233863386338633b0a09626f726465722d72696768743a2031707820736f6c696420233863386338633b0a7d0a0a2e706f6c6c62617233207b0a096261636b67726f756e642d636f6c6f723a20234431443144313b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236161616161613b0a09626f726465722d72696768743a2031707820736f6c696420236161616161613b0a7d0a0a2e706f6c6c62617234207b0a096261636b67726f756e642d636f6c6f723a20236534653465343b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236265626562653b0a09626f726465722d72696768743a2031707820736f6c696420236265626562653b0a7d0a0a2e706f6c6c62617235207b0a096261636b67726f756e642d636f6c6f723a20236638663866383b0a09626f726465722d626f74746f6d3a2031707820736f6c696420234431443144313b0a09626f726465722d72696768743a2031707820736f6c696420234431443144313b0a7d0a0a2f2a20506f737465722070726f66696c6520626c6f636b0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f737470726f66696c65207b0a092f2a20416c736f2073656520747765616b732e637373202a2f0a096d617267696e3a203570782030203130707820303b0a096d696e2d6865696768743a20383070783b0a09636f6c6f723a20233636363636363b0a09626f726465722d6c6566743a2031707820736f6c696420234646464646463b0a0977696474683a203232253b0a09666c6f61743a2072696768743b0a09646973706c61793a20696e6c696e653b0a7d0a2e706d202e706f737470726f66696c65207b0a09626f726465722d6c6566743a2031707820736f6c696420234444444444443b0a7d0a0a2e706f737470726f66696c652064642c202e706f737470726f66696c65206474207b0a096c696e652d6865696768743a20312e32656d3b0a096d617267696e2d6c6566743a203870783b0a7d0a0a2e706f737470726f66696c65207374726f6e67207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233030303030303b0a7d0a0a2e617661746172207b0a09626f726465723a206e6f6e653b0a096d617267696e2d626f74746f6d3a203370783b0a7d0a0a2e6f6e6c696e65207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a2f2a20506f737465722070726f66696c652075736564206279207365617263682a2f0a2e736561726368202e706f737470726f66696c65207b0a0977696474683a203330253b0a7d0a0a2f2a20706d206c69737420696e20636f6d706f7365206d657373616765206966206d61737320706d20697320656e61626c6564202a2f0a646c2e706d6c697374206474207b0a0977696474683a203630252021696d706f7274616e743b0a7d0a0a646c2e706d6c697374206474207465787461726561207b0a0977696474683a203935253b0a7d0a0a646c2e706d6c697374206464207b0a096d617267696e2d6c6566743a203631252021696d706f7274616e743b0a096d617267696e2d626f74746f6d3a203270783b0a7d0a2f2a2070726f53696c76657220427574746f6e205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a20526f6c6c6f76657220627574746f6e730a2020204261736564206f6e3a20687474703a2f2f77656c6c7374796c65642e636f6d2f6373732d6e6f7072656c6f61642d726f6c6c6f766572732e68746d6c0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e627574746f6e73207b0a09666c6f61743a206c6566743b0a0977696474683a206175746f3b0a096865696768743a206175746f3b0a7d0a0a2f2a20526f6c6c6f766572207374617465202a2f0a2e627574746f6e7320646976207b0a09666c6f61743a206c6566743b0a096d617267696e3a203020357078203020303b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a7d0a0a2f2a20526f6c6c6f6666207374617465202a2f0a2e627574746f6e73206469762061207b0a09646973706c61793a20626c6f636b3b0a0977696474683a20313030253b0a096865696768743a20313030253b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a09706f736974696f6e3a2072656c61746976653b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a2048696465203c613e207465787420616e642068696465206f66662d737461746520696d616765207768656e20726f6c6c696e67206f766572202870726576656e747320666c69636b657220696e20494529202a2f0a2f2a2e627574746f6e7320646976207370616e09097b20646973706c61793a206e6f6e653b207d2a2f0a2f2a2e627574746f6e732064697620613a686f766572097b206261636b67726f756e642d696d6167653a206e6f6e653b207d2a2f0a2e627574746f6e7320646976207370616e0909097b20706f736974696f6e3a206162736f6c7574653b2077696474683a20313030253b206865696768743a20313030253b20637572736f723a20706f696e7465723b7d0a2e627574746f6e732064697620613a686f766572207370616e097b206261636b67726f756e642d706f736974696f6e3a203020313030253b207d0a0a2f2a2042696720627574746f6e20696d61676573202a2f0a2e7265706c792d69636f6e207370616e097b206261636b67726f756e643a207472616e73706172656e74206e6f6e6520302030206e6f2d7265706561743b207d0a2e706f73742d69636f6e207370616e09097b206261636b67726f756e643a207472616e73706172656e74206e6f6e6520302030206e6f2d7265706561743b207d0a2e6c6f636b65642d69636f6e207370616e097b206261636b67726f756e643a207472616e73706172656e74206e6f6e6520302030206e6f2d7265706561743b207d0a2e706d7265706c792d69636f6e207370616e097b206261636b67726f756e643a206e6f6e6520302030206e6f2d7265706561743b207d0a2e6e6577706d2d69636f6e207370616e20097b206261636b67726f756e643a206e6f6e6520302030206e6f2d7265706561743b207d0a2e666f7277617264706d2d69636f6e207370616e20097b206261636b67726f756e643a206e6f6e6520302030206e6f2d7265706561743b207d0a0a2f2a205365742062696720627574746f6e2064696d656e73696f6e73202a2f0a2e627574746f6e73206469762e7265706c792d69636f6e09097b2077696474683a207b494d475f425554544f4e5f544f5049435f5245504c595f57494454487d70783b206865696768743a207b494d475f425554544f4e5f544f5049435f5245504c595f4845494748547d70783b207d0a2e627574746f6e73206469762e706f73742d69636f6e09097b2077696474683a207b494d475f425554544f4e5f544f5049435f4e45575f57494454487d70783b206865696768743a207b494d475f425554544f4e5f544f5049435f4e45575f4845494748547d70783b207d0a2e627574746f6e73206469762e6c6f636b65642d69636f6e097b2077696474683a207b494d475f425554544f4e5f544f5049435f4c4f434b45445f57494454487d70783b206865696768743a207b494d475f425554544f4e5f544f5049435f4c4f434b45445f4845494748547d70783b207d0a2e627574746f6e73206469762e706d7265706c792d69636f6e097b2077696474683a207b494d475f425554544f4e5f504d5f5245504c595f57494454487d70783b206865696768743a207b494d475f425554544f4e5f504d5f5245504c595f4845494748547d70783b207d0a2e627574746f6e73206469762e6e6577706d2d69636f6e09097b2077696474683a207b494d475f425554544f4e5f504d5f4e45575f57494454487d70783b206865696768743a207b494d475f425554544f4e5f504d5f4e45575f4845494748547d70783b207d0a2e627574746f6e73206469762e666f7277617264706d2d69636f6e097b2077696474683a207b494d475f425554544f4e5f504d5f464f52574152445f57494454487d70783b206865696768743a207b494d475f425554544f4e5f504d5f464f52574152445f4845494748547d70783b207d0a0a2f2a205375622d68656164657220286e617669676174696f6e20626172290a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a612e7072696e742c20612e73656e64656d61696c2c20612e666f6e7473697a65207b0a09646973706c61793a20626c6f636b3b0a096f766572666c6f773a2068696464656e3b0a096865696768743a20313870783b0a09746578742d696e64656e743a202d3530303070783b0a09746578742d616c69676e3a206c6566743b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a7d0a0a612e7072696e74207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0977696474683a20323270783b0a7d0a0a612e73656e64656d61696c207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0977696474683a20323270783b0a7d0a0a612e666f6e7473697a65207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d706f736974696f6e3a2030202d3170783b0a0977696474683a20323970783b0a7d0a0a612e666f6e7473697a653a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a2030202d323070783b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a2f2a2049636f6e20696d616765730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e73697465686f6d652c202e69636f6e2d6661712c202e69636f6e2d6d656d626572732c202e69636f6e2d686f6d652c202e69636f6e2d7563702c202e69636f6e2d72656769737465722c202e69636f6e2d6c6f676f75742c0a2e69636f6e2d626f6f6b6d61726b2c202e69636f6e2d62756d702c202e69636f6e2d7375627363726962652c202e69636f6e2d756e7375627363726962652c202e69636f6e2d70616765732c202e69636f6e2d736561726368207b0a096261636b67726f756e642d706f736974696f6e3a2030203530253b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a0970616464696e673a203170782030203020313770783b0a7d0a0a2f2a20506f737465722070726f66696c652069636f6e730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a756c2e70726f66696c652d69636f6e73207b0a0970616464696e672d746f703a20313070783b0a096c6973742d7374796c653a206e6f6e653b0a7d0a0a2f2a20526f6c6c6f766572207374617465202a2f0a756c2e70726f66696c652d69636f6e73206c69207b0a09666c6f61743a206c6566743b0a096d617267696e3a2030203670782033707820303b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a7d0a0a2f2a20526f6c6c6f6666207374617465202a2f0a756c2e70726f66696c652d69636f6e73206c692061207b0a09646973706c61793a20626c6f636b3b0a0977696474683a20313030253b0a096865696768743a20313030253b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a7d0a0a2f2a2048696465203c613e207465787420616e642068696465206f66662d737461746520696d616765207768656e20726f6c6c696e67206f766572202870726576656e747320666c69636b657220696e20494529202a2f0a756c2e70726f66696c652d69636f6e73206c69207370616e207b20646973706c61793a6e6f6e653b207d0a756c2e70726f66696c652d69636f6e73206c6920613a686f766572207b206261636b67726f756e643a206e6f6e653b207d0a0a2f2a20506f736974696f6e696e67206f66206d6f64657261746f722069636f6e73202a2f0a2e706f7374626f647920756c2e70726f66696c652d69636f6e73207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a0970616464696e673a20303b0a7d0a0a2e706f7374626f647920756c2e70726f66696c652d69636f6e73206c69207b0a096d617267696e3a2030203370783b0a7d0a0a2f2a2050726f66696c652026206e617669676174696f6e2069636f6e73202a2f0a2e656d61696c2d69636f6e2c202e656d61696c2d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e61696d2d69636f6e2c202e61696d2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e7961686f6f2d69636f6e2c202e7961686f6f2d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e7765622d69636f6e2c202e7765622d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e6d736e6d2d69636f6e2c202e6d736e6d2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e6963712d69636f6e2c202e6963712d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e6a61626265722d69636f6e2c202e6a61626265722d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e706d2d69636f6e2c202e706d2d69636f6e2061090909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e71756f74652d69636f6e2c202e71756f74652d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a0a2f2a204d6f64657261746f722069636f6e73202a2f0a2e7265706f72742d69636f6e2c202e7265706f72742d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e7761726e2d69636f6e2c202e7761726e2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e656469742d69636f6e2c202e656469742d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e64656c6574652d69636f6e2c202e64656c6574652d69636f6e206109097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a2e696e666f2d69636f6e2c202e696e666f2d69636f6e20610909097b206261636b67726f756e643a206e6f6e6520746f70206c656674206e6f2d7265706561743b207d0a0a2f2a205365742070726f66696c652069636f6e2064696d656e73696f6e73202a2f0a756c2e70726f66696c652d69636f6e73206c692e656d61696c2d69636f6e09097b2077696474683a207b494d475f49434f4e5f434f4e544143545f454d41494c5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f454d41494c5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e61696d2d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f41494d5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f41494d5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7961686f6f2d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f5941484f4f5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f5941484f4f5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7765622d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f5757575f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f5757575f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e6d736e6d2d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f4d534e4d5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f4d534e4d5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e6963712d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f4943515f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f4943515f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e6a61626265722d69636f6e097b2077696474683a207b494d475f49434f4e5f434f4e544143545f4a41424245525f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f4a41424245525f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e706d2d69636f6e09097b2077696474683a207b494d475f49434f4e5f434f4e544143545f504d5f57494454487d70783b206865696768743a207b494d475f49434f4e5f434f4e544143545f504d5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e71756f74652d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f51554f54455f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f51554f54455f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7265706f72742d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f5245504f52545f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f5245504f52545f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e656469742d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f454449545f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f454449545f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e64656c6574652d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f44454c4554455f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f44454c4554455f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e696e666f2d69636f6e097b2077696474683a207b494d475f49434f4e5f504f53545f494e464f5f57494454487d70783b206865696768743a207b494d475f49434f4e5f504f53545f494e464f5f4845494748547d70783b207d0a756c2e70726f66696c652d69636f6e73206c692e7761726e2d69636f6e097b2077696474683a207b494d475f49434f4e5f555345525f5741524e5f57494454487d70783b206865696768743a207b494d475f49434f4e5f555345525f5741524e5f4845494748547d70783b207d0a0a2f2a204669782070726f66696c652069636f6e2064656661756c74206d617267696e73202a2f0a756c2e70726f66696c652d69636f6e73206c692e656469742d69636f6e097b206d617267696e3a203020302030203370783b207d0a756c2e70726f66696c652d69636f6e73206c692e71756f74652d69636f6e097b206d617267696e3a20302030203020313070783b207d0a756c2e70726f66696c652d69636f6e73206c692e696e666f2d69636f6e2c20756c2e70726f66696c652d69636f6e73206c692e7265706f72742d69636f6e097b206d617267696e3a203020337078203020303b207d0a2f2a2070726f53696c76657220436f6e74726f6c2050616e656c205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a0a2f2a204d61696e20435020626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2363702d6d656e75207b0a09666c6f61743a6c6566743b0a0977696474683a203139253b0a096d617267696e2d746f703a2031656d3b0a096d617267696e2d626f74746f6d3a203570783b0a7d0a0a2363702d6d61696e207b0a09666c6f61743a206c6566743b0a0977696474683a203831253b0a7d0a0a2363702d6d61696e202e636f6e74656e74207b0a0970616464696e673a20303b0a7d0a0a2363702d6d61696e2068332c202363702d6d61696e2068722c202363702d6d656e75206872207b0a09626f726465722d636f6c6f723a20236266626662663b0a7d0a0a2363702d6d61696e202e70616e656c2070207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2363702d6d61696e202e70616e656c206f6c207b0a096d617267696e2d6c6566743a2032656d3b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2363702d6d61696e202e70616e656c206c692e726f77207b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236362636263623b0a09626f726465722d746f703a2031707820736f6c696420234639463946393b0a7d0a0a756c2e63706c697374207b0a096d617267696e2d626f74746f6d3a203570783b0a09626f726465722d746f703a2031707820736f6c696420236362636263623b0a7d0a0a2363702d6d61696e202e70616e656c206c692e6865616465722064642c202363702d6d61696e202e70616e656c206c692e686561646572206474207b0a09636f6c6f723a20233030303030303b0a096d617267696e2d626f74746f6d3a203270783b0a7d0a0a2363702d6d61696e207461626c652e7461626c6531207b0a096d617267696e2d626f74746f6d3a2031656d3b0a7d0a0a2363702d6d61696e207461626c652e7461626c6531207468656164207468207b0a09636f6c6f723a20233333333333333b0a09666f6e742d7765696768743a20626f6c643b0a09626f726465722d626f74746f6d3a2031707820736f6c696420233333333333333b0a0970616464696e673a203570783b0a7d0a0a2363702d6d61696e207461626c652e7461626c65312074626f6479207468207b0a09666f6e742d7374796c653a206974616c69633b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e742021696d706f7274616e743b0a09626f726465722d626f74746f6d3a206e6f6e653b0a7d0a0a2363702d6d61696e202e706167696e6174696f6e207b0a09666c6f61743a2072696768743b0a0977696474683a206175746f3b0a0970616464696e672d746f703a203170783b0a7d0a0a2363702d6d61696e202e706f7374626f64792070207b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a2363702d6d61696e202e706d2d6d657373616765207b0a09626f726465723a2031707820736f6c696420236532653265323b0a096d617267696e3a203130707820303b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a0977696474683a206175746f3b0a09666c6f61743a206e6f6e653b0a7d0a0a2e706d2d6d657373616765206832207b0a0970616464696e672d626f74746f6d3a203570783b0a7d0a0a2363702d6d61696e202e706f7374626f64792068332c202363702d6d61696e202e626f7832206833207b0a096d617267696e2d746f703a20303b0a7d0a0a2363702d6d61696e202e627574746f6e73207b0a096d617267696e2d6c6566743a20303b0a7d0a0a2363702d6d61696e20756c2e6c696e6b6c697374207b0a096d617267696e3a20303b0a7d0a0a2f2a204d435020537065636966696320747765616b73202a2f0a2e6d63702d6d61696e202e706f7374626f6479207b0a0977696474683a20313030253b0a7d0a0a2f2a20435020746162626564206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2374616273207b0a096c696e652d6865696768743a206e6f726d616c3b0a096d617267696e3a20323070782030202d317078203770783b0a096d696e2d77696474683a2035373070783b0a7d0a0a237461627320756c207b0a096d617267696e3a303b0a0970616464696e673a20303b0a096c6973742d7374796c653a206e6f6e653b0a7d0a0a2374616273206c69207b0a09646973706c61793a20696e6c696e653b0a096d617267696e3a20303b0a0970616464696e673a20303b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a23746162732061207b0a09666c6f61743a206c6566743b0a096261636b67726f756e643a206e6f6e65206e6f2d726570656174203025202d333570783b0a096d617267696e3a203020317078203020303b0a0970616464696e673a203020302030203570783b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09706f736974696f6e3a2072656c61746976653b0a09637572736f723a20706f696e7465723b0a7d0a0a23746162732061207370616e207b0a09666c6f61743a206c6566743b0a09646973706c61793a20626c6f636b3b0a096261636b67726f756e643a206e6f6e65206e6f2d7265706561742031303025202d333570783b0a0970616464696e673a20367078203130707820367078203570783b0a09636f6c6f723a20233832383238323b0a0977686974652d73706163653a206e6f777261703b0a7d0a0a237461627320613a686f766572207370616e207b0a09636f6c6f723a20236263626362633b0a7d0a0a2374616273202e6163746976657461622061207b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a09626f726465722d626f74746f6d3a2031707820736f6c696420236562656265623b0a7d0a0a2374616273202e6163746976657461622061207370616e207b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a0970616464696e672d626f74746f6d3a203770783b0a09636f6c6f723a20233333333333333b0a7d0a0a237461627320613a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a2030202d373070783b0a7d0a0a237461627320613a686f766572207370616e207b0a096261636b67726f756e642d706f736974696f6e3a31303025202d373070783b0a7d0a0a2374616273202e61637469766574616220613a686f766572207b0a096261636b67726f756e642d706f736974696f6e3a203020303b0a7d0a0a2374616273202e61637469766574616220613a686f766572207370616e207b0a09636f6c6f723a20233030303030303b0a096261636b67726f756e642d706f736974696f6e3a203130302520303b0a7d0a0a2f2a204d696e6920746162626564206d656e75207573656420696e204d43500a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a236d696e6974616273207b0a096c696e652d6865696768743a206e6f726d616c3b0a096d617267696e3a202d3230707820377078203020303b0a7d0a0a236d696e697461627320756c207b0a096d617267696e3a303b0a0970616464696e673a20303b0a096c6973742d7374796c653a206e6f6e653b0a7d0a0a236d696e6974616273206c69207b0a09646973706c61793a20626c6f636b3b0a09666c6f61743a2072696768743b0a0970616464696e673a203020313070782034707820313070783b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d7765696768743a20626f6c643b0a096261636b67726f756e642d636f6c6f723a20236632663266323b0a096d617267696e2d6c6566743a203270783b0a7d0a0a236d696e69746162732061207b0a7d0a0a236d696e697461627320613a686f766572207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a7d0a0a236d696e6974616273206c692e616374697665746162207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a236d696e6974616273206c692e61637469766574616220612c20236d696e6974616273206c692e61637469766574616220613a686f766572207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20554350206e617669676174696f6e206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a20436f6e7461696e657220666f72207375622d6e617669676174696f6e206c697374202a2f0a236e617669676174696f6e207b0a0977696474683a20313030253b0a0970616464696e672d746f703a20333670783b0a7d0a0a236e617669676174696f6e20756c207b0a096c6973742d7374796c653a6e6f6e653b0a7d0a0a2f2a2044656661756c74206c697374207374617465202a2f0a236e617669676174696f6e206c69207b0a096d617267696e3a2031707820303b0a0970616464696e673a20303b0a09666f6e742d7765696768743a20626f6c643b0a09646973706c61793a20696e6c696e653b0a7d0a0a2f2a204c696e6b207374796c657320666f7220746865207375622d73656374696f6e206c696e6b73202a2f0a236e617669676174696f6e2061207b0a09646973706c61793a20626c6f636b3b0a0970616464696e673a203570783b0a096d617267696e3a2031707820303b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233333333b0a096261636b67726f756e643a2023636663666366206e6f6e65207265706561742d79203130302520303b0a7d0a0a236e617669676174696f6e20613a686f766572207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a096261636b67726f756e642d636f6c6f723a20236336633663363b0a09636f6c6f723a20236263626362633b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e2061207b0a09646973706c61793a20626c6f636b3b0a09636f6c6f723a20236433643364333b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e20613a686f766572207b0a09636f6c6f723a20236433643364333b0a7d0a0a2f2a20507265666572656e6365732070616e65206c61796f75740a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2363702d6d61696e206832207b0a09626f726465722d626f74746f6d3a206e6f6e653b0a0970616464696e673a20303b0a096d617267696e2d6c6566743a20313070783b0a09636f6c6f723a20233333333333333b0a7d0a0a2363702d6d61696e202e70616e656c207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a2363702d6d61696e202e706d207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f702c202363702d6d656e75207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a20546f706963726576696577202a2f0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f702c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a20467269656e6473206c697374202a2f0a2e63702d6d696e69207b0a096261636b67726f756e642d636f6c6f723a20236639663966393b0a0970616464696e673a2030203570783b0a096d617267696e3a203130707820313570782031307078203570783b0a7d0a0a2e63702d6d696e69207370616e2e636f726e6572732d746f702c202e63702d6d696e69207370616e2e636f726e6572732d626f74746f6d207b0a096d617267696e3a2030202d3570783b0a7d0a0a646c2e6d696e69206474207b0a09666f6e742d7765696768743a20626f6c643b0a09636f6c6f723a20233637363736373b0a7d0a0a646c2e6d696e69206464207b0a0970616464696e672d746f703a203470783b0a7d0a0a2e667269656e642d6f6e6c696e65207b0a09666f6e742d7765696768743a20626f6c643b0a7d0a0a2e667269656e642d6f66666c696e65207b0a09666f6e742d7374796c653a206974616c69633b0a7d0a0a2f2a20504d205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a23706d2d6d656e75207b0a096c696e652d6865696768743a20322e35656d3b0a7d0a0a2f2a20504d204d65737361676520686973746f7279202a2f0a2e63757272656e74207b0a09636f6c6f723a20233939393939393b0a7d0a0a2f2a20446566696e65642072756c6573206c69737420666f7220504d206f7074696f6e73202a2f0a6f6c2e6465662d72756c6573207b0a0970616464696e672d6c6566743a20303b0a7d0a0a6f6c2e6465662d72756c6573206c69207b0a096c696e652d6865696768743a20313830253b0a0970616464696e673a203170783b0a7d0a0a2f2a20504d206d61726b696e6720636f6c6f757273202a2f0a2e706d6c697374206c692e626731207b0a09626f726465723a20736f6c696420337078207472616e73706172656e743b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e626732207b0a09626f726465723a20736f6c696420337078207472616e73706172656e743b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e706d5f6d6573736167655f7265706f727465645f636f6c6f75722c202e706d5f6d6573736167655f7265706f727465645f636f6c6f7572207b0a09626f726465722d6c6566742d636f6c6f723a20236263626362633b0a09626f726465722d72696768742d636f6c6f723a20236263626362633b0a7d0a0a2e706d6c697374206c692e706d5f6d61726b65645f636f6c6f75722c202e706d5f6d61726b65645f636f6c6f7572207b0a09626f726465723a20736f6c69642033707820236666666666663b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e706d5f7265706c6965645f636f6c6f75722c202e706d5f7265706c6965645f636f6c6f7572207b0a09626f726465723a20736f6c69642033707820236332633263323b0a09626f726465722d77696474683a2030203370783b090a7d0a0a2e706d6c697374206c692e706d5f667269656e645f636f6c6f75722c202e706d5f667269656e645f636f6c6f7572207b0a09626f726465723a20736f6c69642033707820236264626462643b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d6c697374206c692e706d5f666f655f636f6c6f75722c202e706d5f666f655f636f6c6f7572207b0a09626f726465723a20736f6c69642033707820233030303030303b0a09626f726465722d77696474683a2030203370783b0a7d0a0a2e706d2d6c6567656e64207b0a09626f726465722d6c6566742d77696474683a20313070783b0a09626f726465722d6c6566742d7374796c653a20736f6c69643b0a09626f726465722d72696768742d77696474683a20303b0a096d617267696e2d626f74746f6d3a203370783b0a0970616464696e672d6c6566743a203370783b0a7d0a0a2f2a204176617461722067616c6c657279202a2f0a2367616c6c657279206c6162656c207b0a09706f736974696f6e3a2072656c61746976653b0a09666c6f61743a206c6566743b0a096d617267696e3a20313070783b0a0970616464696e673a203570783b0a0977696474683a206175746f3b0a096261636b67726f756e643a20234646464646463b0a09626f726465723a2031707820736f6c696420234343433b0a09746578742d616c69676e3a2063656e7465723b0a7d0a0a2367616c6c657279206c6162656c3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545453b0a7d0a2f2a2070726f53696c76657220466f726d205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a2047656e6572616c20666f726d207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a6669656c64736574207b0a09626f726465722d77696474683a20303b0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d73697a653a20312e31656d3b0a7d0a0a696e707574207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09637572736f723a20706f696e7465723b0a09766572746963616c2d616c69676e3a206d6964646c653b0a0970616464696e673a2030203370783b0a09666f6e742d73697a653a2031656d3b0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a7d0a0a73656c656374207b0a09666f6e742d66616d696c793a2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09666f6e742d7765696768743a206e6f726d616c3b0a09637572736f723a20706f696e7465723b0a09766572746963616c2d616c69676e3a206d6964646c653b0a09626f726465723a2031707820736f6c696420233636363636363b0a0970616464696e673a203170783b0a096261636b67726f756e642d636f6c6f723a20234641464146413b0a7d0a0a6f7074696f6e207b0a0970616464696e672d72696768743a2031656d3b0a7d0a0a6f7074696f6e2e64697361626c65642d6f7074696f6e207b0a09636f6c6f723a2067726179746578743b0a7d0a0a7465787461726561207b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a0977696474683a203630253b0a0970616464696e673a203270783b0a09666f6e742d73697a653a2031656d3b0a096c696e652d6865696768743a20312e34656d3b0a7d0a0a6c6162656c207b0a09637572736f723a2064656661756c743b0a0970616464696e672d72696768743a203570783b0a09636f6c6f723a20233637363736373b0a7d0a0a6c6162656c20696e707574207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a7d0a0a6c6162656c20696d67207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a7d0a0a2f2a20446566696e6974696f6e206c697374206c61796f757420666f7220666f726d730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a6669656c6473657420646c207b0a0970616464696e673a2034707820303b0a7d0a0a6669656c64736574206474207b0a09666c6f61743a206c6566743b090a0977696474683a203430253b0a09746578742d616c69676e3a206c6566743b0a09646973706c61793a20626c6f636b3b0a7d0a0a6669656c64736574206464207b0a096d617267696e2d6c6566743a203431253b0a09766572746963616c2d616c69676e3a20746f703b0a096d617267696e2d626f74746f6d3a203370783b0a7d0a0a2f2a205370656369666963206c61796f75742031202a2f0a6669656c647365742e6669656c647331206474207b0a0977696474683a203135656d3b0a09626f726465722d72696768742d77696474683a20303b0a7d0a0a6669656c647365742e6669656c647331206464207b0a096d617267696e2d6c6566743a203135656d3b0a09626f726465722d6c6566742d77696474683a20303b0a7d0a0a6669656c647365742e6669656c647331207b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a6669656c647365742e6669656c64733120646976207b0a096d617267696e2d626f74746f6d3a203370783b0a7d0a0a2f2a205370656369666963206c61796f75742032202a2f0a6669656c647365742e6669656c647332206474207b0a0977696474683a203135656d3b0a09626f726465722d72696768742d77696474683a20303b0a7d0a0a6669656c647365742e6669656c647332206464207b0a096d617267696e2d6c6566743a203136656d3b0a09626f726465722d6c6566742d77696474683a20303b0a7d0a0a2f2a20466f726d20656c656d656e7473202a2f0a6474206c6162656c207b0a09666f6e742d7765696768743a20626f6c643b0a09746578742d616c69676e3a206c6566743b0a7d0a0a6464206c6162656c207b0a0977686974652d73706163653a206e6f777261703b0a09636f6c6f723a20233333333b0a7d0a0a646420696e7075742c206464207465787461726561207b0a096d617267696e2d72696768743a203370783b0a7d0a0a64642073656c656374207b0a0977696474683a206175746f3b0a7d0a0a6464207465787461726561207b0a0977696474683a203835253b0a7d0a0a2f2a20486f7665722065666665637473202a2f0a6669656c6473657420646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e6669656c64733220646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20696e68657269743b0a7d0a0a2374696d657a6f6e65207b0a0977696474683a203935253b0a7d0a0a2a2068746d6c202374696d657a6f6e65207b0a0977696474683a203530253b0a7d0a0a2f2a20517569636b2d6c6f67696e206f6e20696e6465782070616765202a2f0a6669656c647365742e717569636b2d6c6f67696e207b0a096d617267696e2d746f703a203570783b0a7d0a0a6669656c647365742e717569636b2d6c6f67696e20696e707574207b0a0977696474683a206175746f3b0a7d0a0a6669656c647365742e717569636b2d6c6f67696e20696e7075742e696e707574626f78207b0a0977696474683a203135253b0a09766572746963616c2d616c69676e3a206d6964646c653b0a096d617267696e2d72696768743a203570783b0a096261636b67726f756e642d636f6c6f723a20236633663366333b0a7d0a0a6669656c647365742e717569636b2d6c6f67696e206c6162656c207b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e672d72696768743a203270783b0a7d0a0a2f2a20446973706c6179206f7074696f6e73206f6e2076696577746f7069632f76696577666f72756d20706167657320202a2f0a6669656c647365742e646973706c61792d6f7074696f6e73207b0a09746578742d616c69676e3a2063656e7465723b0a096d617267696e3a2033707820302035707820303b0a7d0a0a6669656c647365742e646973706c61792d6f7074696f6e73206c6162656c207b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e672d72696768743a203270783b0a7d0a0a6669656c647365742e646973706c61792d6f7074696f6e732061207b0a096d617267696e2d746f703a203370783b0a7d0a0a2f2a20446973706c617920616374696f6e7320666f722075637020616e64206d6370207061676573202a2f0a6669656c647365742e646973706c61792d616374696f6e73207b0a09746578742d616c69676e3a2072696768743b0a096c696e652d6865696768743a2032656d3b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e672d72696768743a2031656d3b0a7d0a0a6669656c647365742e646973706c61792d616374696f6e73206c6162656c207b0a0977686974652d73706163653a206e6f777261703b0a0970616464696e672d72696768743a203270783b0a7d0a0a6669656c647365742e736f72742d6f7074696f6e73207b0a096c696e652d6865696768743a2032656d3b0a7d0a0a2f2a204d435020666f72756d2073656c656374696f6e2a2f0a6669656c647365742e666f72756d2d73656c656374696f6e207b0a096d617267696e3a2035707820302033707820303b0a09666c6f61743a2072696768743b0a7d0a0a6669656c647365742e666f72756d2d73656c656374696f6e32207b0a096d617267696e3a203133707820302033707820303b0a09666c6f61743a2072696768743b0a7d0a0a2f2a204a756d70626f78202a2f0a6669656c647365742e6a756d70626f78207b0a09746578742d616c69676e3a2072696768743b0a096d617267696e2d746f703a20313570783b0a096865696768743a20322e35656d3b0a7d0a0a6669656c647365742e717569636b6d6f64207b0a0977696474683a203530253b0a09666c6f61743a2072696768743b0a09746578742d616c69676e3a2072696768743b0a096865696768743a20322e35656d3b0a7d0a0a2f2a205375626d697420627574746f6e206669656c64736574202a2f0a6669656c647365742e7375626d69742d627574746f6e73207b0a09746578742d616c69676e3a2063656e7465723b0a09766572746963616c2d616c69676e3a206d6964646c653b0a096d617267696e3a2035707820303b0a7d0a0a6669656c647365742e7375626d69742d627574746f6e7320696e707574207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a0970616464696e672d746f703a203370783b0a0970616464696e672d626f74746f6d3a203370783b0a7d0a0a2f2a20506f7374696e672070616765207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2f2a20427574746f6e73207573656420696e2074686520656469746f72202a2f0a23666f726d61742d627574746f6e73207b0a096d617267696e3a203135707820302032707820303b0a7d0a0a23666f726d61742d627574746f6e7320696e7075742c2023666f726d61742d627574746f6e732073656c656374207b0a09766572746963616c2d616c69676e3a206d6964646c653b0a7d0a0a2f2a204d61696e206d65737361676520626f78202a2f0a236d6573736167652d626f78207b0a0977696474683a203830253b0a7d0a0a236d6573736167652d626f78207465787461726561207b0a09666f6e742d66616d696c793a2022547265627563686574204d53222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a0977696474683a20313030253b0a09666f6e742d73697a653a20312e32656d3b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20456d6f7469636f6e732070616e656c202a2f0a23736d696c65792d626f78207b0a0977696474683a203138253b0a09666c6f61743a2072696768743b0a7d0a0a23736d696c65792d626f7820696d67207b0a096d617267696e3a203370783b0a7d0a0a2f2a20496e707574206669656c64207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e696e707574626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465723a2031707820736f6c696420236330633063303b0a09636f6c6f723a20233333333333333b0a0970616464696e673a203270783b0a09637572736f723a20746578743b0a7d0a0a2e696e707574626f783a686f766572207b0a09626f726465723a2031707820736f6c696420236561656165613b0a7d0a0a2e696e707574626f783a666f637573207b0a09626f726465723a2031707820736f6c696420236561656165613b0a09636f6c6f723a20233462346234623b0a7d0a0a696e7075742e696e707574626f78097b2077696474683a203835253b207d0a696e7075742e6d656469756d097b2077696474683a203530253b207d0a696e7075742e6e6172726f77097b2077696474683a203235253b207d0a696e7075742e74696e7909097b2077696474683a2031323570783b207d0a0a74657874617265612e696e707574626f78207b0a0977696474683a203835253b0a7d0a0a2e6175746f7769647468207b0a0977696474683a206175746f2021696d706f7274616e743b0a7d0a0a2f2a20466f726d20627574746f6e207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a696e7075742e627574746f6e312c20696e7075742e627574746f6e32207b0a09666f6e742d73697a653a2031656d3b0a7d0a0a612e627574746f6e312c20696e7075742e627574746f6e312c20696e7075742e627574746f6e332c20612e627574746f6e322c20696e7075742e627574746f6e32207b0a0977696474683a206175746f2021696d706f7274616e743b0a0970616464696e672d746f703a203170783b0a0970616464696e672d626f74746f6d3a203170783b0a09666f6e742d66616d696c793a20224c7563696461204772616e6465222c2056657264616e612c2048656c7665746963612c20417269616c2c2073616e732d73657269663b0a09636f6c6f723a20233030303b0a096261636b67726f756e643a2023464146414641206e6f6e65207265706561742d7820746f703b0a7d0a0a612e627574746f6e312c20696e7075742e627574746f6e31207b0a09666f6e742d7765696768743a20626f6c643b0a09626f726465723a2031707820736f6c696420233636363636363b0a7d0a0a696e7075742e627574746f6e33207b0a0970616464696e673a20303b0a096d617267696e3a20303b0a096c696e652d6865696768743a203570783b0a096865696768743a20313270783b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a09666f6e742d76617269616e743a20736d616c6c2d636170733b0a7d0a0a2f2a20416c7465726e617469766520627574746f6e202a2f0a612e627574746f6e322c20696e7075742e627574746f6e322c20696e7075742e627574746f6e33207b0a09626f726465723a2031707820736f6c696420233636363636363b0a7d0a0a2f2a203c613e20627574746f6e20696e20746865207374796c65206f662074686520666f726d20627574746f6e73202a2f0a612e627574746f6e312c20612e627574746f6e313a6c696e6b2c20612e627574746f6e313a766973697465642c20612e627574746f6e313a6163746976652c20612e627574746f6e322c20612e627574746f6e323a6c696e6b2c20612e627574746f6e323a766973697465642c20612e627574746f6e323a616374697665207b0a09746578742d6465636f726174696f6e3a206e6f6e653b0a09636f6c6f723a20233030303030303b0a0970616464696e673a20327078203870783b0a096c696e652d6865696768743a20323530253b0a09766572746963616c2d616c69676e3a20746578742d626f74746f6d3b0a096261636b67726f756e642d706f736974696f6e3a2030203170783b0a7d0a0a2f2a20486f76657220737461746573202a2f0a612e627574746f6e313a686f7665722c20696e7075742e627574746f6e313a686f7665722c20612e627574746f6e323a686f7665722c20696e7075742e627574746f6e323a686f7665722c20696e7075742e627574746f6e333a686f766572207b0a09626f726465723a2031707820736f6c696420234243424342433b0a096261636b67726f756e642d706f736974696f6e3a203020313030253b0a09636f6c6f723a20234243424342433b0a7d0a0a696e7075742e64697361626c6564207b0a09666f6e742d7765696768743a206e6f726d616c3b0a09636f6c6f723a20233636363636363b0a7d0a0a2f2a20546f70696320616e6420666f72756d20536561726368202a2f0a2e7365617263682d626f78207b0a096d617267696e2d746f703a203370783b0a096d617267696e2d6c6566743a203570783b0a09666c6f61743a206c6566743b0a7d0a0a2e7365617263682d626f7820696e707574207b0a7d0a0a696e7075742e736561726368207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a096261636b67726f756e642d7265706561743a206e6f2d7265706561743b0a096261636b67726f756e642d706f736974696f6e3a206c656674203170783b0a0970616464696e672d6c6566743a20313770783b0a7d0a0a2e66756c6c207b2077696474683a203935253b207d0a2e6d656469756d207b2077696474683a203530253b7d0a2e6e6172726f77207b2077696474683a203235253b7d0a2e74696e79207b2077696474683a203130253b7d0a2f2a2070726f53696c766572205374796c6520536865657420547765616b730a0a5468657365207374796c6520646566696e6974696f6e7320617265206d61696e6c79204945207370656369666963200a747765616b732072657175697265642064756520746f2069747320706f6f722043535320737570706f72742e0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2a2068746d6c207461626c652c202a2068746d6c2073656c6563742c202a2068746d6c20696e707574207b20666f6e742d73697a653a20313030253b207d0a2a2068746d6c206872207b206d617267696e3a20303b207d0a2a2068746d6c207370616e2e636f726e6572732d746f702c202a2068746d6c207370616e2e636f726e6572732d626f74746f6d207b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e67696622293b207d0a2a2068746d6c207370616e2e636f726e6572732d746f70207370616e2c202a2068746d6c207370616e2e636f726e6572732d626f74746f6d207370616e207b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e67696622293b207d0a0a7461626c652e7461626c6531207b0a0977696474683a203939253b09092f2a204945203c20362062726f7773657273202a2f0a092f2a2054616e74656b206861636b202a2f0a09766f6963652d66616d696c793a20225c227d5c22223b0a09766f6963652d66616d696c793a20696e68657269743b0a0977696474683a20313030253b0a7d0a68746d6c3e626f6479207461626c652e7461626c6531207b2077696474683a20313030253b207d092f2a205265736574203130302520666f72206f70657261202a2f0a0a2a2068746d6c20756c2e746f7069636c697374206c69207b20706f736974696f6e3a2072656c61746976653b207d0a2a2068746d6c202e706f7374626f647920683320696d67207b20766572746963616c2d616c69676e3a206d6964646c653b207d0a0a2f2a20466f726d207374796c6573202a2f0a68746d6c3e626f6479206464206c6162656c20696e707574207b20766572746963616c2d616c69676e3a20746578742d626f74746f6d3b207d092f2a20416c69676e20636865636b626f7865732f726164696f20627574746f6e73206e6963656c79202a2f0a0a2a2068746d6c20696e7075742e627574746f6e312c202a2068746d6c20696e7075742e627574746f6e32207b0a0970616464696e672d626f74746f6d3a20303b0a096d617267696e2d626f74746f6d3a203170783b0a7d0a0a2f2a204d697363206c61796f7574207374796c6573202a2f0a2a2068746d6c202e636f6c756d6e312c202a2068746d6c202e636f6c756d6e32207b2077696474683a203435253b207d0a0a2f2a204e696365206d6574686f6420666f7220636c656172696e6720666c6f6174656420626c6f636b7320776974686f757420686176696e6720746f20696e7365727420616e79206578747261206d61726b757020286c696b65207370616365722061626f7665290a20202046726f6d20687474703a2f2f7777772e706f736974696f6e697365766572797468696e672e6e65742f65617379636c656172696e672e68746d6c200a23746162733a61667465722c20236d696e69746162733a61667465722c202e706f73743a61667465722c202e6e61766261723a61667465722c206669656c6473657420646c3a61667465722c20756c2e746f7069636c69737420646c3a61667465722c20756c2e6c696e6b6c6973743a61667465722c20646c2e706f6c6c733a6166746572207b0a09636f6e74656e743a20222e223b200a09646973706c61793a20626c6f636b3b200a096865696768743a20303b200a09636c6561723a20626f74683b200a097669736962696c6974793a2068696464656e3b0a7d2a2f0a0a2e636c6561726669782c2023746162732c20236d696e69746162732c206669656c6473657420646c2c20756c2e746f7069636c69737420646c2c20646c2e706f6c6c73207b0a096865696768743a2031253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a2076696577746f70696320666978202a2f0a2a2068746d6c202e706f7374207b0a096865696768743a203235253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a206e617662617220666978202a2f0a2a2068746d6c202e636c6561726669782c202a2068746d6c202e6e61766261722c20756c2e6c696e6b6c697374207b0a096865696768743a2034253b0a096f766572666c6f773a2068696464656e3b0a7d0a0a2f2a2053696d706c652066697820736f20666f72756d20616e6420746f706963206c6973747320616c7761797320686176652061206d696e2d686569676874207365742c206576656e20696e204945360a0946726f6d20687474703a2f2f7777772e64757374696e6469617a2e636f6d2f6d696e2d6865696768742d666173742d6861636b202a2f0a646c2e69636f6e207b0a096d696e2d6865696768743a20333570783b0a096865696768743a206175746f2021696d706f7274616e743b0a096865696768743a20333570783b0a7d0a0a2a2068746d6c20237365617263682d626f78207b0a0977696474683a203235253b0a7d0a0a2f2a20436f72726563746c7920636c65617220666c6f6174696e6720666f722064657461696c73206f6e2070726f66696c652076696577202a2f0a2a3a66697273742d6368696c642b68746d6c20646c2e64657461696c73206464207b0a096d617267696e2d6c6566743a203330253b0a09666c6f61743a206e6f6e653b0a7d0a0a2a2068746d6c20646c2e64657461696c73206464207b0a096d617267696e2d6c6566743a203330253b0a09666c6f61743a206e6f6e653b0a7d0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220636f6d6d6f6e2e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a68746d6c2c20626f6479207b0a09636f6c6f723a20236231373630313b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a6831207b0a09636f6c6f723a20234646464646463b0a7d0a0a6832207b0a09636f6c6f723a20233238333133463b0a7d0a0a6833207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234343434343433b0a09636f6c6f723a20233931363030313b0a7d0a0a6872207b0a09626f726465722d636f6c6f723a20234646464646463b0a09626f726465722d746f702d636f6c6f723a20234343434343433b0a7d0a0a68722e646173686564207b0a09626f726465722d746f702d636f6c6f723a20234343434343433b0a7d0a0a2f2a2053656172636820626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a237365617263682d626f78207b0a09636f6c6f723a20234646464646463b0a7d0a0a237365617263682d626f7820236b6579776f726473207b0a096261636b67726f756e642d636f6c6f723a20234646463b0a7d0a0a237365617263682d626f7820696e707574207b0a09626f726465722d636f6c6f723a20233030373542303b0a7d0a0a2f2a20526f756e6420636f726e6572656420626f78657320616e64206261636b67726f756e64730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e686561646572626172207b0a096261636b67726f756e642d636f6c6f723a20236236383131373b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6865616465722e67696622293b0a09636f6c6f723a20234646464646463b0a7d0a0a2e6e6176626172207b0a096261636b67726f756e642d636f6c6f723a20236635623834373b0a7d0a0a2e666f72616267207b0a096261636b67726f756e642d636f6c6f723a20236237383231373b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6c6973742e67696622293b0a7d0a0a2e666f72756d6267207b0a096261636b67726f756e642d636f6c6f723a20236236383131373b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6865616465722e67696622293b0a7d0a0a2e70616e656c207b0a096261636b67726f756e642d636f6c6f723a20236662633237623b0a09636f6c6f723a20233238333133463b0a7d0a0a2e706f73743a746172676574202e636f6e74656e74207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e706f73743a7461726765742068332061207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e626731097b206261636b67726f756e642d636f6c6f723a20236539653665303b207d0a2e626732097b206261636b67726f756e642d636f6c6f723a20236630656565613b20207d0a2e626733097b206261636b67726f756e642d636f6c6f723a20236635623834373b207d0a0a2e756370726f776267207b0a096261636b67726f756e642d636f6c6f723a20234443444545323b0a7d0a0a2e6669656c64736267207b0a096261636b67726f756e642d636f6c6f723a20234537453845413b0a7d0a0a7370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e706e6722293b0a7d0a0a7370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e706e6722293b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e706e6722293b0a7d0a0a7370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e706e6722293b0a7d0a0a0a2f2a20486f72697a6f6e74616c206c697374730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a756c2e6e61766c696e6b73207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234646464646463b0a7d0a0a2f2a205461626c65207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a7461626c652e7461626c6531207468656164207468207b0a09636f6c6f723a20234646464646463b0a7d0a0a7461626c652e7461626c65312074626f6479207472207b0a09626f726465722d636f6c6f723a20234246433143463b0a7d0a0a7461626c652e7461626c65312074626f64792074723a686f7665722c207461626c652e7461626c65312074626f64792074722e686f766572207b0a096261636b67726f756e642d636f6c6f723a20236561653865333b0a09636f6c6f723a20233030303b0a7d0a0a7461626c652e7461626c6531207464207b0a09636f6c6f723a20236231373630313b0a7d0a0a7461626c652e7461626c65312074626f6479207464207b0a09626f726465722d746f702d636f6c6f723a20234641464146413b0a7d0a0a7461626c652e7461626c65312074626f6479207468207b0a09626f726465722d626f74746f6d2d636f6c6f723a20233030303030303b0a09636f6c6f723a20233333333333333b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a7461626c652e696e666f2074626f6479207468207b0a09636f6c6f723a20233030303030303b0a7d0a0a2f2a204d697363206c61796f7574207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a646c2e64657461696c73206474207b0a09636f6c6f723a20233030303030303b0a7d0a0a646c2e64657461696c73206464207b0a09636f6c6f723a20236231373630313b0a7d0a0a2e736570207b0a09636f6c6f723a20233131393844393b0a7d0a0a2f2a20506167696e6174696f6e0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2e706167696e6174696f6e207370616e207374726f6e67207b0a09636f6c6f723a20234646464646463b0a096261636b67726f756e642d636f6c6f723a20233436393242463b0a09626f726465722d636f6c6f723a20233436393242463b0a7d0a0a2e706167696e6174696f6e207370616e20612c202e706167696e6174696f6e207370616e20613a6c696e6b2c202e706167696e6174696f6e207370616e20613a766973697465642c202e706167696e6174696f6e207370616e20613a616374697665207b0a09636f6c6f723a20233543373538433b0a096261636b67726f756e642d636f6c6f723a20234543454445453b0a09626f726465722d636f6c6f723a20234234424143303b0a7d0a0a2e706167696e6174696f6e207370616e20613a686f766572207b0a09626f726465722d636f6c6f723a20233336384144323b0a096261636b67726f756e642d636f6c6f723a20233336384144323b0a09636f6c6f723a20234646463b0a7d0a0a2f2a20506167696e6174696f6e20696e2076696577666f72756d20666f72206d756c74697061676520746f70696373202a2f0a2e726f77202e706167696e6174696f6e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f70616765732e67696622293b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20612c206c692e706167696e6174696f6e207370616e2061207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2e726f77202e706167696e6174696f6e207370616e20613a686f7665722c206c692e706167696e6174696f6e207370616e20613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20233336384144323b0a7d0a0a2f2a204d697363656c6c616e656f7573207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2e636f70797269676874207b0a09636f6c6f723a20233535353535353b0a7d0a0a2e6572726f72207b0a09636f6c6f723a20236464396431633b0a7d0a0a2e7265706f72746564207b0a096261636b67726f756e642d636f6c6f723a20234637454345463b0a7d0a0a6c692e7265706f727465643a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234543443544382021696d706f7274616e743b0a7d0a2e737469636b792c202e616e6e6f756e6365207b0a092f2a20796f752063616e206164642061206261636b67726f756e6420666f7220737469636b69657320616e6420616e6e6f756e63656d656e74732a2f0a7d0a0a6469762e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20234543443544383b0a09636f6c6f723a20236464396431633b0a7d0a0a702e72756c6573207b0a096261636b67726f756e642d636f6c6f723a20234543443544383b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f72206c696e6b732e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a613a6c696e6b097b20636f6c6f723a20233931363030313b207d0a613a76697369746564097b20636f6c6f723a20233931363030313b207d0a613a686f766572097b20636f6c6f723a20233866356630303b207d0a613a616374697665097b20636f6c6f723a20233336384144323b207d0a0a2f2a204c696e6b73206f6e206772616469656e74206261636b67726f756e6473202a2f0a237365617263682d626f7820613a6c696e6b2c202e6e6176626720613a6c696e6b2c202e666f72756d6267202e68656164657220613a6c696e6b2c202e666f72616267202e68656164657220613a6c696e6b2c20746820613a6c696e6b207b0a09636f6c6f723a20234646464646463b0a7d0a0a237365617263682d626f7820613a766973697465642c202e6e6176626720613a766973697465642c202e666f72756d6267202e68656164657220613a766973697465642c202e666f72616267202e68656164657220613a766973697465642c20746820613a76697369746564207b0a09636f6c6f723a20234646464646463b0a7d0a0a237365617263682d626f7820613a686f7665722c202e6e6176626720613a686f7665722c202e666f72756d6267202e68656164657220613a686f7665722c202e666f72616267202e68656164657220613a686f7665722c20746820613a686f766572207b0a09636f6c6f723a20234138443846463b0a7d0a0a237365617263682d626f7820613a6163746976652c202e6e6176626720613a6163746976652c202e666f72756d6267202e68656164657220613a6163746976652c202e666f72616267202e68656164657220613a6163746976652c20746820613a616374697665207b0a09636f6c6f723a20234338453646463b0a7d0a0a2f2a204c696e6b7320666f7220666f72756d2f746f706963206c69737473202a2f0a612e666f72756d7469746c65207b0a09636f6c6f723a20233931363030313b0a7d0a0a2f2a20612e666f72756d7469746c653a76697369746564207b20636f6c6f723a20233931363030313b207d202a2f0a0a612e666f72756d7469746c653a686f766572207b0a09636f6c6f723a20236464396431633b0a7d0a0a612e666f72756d7469746c653a616374697665207b0a09636f6c6f723a20233931363030313b0a7d0a0a612e746f7069637469746c65207b0a09636f6c6f723a20233931363030313b0a7d0a0a2f2a20612e746f7069637469746c653a76697369746564207b20636f6c6f723a20233336384144323b207d202a2f0a0a612e746f7069637469746c653a686f766572207b0a09636f6c6f723a20236464396431633b0a7d0a0a612e746f7069637469746c653a616374697665207b0a09636f6c6f723a20233931363030313b0a7d0a0a2f2a20506f737420626f6479206c696e6b73202a2f0a2e706f73746c696e6b207b0a09636f6c6f723a20233336384144323b0a09626f726465722d626f74746f6d2d636f6c6f723a20233336384144323b0a7d0a0a2e706f73746c696e6b3a76697369746564207b0a09636f6c6f723a20233544384642443b0a09626f726465722d626f74746f6d2d636f6c6f723a20233636363636363b0a7d0a0a2e706f73746c696e6b3a616374697665207b0a09636f6c6f723a20233336384144323b0a7d0a0a2e706f73746c696e6b3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234430453446363b0a09636f6c6f723a20233044343437333b0a7d0a0a2e7369676e617475726520612c202e7369676e617475726520613a766973697465642c202e7369676e617475726520613a6163746976652c202e7369676e617475726520613a686f766572207b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a2f2a2050726f66696c65206c696e6b73202a2f0a2e706f737470726f66696c6520613a6c696e6b2c202e706f737470726f66696c6520613a6163746976652c202e706f737470726f66696c6520613a766973697465642c202e706f737470726f66696c652064742e617574686f722061207b0a09636f6c6f723a20233931363030313b0a7d0a0a2e706f737470726f66696c6520613a686f7665722c202e706f737470726f66696c652064742e617574686f7220613a686f766572207b0a09636f6c6f723a20233866356630303b0a7d0a0a2f2a2050726f66696c6520736561726368726573756c7473202a2f090a2e736561726368202e706f737470726f66696c652061207b0a09636f6c6f723a20233931363030313b0a7d0a0a2e736561726368202e706f737470726f66696c6520613a686f766572207b0a09636f6c6f723a20233866356630303b0a7d0a0a2f2a204261636b20746f20746f70206f662070616765202a2f0a612e746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f4241434b5f544f505f5352437d22293b0a7d0a0a612e746f7032207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f4241434b5f544f505f5352437d22293b0a7d0a0a2f2a204172726f77206c696e6b7320202a2f0a612e757009097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f75702e6769662229207d0a612e646f776e09097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f646f776e2e6769662229207d0a612e6c65667409097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f6c6566742e6769662229207d0a612e726967687409097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6172726f775f72696768742e6769662229207d0a0a612e75703a686f766572207b0a096261636b67726f756e642d636f6c6f723a207472616e73706172656e743b0a7d0a0a612e6c6566743a686f766572207b0a09636f6c6f723a20233336384144323b0a7d0a0a612e72696768743a686f766572207b0a09636f6c6f723a20233336384144323b0a7d0a0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220636f6e74656e742e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a756c2e666f72756d73207b0a096261636b67726f756e642d636f6c6f723a20236565663566393b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f6772616469656e742e67696622293b0a7d0a0a756c2e746f7069636c697374206c69207b0a09636f6c6f723a20236331383130323b0a7d0a0a756c2e746f7069636c697374206464207b0a09626f726465722d6c6566742d636f6c6f723a20234646464646463b0a7d0a0a2e72746c20756c2e746f7069636c697374206464207b0a09626f726465722d72696768742d636f6c6f723a20236666663b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a756c2e746f7069636c697374206c692e726f7720647420612e737562666f72756d2e72656164207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f535542464f52554d5f524541445f5352437d22293b0a7d0a0a756c2e746f7069636c697374206c692e726f7720647420612e737562666f72756d2e756e72656164207b0a096261636b67726f756e642d696d6167653a2075726c28227b494d475f535542464f52554d5f554e524541445f5352437d22293b0a7d0a0a6c692e726f77207b0a09626f726465722d746f702d636f6c6f723a2020234646464646463b0a09626f726465722d626f74746f6d2d636f6c6f723a20236337386431393b0a7d0a0a6c692e726f77207374726f6e67207b0a09636f6c6f723a20233030303030303b0a7d0a0a6c692e726f773a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234636463444303b0a7d0a0a6c692e726f773a686f766572206464207b0a09626f726465722d6c6566742d636f6c6f723a20234343434343433b0a7d0a0a2e72746c206c692e726f773a686f766572206464207b0a09626f726465722d72696768742d636f6c6f723a20234343434343433b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a6c692e6865616465722064742c206c692e686561646572206464207b0a09636f6c6f723a20234646464646463b0a7d0a0a2f2a20466f72756d206c69737420636f6c756d6e207374796c6573202a2f0a756c2e746f7069636c6973742064642e7365617263686578747261207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20506f737420626f6479207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f7374626f6479207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20436f6e74656e7420636f6e7461696e6572207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e636f6e74656e74207b0a09636f6c6f723a20233333333333333b0a7d0a0a2e636f6e74656e742068322c202e70616e656c206832207b0a09636f6c6f723a20233931363030313b0a09626f726465722d626f74746f6d2d636f6c6f723a2020234343434343433b0a7d0a0a646c2e666171206474207b0a09636f6c6f723a20233333333333333b0a7d0a0a2e706f737468696c6974207b0a096261636b67726f756e642d636f6c6f723a20234633424643433b0a09636f6c6f723a20236464396431633b0a7d0a0a2f2a20506f7374207369676e6174757265202a2f0a2e7369676e6174757265207b0a09626f726465722d746f702d636f6c6f723a20234343434343433b0a7d0a0a2f2a20506f7374206e6f746963696573202a2f0a2e6e6f74696365207b0a09626f726465722d746f702d636f6c6f723a2020234343434343433b0a7d0a0a2f2a20424220436f6465207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a2051756f746520626c6f636b202a2f0a626c6f636b71756f7465207b0a096261636b67726f756e642d636f6c6f723a20234542454144443b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f71756f74652e67696622293b0a09626f726465722d636f6c6f723a234442444243453b0a7d0a0a626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a234546454544393b0a7d0a0a626c6f636b71756f746520626c6f636b71756f746520626c6f636b71756f7465207b0a092f2a204e65737465642071756f746573202a2f0a096261636b67726f756e642d636f6c6f723a20234542454144443b0a7d0a0a2f2a20436f646520626c6f636b202a2f0a646c2e636f6465626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465722d636f6c6f723a20234339443244383b0a7d0a0a646c2e636f6465626f78206474207b0a09626f726465722d626f74746f6d2d636f6c6f723a2020234343434343433b0a7d0a0a646c2e636f6465626f7820636f6465207b0a09636f6c6f723a20233245384235373b0a7d0a0a2e73796e746178626709097b20636f6c6f723a20234646464646463b207d0a2e73796e746178636f6d6d656e74097b20636f6c6f723a20234646383030303b207d0a2e73796e74617864656661756c74097b20636f6c6f723a20233030303042423b207d0a2e73796e74617868746d6c09097b20636f6c6f723a20233030303030303b207d0a2e73796e7461786b6579776f7264097b20636f6c6f723a20233030373730303b207d0a2e73796e746178737472696e67097b20636f6c6f723a20234444303030303b207d0a0a2f2a204174746163686d656e74730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e617474616368626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465722d636f6c6f723a2020234339443244383b0a7d0a0a2e706d2d6d657373616765202e617474616368626f78207b0a096261636b67726f756e642d636f6c6f723a20234632463346333b0a7d0a0a2e617474616368626f78206464207b0a09626f726465722d746f702d636f6c6f723a20234339443244383b0a7d0a0a2e617474616368626f782070207b0a09636f6c6f723a20233636363636363b0a7d0a0a2e617474616368626f7820702e7374617473207b0a09636f6c6f723a20233636363636363b0a7d0a0a2e6174746163682d696d61676520696d67207b0a09626f726465722d636f6c6f723a20233939393939393b0a7d0a0a2f2a20496e6c696e6520696d616765207468756d626e61696c73202a2f0a0a646c2e66696c65206464207b0a09636f6c6f723a20233636363636363b0a7d0a0a646c2e7468756d626e61696c20696d67207b0a09626f726465722d636f6c6f723a20233636363636363b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a646c2e7468756d626e61696c206464207b0a09636f6c6f723a20233636363636363b0a7d0a0a646c2e7468756d626e61696c20647420613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545454545453b0a7d0a0a646c2e7468756d626e61696c20647420613a686f76657220696d67207b0a09626f726465722d636f6c6f723a20233336384144323b0a7d0a0a2f2a20506f737420706f6c6c207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a6669656c647365742e706f6c6c7320646c207b0a09626f726465722d746f702d636f6c6f723a20234443444545323b0a09636f6c6f723a20233636363636363b0a7d0a0a6669656c647365742e706f6c6c7320646c2e766f746564207b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e706f6c6c7320646420646976207b0a09636f6c6f723a20234646464646463b0a7d0a0a2e72746c202e706f6c6c626172312c202e72746c202e706f6c6c626172322c202e72746c202e706f6c6c626172332c202e72746c202e706f6c6c626172342c202e72746c202e706f6c6c62617235207b0a09626f726465722d72696768742d636f6c6f723a207472616e73706172656e743b0a7d0a0a2e706f6c6c62617231207b0a096261636b67726f756e642d636f6c6f723a20234141323334363b0a09626f726465722d626f74746f6d2d636f6c6f723a20233734313632433b0a09626f726465722d72696768742d636f6c6f723a20233734313632433b0a7d0a0a2e72746c202e706f6c6c62617231207b0a09626f726465722d6c6566742d636f6c6f723a20233734313632433b0a7d0a0a2e706f6c6c62617232207b0a096261636b67726f756e642d636f6c6f723a20234245314534413b0a09626f726465722d626f74746f6d2d636f6c6f723a20233843314333383b0a09626f726465722d72696768742d636f6c6f723a20233843314333383b0a7d0a0a2e72746c202e706f6c6c62617232207b0a09626f726465722d6c6566742d636f6c6f723a20233843314333383b0a7d0a0a2e706f6c6c62617233207b0a096261636b67726f756e642d636f6c6f723a20234431314134453b0a09626f726465722d626f74746f6d2d636f6c6f723a20234141323334363b0a09626f726465722d72696768742d636f6c6f723a20234141323334363b0a7d0a0a2e72746c202e706f6c6c62617233207b0a09626f726465722d6c6566742d636f6c6f723a20234141323334363b0a7d0a0a2e706f6c6c62617234207b0a096261636b67726f756e642d636f6c6f723a20234534313635333b0a09626f726465722d626f74746f6d2d636f6c6f723a20234245314534413b0a09626f726465722d72696768742d636f6c6f723a20234245314534413b0a7d0a0a2e72746c202e706f6c6c62617234207b0a09626f726465722d6c6566742d636f6c6f723a20234245314534413b0a7d0a0a2e706f6c6c62617235207b0a096261636b67726f756e642d636f6c6f723a20234638313135373b0a09626f726465722d626f74746f6d2d636f6c6f723a20234431314134453b0a09626f726465722d72696768742d636f6c6f723a20234431314134453b0a7d0a0a2e72746c202e706f6c6c62617235207b0a09626f726465722d6c6566742d636f6c6f723a20234431314134453b0a7d0a0a2f2a20506f737465722070726f66696c6520626c6f636b0a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2e706f737470726f66696c65207b0a09636f6c6f723a20233636363636363b0a09626f726465722d6c6566742d636f6c6f723a20234646464646463b0a7d0a0a2e72746c202e706f737470726f66696c65207b0a09626f726465722d72696768742d636f6c6f723a20234646464646463b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a2e706d202e706f737470726f66696c65207b0a09626f726465722d6c6566742d636f6c6f723a20234444444444443b0a7d0a0a2e72746c202e706d202e706f737470726f66696c65207b0a09626f726465722d72696768742d636f6c6f723a20234444444444443b0a09626f726465722d6c6566742d636f6c6f723a207472616e73706172656e743b0a7d0a0a2e706f737470726f66696c65207374726f6e67207b0a09636f6c6f723a20233030303030303b0a7d0a0a2e6f6e6c696e65207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f494d4147455345545f4c414e475f504154487d2f69636f6e5f757365725f6f6e6c696e652e67696622293b0a7d0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220627574746f6e732e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a2042696720627574746f6e20696d61676573202a2f0a2e7265706c792d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f544f5049435f5245504c595f5352437d22293b207d0a2e706f73742d69636f6e207370616e09097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f544f5049435f4e45575f5352437d22293b207d0a2e6c6f636b65642d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f544f5049435f4c4f434b45445f5352437d22293b207d0a2e706d7265706c792d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f504d5f5245504c595f5352437d2229203b7d0a2e6e6577706d2d69636f6e207370616e20097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f504d5f4e45575f5352437d2229203b7d0a2e666f7277617264706d2d69636f6e207370616e097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f425554544f4e5f504d5f464f52574152445f5352437d2229203b7d0a0a612e7072696e74207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7072696e742e67696622293b0a7d0a0a612e73656e64656d61696c207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f73656e64656d61696c2e67696622293b0a7d0a0a612e666f6e7473697a65207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f666f6e7473697a652e67696622293b0a7d0a0a2f2a2049636f6e20696d616765730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e73697465686f6d650909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f686f6d652e67696622293b207d0a2e69636f6e2d6661710909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f6661712e67696622293b207d0a2e69636f6e2d6d656d6265727309090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f6d656d626572732e67696622293b207d0a2e69636f6e2d686f6d650909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f686f6d652e67696622293b207d0a2e69636f6e2d7563700909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7563702e67696622293b207d0a2e69636f6e2d726567697374657209090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f72656769737465722e67696622293b207d0a2e69636f6e2d6c6f676f757409090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f6c6f676f75742e67696622293b207d0a2e69636f6e2d626f6f6b6d61726b09090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f626f6f6b6d61726b2e67696622293b207d0a2e69636f6e2d62756d700909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f62756d702e67696622293b207d0a2e69636f6e2d73756273637269626509090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7375627363726962652e67696622293b207d0a2e69636f6e2d756e737562736372696265090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f756e7375627363726962652e67696622293b207d0a2e69636f6e2d70616765730909090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f70616765732e67696622293b207d0a2e69636f6e2d73656172636809090909097b206261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f7365617263682e67696622293b207d0a0a2f2a2050726f66696c652026206e617669676174696f6e2069636f6e73202a2f0a2e656d61696c2d69636f6e2c202e656d61696c2d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f454d41494c5f5352437d22293b207d0a2e61696d2d69636f6e2c202e61696d2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f41494d5f5352437d22293b207d0a2e7961686f6f2d69636f6e2c202e7961686f6f2d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f5941484f4f5f5352437d22293b207d0a2e7765622d69636f6e2c202e7765622d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f5757575f5352437d22293b207d0a2e6d736e6d2d69636f6e2c202e6d736e6d2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f4d534e4d5f5352437d22293b207d0a2e6963712d69636f6e2c202e6963712d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f4943515f5352437d22293b207d0a2e6a61626265722d69636f6e2c202e6a61626265722d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f4a41424245525f5352437d22293b207d0a2e706d2d69636f6e2c202e706d2d69636f6e2061090909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f434f4e544143545f504d5f5352437d22293b207d0a2e71756f74652d69636f6e2c202e71756f74652d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f51554f54455f5352437d22293b207d0a0a2f2a204d6f64657261746f722069636f6e73202a2f0a2e7265706f72742d69636f6e2c202e7265706f72742d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f5245504f52545f5352437d22293b207d0a2e656469742d69636f6e2c202e656469742d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f454449545f5352437d22293b207d0a2e64656c6574652d69636f6e2c202e64656c6574652d69636f6e206109097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f44454c4554455f5352437d22293b207d0a2e696e666f2d69636f6e2c202e696e666f2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f504f53545f494e464f5f5352437d22293b207d0a2e7761726e2d69636f6e2c202e7761726e2d69636f6e20610909097b206261636b67726f756e642d696d6167653a2075726c28227b494d475f49434f4e5f555345525f5741524e5f5352437d22293b207d202f2a204e6565642075706461746564207761726e2069636f6e202a2f0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f722063702e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a204d61696e20435020626f780a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2363702d6d61696e2068332c202363702d6d61696e2068722c202363702d6d656e75206872207b0a09626f726465722d636f6c6f723a20234134423342463b0a7d0a0a2363702d6d61696e202e70616e656c206c692e726f77207b0a09626f726465722d626f74746f6d2d636f6c6f723a20234235433143423b0a09626f726465722d746f702d636f6c6f723a20234639463946393b0a7d0a0a756c2e63706c697374207b0a09626f726465722d746f702d636f6c6f723a20234235433143423b0a7d0a0a2363702d6d61696e202e70616e656c206c692e6865616465722064642c202363702d6d61696e202e70616e656c206c692e686561646572206474207b0a09636f6c6f723a20233030303030303b0a7d0a0a2363702d6d61696e207461626c652e7461626c6531207468656164207468207b0a09636f6c6f723a20233333333333333b0a09626f726465722d626f74746f6d2d636f6c6f723a20233333333333333b0a7d0a0a2363702d6d61696e202e706d2d6d657373616765207b0a09626f726465722d636f6c6f723a20234442444545323b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2f2a20435020746162626564206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a23746162732061207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f74616273312e67696622293b0a7d0a0a23746162732061207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f74616273322e67696622293b0a09636f6c6f723a20236231373630313b0a7d0a0a237461627320613a686f766572207370616e207b0a09636f6c6f723a20236464396431633b0a7d0a0a2374616273202e6163746976657461622061207b0a09626f726465722d626f74746f6d2d636f6c6f723a20236635623834373b0a7d0a0a2374616273202e6163746976657461622061207370616e207b0a09636f6c6f723a20233333333333333b0a7d0a0a2374616273202e61637469766574616220613a686f766572207370616e207b0a09636f6c6f723a20233030303030303b0a7d0a0a2f2a204d696e6920746162626564206d656e75207573656420696e204d43500a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a236d696e6974616273206c69207b0a096261636b67726f756e642d636f6c6f723a20236630656565613b0a7d0a0a236d696e6974616273206c692e616374697665746162207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a236d696e6974616273206c692e61637469766574616220612c20236d696e6974616273206c692e61637469766574616220613a686f766572207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20554350206e617669676174696f6e206d656e750a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a2f2a204c696e6b207374796c657320666f7220746865207375622d73656374696f6e206c696e6b73202a2f0a236e617669676174696f6e2061207b0a09636f6c6f723a20233333333b0a096261636b67726f756e642d636f6c6f723a20236466643761353b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f6d656e752e67696622293b0a7d0a0a236e617669676174696f6e20613a686f766572207b0a096261636b67726f756e642d636f6c6f723a20236466643761353b0a09636f6c6f723a20236464396431633b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e2061207b0a09636f6c6f723a20233866356630303b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a236e617669676174696f6e20236163746976652d73756273656374696f6e20613a686f766572207b0a09636f6c6f723a20233866356630303b0a7d0a0a2f2a20507265666572656e6365732070616e65206c61796f75740a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2363702d6d61696e206832207b0a09636f6c6f723a20233333333333333b0a7d0a0a2363702d6d61696e202e70616e656c207b0a096261636b67726f756e642d636f6c6f723a20234639463946393b0a7d0a0a2363702d6d61696e202e706d207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f702c202363702d6d656e75207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c656674322e67696622293b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f7269676874322e67696622293b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c656674322e67696622293b0a7d0a0a2363702d6d61696e207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f7269676874322e67696622293b0a7d0a0a2f2a20546f706963726576696577202a2f0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f702c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e67696622293b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d746f70207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e67696622293b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f6c6566742e67696622293b0a7d0a0a2363702d6d61696e202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e2c202363702d6d656e75202e70616e656c2023746f706963726576696577207370616e2e636f726e6572732d626f74746f6d207370616e207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f636f726e6572735f72696768742e67696622293b0a7d0a0a2f2a20467269656e6473206c697374202a2f0a2e63702d6d696e69207b0a096261636b67726f756e642d636f6c6f723a20236565663566393b0a7d0a0a646c2e6d696e69206474207b0a09636f6c6f723a20233432353036373b0a7d0a0a2f2a20504d205374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a2f2a20504d204d65737361676520686973746f7279202a2f0a2e63757272656e74207b0a09636f6c6f723a20233939393939392021696d706f7274616e743b0a7d0a0a2f2a20504d206d61726b696e6720636f6c6f757273202a2f0a2e706d6c697374206c692e706d5f6d6573736167655f7265706f727465645f636f6c6f75722c202e706d5f6d6573736167655f7265706f727465645f636f6c6f7572207b0a09626f726465722d6c6566742d636f6c6f723a20236464396431633b0a09626f726465722d72696768742d636f6c6f723a20236464396431633b0a7d0a0a2e706d6c697374206c692e706d5f6d61726b65645f636f6c6f75722c202e706d5f6d61726b65645f636f6c6f7572207b0a09626f726465722d636f6c6f723a20234646363630303b0a7d0a0a2e706d6c697374206c692e706d5f7265706c6965645f636f6c6f75722c202e706d5f7265706c6965645f636f6c6f7572207b0a09626f726465722d636f6c6f723a20234139423843323b0a7d0a0a2e706d6c697374206c692e706d5f667269656e645f636f6c6f75722c202e706d5f667269656e645f636f6c6f7572207b0a09626f726465722d636f6c6f723a20233544384642443b0a7d0a0a706d6c697374206c692e706d5f666f655f636f6c6f75722c202e706d5f666f655f636f6c6f7572207b0a09626f726465722d636f6c6f723a20233030303030303b0a7d0a0a2f2a204176617461722067616c6c657279202a2f0a2367616c6c657279206c6162656c207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b0a09626f726465722d636f6c6f723a20234343433b0a7d0a0a2367616c6c657279206c6162656c3a686f766572207b0a096261636b67726f756e642d636f6c6f723a20234545453b0a7d0a0a2f2a2020090a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d0a436f6c6f75727320616e64206261636b67726f756e647320666f7220666f726d732e6373730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a2f2a2047656e6572616c20666f726d207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a73656c656374207b0a09626f726465722d636f6c6f723a20233636363636363b0a096261636b67726f756e642d636f6c6f723a20234641464146413b0a7d0a0a6c6162656c207b0a09636f6c6f723a20233432353036373b0a7d0a0a6f7074696f6e2e64697361626c65642d6f7074696f6e207b0a09636f6c6f723a2067726179746578743b0a7d0a0a2f2a20446566696e6974696f6e206c697374206c61796f757420666f7220666f726d730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a6464206c6162656c207b0a09636f6c6f723a20233333333b0a7d0a0a2f2a20486f7665722065666665637473202a2f0a6669656c6473657420646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20233030303030303b0a7d0a0a6669656c647365742e6669656c64733220646c3a686f766572206474206c6162656c207b0a09636f6c6f723a20696e68657269743b0a7d0a0a2f2a20517569636b2d6c6f67696e206f6e20696e6465782070616765202a2f0a6669656c647365742e717569636b2d6c6f67696e20696e7075742e696e707574626f78207b0a096261636b67726f756e642d636f6c6f723a20234632463346333b0a7d0a0a2f2a20506f7374696e672070616765207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2a2f0a0a236d6573736167652d626f78207465787461726561207b0a09636f6c6f723a20233333333333333b0a7d0a0a2f2a20496e707574206669656c64207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a2e696e707574626f78207b0a096261636b67726f756e642d636f6c6f723a20234646464646463b200a09626f726465722d636f6c6f723a20234234424143303b0a09636f6c6f723a20233333333333333b0a7d0a0a2e696e707574626f783a686f766572207b0a09626f726465722d636f6c6f723a20233131413345413b0a7d0a0a2e696e707574626f783a666f637573207b0a09626f726465722d636f6c6f723a20233131413345413b0a09636f6c6f723a20233046343938373b0a7d0a0a2f2a20466f726d20627574746f6e207374796c65730a2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d2d202a2f0a0a612e627574746f6e312c20696e7075742e627574746f6e312c20696e7075742e627574746f6e332c20612e627574746f6e322c20696e7075742e627574746f6e32207b0a09636f6c6f723a20233030303b0a096261636b67726f756e642d636f6c6f723a20234641464146413b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f62675f627574746f6e2e67696622293b0a7d0a0a612e627574746f6e312c20696e7075742e627574746f6e31207b0a09626f726465722d636f6c6f723a20233636363636363b0a7d0a0a696e7075742e627574746f6e33207b0a096261636b67726f756e642d696d6167653a206e6f6e653b0a7d0a0a2f2a20416c7465726e617469766520627574746f6e202a2f0a612e627574746f6e322c20696e7075742e627574746f6e322c20696e7075742e627574746f6e33207b0a09626f726465722d636f6c6f723a20233636363636363b0a7d0a0a2f2a203c613e20627574746f6e20696e20746865207374796c65206f662074686520666f726d20627574746f6e73202a2f0a612e627574746f6e312c20612e627574746f6e313a6c696e6b2c20612e627574746f6e313a766973697465642c20612e627574746f6e313a6163746976652c20612e627574746f6e322c20612e627574746f6e323a6c696e6b2c20612e627574746f6e323a766973697465642c20612e627574746f6e323a616374697665207b0a09636f6c6f723a20233030303030303b0a7d0a0a2f2a20486f76657220737461746573202a2f0a612e627574746f6e313a686f7665722c20696e7075742e627574746f6e313a686f7665722c20612e627574746f6e323a686f7665722c20696e7075742e627574746f6e323a686f7665722c20696e7075742e627574746f6e333a686f766572207b0a09626f726465722d636f6c6f723a20236464396431633b0a09636f6c6f723a20236464396431633b0a7d0a0a696e7075742e736561726368207b0a096261636b67726f756e642d696d6167653a2075726c28227b545f5448454d455f504154487d2f696d616765732f69636f6e5f74657874626f785f7365617263682e67696622293b0a7d0a0a696e7075742e64697361626c6564207b0a09636f6c6f723a20233636363636363b0a7d0a);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics`
--

CREATE TABLE IF NOT EXISTS `phpbb_topics` (
  `topic_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_approved` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `topic_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_time_limit` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_replies` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_replies_real` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_first_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_last_view_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_moved_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_bumped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_bumper` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_length` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_max_options` tinyint(4) NOT NULL DEFAULT '1',
  `poll_last_vote` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_vote_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `forum_id_type` (`forum_id`,`topic_type`),
  KEY `last_post_time` (`topic_last_post_time`),
  KEY `topic_approved` (`topic_approved`),
  KEY `forum_appr_last` (`forum_id`,`topic_approved`,`topic_last_post_id`),
  KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Dumping data for table `phpbb_topics`
--

INSERT INTO `phpbb_topics` (`topic_id`, `forum_id`, `icon_id`, `topic_attachment`, `topic_approved`, `topic_reported`, `topic_title`, `topic_poster`, `topic_time`, `topic_time_limit`, `topic_views`, `topic_replies`, `topic_replies_real`, `topic_status`, `topic_type`, `topic_first_post_id`, `topic_first_poster_name`, `topic_first_poster_colour`, `topic_last_post_id`, `topic_last_poster_id`, `topic_last_poster_name`, `topic_last_poster_colour`, `topic_last_post_subject`, `topic_last_post_time`, `topic_last_view_time`, `topic_moved_id`, `topic_bumped`, `topic_bumper`, `poll_title`, `poll_start`, `poll_length`, `poll_max_options`, `poll_last_vote`, `poll_vote_change`) VALUES
(5, 2, 0, 0, 1, 0, 'Test', 2, 1291996957, 0, 83, 4, 4, 0, 0, 5, '40FortyAdmin', 'AA0000', 11, 2, '40FortyAdmin', 'AA0000', 'Re: Test', 1292002351, 1295379033, 0, 0, 0, '', 0, 0, 1, 0, 0),
(6, 2, 0, 0, 0, 0, 'MomoCadia  phentermine buy cheap  HiessastE', 55, 1295254367, 0, 0, 0, 0, 0, 0, 12, 'afrutspittee', '', 12, 55, 'afrutspittee', '', 'MomoCadia  phentermine buy cheap  HiessastE', 1295254367, 1295254367, 0, 0, 0, '', 0, 0, 1, 0, 0),
(7, 2, 0, 0, 0, 0, 'backlink tool backlink service', 57, 1295404751, 0, 0, 0, 0, 0, 0, 13, 'InismintY', '', 13, 57, 'InismintY', '', 'backlink tool backlink service', 1295404751, 1295404751, 0, 0, 0, '', 0, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_posted`
--

CREATE TABLE IF NOT EXISTS `phpbb_topics_posted` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_topics_posted`
--

INSERT INTO `phpbb_topics_posted` (`user_id`, `topic_id`, `topic_posted`) VALUES
(2, 5, 1),
(55, 6, 1),
(57, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_track`
--

CREATE TABLE IF NOT EXISTS `phpbb_topics_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`),
  KEY `topic_id` (`topic_id`),
  KEY `forum_id` (`forum_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_topics_track`
--

INSERT INTO `phpbb_topics_track` (`user_id`, `topic_id`, `forum_id`, `mark_time`) VALUES
(55, 6, 2, 1295254367),
(57, 7, 2, 1295404751);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_watch`
--

CREATE TABLE IF NOT EXISTS `phpbb_topics_watch` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_topics_watch`
--

INSERT INTO `phpbb_topics_watch` (`topic_id`, `user_id`, `notify_status`) VALUES
(6, 55, 0),
(7, 57, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_user_group`
--

CREATE TABLE IF NOT EXISTS `phpbb_user_group` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_leader` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `group_leader` (`group_leader`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_user_group`
--

INSERT INTO `phpbb_user_group` (`group_id`, `user_id`, `group_leader`, `user_pending`) VALUES
(1, 1, 0, 0),
(2, 2, 0, 0),
(4, 2, 0, 0),
(5, 2, 1, 0),
(6, 3, 0, 0),
(6, 4, 0, 0),
(6, 5, 0, 0),
(6, 6, 0, 0),
(6, 7, 0, 0),
(6, 8, 0, 0),
(6, 9, 0, 0),
(6, 10, 0, 0),
(6, 11, 0, 0),
(6, 12, 0, 0),
(6, 13, 0, 0),
(6, 14, 0, 0),
(6, 15, 0, 0),
(6, 16, 0, 0),
(6, 17, 0, 0),
(6, 18, 0, 0),
(6, 19, 0, 0),
(6, 20, 0, 0),
(6, 21, 0, 0),
(6, 22, 0, 0),
(6, 23, 0, 0),
(6, 24, 0, 0),
(6, 25, 0, 0),
(6, 26, 0, 0),
(6, 27, 0, 0),
(6, 28, 0, 0),
(6, 29, 0, 0),
(6, 30, 0, 0),
(6, 31, 0, 0),
(6, 32, 0, 0),
(6, 33, 0, 0),
(6, 34, 0, 0),
(6, 35, 0, 0),
(6, 36, 0, 0),
(6, 37, 0, 0),
(6, 38, 0, 0),
(6, 39, 0, 0),
(6, 40, 0, 0),
(6, 41, 0, 0),
(6, 42, 0, 0),
(6, 43, 0, 0),
(6, 44, 0, 0),
(6, 45, 0, 0),
(6, 46, 0, 0),
(6, 47, 0, 0),
(6, 48, 0, 0),
(6, 49, 0, 0),
(6, 50, 0, 0),
(6, 51, 0, 0),
(6, 52, 0, 0),
(6, 53, 0, 0),
(2, 54, 0, 0),
(7, 54, 0, 0),
(2, 55, 0, 0),
(7, 55, 0, 0),
(2, 56, 0, 0),
(7, 56, 0, 0),
(2, 57, 0, 0),
(7, 57, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_users`
--

CREATE TABLE IF NOT EXISTS `phpbb_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '3',
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_pass_convert` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_email_hash` bigint(20) NOT NULL DEFAULT '0',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastmark` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpost_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) unsigned NOT NULL DEFAULT '0',
  `user_warnings` tinyint(4) NOT NULL DEFAULT '0',
  `user_last_warning` int(11) unsigned NOT NULL DEFAULT '0',
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT '0',
  `user_inactive_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` decimal(5,2) NOT NULL DEFAULT '0.00',
  `user_dst` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_dateformat` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_message_rules` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_full_folder` int(11) NOT NULL DEFAULT '-3',
  `user_emailtime` int(11) unsigned NOT NULL DEFAULT '0',
  `user_topic_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_notify_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_allow_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_massemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_options` int(11) unsigned NOT NULL DEFAULT '230271',
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` tinyint(2) NOT NULL DEFAULT '0',
  `user_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_from` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_icq` varchar(15) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_aim` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_yim` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_msnm` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_website` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_occ` text COLLATE utf8_bin NOT NULL,
  `user_interests` text COLLATE utf8_bin NOT NULL,
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_newpasswd` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_reminded` tinyint(4) NOT NULL DEFAULT '0',
  `user_reminded_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_clean` (`username_clean`),
  KEY `user_birthday` (`user_birthday`),
  KEY `user_email_hash` (`user_email_hash`),
  KEY `user_type` (`user_type`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=58 ;

--
-- Dumping data for table `phpbb_users`
--

INSERT INTO `phpbb_users` (`user_id`, `user_type`, `group_id`, `user_permissions`, `user_perm_from`, `user_ip`, `user_regdate`, `username`, `username_clean`, `user_password`, `user_passchg`, `user_pass_convert`, `user_email`, `user_email_hash`, `user_birthday`, `user_lastvisit`, `user_lastmark`, `user_lastpost_time`, `user_lastpage`, `user_last_confirm_key`, `user_last_search`, `user_warnings`, `user_last_warning`, `user_login_attempts`, `user_inactive_reason`, `user_inactive_time`, `user_posts`, `user_lang`, `user_timezone`, `user_dst`, `user_dateformat`, `user_style`, `user_rank`, `user_colour`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_message_rules`, `user_full_folder`, `user_emailtime`, `user_topic_show_days`, `user_topic_sortby_type`, `user_topic_sortby_dir`, `user_post_show_days`, `user_post_sortby_type`, `user_post_sortby_dir`, `user_notify`, `user_notify_pm`, `user_notify_type`, `user_allow_pm`, `user_allow_viewonline`, `user_allow_viewemail`, `user_allow_massemail`, `user_options`, `user_avatar`, `user_avatar_type`, `user_avatar_width`, `user_avatar_height`, `user_sig`, `user_sig_bbcode_uid`, `user_sig_bbcode_bitfield`, `user_from`, `user_icq`, `user_aim`, `user_yim`, `user_msnm`, `user_jabber`, `user_website`, `user_occ`, `user_interests`, `user_actkey`, `user_newpasswd`, `user_form_salt`, `user_new`, `user_reminded`, `user_reminded_time`) VALUES
(1, 2, 1, 0x30303030303030303030336b687261336e6b0a6931636a796f3030303030300a6931636a796f303030303030, 0, '', 1289181601, 'Anonymous', 'anonymous', '', 0, 0, '', 0, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'd M Y H:i', 11, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c72b01c738b368ee', 1, 0, 0),
(2, 3, 5, 0x7a696b307a6a7a696b307a6a7a696b3078730a6931636a796f3030303030300a7a696b307a6a7a6862327463, 0, '74.77.200.111', 1289181601, '40FortyAdmin', '40fortyadmin', '$H$96cZDB6Sw1ZvKyuQjotjk/ok8OPo8M1', 0, 0, 'kerufe@gmail.com', 369270969116, '', 1292282932, 0, 1292002351, 'viewtopic.php?f=2&t=5', '', 0, 0, 0, 0, 0, 0, 5, 'en', -5.00, 0, 'D M d, Y g:i a', 11, 1, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fce0a3ced143a23f', 0, 0, 0),
(3, 2, 6, '', 0, '', 1289181634, 'AdsBot [Google]', 'adsbot [google]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '16fe5415ae309ea6', 0, 0, 0),
(4, 2, 6, '', 0, '', 1289181634, 'Alexa [Bot]', 'alexa [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5e33315c5a48746d', 0, 0, 0),
(5, 2, 6, '', 0, '', 1289181634, 'Alta Vista [Bot]', 'alta vista [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c5ba2f30451e554f', 0, 0, 0),
(6, 2, 6, '', 0, '', 1289181634, 'Ask Jeeves [Bot]', 'ask jeeves [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ac3d8a227964d931', 0, 0, 0),
(7, 2, 6, 0x0a6931636a796f3030303030300a6931636a7234303030303030, 0, '', 1289181634, 'Baidu [Spider]', 'baidu [spider]', '', 1289181634, 0, '', 0, '', 1295299702, 1289181634, 0, 'index.php', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'dfdaddbb239bd59a', 0, 0, 0),
(8, 2, 6, '', 0, '', 1289181634, 'Exabot [Bot]', 'exabot [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'f6f9f74d704ae9d0', 0, 0, 0),
(9, 2, 6, '', 0, '', 1289181634, 'FAST Enterprise [Crawler]', 'fast enterprise [crawler]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '42b9872be460b147', 0, 0, 0),
(10, 2, 6, '', 0, '', 1289181634, 'FAST WebCrawler [Crawler]', 'fast webcrawler [crawler]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8746ace57b03874b', 0, 0, 0),
(11, 2, 6, '', 0, '', 1289181634, 'Francis [Bot]', 'francis [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'd36c250efbc33123', 0, 0, 0),
(12, 2, 6, '', 0, '', 1289181634, 'Gigabot [Bot]', 'gigabot [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ca961247f159eb05', 0, 0, 0),
(13, 2, 6, '', 0, '', 1289181634, 'Google Adsense [Bot]', 'google adsense [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4686fc8da4b363a5', 0, 0, 0),
(14, 2, 6, '', 0, '', 1289181634, 'Google Desktop', 'google desktop', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '87d026e9bd00916c', 0, 0, 0),
(15, 2, 6, '', 0, '', 1289181634, 'Google Feedfetcher', 'google feedfetcher', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '103f313edf2ac9f7', 0, 0, 0),
(16, 2, 6, 0x0a6931636a796f3030303030300a6931636a7234303030303030, 0, '', 1289181634, 'Google [Bot]', 'google [bot]', '', 1289181634, 0, '', 0, '', 1295289896, 1289181634, 0, 'index.php', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1cb77de28a64da6a', 0, 0, 0),
(17, 2, 6, '', 0, '', 1289181634, 'Heise IT-Markt [Crawler]', 'heise it-markt [crawler]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'd825eb2c28b3f7ff', 0, 0, 0),
(18, 2, 6, '', 0, '', 1289181634, 'Heritrix [Crawler]', 'heritrix [crawler]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '99532143093927a3', 0, 0, 0),
(19, 2, 6, '', 0, '', 1289181634, 'IBM Research [Bot]', 'ibm research [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '6b98f9813fb89fbf', 0, 0, 0),
(20, 2, 6, '', 0, '', 1289181634, 'ICCrawler - ICjobs', 'iccrawler - icjobs', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cba210b13b015590', 0, 0, 0),
(21, 2, 6, '', 0, '', 1289181634, 'ichiro [Crawler]', 'ichiro [crawler]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9a595c47c3b72817', 0, 0, 0),
(22, 2, 6, '', 0, '', 1289181634, 'Majestic-12 [Bot]', 'majestic-12 [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '4428e75c65b1d730', 0, 0, 0),
(23, 2, 6, '', 0, '', 1289181634, 'Metager [Bot]', 'metager [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '88640982831ebb08', 0, 0, 0),
(24, 2, 6, '', 0, '', 1289181634, 'MSN NewsBlogs', 'msn newsblogs', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'fdb69f696d576b47', 0, 0, 0),
(25, 2, 6, '', 0, '', 1289181634, 'MSN [Bot]', 'msn [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ccf7812c8c80c800', 0, 0, 0),
(26, 2, 6, '', 0, '', 1289181634, 'MSNbot Media', 'msnbot media', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '5cb3fa05f4f7943f', 0, 0, 0),
(27, 2, 6, '', 0, '', 1289181634, 'NG-Search [Bot]', 'ng-search [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '271f98dd6d36eb5d', 0, 0, 0),
(28, 2, 6, '', 0, '', 1289181634, 'Nutch [Bot]', 'nutch [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '8646038bdb55e178', 0, 0, 0),
(29, 2, 6, '', 0, '', 1289181634, 'Nutch/CVS [Bot]', 'nutch/cvs [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e7f0b177ad2c8ca7', 0, 0, 0),
(30, 2, 6, '', 0, '', 1289181634, 'OmniExplorer [Bot]', 'omniexplorer [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'd655323b144dee6a', 0, 0, 0),
(31, 2, 6, '', 0, '', 1289181634, 'Online link [Validator]', 'online link [validator]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'cbe0e308edde3425', 0, 0, 0),
(32, 2, 6, '', 0, '', 1289181634, 'psbot [Picsearch]', 'psbot [picsearch]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'd4dfdb93ddca9b3e', 0, 0, 0),
(33, 2, 6, '', 0, '', 1289181634, 'Seekport [Bot]', 'seekport [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c995c6f26345c99f', 0, 0, 0),
(34, 2, 6, '', 0, '', 1289181634, 'Sensis [Crawler]', 'sensis [crawler]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ce3b3dc9c0c4c270', 0, 0, 0),
(35, 2, 6, '', 0, '', 1289181634, 'SEO Crawler', 'seo crawler', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '3ee2b4fb89f9902e', 0, 0, 0),
(36, 2, 6, '', 0, '', 1289181634, 'Seoma [Crawler]', 'seoma [crawler]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '1c8b13ab701a510b', 0, 0, 0),
(37, 2, 6, '', 0, '', 1289181634, 'SEOSearch [Crawler]', 'seosearch [crawler]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c3ef77cf6905f561', 0, 0, 0),
(38, 2, 6, '', 0, '', 1289181634, 'Snappy [Bot]', 'snappy [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e97cd53ab8f9f4f1', 0, 0, 0),
(39, 2, 6, '', 0, '', 1289181634, 'Steeler [Crawler]', 'steeler [crawler]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'd3f704cd8b092efa', 0, 0, 0),
(40, 2, 6, '', 0, '', 1289181634, 'Synoo [Bot]', 'synoo [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '27f27c3c648ca277', 0, 0, 0),
(41, 2, 6, '', 0, '', 1289181634, 'Telekom [Bot]', 'telekom [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'e4ce872843f9e8ca', 0, 0, 0),
(42, 2, 6, '', 0, '', 1289181634, 'TurnitinBot [Bot]', 'turnitinbot [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '72f2c192d49760d5', 0, 0, 0),
(43, 2, 6, '', 0, '', 1289181634, 'Voyager [Bot]', 'voyager [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0fcb66d81bd80838', 0, 0, 0),
(44, 2, 6, '', 0, '', 1289181634, 'W3 [Sitesearch]', 'w3 [sitesearch]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '80c3d28b42eae01f', 0, 0, 0),
(45, 2, 6, '', 0, '', 1289181634, 'W3C [Linkcheck]', 'w3c [linkcheck]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'f56ea438c8770839', 0, 0, 0),
(46, 2, 6, '', 0, '', 1289181634, 'W3C [Validator]', 'w3c [validator]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'f5b758e7ac5f973b', 0, 0, 0),
(47, 2, 6, '', 0, '', 1289181634, 'WiseNut [Bot]', 'wisenut [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9b03a51dfd4fd0f1', 0, 0, 0),
(48, 2, 6, '', 0, '', 1289181634, 'YaCy [Bot]', 'yacy [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '04c3dda275cf5225', 0, 0, 0),
(49, 2, 6, '', 0, '', 1289181634, 'Yahoo MMCrawler [Bot]', 'yahoo mmcrawler [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '9cb50db057806de7', 0, 0, 0),
(50, 2, 6, '', 0, '', 1289181634, 'Yahoo Slurp [Bot]', 'yahoo slurp [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a50c2aff729b2cd1', 0, 0, 0),
(51, 2, 6, 0x0a6931636a796f3030303030300a6931636a7234303030303030, 0, '', 1289181634, 'Yahoo [Bot]', 'yahoo [bot]', '', 1289181634, 0, '', 0, '', 1295242436, 1289181634, 0, 'index.php', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '91570d789ada0769', 0, 0, 0),
(52, 2, 6, '', 0, '', 1289181634, 'YahooSeeker [Bot]', 'yahooseeker [bot]', '', 1289181634, 0, '', 0, '', 0, 1289181634, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'a350901e39ea177c', 0, 0, 0),
(53, 2, 6, 0x0a6931636a796f3030303030300a6931636a7234303030303030, 0, '', 1290994592, 'Bing [Bot]', 'bing [bot]', '', 1290994592, 0, '', 0, '', 1295134061, 1290994592, 0, 'index.php', '', 0, 0, 0, 0, 0, 0, 0, 'en', 0.00, 0, 'D M d, Y g:i a', 11, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', 0, 0, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '162e2ad7cd964d5b', 0, 0, 0),
(54, 0, 2, 0x3030303030303030303036787271656977770a6931636a796f3030303030300a716c61713532303030303030, 0, '91.201.66.88', 1295179951, 'Keeramitlem', 'keeramitlem', '$H$9YlZYs94KcG8NVX1KlHsXiLJwHFoYD1', 1295179951, 0, 'kaliecoughlan35@gmail.com', 233650706525, '12- 7-1963', 0, 1295179951, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', -12.00, 0, 'D M d, Y g:i a', 11, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, 0x5b75726c3d68747470262335383b2f2f62726974746e65796a6f6e65737365787461706573262334363b6e65743a317373307634317a5d42726974746e6579204a6f6e65732053657820546170655b2f75726c3a317373307634317a5d, '1ss0v41z', 'EA==', 'New Zealand', '313826322', '', '', '', '', 'http://brittneyjonessextapes.net', 0x457374617465, 0x436f6666656520616e6420636f6e766572736174696f6e, '', '', '016bc789b62aed77', 1, 0, 0),
(55, 0, 2, 0x3030303030303030303036787271656977770a6931636a796f3030303030300a716c61713532303030303030, 0, '92.241.169.160', 1295254339, 'afrutspittee', 'afrutspittee', '$H$9jBHndWc82tpX.HW1r5haUhSyYL0ws/', 1295254339, 0, 'kahhilart@certifiedtgp.com', 370542971126, ' 4- 3-1986', 0, 1295254339, 1295254367, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', -12.00, 0, 'D M d, Y g:i a', 11, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, 0x5b75726c3d68747470262335383b2f2f777777262334363b776577616e74746f736565262334363b636f6d3a32757534317464735d627579206368656170206f6e6c696e65207068656e7465726d696e655b2f75726c3a32757534317464735d, '2uu41tds', 'EA==', '', '', '', '', '', '', 'http://www.wewanttosee.com', '', '', '', '', 'a1767401c110b851', 1, 0, 0),
(56, 0, 2, 0x3030303030303030303036787271656977770a6931636a796f3030303030300a716c61713532303030303030, 0, '67.215.235.200', 1295323907, 'ttalkonoco', 'ttalkonoco', '$H$9vHMipoIvjusaju5rCsi5zdVYD92rM0', 1295323907, 0, 'ttalkonoco@aol.com', 15941002518, ' 5- 2-1972', 0, 1295323907, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', -12.00, 0, 'D M d, Y g:i a', 11, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, '', '', '', 'US', '', '', '', '', '', 'http://www.newbernchat.com', '', '', '', '', '2be841b8c332beff', 1, 0, 0),
(57, 0, 2, 0x3030303030303030303036787271656977770a6931636a796f3030303030300a716c61713532303030303030, 0, '46.109.194.23', 1295404724, 'InismintY', 'inisminty', '$H$9KFA3mrXE7XRIZdp54QPYCIU9IUK9J/', 1295404724, 0, '4@futuramarketing.we.bs', 24009031223, '14-10-1985', 0, 1295404724, 1295404751, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', -12.00, 0, 'D M d, Y g:i a', 11, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', 0, 0, 0, 0x5b75726c3d68747470262335383b2f2f7872756d657273657276696365262334363b6f72672f3a6d3736783835396d5d6261636b6c696e6b2073657276696365735b2f75726c3a6d3736783835396d5d206b6579776f726420676f6f676c652072616e6b696e67, 'm76x859m', 'EA==', 'Portugal', '287142578', '', '', '', '', 'http://xrumerservice.org/', 0x417274732c20656e7465727461696e6d656e742c207075626c697368696e67, 0x426f776c696e67, '', '', 'abe36832017474cb', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_warnings`
--

CREATE TABLE IF NOT EXISTS `phpbb_warnings` (
  `warning_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `warning_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`warning_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_warnings`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_words`
--

CREATE TABLE IF NOT EXISTS `phpbb_words` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`word_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

--
-- Dumping data for table `phpbb_words`
--


-- --------------------------------------------------------

--
-- Table structure for table `phpbb_zebra`
--

CREATE TABLE IF NOT EXISTS `phpbb_zebra` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `zebra_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `friend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `foe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`zebra_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_zebra`
--

