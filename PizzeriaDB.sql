
CREATE DATABASE pizza_db;
USE pizza_db;

CREATE TABLE `pizzasize` (
  `idPizzaSize` varchar(4) NOT NULL,
  `pizzaSlices` int NOT NULL,
  PRIMARY KEY (`idPizzaSize`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `pizzavariety` (
  `idPizzaVariety` varchar(45) NOT NULL,
  `namePizzaVariety` varchar(100) NOT NULL,
  `ingredients` varchar(100) NOT NULL,
  PRIMARY KEY (`idPizzaVariety`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `pizza` (
  `idPizza` int NOT NULL,
  `namePizza` varchar(100) NOT NULL,
  `photo` longblob NULL,
  `unitPrice` float NOT NULL,
  `idPizzaVariety` varchar(100) NOT NULL,
  `idPizzaSize` varchar(4) NOT NULL,
  PRIMARY KEY (`idPizza`),
  KEY `fk_pizza_pizzavariety_idx` (`idPizzaVariety`),
  KEY `fk_pizza_pizzasize1_idx` (`idPizzaSize`),
  CONSTRAINT `fk_pizza_pizzasize1` FOREIGN KEY (`idPizzaSize`) REFERENCES `pizzasize` (`idPizzaSize`),
  CONSTRAINT `fk_pizza_pizzavariety` FOREIGN KEY (`idPizzaVariety`) REFERENCES `pizzavariety` (`idPizzaVariety`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `user` (
  `idUser` int NOT NULL AUTO_INCREMENT,
  `loginEmail` varchar(100) NOT NULL,
  `loginPassword` varchar(45) NOT NULL,
  `isRoot` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `loginEmail_UNIQUE` (`loginEmail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `customer` (
  `idCustomer` int NOT NULL AUTO_INCREMENT,
  `dni` int NOT NULL,
  `nameCustomer` varchar(45) NOT NULL,
  `lastNameCustomer` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `idUser` int DEFAULT NULL,
  PRIMARY KEY (`idCustomer`),
  KEY `fk_customer_user1_idx` (`idUser`),
  CONSTRAINT `fk_customer_user1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `order` (
  `idOrder` int NOT NULL,
  `orderDate` varchar(45) NOT NULL,
  `idCustomer` int NOT NULL,
  PRIMARY KEY (`idOrder`),
  KEY `fk_order_customer1_idx` (`idCustomer`),
  CONSTRAINT `fk_order_customer1` FOREIGN KEY (`idCustomer`) REFERENCES `customer` (`idCustomer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `orderdetail` (
  `idOrderDetail` int NOT NULL,
  `quantity` int NOT NULL,
  `totalPrice` double NOT NULL,
  `idOrder` int NOT NULL,
  `idPizza` int NOT NULL,
  PRIMARY KEY (`idOrderDetail`),
  KEY `fk_orderdetail_order1_idx` (`idOrder`),
  KEY `fk_orderdetail_pizza1_idx` (`idPizza`),
  CONSTRAINT `fk_orderdetail_order1` FOREIGN KEY (`idOrder`) REFERENCES `order` (`idOrder`),
  CONSTRAINT `fk_orderdetail_pizza1` FOREIGN KEY (`idPizza`) REFERENCES `pizza` (`idPizza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Procedimientos almacenados

create procedure sp_IsRoot(in email varchar(100),in pass varchar(45))
select count(1) from user where loginPassword = pass and loginEmail = email and isRoot=1;

-- call sp_IsRoot('master','master')

create procedure sp_IsUser(in email varchar(100),in pass varchar(45))
select count(1) from user where loginPassword = pass and loginEmail = email;

-- call sp_IsUser('master','master');


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

INSERT INTO `pizza_db`.`user`(`loginEmail`,`loginPassword`,`isRoot`) VALUES ('master@gmail.com','master',1),('slave@gmail.com','slave',0);
update customer set idUser=1 where idCustomer=12;
update customer set idUser=2 where idCustomer=28;
