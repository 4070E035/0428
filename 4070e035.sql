-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- 主機： localhost
-- 產生時間： 2020 年 01 月 08 日 08:20
-- 伺服器版本： 10.4.8-MariaDB
-- PHP 版本： 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `手機`
--

-- --------------------------------------------------------

--
-- 資料表結構 `客戶`
--

CREATE TABLE `客戶` (
  `客戶編號` varchar(5) NOT NULL,
  `公司名稱` varchar(40) NOT NULL,
  `聯絡人` varchar(30) DEFAULT NULL,
  `聯絡人職稱` varchar(30) DEFAULT NULL,
  `聯絡人性別` char(1) DEFAULT NULL,
  `地址` varchar(60) DEFAULT NULL,
  `電話` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `客戶`
--

INSERT INTO `客戶` (`客戶編號`, `公司名稱`, `聯絡人`, `聯絡人職稱`, `聯絡人性別`, `地址`, `電話`) VALUES
('1', 'disnopop', 'disn', 'boss', '男', '台灣台南市永康區昆大路123號', '0908783647'),
('2', 'disnopop', 'disn', 'boss', '男', '台南市永康區坤大路234號', '0908783647'),
('3', 'disnopop', 'disn', 'boss', '男', '台南市永康區坤大路234號', '0908783647'),
('4', 'disnopop', 'disn', 'boss', '男', '台南市永康區坤大路234號', '0908783647'),
('5', 'disnopop', 'disn', 'boss', '男', '台南市永康區坤大路234號', '0908783647');

-- --------------------------------------------------------

--
-- 資料表結構 `手機`
--

CREATE TABLE `手機` (
  `手機編號` char(7) NOT NULL,
  `名稱` varchar(20) NOT NULL,
  `型號` varchar(30) DEFAULT NULL,
  `顏色` char(1) DEFAULT NULL,
  `生產日期` datetime DEFAULT NULL,
  `發布日期` datetime DEFAULT NULL,
  `使用處理器` varchar(10) DEFAULT NULL,
  `生產產商` varchar(60) DEFAULT NULL,
  `產商號碼` varchar(40) DEFAULT NULL,
  `負責人` char(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `手機`
--

INSERT INTO `手機` (`手機編號`, `名稱`, `型號`, `顏色`, `生產日期`, `發布日期`, `使用處理器`, `生產產商`, `產商號碼`, `負責人`) VALUES
('01', 'apple', 'i11', '藍', '2020-01-01 00:00:00', '2020-01-08 00:00:00', 'a13', 'apple', 'oppo', 'sameeee'),
('02', 'r17', 'r17', '黃', '2020-01-01 00:00:00', '2020-01-16 00:00:00', 'a13', 'oppo', 'oppo', 'sameeee'),
('03', 'r18', 'r18', '綠', '2020-01-01 00:00:00', '2020-01-24 00:00:00', 'a13', 'oppo', 'oppo1', 'sameeeo'),
('04', 'r19', 'r19', '紅', '2020-01-01 00:00:00', '2020-01-17 00:00:00', 'a13', 'oppo', 'oppo2', 'sameeeo'),
('05', 'r20', 'r20', '金', '2020-01-02 00:00:00', '2020-01-29 00:00:00', 'a13', 'oppo', 'oppo3', 'kiloihd'),
('06', 'r21', 'r21', '銀', '2020-01-01 00:00:00', '2020-01-25 00:00:00', 'a13', 'oppo', 'oppo', 'sameeeo'),
('07', 'r22', 'r22', '白', '2020-01-01 00:00:00', '2020-01-27 00:00:00', 'a13', 'oppo', 'oppo', 'sameeeo'),
('08', 'r23', 'r23', '黑', '2020-01-01 00:00:00', '2020-01-29 00:00:00', 'a13', 'oppo', 'oppo', 'sameeee'),
('09', 'r24', 'r24', '金', '2020-01-01 00:00:00', '2020-01-25 00:00:00', 'a13', 'oppo', 'oppo', 'kiloihd'),
('10', 'r25', 'r25', '金', '2020-01-01 00:00:00', '2020-01-17 00:00:00', 'a13', 'oppo', 'oppo2', 'sameeee');

-- --------------------------------------------------------

--
-- 資料表結構 `訂單`
--

CREATE TABLE `訂單` (
  `訂單編號` char(8) NOT NULL,
  `手機編號` char(7) DEFAULT NULL,
  `客戶編號` char(5) DEFAULT NULL,
  `訂單日期` datetime DEFAULT NULL,
  `付款方式` varchar(50) DEFAULT NULL,
  `交貨方式` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 傾印資料表的資料 `訂單`
--

INSERT INTO `訂單` (`訂單編號`, `手機編號`, `客戶編號`, `訂單日期`, `付款方式`, `交貨方式`) VALUES
('1', '02', '2', '2020-01-16 00:00:00', 'visa', 'visa'),
('2', '04', '1', '2020-01-16 00:00:00', 'visa', 'visa'),
('3', '04', '3', '2020-01-29 00:00:00', 'visa', 'visa'),
('4', '10', '3', '2020-01-18 00:00:00', 'visa', 'visa'),
('5', '08', '3', '2020-01-28 00:00:00', 'visa', 'visa');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `客戶`
--
ALTER TABLE `客戶`
  ADD PRIMARY KEY (`客戶編號`);

--
-- 資料表索引 `手機`
--
ALTER TABLE `手機`
  ADD PRIMARY KEY (`手機編號`);

--
-- 資料表索引 `訂單`
--
ALTER TABLE `訂單`
  ADD PRIMARY KEY (`訂單編號`),
  ADD KEY `手機編號` (`手機編號`),
  ADD KEY `客戶編號` (`客戶編號`);

--
-- 已傾印資料表的限制式
--

--
-- 資料表的限制式 `訂單`
--
ALTER TABLE `訂單`
  ADD CONSTRAINT `訂單_ibfk_1` FOREIGN KEY (`手機編號`) REFERENCES `手機` (`手機編號`),
  ADD CONSTRAINT `訂單_ibfk_2` FOREIGN KEY (`客戶編號`) REFERENCES `客戶` (`客戶編號`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
