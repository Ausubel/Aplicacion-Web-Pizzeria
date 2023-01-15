CREATE DATABASE Pizza_DB;
USE Pizza_DB;
-- Tablas
CREATE TABLE IF NOT EXISTS `pizza_db`.`PizzaVariety` (
  `idPizzaVariety` VARCHAR(20) NOT NULL,
  `namePizzaVariety` VARCHAR(100) NULL,
  `ingredients` VARCHAR(100) NULL,
  PRIMARY KEY (`idPizzaVariety`))

CREATE TABLE IF NOT EXISTS `pizza_db`.`PizzaSize` (
  `idPizzaSize` VARCHAR(3) NOT NULL,
  `pizzaSlices` INT NULL,
  PRIMARY KEY (`idPizzaSize`))

--TUPLAS---------------------------------
INSERT INTO `pizza_db`.`pizzasize`
(`idPizzaSize`,
`pizzaSlices`)
VALUES
('S',8);
INSERT INTO `pizza_db`.`pizzasize`
(`idPizzaSize`,
`pizzaSlices`)
VALUES
('M',12);
INSERT INTO `pizza_db`.`pizzasize`
(`idPizzaSize`,
`pizzaSlices`)
VALUES
('L',12);
INSERT INTO `pizza_db`.`pizzasize`
(`idPizzaSize`,
`pizzaSlices`)
VALUES
('XL',12);
INSERT INTO `pizza_db`.`pizzasize`
(`idPizzaSize`,
`pizzaSlices`)
VALUES
('XXL',12);
-----------------------------------------
CREATE TABLE IF NOT EXISTS `pizza_db`.`User` (
  `idUser` INT NOT NULL,
  `nameUser` VARCHAR(45) NULL,
  `lastNameUser` VARCHAR(45) NULL,
  `loginEmail` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `phoneNumber` VARCHAR(45) NULL,
  PRIMARY KEY (`idUser`))


CREATE TABLE IF NOT EXISTS `pizza_db`.`Pizza` (
  `idPizza` VARCHAR(20) NOT NULL,
  `namePizza` VARCHAR(45) NULL,
  `unitPrice` FLOAT NULL,
  `pizzaVariety` VARCHAR(45) NULL,
  `idPizzaSize` VARCHAR(1) NOT NULL,
  `idPizzaVariety` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`idPizza`),
  INDEX `fk_Pizza_PizzaSize_idx` (`idPizzaSize` ASC) VISIBLE,
  INDEX `fk_Pizza_PizzaVariety1_idx` (`idPizzaVariety` ASC) VISIBLE,
  CONSTRAINT `fk_Pizza_PizzaSize`
    FOREIGN KEY (`idPizzaSize`)
    REFERENCES `pizza_db`.`PizzaSize` (`idPizzaSize`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pizza_PizzaVariety1`
    FOREIGN KEY (`idPizzaVariety`)
    REFERENCES `pizza_db`.`PizzaVariety` (`idPizzaVariety`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)


CREATE TABLE IF NOT EXISTS `pizza_db`.`Order` (
  `idOrder` INT NOT NULL,
  `orderDate` DATETIME NULL,
  `idUser` INT,
  PRIMARY KEY (`idOrder`),
  INDEX `fk_Order_User1_idx` (`idUser` ASC) VISIBLE,
  CONSTRAINT `fk_Order_User1`
    FOREIGN KEY (`idUser`)
    REFERENCES `pizza_db`.`User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)


CREATE TABLE IF NOT EXISTS `pizza_db`.`OrderDetail` (
  `idOrderDetail` INT NOT NULL,
  `quantity` VARCHAR(45) NULL,
  `totalPrice` VARCHAR(45) NULL,
  `idPizza` VARCHAR(20) NOT NULL,
  `idOrder` INT NOT NULL,
  PRIMARY KEY (`idOrderDetail`),
  INDEX `fk_OrderDetail_Pizza1_idx` (`idPizza` ASC) VISIBLE,
  INDEX `fk_OrderDetail_Order1_idx` (`idOrder` ASC) VISIBLE,
  CONSTRAINT `fk_OrderDetail_Pizza1`
    FOREIGN KEY (`idPizza`)
    REFERENCES `pizza_db`.`Pizza` (`idPizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_OrderDetail_Order1`
    FOREIGN KEY (`idOrder`)
    REFERENCES `pizza_db`.`Order` (`idOrder`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)



