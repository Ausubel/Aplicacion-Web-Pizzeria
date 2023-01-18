CREATE DATABASE pizza_db;
USE pizza_db;
-- Tablas
CREATE TABLE `pizzavariety` (
  `idPizzaVariety` varchar(20) NOT NULL,
  `namePizzaVariety` varchar(100) DEFAULT NULL,
  `ingredients` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idPizzaVariety`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `pizzasize` (
  `idPizzaSize` varchar(3) NOT NULL,
  `pizzaSlices` int DEFAULT NULL,
  PRIMARY KEY (`idPizzaSize`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `user` (
  `idUser` int NOT NULL,
  `nameUser` varchar(45) DEFAULT NULL,
  `lastNameUser` varchar(45) DEFAULT NULL,
  `loginEmail` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `phoneNumber` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `pizza` (
  `idPizza` varchar(20) NOT NULL,
  `unitPrice` float DEFAULT NULL,
  `idPizzaSize` varchar(3) NOT NULL,
  `idPizzaVariety` varchar(20) NOT NULL,
  PRIMARY KEY (`idPizza`),
  KEY `fk_Pizza_PizzaSize_idx` (`idPizzaSize`),
  KEY `fk_Pizza_PizzaVariety1_idx` (`idPizzaVariety`),
  CONSTRAINT `fk_Pizza_PizzaSize` FOREIGN KEY (`idPizzaSize`) REFERENCES `pizzasize` (`idPizzaSize`),
  CONSTRAINT `fk_Pizza_PizzaVariety1` FOREIGN KEY (`idPizzaVariety`) REFERENCES `pizzavariety` (`idPizzaVariety`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `order` (
  `idOrder` int NOT NULL,
  `orderDate` datetime DEFAULT NULL,
  `idUser` int DEFAULT NULL,
  PRIMARY KEY (`idOrder`),
  KEY `fk_Order_User1_idx` (`idUser`),
  CONSTRAINT `fk_Order_User1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;



CREATE TABLE `orderdetail` (
  `idOrderDetail` int NOT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `totalPrice` varchar(45) DEFAULT NULL,
  `idPizza` varchar(20) NOT NULL,
  `idOrder` int NOT NULL,
  PRIMARY KEY (`idOrderDetail`),
  KEY `fk_OrderDetail_Pizza1_idx` (`idPizza`),
  KEY `fk_OrderDetail_Order1_idx` (`idOrder`),
  CONSTRAINT `fk_OrderDetail_Order1` FOREIGN KEY (`idOrder`) REFERENCES `order` (`idOrder`),
  CONSTRAINT `fk_OrderDetail_Pizza1` FOREIGN KEY (`idPizza`) REFERENCES `pizza` (`idPizza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- BD Carrito-----------------------------------

CREATE TABLE `cliente` (
  `idCliente` int unsigned NOT NULL AUTO_INCREMENT,
  `Dni` varchar(9) DEFAULT NULL,
  `Nombres` varchar(255) DEFAULT NULL,
  `Direccion` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
CREATE TABLE `compras` (
  `idCompras` int unsigned NOT NULL AUTO_INCREMENT,
  `idCliente` int unsigned NOT NULL,
  `idPago` int unsigned NOT NULL,
  `FechaCompras` varchar(11) DEFAULT NULL,
  `Monto` double DEFAULT NULL,
  `Estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idCompras`),
  KEY `Compras_FKIndex1` (`idPago`),
  KEY `Compras_FKIndex2` (`idCliente`),
  CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`idPago`) REFERENCES `pago` (`idPago`),
  CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
CREATE TABLE `detalle_compras` (
  `idDetalle` int unsigned NOT NULL AUTO_INCREMENT,
  `idProducto` int unsigned NOT NULL,
  `idCompras` int unsigned NOT NULL,
  `Cantidad` int unsigned DEFAULT NULL,
  `PrecioCompra` double DEFAULT NULL,
  PRIMARY KEY (`idDetalle`,`idProducto`,`idCompras`),
  KEY `Producto_has_Compras_FKIndex1` (`idProducto`),
  KEY `Producto_has_Compras_FKIndex2` (`idCompras`),
  CONSTRAINT `detalle_compras_ibfk_1` FOREIGN KEY (`idProducto`) REFERENCES `producto` (`idProducto`),
  CONSTRAINT `detalle_compras_ibfk_2` FOREIGN KEY (`idCompras`) REFERENCES `compras` (`idCompras`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
CREATE TABLE `pago` (
  `idPago` int unsigned NOT NULL AUTO_INCREMENT,
  `Monto` double DEFAULT NULL,
  PRIMARY KEY (`idPago`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3;
CREATE TABLE `producto` (
  `idProducto` int unsigned NOT NULL AUTO_INCREMENT,
  `Nombres` varchar(255) DEFAULT NULL,
  `Foto` longblob,
  `Descripcion` varchar(255) DEFAULT NULL,
  `Precio` double DEFAULT NULL,
  `Stock` int unsigned DEFAULT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

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