CREATE DATABASE Pizza_DB
-- Tablas
CREATE TABLE IF NOT EXISTS `Pizzeria_DB`.`PizzaVariety` (
  `idPizzaVariety` VARCHAR(20) NOT NULL,
  `namePizzaVariety` VARCHAR(100) NULL,
  `ingredients` VARCHAR(100) NULL,
  PRIMARY KEY (`idPizzaVariety`))

CREATE TABLE IF NOT EXISTS `Pizzeria_DB`.`PizzaSize` (
  `idPizzaSize` VARCHAR(1) NOT NULL,
  `pizzaSlices` INT NULL,
  PRIMARY KEY (`idPizzaSize`))
ENGINE = InnoDB

CREATE TABLE IF NOT EXISTS `Pizzeria_DB`.`User` (
  `idUser` INT NOT NULL,
  `nameUser` VARCHAR(45) NULL,
  `lastNameUser` VARCHAR(45) NULL,
  `loginEmail` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `phoneNumber` VARCHAR(45) NULL,
  PRIMARY KEY (`idUser`))


CREATE TABLE IF NOT EXISTS `Pizzeria_DB`.`Pizza` (
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
    REFERENCES `Pizzeria_DB`.`PizzaSize` (`idPizzaSize`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Pizza_PizzaVariety1`
    FOREIGN KEY (`idPizzaVariety`)
    REFERENCES `Pizzeria_DB`.`PizzaVariety` (`idPizzaVariety`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)


CREATE TABLE IF NOT EXISTS `Pizzeria_DB`.`Order` (
  `idOrder` INT NOT NULL,
  `orderDate` DATETIME NULL,
  `idUser` INT NOT NULL,
  PRIMARY KEY (`idOrder`),
  INDEX `fk_Order_User1_idx` (`idUser` ASC) VISIBLE,
  CONSTRAINT `fk_Order_User1`
    FOREIGN KEY (`idUser`)
    REFERENCES `Pizzeria_DB`.`User` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)


CREATE TABLE IF NOT EXISTS `Pizzeria_DB`.`OrderDetail` (
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
    REFERENCES `Pizzeria_DB`.`Pizza` (`idPizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_OrderDetail_Order1`
    FOREIGN KEY (`idOrder`)
    REFERENCES `Pizzeria_DB`.`Order` (`idOrder`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)

ALTER TABLE `pizza_db`.`order` 
DROP FOREIGN KEY `fk_Order_User1`;
ALTER TABLE `pizza_db`.`order` 
CHANGE COLUMN `idUser` `idUser` INT NULL ;
ALTER TABLE `pizza_db`.`order` 
ADD CONSTRAINT `fk_Order_User1`
  FOREIGN KEY (`idUser`)
  REFERENCES `pizza_db`.`user` (`idUser`);