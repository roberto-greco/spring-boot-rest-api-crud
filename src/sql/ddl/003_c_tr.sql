CREATE TABLE `userdatabase`.`tr` (
  `idtr` INT NOT NULL AUTO_INCREMENT,
  `amount` INT(10) NOT NULL,
  `currency` VARCHAR(45) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `authcode` VARCHAR(45) NOT NULL,
  `requestdate` DATETIME NOT NULL,
  `authdate` DATETIME NULL,
  `senderuser` INT UNSIGNED NOT NULL,
  `receiveruser` INT UNSIGNED NOT NULL,
  `trtype` VARCHAR(5) NOT NULL,
  `reason` VARCHAR(45) NULL,
  PRIMARY KEY (`idtr`),
  INDEX `sender_idx` (`senderuser` ASC) VISIBLE,
  CONSTRAINT `sender`
    FOREIGN KEY (`senderuser`)
    REFERENCES `userdatabase`.`user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE CASCADE)
COMMENT = 'tabella delle transazionii';
