CREATE TABLE `user` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(90) NOT NULL,
  `last_name` varchar(90) NOT NULL,
  `email` varchar(90) NOT NULL,
  `created_by` varchar(90) NOT NULL,
  `created_at` timestamp NOT NULL,
  `updated_by` varchar(90) NOT NULL,
  `updated_at` timestamp NOT NULL,
  `idbank` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_bank` (`idbank`),
  CONSTRAINT `customer_bank` FOREIGN KEY (`idbank`) REFERENCES `bank` (`idbank`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='user table'