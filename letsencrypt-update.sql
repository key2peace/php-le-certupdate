SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `sites` (
  `id` bigint(20) NOT NULL,
  `active` enum('0','1') DEFAULT '0',
  `name` varchar(256) NOT NULL,
  `webroot` varchar(256) NOT NULL,
  `domains` longtext NOT NULL,
  `nsupdate` varchar(256) NOT NULL DEFAULT '',
  `renewdays` int(11) NOT NULL DEFAULT 30
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sites` (`id`, `active`, `name`, `webroot`, `domains`, `nsupdate`, `renewdays`) VALUES
(1, '1', 'www.example.org', '/home/example.org/htdocs/', 'example.org\r\nwww.example.org\r\nmirror1.example.org\r\nmirror2.example.org', '', 30),

ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `sites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;