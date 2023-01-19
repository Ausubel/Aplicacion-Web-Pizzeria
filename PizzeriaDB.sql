
CREATE DATABASE pizza_db;
USE pizza_db;
-- Tablas
CREATE TABLE IF NOT EXISTS pizzasize (
  `idPizzaSize` VARCHAR(4) NOT NULL,
  `pizzaSlices` INT NOT NULL,
  PRIMARY KEY (`idPizzaSize`));

CREATE TABLE IF NOT EXISTS pizzavariety (
  `idPizzaVariety` VARCHAR(45) NOT NULL,
  `namePizzaVariety` VARCHAR(100) NOT NULL,
  `ingredients` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`idPizzaVariety`));
  
CREATE TABLE IF NOT EXISTS pizza (
  `idPizza` INT NOT NULL,
  `namePizza` DOUBLE NOT NULL,
  `photo` VARCHAR(45) NULL,
  `unitPrice` VARCHAR(45) NOT NULL,
  `idPizzaVariety` VARCHAR(45) NOT NULL,
  `idPizzaSize` VARCHAR(4) NOT NULL,
  PRIMARY KEY (`idPizza`),
  INDEX `fk_pizza_pizzavariety_idx` (`idPizzaVariety` ASC) VISIBLE,
  INDEX `fk_pizza_pizzasize1_idx` (`idPizzaSize` ASC) VISIBLE,
  CONSTRAINT `fk_pizza_pizzavariety`
    FOREIGN KEY (`idPizzaVariety`)
    REFERENCES `pizzavariety` (`idPizzaVariety`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pizza_pizzasize1`
    FOREIGN KEY (`idPizzaSize`)
    REFERENCES `pizzasize` (`idPizzaSize`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS user (
  `idUser` INT NOT NULL,
  `loginEmail` VARCHAR(45) NOT NULL,
  `loginPassword` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE INDEX `loginEmail_UNIQUE` (`loginEmail` ASC) VISIBLE);

CREATE TABLE IF NOT EXISTS customer (
  `idCliente` INT NOT NULL,
  `dni` INT(9) NOT NULL,
  `nameCustomer` VARCHAR(45) NOT NULL,
  `lastNameCustomer` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NOT NULL,
  `idUser` INT NULL,
  PRIMARY KEY (`idCliente`),
  INDEX `fk_customer_user1_idx` (`idUser` ASC) VISIBLE,
  CONSTRAINT `fk_customer_user1`
    FOREIGN KEY (`idUser`)
    REFERENCES `user` (`idUser`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS `order` (
  `idOrder` INT NOT NULL,
  `orderDate` VARCHAR(45) NOT NULL,
  `amount` DOUBLE NOT NULL,
  `status` TINYINT(1) NOT NULL,
  `idCliente` INT NOT NULL,
  PRIMARY KEY (`idOrder`),
  INDEX `fk_order_customer1_idx` (`idCliente` ASC) VISIBLE,
  CONSTRAINT `fk_order_customer1`
    FOREIGN KEY (`idCliente`)
    REFERENCES `customer` (`idCliente`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS orderdetail (
  `idOrderDetail` INT NOT NULL,
  `quantity` INT NOT NULL,
  `totalPrice` DOUBLE NOT NULL,
  `idOrder` INT NOT NULL,
  `idPizza` INT NOT NULL,
  PRIMARY KEY (`idOrderDetail`),
  INDEX `fk_orderdetail_order1_idx` (`idOrder` ASC) VISIBLE,
  INDEX `fk_orderdetail_pizza1_idx` (`idPizza` ASC) VISIBLE,
  CONSTRAINT `fk_orderdetail_order1`
    FOREIGN KEY (`idOrder`)
    REFERENCES `order` (`idOrder`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderdetail_pizza1`
    FOREIGN KEY (`idPizza`)
    REFERENCES `pizza` (`idPizza`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- TUPLAS---------------------------------
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
('L',16);
INSERT INTO `pizza_db`.`pizzasize`
(`idPizzaSize`,
`pizzaSlices`)
VALUES
('XL',20);
INSERT INTO `pizza_db`.`pizzasize`
(`idPizzaSize`,
`pizzaSlices`)
VALUES
('XXL',24);