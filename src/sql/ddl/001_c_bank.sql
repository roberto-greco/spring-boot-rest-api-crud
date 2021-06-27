CREATE TABLE `userdatabase`.`bank` (
  `idbank` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(128) NULL,
  `groupcode` VARCHAR(5) NOT NULL,
  `bankcode` VARCHAR(5) NOT NULL,
  `creationdate` DATE NULL,
  UNIQUE INDEX `idbank_UNIQUE` (`groupcode` ASC, `bankcode` ASC) INVISIBLE,
  PRIMARY KEY (`idbank`))
COMMENT = 'registro delle banche';