CREATE TABLE `parents` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO `parents` (`id`, `name`, `parent_id`)
VALUES
	(1,'Zaki',2),
	(2,'Ilham',NULL),
	(3,'Irwan',2),
	(4,'Arka',3);


SELECT a.id, a.name, b.name parent_name FROM parents AS a
LEFT JOIN parents AS b ON a.parent_id = b.id