CREATE TABLE `salemanagement`.`customer` (
  `cID` INT NOT NULL AUTO_INCREMENT,
  `cName` VARCHAR(150) NULL,
  `cAge` VARCHAR(45) NULL,
  PRIMARY KEY (`cID`),
  UNIQUE INDEX `cID_UNIQUE` (`cID` ASC) VISIBLE);
CREATE TABLE `salemanagement`.`order` (
  `oID` INT NOT NULL AUTO_INCREMENT,
  `cID` INT NOT NULL,
  `oDate` DATE NOT NULL,
  `oTotalPrice` DOUBLE NOT NULL,
  PRIMARY KEY (`oID`),
  UNIQUE INDEX `oID_UNIQUE` (`oID` ASC) VISIBLE,
  INDEX `cID_idx` (`cID` ASC) VISIBLE,
  CONSTRAINT `cID`
    FOREIGN KEY (`cID`)
    REFERENCES `salemanagement`.`customer` (`cID`));
    CREATE TABLE `salemanagement`.`product` (
  `pID` INT NOT NULL AUTO_INCREMENT,
  `pName` VARCHAR(150) NOT NULL,
  `pPrice` DOUBLE NOT NULL,
  PRIMARY KEY (`pID`),
  UNIQUE INDEX `pID_UNIQUE` (`pID` ASC) VISIBLE);
CREATE TABLE `salemanagement`.`orderdetail` (
  `oID` INT NOT NULL,
  `pID` INT NOT NULL,
  `odQTY` INT NOT NULL,
  INDEX `oID_idx` (`oID` ASC) VISIBLE,
  INDEX `pID_idx` (`pID` ASC) VISIBLE,
  CONSTRAINT `oID`
    FOREIGN KEY (`oID`)
    REFERENCES `salemanagement`.`order` (`oID`),
  CONSTRAINT `pID`
    FOREIGN KEY (`pID`)
    REFERENCES `salemanagement`.`product` (`pID`)
);

