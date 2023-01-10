create database peru;
use peru;
SET FOREIGN_KEY_CHECKS=0;

# GO
# Dumping Table Structure for departamentos

#
CREATE TABLE `departamentos` (
  `idDepartamento` int(11) NOT NULL AUTO_INCREMENT,
  `departamento` varchar(50) NOT NULL,
  PRIMARY KEY (`idDepartamento`),
  KEY `idDepartamento` (`idDepartamento`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;
# GO
#

# Dumping Data for departamentos
#
BEGIN;
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (1, 'AMAZONAS');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (2, 'ANCASH');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (3, 'APURIMAC');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (4, 'AREQUIPA');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (5, 'AYACUCHO');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (6, 'CAJAMARCA');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (7, 'CUSCO');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (8, 'HUANCAVELICA');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (9, 'HUANUCO');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (10, 'ICA');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (11, 'JUNIN');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (12, 'LA LIBERTAD');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (13, 'LAMBAYEQUE');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (14, 'LIMA');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (15, 'LORETO');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (16, 'MADRE DE DIOS');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (17, 'MOQUEGUA');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (18, 'PASCO');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (19, 'PIURA');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (20, 'PUNO');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (21, 'SAN MARTIN');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (22, 'TACNA');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (23, 'TUMBES');
# GO
INSERT INTO `departamentos` (idDepartamento, departamento) VALUES (24, 'UCAYALI');
# GO
COMMIT;
# GO
# Dumping Table Structure for distritos

#
CREATE TABLE `distritos` (
  `idDistrito` int(11) NOT NULL AUTO_INCREMENT,
  `idProvincia` int(11) NOT NULL DEFAULT '0',
  `distrito` varchar(50) NOT NULL,
  PRIMARY KEY (`idDistrito`),
  KEY `idDistrito` (`idDistrito`),
  KEY `idProvincia` (`idProvincia`),
  KEY `provinciasdistritos` (`idProvincia`),
  CONSTRAINT `FK_peru_provincias_distritos` FOREIGN KEY (`idProvincia`) REFERENCES `provincias` (`idProvincia`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1831 DEFAULT CHARSET=latin1;
# GO
#

# Dumping Data for distritos
#
BEGIN;
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1, 1, 'ARAMANGO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (2, 1, 'COPALLIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (3, 1, 'EL PARCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (4, 1, 'IMAZA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (5, 1, 'LA PECA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (6, 2, 'CHISQUILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (7, 2, 'CHURUJA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (8, 2, 'COROSHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (9, 2, 'CUISPES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (10, 2, 'FLORIDA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (11, 2, 'JAZAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (12, 2, 'JUMBILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (13, 2, 'RECTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (14, 2, 'SAN CARLOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (15, 2, 'SHIPASBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (16, 2, 'VALERA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (17, 2, 'YAMBRASBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (18, 3, 'ASUNCION');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (19, 3, 'BALSAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (20, 3, 'CHACHAPOYAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (21, 3, 'CHETO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (22, 3, 'CHILIQUIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (23, 3, 'CHUQUIBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (24, 3, 'GRANADA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (25, 3, 'HUANCAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (26, 3, 'LA JALCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (27, 3, 'LEIMEBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (28, 3, 'LEVANTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (29, 3, 'MAGDALENA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (30, 3, 'MARISCAL CASTILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (31, 3, 'MOLINOPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (32, 3, 'MONTEVIDEO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (33, 3, 'OLLEROS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (34, 3, 'QUINJALCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (35, 3, 'SAN FRANCISCO DE DAGUAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (36, 3, 'SAN ISIDRO DE MAINO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (37, 3, 'SOLOCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (38, 3, 'SONCHE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (39, 4, 'EL CENEPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (40, 4, 'NIEVA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (41, 4, 'RIO SANTIAGO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (42, 5, 'CAMPORREDONDO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (43, 5, 'COCABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (44, 5, 'COLCAMAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (45, 5, 'CONILA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (46, 5, 'INGUILPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (47, 5, 'LAMUD');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (48, 5, 'LONGUITA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (49, 5, 'LONYA CHICO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (50, 5, 'LUYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (51, 5, 'LUYA VIEJO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (52, 5, 'MARIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (53, 5, 'OCALLI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (54, 5, 'OCUMAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (55, 5, 'PISUQUIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (56, 5, 'PROVIDENCIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (57, 5, 'SAN CRISTOBAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (58, 5, 'SAN FRANCISCO DEL YESO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (59, 5, 'SAN JERONIMO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (60, 5, 'SAN JUAN DE LOPECANCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (61, 5, 'SANTA CATALINA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (62, 5, 'SANTO TOMAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (63, 5, 'TINGO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (64, 5, 'TRITA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (65, 6, 'CHIRIMOTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (66, 6, 'COCHAMAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (67, 6, 'HUAMBO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (68, 6, 'LIMABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (69, 6, 'LONGAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (70, 6, 'MARISCAL BENAVIDES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (71, 6, 'MILPUC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (72, 6, 'OMIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (73, 6, 'SAN NICOLAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (74, 6, 'SANTA ROSA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (75, 6, 'TOTORA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (76, 6, 'VISTA ALEGRE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (77, 7, 'BAGUA GRANDE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (78, 7, 'CAJARURO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (79, 7, 'CUMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (80, 7, 'EL MILAGRO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (81, 7, 'JAMALCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (82, 7, 'LONYA GRANDE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (83, 7, 'YAMON');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (84, 8, 'AIJA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (85, 8, 'CORIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (86, 8, 'HUACLLAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (87, 8, 'LA MERCED');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (88, 8, 'SUCCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (89, 9, 'ACZO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (90, 9, 'CHACCHO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (91, 9, 'CHINGAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (92, 9, 'LLAMELLIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (93, 9, 'MIRGAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (94, 9, 'SAN JUAN DE RONTOY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (95, 10, 'ACOCHACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (96, 10, 'CHACAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (97, 11, 'ABELARDO PARDO LEZAMETA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (98, 11, 'ANTONIO RAYMONDI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (99, 11, 'AQUIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (100, 11, 'CAJACAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (101, 11, 'CANIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (102, 11, 'CHIQUIAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (103, 11, 'COLQUIOC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (104, 11, 'HUALLANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (105, 11, 'HUASTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (106, 11, 'HUAYLLACAYAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (107, 11, 'LA PRIMAVERA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (108, 11, 'MANGAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (109, 11, 'PACLLON');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (110, 11, 'SAN MIGUEL DE CORPANQUI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (111, 11, 'TICLLOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (112, 12, 'ACOPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (113, 12, 'AMASHCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (114, 12, 'ANTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (115, 12, 'ATAQUERO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (116, 12, 'CARHUAZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (117, 12, 'MARCARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (118, 12, 'PARIAHUANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (119, 12, 'SAN MIGUEL DE ACO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (120, 12, 'SHILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (121, 12, 'TINCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (122, 12, 'YUNGAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (123, 13, 'SAN LUIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (124, 13, 'SAN NICOLAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (125, 13, 'YAUYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (126, 14, 'BUENA VISTA ALTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (127, 14, 'CASMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (128, 14, 'COMANDANTE NOEL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (129, 14, 'YAUTAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (130, 15, 'ACO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (131, 15, 'BAMBAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (132, 15, 'CORONGO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (133, 15, 'CUSCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (134, 15, 'LA PAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (135, 15, 'YANAC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (136, 15, 'YUPAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (137, 16, 'COCHABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (138, 16, 'COLCABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (139, 16, 'HUANCHAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (140, 16, 'HUARAZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (141, 16, 'INDEPENDENCIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (142, 16, 'JANGAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (143, 16, 'LA LIBERTAD');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (144, 16, 'OLLEROS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (145, 16, 'PAMPAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (146, 16, 'PARIACOTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (147, 16, 'PIRA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (148, 16, 'TARICA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (149, 17, 'ANRA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (150, 17, 'CAJAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (151, 17, 'CHAVIN DE HUANTAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (152, 17, 'HUACACHI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (153, 17, 'HUACCHIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (154, 17, 'HUACHIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (155, 17, 'HUANTAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (156, 17, 'HUARI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (157, 17, 'MASIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (158, 17, 'PAUCAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (159, 17, 'PONTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (160, 17, 'RAHUAPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (161, 17, 'RAPAYAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (162, 17, 'SAN MARCOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (163, 17, 'SAN PEDRO DE CHANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (164, 17, 'UCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (165, 18, 'COCHAPETI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (166, 18, 'CULEBRAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (167, 18, 'HUARMEY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (168, 18, 'HUAYAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (169, 18, 'MALVAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (170, 19, 'CARAZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (171, 19, 'HUALLANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (172, 19, 'HUATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (173, 19, 'HUAYLAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (174, 19, 'MATO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (175, 19, 'PAMPAROMAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (176, 19, 'PUEBLO LIBRE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (177, 19, 'SANTA CRUZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (178, 19, 'SANTO TORIBIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (179, 19, 'YURACMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (180, 20, 'CASCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (181, 20, 'ELEAZAR GUZMAN BARRON');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (182, 20, 'FIDEL OLIVAS ESCUDERO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (183, 20, 'LLAMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (184, 20, 'LLUMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (185, 20, 'LUCMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (186, 20, 'MUSGA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (187, 20, 'PISCOBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (188, 21, 'ACAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (189, 21, 'CAJAMARQUILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (190, 21, 'CARHUAPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (191, 21, 'COCHAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (192, 21, 'CONGAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (193, 21, 'LLIPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (194, 21, 'OCROS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (195, 21, 'SAN CRISTOBAL DE RAJAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (196, 21, 'SAN PEDRO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (197, 21, 'SANTIAGO DE CHILCAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (198, 22, 'BOLOGNESI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (199, 22, 'CABANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (200, 22, 'CONCHUCOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (201, 22, 'HUACASCHUQUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (202, 22, 'HUANDOVAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (203, 22, 'LACABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (204, 22, 'LLAPO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (205, 22, 'PALLASCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (206, 22, 'PAMPAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (207, 22, 'SANTA ROSA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (208, 22, 'TAUCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (209, 23, 'HUAYLLAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (210, 23, 'PAROBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (211, 23, 'POMABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (212, 23, 'QUINUABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (213, 24, 'CATAC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (214, 24, 'COTAPARACO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (215, 24, 'HUAYLLAPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (216, 24, 'LLACLLIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (217, 24, 'MARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (218, 24, 'PAMPAS CHICO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (219, 24, 'PARARIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (220, 24, 'RECUAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (221, 24, 'TAPACOCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (222, 24, 'TICAPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (223, 25, 'CACERES DEL PERU');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (224, 25, 'CHIMBOTE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (225, 25, 'COISHCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (226, 25, 'MACATE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (227, 25, 'MORO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (228, 25, 'NEPEÑA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (229, 25, 'NUEVO CHIMBOTE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (230, 25, 'SAMANCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (231, 25, 'SANTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (232, 26, 'ACOBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (233, 26, 'ALFONSO UGARTE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (234, 26, 'CASHAPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (235, 26, 'CHINGALPO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (236, 26, 'HUAYLLABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (237, 26, 'QUICHES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (238, 26, 'RAGASH');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (239, 26, 'SAN JUAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (240, 26, 'SICSIBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (241, 26, 'SIHUAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (242, 27, 'CASCAPARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (243, 27, 'MANCOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (244, 27, 'MATACOTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (245, 27, 'QUILLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (246, 27, 'RANRAHIRCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (247, 27, 'SHUPLUY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (248, 27, 'YANAMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (249, 27, 'YUNGAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (250, 28, 'ABANCAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (251, 28, 'CHACOCHE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (252, 28, 'CIRCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (253, 28, 'CURAHUASI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (254, 28, 'HUANIPACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (255, 28, 'LAMBRAMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (256, 28, 'PICHIRHUA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (257, 28, 'SAN PEDRO DE CACHORA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (258, 28, 'TAMBURCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (259, 29, 'ANDAHUAYLAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (260, 29, 'ANDARAPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (261, 29, 'CHIARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (262, 29, 'HUANCARAMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (263, 29, 'HUANCARAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (264, 29, 'HUAYANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (265, 29, 'KAQUIABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (266, 29, 'KISHUARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (267, 29, 'PACOBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (268, 29, 'PACUCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (269, 29, 'PAMPACHIRI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (270, 29, 'POMACOCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (271, 29, 'SAN ANTONIO DE CACHI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (272, 29, 'SAN JERONIMO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (273, 29, 'SAN MIGUEL DE CHACCRAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (274, 29, 'SANTA MARIA DE CHICMO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (275, 29, 'TALAVERA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (276, 29, 'TUMAY HUARACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (277, 29, 'TURPO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (278, 30, 'ANTABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (279, 30, 'EL ORO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (280, 30, 'HUAQUIRCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (281, 30, 'JUAN ESPINOZA MEDRANO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (282, 30, 'OROPESA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (283, 30, 'PACHACONAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (284, 30, 'SABAINO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (285, 31, 'CAPAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (286, 31, 'CARAYBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (287, 31, 'CHALHUANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (288, 31, 'CHAPIMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (289, 31, 'COLCABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (290, 31, 'COTARUSE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (291, 31, 'HUAYLLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (292, 31, 'JUSTO APU SAHUARAURA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (293, 31, 'LUCRE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (294, 31, 'POCOHUANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (295, 31, 'SAN JUAN DE CHACÑA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (296, 31, 'SAÑAYCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (297, 31, 'SORAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (298, 31, 'TAPAIRIHUA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (299, 31, 'TINTAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (300, 31, 'TORAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (301, 31, 'YANACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (302, 32, 'ANCO-HUALLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (303, 32, 'CHINCHEROS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (304, 32, 'COCHARCAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (305, 32, 'HUACCANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (306, 32, 'OCOBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (307, 32, 'ONGOY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (308, 32, 'RANRACANCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (309, 32, 'URANMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (310, 33, 'CHALLHUAHUACHO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (311, 33, 'COTABAMBAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (312, 33, 'COYLLURQUI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (313, 33, 'HAQUIRA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (314, 33, 'MARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (315, 33, 'TAMBOBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (316, 34, 'CHUQUIBAMBILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (317, 34, 'CURASCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (318, 34, 'CURPAHUASI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (319, 34, 'GAMARRA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (320, 34, 'HUAYLLATI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (321, 34, 'MAMARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (322, 34, 'MICAELA BASTIDAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (323, 34, 'PATAYPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (324, 34, 'PROGRESO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (325, 34, 'SAN ANTONIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (326, 34, 'SANTA ROSA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (327, 34, 'TURPAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (328, 34, 'VILCABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (329, 34, 'VIRUNDO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (330, 35, 'ALTO SELVA ALEGRE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (331, 35, 'AREQUIPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (332, 35, 'CAYMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (333, 35, 'CERRO COLORADO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (334, 35, 'CHARACATO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (335, 35, 'CHIGUATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (336, 35, 'JACOBO HUNTER');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (337, 35, 'JOSE LUIS BUSTAMANTE Y RIVERO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (338, 35, 'LA JOYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (339, 35, 'MARIANO MELGAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (340, 35, 'MIRAFLORES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (341, 35, 'MOLLEBAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (342, 35, 'PAUCARPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (343, 35, 'POCSI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (344, 35, 'POLOBAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (345, 35, 'QUEQUEÑA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (346, 35, 'SABANDIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (347, 35, 'SACHACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (348, 35, 'SAN JUAN DE SIGUAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (349, 35, 'SAN JUAN DE TARUCANI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (350, 35, 'SANTA ISABEL DE SIGUAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (351, 35, 'SANTA RITA DE SIGUAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (352, 35, 'SOCABAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (353, 35, 'TIABAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (354, 35, 'UCHUMAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (355, 35, 'VITOR  1/');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (356, 35, 'YANAHUARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (357, 35, 'YARABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (358, 35, 'YURA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (359, 36, 'CAMANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (360, 36, 'JOSE MARIA QUIMPER');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (361, 36, 'MARIANO NICOLAS VALCARCEL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (362, 36, 'MARISCAL CACERES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (363, 36, 'NICOLAS DE PIEROLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (364, 36, 'OCOÑA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (365, 36, 'QUILCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (366, 36, 'SAMUEL PASTOR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (367, 37, 'ACARI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (368, 37, 'ATICO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (369, 37, 'ATIQUIPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (370, 37, 'BELLA UNION');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (371, 37, 'CAHUACHO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (372, 37, 'CARAVELI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (373, 37, 'CHALA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (374, 37, 'CHAPARRA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (375, 37, 'HUANUHUANU');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (376, 37, 'JAQUI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (377, 37, 'LOMAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (378, 37, 'QUICACHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (379, 37, 'YAUCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (380, 38, 'ANDAGUA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (381, 38, 'APLAO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (382, 38, 'AYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (383, 38, 'CHACHAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (384, 38, 'CHILCAYMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (385, 38, 'CHOCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (386, 38, 'HUANCARQUI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (387, 38, 'MACHAGUAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (388, 38, 'ORCOPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (389, 38, 'PAMPACOLCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (390, 38, 'TIPAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (391, 38, 'UÑON');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (392, 38, 'URACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (393, 38, 'VIRACO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (394, 39, 'ACHOMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (395, 39, 'CABANACONDE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (396, 39, 'CALLALLI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (397, 39, 'CAYLLOMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (398, 39, 'CHIVAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (399, 39, 'COPORAQUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (400, 39, 'HUAMBO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (401, 39, 'HUANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (402, 39, 'ICHUPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (403, 39, 'LARI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (404, 39, 'LLUTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (405, 39, 'MACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (406, 39, 'MADRIGAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (407, 39, 'MAJES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (408, 39, 'SAN ANTONIO DE CHUCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (409, 39, 'SIBAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (410, 39, 'TAPAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (411, 39, 'TISCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (412, 39, 'TUTI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (413, 39, 'YANQUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (414, 40, 'ANDARAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (415, 40, 'CAYARANI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (416, 40, 'CHICHAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (417, 40, 'CHUQUIBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (418, 40, 'IRAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (419, 40, 'RIO GRANDE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (420, 40, 'SALAMANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (421, 40, 'YANAQUIHUA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (422, 41, 'COCACHACRA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (423, 41, 'DEAN VALDIVIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (424, 41, 'ISLAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (425, 41, 'MEJIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (426, 41, 'MOLLENDO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (427, 41, 'PUNTA DE BOMBON');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (428, 42, 'ALCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (429, 42, 'CHARCANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (430, 42, 'COTAHUASI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (431, 42, 'HUAYNACOTAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (432, 42, 'PAMPAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (433, 42, 'PUYCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (434, 42, 'QUECHUALLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (435, 42, 'SAYLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (436, 42, 'TAURIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (437, 42, 'TOMEPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (438, 42, 'TORO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (439, 43, 'CANGALLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (440, 43, 'CHUSCHI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (441, 43, 'LOS MOROCHUCOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (442, 43, 'MARIA PARADO DE BELLIDO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (443, 43, 'PARAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (444, 43, 'TOTOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (445, 44, 'ACOCRO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (446, 44, 'ACOS VINCHOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (447, 44, 'AYACUCHO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (448, 44, 'CARMEN ALTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (449, 44, 'CHIARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (450, 44, 'JESUS NAZARENO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (451, 44, 'OCROS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (452, 44, 'PACAYCASA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (453, 44, 'QUINUA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (454, 44, 'SAN JOSE DE TICLLAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (455, 44, 'SAN JUAN BAUTISTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (456, 44, 'SANTIAGO DE PISCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (457, 44, 'SOCOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (458, 44, 'TAMBILLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (459, 44, 'VINCHOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (460, 45, 'CARAPO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (461, 45, 'SACSAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (462, 45, 'SANCOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (463, 45, 'SANTIAGO DE LUCANAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (464, 46, 'AYAHUANCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (465, 46, 'HUAMANGUILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (466, 46, 'HUANTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (467, 46, 'IGUAIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (468, 46, 'LLOCHEGUA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (469, 46, 'LURICOCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (470, 46, 'SANTILLANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (471, 46, 'SIVIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (472, 47, 'ANCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (473, 47, 'AYNA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (474, 47, 'CHILCAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (475, 47, 'CHUNGUI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (476, 47, 'LUIS CARRANZA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (477, 47, 'SAN MIGUEL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (478, 47, 'SANTA ROSA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (479, 47, 'TAMBO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (480, 48, 'AUCARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (481, 48, 'CABANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (482, 48, 'CARMEN SALCEDO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (483, 48, 'CHAVIÑA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (484, 48, 'CHIPAO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (485, 48, 'HUAC-HUAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (486, 48, 'LARAMATE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (487, 48, 'LEONCIO PRADO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (488, 48, 'LLAUTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (489, 48, 'LUCANAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (490, 48, 'OCAÑA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (491, 48, 'OTOCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (492, 48, 'PUQUIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (493, 48, 'SAISA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (494, 48, 'SAN CRISTOBAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (495, 48, 'SAN JUAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (496, 48, 'SAN PEDRO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (497, 48, 'SAN PEDRO DE PALCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (498, 48, 'SANCOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (499, 48, 'SANTA ANA DE HUAYCAHUACHO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (500, 48, 'SANTA LUCIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (501, 49, 'CHUMPI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (502, 49, 'CORACORA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (503, 49, 'CORONEL CASTAÑEDA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (504, 49, 'PACAPAUSA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (505, 49, 'PULLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (506, 49, 'PUYUSCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (507, 49, 'SAN FRANCISCO DE RAVACAYCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (508, 49, 'UPAHUACHO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (509, 50, 'COLTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (510, 50, 'CORCULLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (511, 50, 'LAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (512, 50, 'MARCABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (513, 50, 'OYOLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (514, 50, 'PARARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (515, 50, 'PAUSA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (516, 50, 'SAN JAVIER DE ALPABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (517, 50, 'SAN JOSE DE USHUA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (518, 50, 'SARA SARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (519, 51, 'BELEN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (520, 51, 'CHALCOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (521, 51, 'CHILCAYOC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (522, 51, 'HUACAÑA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (523, 51, 'MORCOLLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (524, 51, 'PAICO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (525, 51, 'QUEROBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (526, 51, 'SAN PEDRO DE LARCAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (527, 51, 'SAN SALVADOR DE QUIJE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (528, 51, 'SANTIAGO DE PAUCARAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (529, 51, 'SORAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (530, 52, 'ALCAMENCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (531, 52, 'APONGO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (532, 52, 'ASQUIPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (533, 52, 'CANARIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (534, 52, 'CAYARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (535, 52, 'COLCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (536, 52, 'HUAMANQUIQUIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (537, 52, 'HUANCAPI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (538, 52, 'HUANCARAYLLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (539, 52, 'HUAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (540, 52, 'SARHUA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (541, 52, 'VILCANCHOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (542, 53, 'ACCOMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (543, 53, 'CARHUANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (544, 53, 'CONCEPCION');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (545, 53, 'HUAMBALPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (546, 53, 'INDEPENDENCIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (547, 53, 'SAURAMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (548, 53, 'VILCAS HUAMAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (549, 53, 'VISCHONGO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (550, 54, 'CACHACHI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (551, 54, 'CAJABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (552, 54, 'CONDEBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (553, 54, 'SITACOCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (554, 55, 'ASUNCION');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (555, 55, 'CAJAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (556, 55, 'CHETILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (557, 55, 'COSPAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (558, 55, 'ENCAÑADA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (559, 55, 'JESUS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (560, 55, 'LLACANORA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (561, 55, 'LOS BAÑOS DEL INCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (562, 55, 'MAGDALENA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (563, 55, 'MATARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (564, 55, 'NAMORA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (565, 55, 'SAN JUAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (566, 56, 'CELENDIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (567, 56, 'CHUMUCH');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (568, 56, 'CORTEGANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (569, 56, 'HUASMIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (570, 56, 'JORGE CHAVEZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (571, 56, 'JOSE GALVEZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (572, 56, 'LA LIBERTAD DE PALLAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (573, 56, 'MIGUEL IGLESIAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (574, 56, 'OXAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (575, 56, 'SOROCHUCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (576, 56, 'SUCRE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (577, 56, 'UTCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (578, 57, 'ANGUIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (579, 57, 'CHADIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (580, 57, 'CHALAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (581, 57, 'CHIGUIRIP');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (582, 57, 'CHIMBAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (583, 57, 'CHOROPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (584, 57, 'CHOTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (585, 57, 'COCHABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (586, 57, 'CONCHAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (587, 57, 'HUAMBOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (588, 57, 'LAJAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (589, 57, 'LLAMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (590, 57, 'MIRACOSTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (591, 57, 'PACCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (592, 57, 'PION');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (593, 57, 'QUEROCOTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (594, 57, 'SAN JUAN DE LICUPIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (595, 57, 'TACABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (596, 57, 'TOCMOCHE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (597, 58, 'CHILETE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (598, 58, 'CONTUMAZA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (599, 58, 'CUPISNIQUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (600, 58, 'GUZMANGO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (601, 58, 'SAN BENITO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (602, 58, 'SANTA CRUZ DE TOLEDO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (603, 58, 'TANTARICA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (604, 58, 'YONAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (605, 59, 'CALLAYUC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (606, 59, 'CHOROS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (607, 59, 'CUJILLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (608, 59, 'CUTERVO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (609, 59, 'LA RAMADA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (610, 59, 'PIMPINGOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (611, 59, 'QUEROCOTILLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (612, 59, 'SAN ANDRES DE CUTERVO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (613, 59, 'SAN JUAN DE CUTERVO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (614, 59, 'SAN LUIS DE LUCMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (615, 59, 'SANTA CRUZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (616, 59, 'SANTO TOMAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (617, 59, 'SOCOTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (618, 59, 'STO. DOMINGO DE LA CAPILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (619, 59, 'TORIBIO CASANOVA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (620, 60, 'BAMBAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (621, 60, 'CHUGUR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (622, 60, 'HUALGAYOC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (623, 61, 'BELLAVISTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (624, 61, 'CHONTALI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (625, 61, 'COLASAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (626, 61, 'HUABAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (627, 61, 'JAEN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (628, 61, 'LAS PIRIAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (629, 61, 'POMAHUACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (630, 61, 'PUCARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (631, 61, 'SALLIQUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (632, 61, 'SAN FELIPE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (633, 61, 'SAN JOSE DEL ALTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (634, 61, 'SANTA ROSA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (635, 62, 'CHIRINOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (636, 62, 'HUARANGO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (637, 62, 'LA COIPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (638, 62, 'NAMBALLE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (639, 62, 'SAN IGNACIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (640, 62, 'SAN JOSE DE LOURDES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (641, 62, 'TABACONAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (642, 63, 'CHANCAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (643, 63, 'EDUARDO VILLANUEVA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (644, 63, 'GREGORIO PITA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (645, 63, 'ICHOCAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (646, 63, 'JOSE MANUEL QUIROZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (647, 63, 'JOSE SABOGAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (648, 63, 'PEDRO GALVEZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (649, 64, 'BOLIVAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (650, 64, 'CALQUIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (651, 64, 'CATILLUC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (652, 64, 'EL PRADO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (653, 64, 'LA FLORIDA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (654, 64, 'LLAPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (655, 64, 'NANCHOC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (656, 64, 'NIEPOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (657, 64, 'SAN GREGORIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (658, 64, 'SAN MIGUEL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (659, 64, 'SAN SILVESTRE DE COCHAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (660, 64, 'TONGOD');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (661, 64, 'UNION AGUA BLANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (662, 65, 'SAN BERNARDINO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (663, 65, 'SAN LUIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (664, 65, 'SAN PABLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (665, 65, 'TUMBADEN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (666, 66, 'ANDABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (667, 66, 'CATACHE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (668, 66, 'CHANCAYBAÑOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (669, 66, 'LA ESPERANZA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (670, 66, 'NINABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (671, 66, 'PULAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (672, 66, 'SANTA CRUZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (673, 66, 'SAUCEPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (674, 66, 'SEXI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (675, 66, 'UTICYACU');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (676, 66, 'YAUYUCAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (677, 67, 'ACOMAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (678, 67, 'ACOPIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (679, 67, 'ACOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (680, 67, 'MOSOC LLACTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (681, 67, 'POMACANCHI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (682, 67, 'RONDOCAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (683, 67, 'SANGARARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (684, 68, 'ANCAHUASI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (685, 68, 'ANTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (686, 68, 'CACHIMAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (687, 68, 'CHINCHAYPUJIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (688, 68, 'HUAROCONDO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (689, 68, 'LIMATAMBO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (690, 68, 'MOLLEPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (691, 68, 'PUCYURA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (692, 68, 'ZURITE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (693, 69, 'CALCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (694, 69, 'COYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (695, 69, 'LAMAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (696, 69, 'LARES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (697, 69, 'PISAC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (698, 69, 'SAN SALVADOR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (699, 69, 'TARAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (700, 69, 'YANATILE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (701, 70, 'CHECCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (702, 70, 'KUNTURKANKI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (703, 70, 'LANGUI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (704, 70, 'LAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (705, 70, 'PAMPAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (706, 70, 'QUEHUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (707, 70, 'TUPAC AMARU');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (708, 70, 'YANAOCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (709, 71, 'CHECACUPE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (710, 71, 'COMBAPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (711, 71, 'MARANGANI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (712, 71, 'PITUMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (713, 71, 'SAN PABLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (714, 71, 'SAN PEDRO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (715, 71, 'SICUANI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (716, 71, 'TINTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (717, 72, 'CAPACMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (718, 72, 'CHAMACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (719, 72, 'COLQUEMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (720, 72, 'LIVITACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (721, 72, 'LLUSCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (722, 72, 'QUIÑOTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (723, 72, 'SANTO TOMAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (724, 72, 'VELILLE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (725, 73, 'CCORCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (726, 73, 'CUSCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (727, 73, 'POROY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (728, 73, 'SAN JERONIMO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (729, 73, 'SAN SEBASTIAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (730, 73, 'SANTIAGO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (731, 73, 'SAYLLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (732, 73, 'WANCHAQ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (733, 74, 'ALTO PICHIGUA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (734, 74, 'CONDOROMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (735, 74, 'COPORAQUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (736, 74, 'ESPINAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (737, 74, 'OCORURO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (738, 74, 'PALLPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (739, 74, 'PICHIGUA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (740, 74, 'SUYCKUTAMBO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (741, 75, 'ECHARATE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (742, 75, 'HUAYOPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (743, 75, 'MARANURA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (744, 75, 'OCOBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (745, 75, 'PICHARI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (746, 75, 'QUELLOUNO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (747, 75, 'QUIMBIRI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (748, 75, 'SANTA ANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (749, 75, 'SANTA TERESA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (750, 75, 'VILCABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (751, 76, 'ACCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (752, 76, 'CCAPI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (753, 76, 'COLCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (754, 76, 'HUANOQUITE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (755, 76, 'OMACHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (756, 76, 'PACCARITAMBO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (757, 76, 'PARURO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (758, 76, 'PILLPINTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (759, 76, 'YAURISQUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (760, 77, 'CAICAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (761, 77, 'CHALLABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (762, 77, 'COLQUEPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (763, 77, 'HUANCARANI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (764, 77, 'KOSÑIPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (765, 77, 'PAUCARTAMBO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (766, 78, 'ANDAHUAYLILLAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (767, 78, 'CAMANTI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (768, 78, 'CCARHUAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (769, 78, 'CCATCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (770, 78, 'CUSIPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (771, 78, 'HUARO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (772, 78, 'LUCRE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (773, 78, 'MARCAPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (774, 78, 'OCONGATE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (775, 78, 'OROPESA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (776, 78, 'QUIQUIJANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (777, 78, 'URCOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (778, 79, 'CHINCHERO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (779, 79, 'HUAYLLABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (780, 79, 'MACHUPICCHU');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (781, 79, 'MARAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (782, 79, 'OLLANTAYTAMBO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (783, 79, 'URUBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (784, 79, 'YUCAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (785, 80, 'ACOBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (786, 80, 'ANDABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (787, 80, 'ANTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (788, 80, 'CAJA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (789, 80, 'MARCAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (790, 80, 'PAUCARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (791, 80, 'POMACOCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (792, 80, 'ROSARIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (793, 81, 'ANCHONGA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (794, 81, 'CALLANMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (795, 81, 'CCOCHACCASA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (796, 81, 'CHINCHO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (797, 81, 'CONGALLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (798, 81, 'HUANCA-HUANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (799, 81, 'HUAYLLAY GRANDE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (800, 81, 'JULCAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (801, 81, 'LIRCAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (802, 81, 'SAN ANTONIO DE ANTAPARCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (803, 81, 'SANTO TOMAS DE PATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (804, 81, 'SECCLLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (805, 82, 'ARMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (806, 82, 'AURAHUA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (807, 82, 'CAPILLAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (808, 82, 'CASTROVIRREYNA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (809, 82, 'CHUPAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (810, 82, 'COCAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (811, 82, 'HUACHOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (812, 82, 'HUAMATAMBO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (813, 82, 'MOLLEPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (814, 82, 'SAN JUAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (815, 82, 'SANTA ANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (816, 82, 'TANTARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (817, 82, 'TICRAPO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (818, 83, 'ANCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (819, 83, 'CHINCHIHUASI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (820, 83, 'CHURCAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (821, 83, 'EL CARMEN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (822, 83, 'LA MERCED');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (823, 83, 'LOCROJA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (824, 83, 'PACHAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (825, 83, 'PAUCARBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (826, 83, 'SAN MIGUEL DE MAYOCC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (827, 83, 'SAN PEDRO DE CORIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (828, 84, 'ACOBAMBILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (829, 84, 'ACORIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (830, 84, 'ASCENCION');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (831, 84, 'CONAYCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (832, 84, 'CUENCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (833, 84, 'HUACHOCOLPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (834, 84, 'HUANCAVELICA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (835, 84, 'HUANDO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (836, 84, 'HUANDO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (837, 84, 'HUAYLLAHUARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (838, 84, 'IZCUCHACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (839, 84, 'LARIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (840, 84, 'MANTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (841, 84, 'MARISCAL CACERES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (842, 84, 'MOYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (843, 84, 'NUEVO OCCORO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (844, 84, 'PALCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (845, 84, 'PILCHACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (846, 84, 'VILCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (847, 84, 'YAULI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (848, 85, 'AYAVI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (849, 85, 'CORDOVA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (850, 85, 'HUAYACUNDO ARMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (851, 85, 'HUAYTARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (852, 85, 'LARAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (853, 85, 'OCOYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (854, 85, 'PILPICHACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (855, 85, 'QUERCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (856, 85, 'QUITO-ARMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (857, 85, 'SAN ANTONIO DE CUSICANCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (858, 85, 'SAN FSCO. DE SANGAYAICO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (859, 85, 'SAN ISIDRO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (860, 85, 'SANTIAGO DE CHOCORVOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (861, 85, 'SANTIAGO DE QUIRAHUARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (862, 85, 'SANTO DOMINGO DE CAPILLAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (863, 85, 'TAMBO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (864, 86, 'ACOSTAMBO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (865, 86, 'ACRAQUIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (866, 86, 'AHUAYCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (867, 86, 'COLCABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (868, 86, 'DANIEL HERNANDEZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (869, 86, 'HUACHOCOLPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (870, 86, 'HUARIBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (871, 86, 'PAMPAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (872, 86, 'PAZOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (873, 86, 'QUISHUAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (874, 86, 'SALCABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (875, 86, 'SALCAHUASI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (876, 86, 'SAN MARCOS DE ROCCHAC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (877, 86, 'SURCUBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (878, 86, 'TINTAY PUNCU');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (879, 86, 'YAHUIMPUQUIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (880, 87, 'AMBO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (881, 87, 'CAYNA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (882, 87, 'COLPAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (883, 87, 'CONCHAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (884, 87, 'HUACAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (885, 87, 'SAN FRANCISCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (886, 87, 'SAN RAFAEL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (887, 87, 'TOMAYQUICHUA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (888, 88, 'CHUQUIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (889, 88, 'LA UNION');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (890, 88, 'MARIAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (891, 88, 'PACHAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (892, 88, 'QUIVILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (893, 88, 'RIPAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (894, 88, 'SHUNQUI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (895, 88, 'SILLAPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (896, 88, 'YANAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (897, 89, 'CANCHABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (898, 89, 'COCHABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (899, 89, 'HUACAYBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (900, 89, 'PINRA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (901, 90, 'ARANCAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (902, 90, 'CHAVIN DE PARIARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (903, 90, 'JACAS GRANDE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (904, 90, 'JIRCAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (905, 90, 'LLATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (906, 90, 'MIRAFLORES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (907, 90, 'MONZON');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (908, 90, 'PUNCHAO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (909, 90, 'PUÑOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (910, 90, 'SINGA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (911, 90, 'TANTAMAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (912, 91, 'AMARILIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (913, 91, 'CHINCHAO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (914, 91, 'CHURUBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (915, 91, 'HUANUCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (916, 91, 'MARGOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (917, 91, 'PILCOMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (918, 91, 'QUISQUI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (919, 91, 'SAN FRANCISCO DE CAYRAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (920, 91, 'SAN PEDRO DE CHAULAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (921, 91, 'SANTA MARIA DEL VALLE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (922, 91, 'YARUMAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (923, 92, 'BAÑOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (924, 92, 'JESUS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (925, 92, 'JIVIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (926, 92, 'QUEROPALCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (927, 92, 'RONDOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (928, 92, 'SAN FRANCISCO DE ASIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (929, 92, 'SAN MIGUEL DE CAURI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (930, 93, 'DANIEL ALOMIA  ROBLES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (931, 93, 'HERMILIO VALDIZAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (932, 93, 'JOSE CRESPO Y CASTILLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (933, 93, 'LUYANDO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (934, 93, 'MARIANO DAMASO BERAUN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (935, 93, 'RUPA-RUPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (936, 94, 'CHOLON');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (937, 94, 'HUACRACHUCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (938, 94, 'SAN BUENAVENTURA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (939, 95, 'CHAGLLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (940, 95, 'MOLINO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (941, 95, 'PANAO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (942, 95, 'UMARI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (943, 96, 'CODO DEL POZUZO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (944, 96, 'HONORIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (945, 96, 'PUERTO INCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (946, 96, 'TOURNAVISTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (947, 96, 'YUYAPICHIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (948, 97, 'APARICIO POMARES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (949, 97, 'CAHUAC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (950, 97, 'CHACABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (951, 97, 'CHAVINILLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (952, 97, 'CHORAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (953, 97, 'JACAS CHICO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (954, 97, 'OBAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (955, 97, 'PAMPAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (956, 98, 'ALTO LARAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (957, 98, 'CHAVIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (958, 98, 'CHINCHA ALTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (959, 98, 'CHINCHA BAJA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (960, 98, 'EL CARMEN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (961, 98, 'GROCIO PRADO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (962, 98, 'PUEBLO NUEVO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (963, 98, 'SAN JUAN DE YANAC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (964, 98, 'SAN PEDRO DE HUACARPANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (965, 98, 'SUNAMPE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (966, 98, 'TAMBO DE MORA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (967, 99, 'ICA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (968, 99, 'LA TINGUIÑA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (969, 99, 'LOS AQUIJES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (970, 99, 'OCUCAJE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (971, 99, 'PACHACUTEC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (972, 99, 'PARCONA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (973, 99, 'PUEBLO NUEVO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (974, 99, 'SALAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (975, 99, 'SAN JOSE DE LOS MOLINOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (976, 99, 'SAN JUAN BAUTISTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (977, 99, 'SANTIAGO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (978, 99, 'SUBTANJALLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (979, 99, 'TATE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (980, 99, 'YAUCA DEL ROSARIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (981, 100, 'CHANGUILLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (982, 100, 'EL INGENIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (983, 100, 'MARCONA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (984, 100, 'NAZCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (985, 100, 'VISTA ALEGRE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (986, 101, 'LLIPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (987, 101, 'PALPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (988, 101, 'RIO GRANDE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (989, 101, 'SANTA CRUZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (990, 101, 'TIBILLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (991, 102, 'HUANCANO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (992, 102, 'HUMAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (993, 102, 'INDEPENDENCIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (994, 102, 'PARACAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (995, 102, 'PISCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (996, 102, 'SAN ANDRES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (997, 102, 'SAN CLEMENTE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (998, 102, 'TUPAC AMARU INCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (999, 103, 'CHANCHAMAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1000, 103, 'PERENE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1001, 103, 'PICHANAQUI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1002, 103, 'SAN LUIS DE SHUARO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1003, 103, 'SAN RAMON');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1004, 103, 'VITOC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1005, 104, 'AHUAC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1006, 104, 'CHONGOS BAJO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1007, 104, 'CHUPACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1008, 104, 'HUACHAC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1009, 104, 'HUAMANCACA CHICO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1010, 104, 'SAN JUAN DE ISCOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1011, 104, 'SAN JUAN DE JARPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1012, 104, 'TRES DE DICIEMBRE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1013, 104, 'YANACANCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1014, 105, 'ACO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1015, 105, 'ANDAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1016, 105, 'CHAMBARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1017, 105, 'COCHAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1018, 105, 'COMAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1019, 105, 'CONCEPCION');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1020, 105, 'HEROINAS TOLEDO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1021, 105, 'MANZANARES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1022, 105, 'MARISCAL CASTILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1023, 105, 'MATAHUASI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1024, 105, 'MITO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1025, 105, 'NUEVE DE JULIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1026, 105, 'ORCOTUNA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1027, 105, 'SAN JOSE DE QUERO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1028, 105, 'SANTA ROSA DE OCOPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1029, 106, 'CARHUACALLANGA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1030, 106, 'CHACAPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1031, 106, 'CHICCHE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1032, 106, 'CHILCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1033, 106, 'CHONGOS ALTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1034, 106, 'CHUPURO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1035, 106, 'COLCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1036, 106, 'CULLHUAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1037, 106, 'EL TAMBO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1038, 106, 'HUACRAPUQUIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1039, 106, 'HUALHUAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1040, 106, 'HUANCAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1041, 106, 'HUANCAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1042, 106, 'HUASICANCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1043, 106, 'HUAYUCACHI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1044, 106, 'INGENIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1045, 106, 'PARIAHUANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1046, 106, 'PILCOMAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1047, 106, 'PUCARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1048, 106, 'QUICHUAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1049, 106, 'QUILCAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1050, 106, 'SAN AGUSTIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1051, 106, 'SAN JERONIMO DE TUNAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1052, 106, 'SANTO DOMINGO DE ACOBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1053, 106, 'SAÑO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1054, 106, 'SAPALLANGA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1055, 106, 'SICAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1056, 106, 'VIQUES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1057, 107, 'ACOLLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1058, 107, 'APATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1059, 107, 'ATAURA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1060, 107, 'CANCHAYLLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1061, 107, 'CURICACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1062, 107, 'EL MANTARO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1063, 107, 'HUAMALI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1064, 107, 'HUARIPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1065, 107, 'HUERTAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1066, 107, 'JANJAILLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1067, 107, 'JAUJA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1068, 107, 'JULCAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1069, 107, 'LEONOR ORDOÑEZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1070, 107, 'LLOCLLAPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1071, 107, 'MARCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1072, 107, 'MASMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1073, 107, 'MASMA CHICCHE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1074, 107, 'MOLINOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1075, 107, 'MONOBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1076, 107, 'MUQUI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1077, 107, 'MUQUIYAUYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1078, 107, 'PACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1079, 107, 'PACCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1080, 107, 'PANCAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1081, 107, 'PARCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1082, 107, 'POMACANCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1083, 107, 'RICRAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1084, 107, 'SAN LORENZO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1085, 107, 'SAN PEDRO DE CHUNAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1086, 107, 'SAUSA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1087, 107, 'SINCOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1088, 107, 'TUNAN MARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1089, 107, 'YAULI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1090, 107, 'YAUYOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1091, 108, 'CARHUAMAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1092, 108, 'JUNIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1093, 108, 'ONDORES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1094, 108, 'ULCUMAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1095, 109, 'COVIRIALI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1096, 109, 'LLAYLLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1097, 109, 'MAZAMARI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1098, 109, 'PAMPA HERMOSA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1099, 109, 'PANGOA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1100, 109, 'RIO NEGRO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1101, 109, 'RIO TAMBO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1102, 109, 'SATIPO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1103, 110, 'ACOBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1104, 110, 'HUARICOLCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1105, 110, 'HUASAHUASI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1106, 110, 'LA UNION');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1107, 110, 'PALCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1108, 110, 'PALCAMAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1109, 110, 'SAN PEDRO DE CAJAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1110, 110, 'TAPO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1111, 110, 'TARMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1112, 111, 'CHACAPALPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1113, 111, 'HUAY-HUAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1114, 111, 'LA OROYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1115, 111, 'MARCAPOMACOCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1116, 111, 'MOROCOCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1117, 111, 'PACCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1118, 111, 'SANTA ROSA DE SACCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1119, 111, 'STA. BARBARA DE CARHUACAYAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1120, 111, 'SUITUCANCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1121, 111, 'YAULI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1122, 112, 'ASCOPE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1123, 112, 'CASA GRANDE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1124, 112, 'CHICAMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1125, 112, 'CHOCOPE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1126, 112, 'MAGDALENA DE CAO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1127, 112, 'PAIJAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1128, 112, 'RAZURI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1129, 112, 'SANTIAGO DE CAO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1130, 113, 'BAMBAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1131, 113, 'BOLIVAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1132, 113, 'CONDORMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1133, 113, 'LONGOTEA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1134, 113, 'UCHUMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1135, 113, 'UCUNCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1136, 114, 'CHEPEN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1137, 114, 'PACANGA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1138, 114, 'PUEBLO NUEVO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1139, 115, 'CASCAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1140, 115, 'LUCMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1141, 115, 'MARMOT');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1142, 115, 'SAYAPULLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1143, 116, 'CALAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1144, 116, 'CARABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1145, 116, 'HUASO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1146, 116, 'JULCAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1147, 117, 'AGALLPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1148, 117, 'CHARAT');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1149, 117, 'HUARANCHAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1150, 117, 'LA CUESTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1151, 117, 'MACHE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1152, 117, 'OTUZCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1153, 117, 'PARANDAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1154, 117, 'SALPO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1155, 117, 'SINSICAP');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1156, 117, 'USQUIL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1157, 118, 'GUADALUPE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1158, 118, 'JEQUETEPEQUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1159, 118, 'PACASMAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1160, 118, 'SAN JOSE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1161, 118, 'SAN PEDRO DE LLOC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1162, 119, 'BULDIBUYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1163, 119, 'CHILLIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1164, 119, 'HUANCASPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1165, 119, 'HUAYLILLAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1166, 119, 'HUAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1167, 119, 'ONGON');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1168, 119, 'PARCOY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1169, 119, 'PATAZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1170, 119, 'PIAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1171, 119, 'SANTIAGO DE CHALLAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1172, 119, 'TAURIJA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1173, 119, 'TAYABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1174, 119, 'URPAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1175, 120, 'CHUGAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1176, 120, 'COCHORCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1177, 120, 'CURGOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1178, 120, 'HUAMACHUCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1179, 120, 'MARCABAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1180, 120, 'SANAGORAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1181, 120, 'SARIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1182, 120, 'SARTIMBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1183, 121, 'ANGASMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1184, 121, 'CACHICADAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1185, 121, 'MOLLEBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1186, 121, 'MOLLEPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1187, 121, 'QUIRUVILCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1188, 121, 'SANTA CRUZ DE CHUCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1189, 121, 'SANTIAGO DE CHUCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1190, 121, 'SITABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1191, 122, 'EL PORVENIR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1192, 122, 'FLORENCIA DE MORA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1193, 122, 'HUANCHACO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1194, 122, 'LA ESPERANZA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1195, 122, 'LAREDO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1196, 122, 'MOCHE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1197, 122, 'POROTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1198, 122, 'SALAVERRY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1199, 122, 'SIMBAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1200, 122, 'TRUJILLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1201, 122, 'VICTOR LARCO HERRERA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1202, 123, 'CHAO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1203, 123, 'GUADALUPITO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1204, 123, 'VIRU');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1205, 124, 'CAYALTI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1206, 124, 'CHICLAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1207, 124, 'CHONGOYAPE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1208, 124, 'ETEN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1209, 124, 'ETEN PUERTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1210, 124, 'JOSE LEONARDO ORTIZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1211, 124, 'LA VICTORIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1212, 124, 'LAGUNAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1213, 124, 'MONSEFU');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1214, 124, 'NUEVA ARICA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1215, 124, 'OYOTUN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1216, 124, 'PATAPO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1217, 124, 'PICSI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1218, 124, 'PIMENTEL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1219, 124, 'POMALCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1220, 124, 'PUCALA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1221, 124, 'REQUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1222, 124, 'SANTA ROSA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1223, 124, 'SAÑA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1224, 124, 'TUMAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1225, 125, 'CANARIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1226, 125, 'FERRENAFE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1227, 125, 'INCAHUASI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1228, 125, 'MANUEL A. MESONES MURO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1229, 125, 'PITIPO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1230, 125, 'PUEBLO NUEVO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1231, 126, 'CHOCHOPE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1232, 126, 'ILLIMO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1233, 126, 'JAYANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1234, 126, 'LAMBAYEQUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1235, 126, 'MOCHUMI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1236, 126, 'MORROPE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1237, 126, 'MOTUPE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1238, 126, 'OLMOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1239, 126, 'PACORA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1240, 126, 'SALAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1241, 126, 'SAN JOSE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1242, 126, 'TUCUME');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1243, 127, 'BARRANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1244, 127, 'PARAMONGA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1245, 127, 'PATIVILCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1246, 127, 'SUPE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1247, 127, 'SUPE PUERTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1248, 128, 'CAJATAMBO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1249, 128, 'COPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1250, 128, 'GORGOR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1251, 128, 'HUANCAPON');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1252, 128, 'MANAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1253, 129, 'BELLAVISTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1254, 129, 'CALLAO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1255, 129, 'CARMEN DE LA LEGUA  REYNOSO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1256, 129, 'LA PERLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1257, 129, 'LA PUNTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1258, 129, 'VENTANILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1259, 130, 'ARAHUAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1260, 130, 'CANTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1261, 130, 'HUAMANTANGA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1262, 130, 'HUAROS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1263, 130, 'LACHAQUI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1264, 130, 'SAN BUENAVENTURA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1265, 130, 'SANTA ROSA DE QUIVES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1266, 131, 'ASIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1267, 131, 'CALANGO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1268, 131, 'CERRO AZUL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1269, 131, 'CHILCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1270, 131, 'COAYLLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1271, 131, 'IMPERIAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1272, 131, 'LUNAHUANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1273, 131, 'MALA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1274, 131, 'NUEVO IMPERIAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1275, 131, 'PACARAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1276, 131, 'QUILMANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1277, 131, 'SAN ANTONIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1278, 131, 'SAN LUIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1279, 131, 'SAN VICENTE DE CAÑETE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1280, 131, 'SANTA CRUZ DE FLORES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1281, 131, 'ZUÑIGA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1282, 132, 'ATAVILLOS ALTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1283, 132, 'ATAVILLOS BAJO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1284, 132, 'AUCALLAMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1285, 132, 'CHANCAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1286, 132, 'HUARAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1287, 132, 'IHUARI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1288, 132, 'LAMPIAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1289, 132, 'PACARAOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1290, 132, 'SAN MIGUEL DE ACOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1291, 132, 'SANTA CRUZ DE ANDAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1292, 132, 'SUMBILCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1293, 132, 'VEINTISIETE DE NOVIEMBRE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1294, 133, 'ANTIOQUIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1295, 133, 'CALLAHUANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1296, 133, 'CARAMPOMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1297, 133, 'CHICLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1298, 133, 'CUENCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1299, 133, 'HUACHUPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1300, 133, 'HUANZA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1301, 133, 'HUAROCHIRI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1302, 133, 'LAHUAYTAMBO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1303, 133, 'LANGA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1304, 133, 'LARAOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1305, 133, 'MARIATANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1306, 133, 'MATUCANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1307, 133, 'RICARDO PALMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1308, 133, 'SAN ANDRES DE TUPICOCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1309, 133, 'SAN ANTONIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1310, 133, 'SAN BARTOLOME');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1311, 133, 'SAN DAMIAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1312, 133, 'SAN JUAN DE IRIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1313, 133, 'SAN JUAN DE TANTARANCHE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1314, 133, 'SAN LORENZO DE QUINTI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1315, 133, 'SAN MATEO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1316, 133, 'SAN MATEO DE OTAO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1317, 133, 'SAN PEDRO DE CASTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1318, 133, 'SAN PEDRO DE HUANCAYRE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1319, 133, 'SANGALLAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1320, 133, 'SANTA CRUZ DE COCACHACRA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1321, 133, 'SANTA EULALIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1322, 133, 'SANTIAGO DE ANCHUCAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1323, 133, 'SANTIAGO DE TUNA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1324, 133, 'STO. DMGO. DE LOS OLLEROS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1325, 133, 'SURCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1326, 134, 'AMBAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1327, 134, 'CALETA DE CARQUIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1328, 134, 'CHECRAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1329, 134, 'HUACHO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1330, 134, 'HUALMAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1331, 134, 'HUAURA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1332, 134, 'LEONCIO PRADO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1333, 134, 'PACCHO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1334, 134, 'SANTA LEONOR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1335, 134, 'SANTA MARIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1336, 134, 'SAYAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1337, 134, 'VEGUETA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1338, 135, 'ANCON');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1339, 135, 'ATE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1340, 135, 'BARRANCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1341, 135, 'BREÑA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1342, 135, 'CARABAYLLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1343, 135, 'CHACLACAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1344, 135, 'CHORRILLOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1345, 135, 'CIENEGUILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1346, 135, 'COMAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1347, 135, 'EL AGUSTINO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1348, 135, 'INDEPENDENCIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1349, 135, 'JESUS MARIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1350, 135, 'LA MOLINA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1351, 135, 'LA VICTORIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1352, 135, 'LIMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1353, 135, 'LINCE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1354, 135, 'LOS OLIVOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1355, 135, 'LURIGANCHO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1356, 135, 'LURIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1357, 135, 'MAGDALENA DEL MAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1358, 135, 'MAGDALENA VIEJA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1359, 135, 'MIRAFLORES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1360, 135, 'PACHACAMAC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1361, 135, 'PUCUSANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1362, 135, 'PUENTE PIEDRA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1363, 135, 'PUNTA HERMOSA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1364, 135, 'PUNTA NEGRA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1365, 135, 'RIMAC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1366, 135, 'SAN BARTOLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1367, 135, 'SAN BORJA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1368, 135, 'SAN ISIDRO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1369, 135, 'SAN JUAN DE LURIGANCHO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1370, 135, 'SAN JUAN DE MIRAFLORES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1371, 135, 'SAN LUIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1372, 135, 'SAN MARTIN DE PORRES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1373, 135, 'SAN MIGUEL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1374, 135, 'SANTA ANITA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1375, 135, 'SANTA MARIA DEL MAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1376, 135, 'SANTA ROSA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1377, 135, 'SANTIAGO DE SURCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1378, 135, 'SURQUILLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1379, 135, 'VILLA EL SALVADOR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1380, 135, 'VILLA MARIA DEL TRIUNFO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1381, 136, 'ANDAJES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1382, 136, 'CAUJUL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1383, 136, 'COCHAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1384, 136, 'NAVAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1385, 136, 'OYON');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1386, 136, 'PACHANGARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1387, 137, 'ALIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1388, 137, 'AYAUCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1389, 137, 'AYAVIRI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1390, 137, 'AZANGARO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1391, 137, 'CACRA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1392, 137, 'CARANIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1393, 137, 'CATAHUASI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1394, 137, 'CHOCOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1395, 137, 'COCHAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1396, 137, 'COLONIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1397, 137, 'HONGOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1398, 137, 'HUAMPARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1399, 137, 'HUANCAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1400, 137, 'HUANGASCAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1401, 137, 'HUANTAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1402, 137, 'HUAYEC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1403, 137, 'LARAOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1404, 137, 'LINCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1405, 137, 'MADEAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1406, 137, 'MIRAFLORES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1407, 137, 'OMAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1408, 137, 'PUTINZA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1409, 137, 'QUINCHES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1410, 137, 'QUINOCAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1411, 137, 'SAN JOAQUIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1412, 137, 'SAN PEDRO DE PILAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1413, 137, 'TANTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1414, 137, 'TAURIPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1415, 137, 'TOMAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1416, 137, 'TUPE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1417, 137, 'VIÑAC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1418, 137, 'VITIS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1419, 137, 'YAUYOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1420, 138, 'BALSAPUERTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1421, 138, 'BARRANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1422, 138, 'CAHUAPANAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1423, 138, 'JEBEROS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1424, 138, 'LAGUNAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1425, 138, 'MANSERICHE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1426, 138, 'MORONA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1427, 138, 'PASTAZA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1428, 138, 'SANTA CRUZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1429, 138, 'TENIENTE CESAR LOPEZ ROJAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1430, 138, 'YURIMAGUAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1431, 139, 'NAUTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1432, 139, 'PARINARI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1433, 139, 'TIGRE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1434, 139, 'TROMPETEROS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1435, 139, 'URARINAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1436, 140, 'PEBAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1437, 140, 'RAMON CASTILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1438, 140, 'SAN PABLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1439, 140, 'YAVARI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1440, 141, 'ALTO NANAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1441, 141, 'BELEN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1442, 141, 'FERNANDO LORES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1443, 141, 'INDIANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1444, 141, 'IQUITOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1445, 141, 'LAS AMAZONAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1446, 141, 'MAZAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1447, 141, 'NAPO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1448, 141, 'PUNCHANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1449, 141, 'PUTUMAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1450, 141, 'SAN JUAN BAUTISTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1451, 141, 'TORRES CAUSANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1452, 142, 'ALTO TAPICHE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1453, 142, 'CAPELO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1454, 142, 'EMILIO SAN MARTIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1455, 142, 'JENARO HERRERA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1456, 142, 'MAQUIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1457, 142, 'PUINAHUA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1458, 142, 'REQUENA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1459, 142, 'SAQUENA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1460, 142, 'SOPLIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1461, 142, 'TAPICHE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1462, 142, 'YAQUERANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1463, 142, 'YAQUERANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1464, 143, 'CONTAMANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1465, 143, 'INAHUAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1466, 143, 'PADRE MARQUEZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1467, 143, 'PAMPA HERMOSA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1468, 143, 'SARAYACU');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1469, 143, 'VARGAS GUERRA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1470, 144, 'FITZCARRALD');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1471, 144, 'HUEPETUCHE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1472, 144, 'MADRE DE DIOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1473, 144, 'MANU');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1474, 145, 'IBERIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1475, 145, 'IÑAPARI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1476, 145, 'TAHUAMANU');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1477, 146, 'INAMBARI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1478, 146, 'LABERINTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1479, 146, 'LAS PIEDRAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1480, 146, 'TAMBOPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1481, 147, 'CHOJATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1482, 147, 'COALAQUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1483, 147, 'ICHUYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1484, 147, 'LA CAPILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1485, 147, 'LLOQUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1486, 147, 'MATALAQUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1487, 147, 'OMATE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1488, 147, 'PUQUINA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1489, 147, 'QUINISTAQUILLAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1490, 147, 'UBINAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1491, 147, 'YUNGA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1492, 148, 'EL ALGARROBAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1493, 148, 'ILO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1494, 148, 'PACOCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1495, 149, 'CARUMAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1496, 149, 'CUCHUMBAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1497, 149, 'MOQUEGUA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1498, 149, 'SAMEGUA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1499, 149, 'SAN CRISTOBAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1500, 149, 'TORATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1501, 150, 'CHACAYAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1502, 150, 'GOYLLARISQUIZGA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1503, 150, 'PAUCAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1504, 150, 'SAN PEDRO DE PILLAO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1505, 150, 'SANTA ANA DE TUSI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1506, 150, 'TAPUC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1507, 150, 'VILCABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1508, 150, 'YANAHUANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1509, 151, 'CHONTABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1510, 151, 'HUANCABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1511, 151, 'OXAPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1512, 151, 'PALCAZU');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1513, 151, 'POZUZO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1514, 151, 'PUERTO BERMUDEZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1515, 151, 'VILLA RICA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1516, 152, 'CHAUPIMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1517, 152, 'HUACHON');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1518, 152, 'HUARIACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1519, 152, 'HUAYLLAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1520, 152, 'NINACACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1521, 152, 'PALLANCHACRA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1522, 152, 'PAUCARTAMBO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1523, 152, 'SAN FCO.DE ASIS DE YARUSYACAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1524, 152, 'SIMON BOLIVAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1525, 152, 'TICLACAYAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1526, 152, 'TINYAHUARCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1527, 152, 'VICCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1528, 152, 'YANACANCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1529, 153, 'AYABACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1530, 153, 'FRIAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1531, 153, 'JILILI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1532, 153, 'LAGUNAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1533, 153, 'MONTERO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1534, 153, 'PACAIPAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1535, 153, 'PAIMAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1536, 153, 'SAPILLICA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1537, 153, 'SICCHEZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1538, 153, 'SUYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1539, 154, 'CANCHAQUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1540, 154, 'EL CARMEN DE LA FRONTERA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1541, 154, 'HUANCABAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1542, 154, 'HUARMACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1543, 154, 'LALAQUIZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1544, 154, 'SAN MIGUEL DE EL FAIQUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1545, 154, 'SONDOR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1546, 154, 'SONDORILLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1547, 155, 'BUENOS AIRES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1548, 155, 'CHALACO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1549, 155, 'CHULUCANAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1550, 155, 'LA MATANZA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1551, 155, 'MORROPON');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1552, 155, 'SALITRAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1553, 155, 'SAN JUAN DE BIGOTE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1554, 155, 'SANTA CATALINA DE MOSSA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1555, 155, 'SANTO DOMINGO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1556, 155, 'YAMANGO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1557, 156, 'AMOTAPE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1558, 156, 'ARENAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1559, 156, 'COLAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1560, 156, 'LA HUACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1561, 156, 'PAITA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1562, 156, 'TAMARINDO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1563, 156, 'VICHAYAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1564, 157, 'CASTILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1565, 157, 'CATACAOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1566, 157, 'CURA MORI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1567, 157, 'EL TALLAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1568, 157, 'LA ARENA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1569, 157, 'LA UNION');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1570, 157, 'LAS LOMAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1571, 157, 'PIURA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1572, 157, 'TAMBO GRANDE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1573, 158, 'BELLAVISTA DE LA UNION');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1574, 158, 'BERNAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1575, 158, 'CRISTO NOS VALGA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1576, 158, 'RINCONADA LLICUAR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1577, 158, 'SECHURA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1578, 158, 'VICE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1579, 159, 'BELLAVISTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1580, 159, 'IGNACIO ESCUDERO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1581, 159, 'LANCONES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1582, 159, 'MARCAVELICA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1583, 159, 'MIGUEL CHECA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1584, 159, 'QUERECOTILLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1585, 159, 'SALITRAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1586, 159, 'SULLANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1587, 160, 'EL ALTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1588, 160, 'LA BREA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1589, 160, 'LOBITOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1590, 160, 'LOS ORGANOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1591, 160, 'MANCORA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1592, 160, 'PARIÑAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1593, 161, 'ACHAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1594, 161, 'ARAPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1595, 161, 'ASILLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1596, 161, 'AZANGARO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1597, 161, 'CAMINACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1598, 161, 'CHUPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1599, 161, 'JOSE D. CHOQUEHUANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1600, 161, 'MUYANI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1601, 161, 'POTONI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1602, 161, 'SAMAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1603, 161, 'SAN ANTON');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1604, 161, 'SAN JOSE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1605, 161, 'SAN JUAN DE SALINAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1606, 161, 'SANTIAGO DE PUPUJA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1607, 161, 'TIRAPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1608, 162, 'AJOYANI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1609, 162, 'AYAPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1610, 162, 'COASA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1611, 162, 'CORANI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1612, 162, 'CRUCERO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1613, 162, 'ITUATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1614, 162, 'MACUSANI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1615, 162, 'OLLACHEA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1616, 162, 'SAN GABAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1617, 162, 'USICAYOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1618, 163, 'DESAGUADERO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1619, 163, 'HUACULLANI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1620, 163, 'JULI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1621, 163, 'KELLUYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1622, 163, 'PISACOMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1623, 163, 'POMATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1624, 163, 'ZEPITA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1625, 164, 'CAPAZO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1626, 164, 'CONDURIRI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1627, 164, 'ILAVE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1628, 164, 'PILCUYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1629, 164, 'SANTA ROSA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1630, 165, 'COJATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1631, 165, 'HUANCANE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1632, 165, 'HUATASANI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1633, 165, 'INCHUPALLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1634, 165, 'PUSI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1635, 165, 'ROSASPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1636, 165, 'TARACO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1637, 165, 'VILQUE CHICO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1638, 166, 'CABANILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1639, 166, 'CALAPUJA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1640, 166, 'LAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1641, 166, 'NICASIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1642, 166, 'OCUVIRI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1643, 166, 'PALCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1644, 166, 'PARATIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1645, 166, 'PUCARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1646, 166, 'SANTA LUCIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1647, 166, 'VILAVILA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1648, 167, 'ANTAUTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1649, 167, 'AYAVIRI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1650, 167, 'CUPI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1651, 167, 'LLALLI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1652, 167, 'MACARI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1653, 167, 'NUYOA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1654, 167, 'ORURILLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1655, 167, 'SANTA ROSA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1656, 167, 'UMACHIRI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1657, 168, 'CONIMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1658, 168, 'HUAYRAPATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1659, 168, 'MOHO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1660, 168, 'TILALI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1661, 169, 'ACORA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1662, 169, 'AMANTANI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1663, 169, 'ATUNCOLLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1664, 169, 'CAPACHICA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1665, 169, 'CHUCUITO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1666, 169, 'COATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1667, 169, 'HUATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1668, 169, 'MAYAZO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1669, 169, 'PAUCARCOLLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1670, 169, 'PICHACANI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1671, 169, 'PLATERIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1672, 169, 'PUNO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1673, 169, 'SAN ANTONIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1674, 169, 'TIQUILLACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1675, 169, 'VILQUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1676, 170, 'ANANEA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1677, 170, 'PEDRO VILCA APAZA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1678, 170, 'PUTINA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1679, 170, 'QUILCAPUNCU');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1680, 170, 'SINA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1681, 171, 'CABANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1682, 171, 'CABANILLAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1683, 171, 'CARACOTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1684, 171, 'JULIACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1685, 172, 'ALTO INAMBARI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1686, 172, 'CUYOCUYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1687, 172, 'LIMBANI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1688, 172, 'PATAMBUCO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1689, 172, 'PHARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1690, 172, 'QUIACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1691, 172, 'SAN JUAN DEL ORO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1692, 172, 'SANDIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1693, 172, 'YANAHUAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1694, 173, 'ANAPIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1695, 173, 'COPANI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1696, 173, 'CUTURAPI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1697, 173, 'OLLARAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1698, 173, 'TINICACHI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1699, 173, 'UNICACHI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1700, 173, 'YUNGUYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1701, 174, 'ALTO BIAVO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1702, 174, 'BAJO BIAVO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1703, 174, 'BELLAVISTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1704, 174, 'HUALLAGA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1705, 174, 'SAN PABLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1706, 174, 'SAN RAFAEL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1707, 175, 'AGUA BLANCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1708, 175, 'SAN JOSE DE SISA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1709, 175, 'SAN MARTIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1710, 175, 'SANTA ROSA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1711, 175, 'SHATOJA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1712, 176, 'ALTO SAPOSOA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1713, 176, 'EL ESLABON');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1714, 176, 'PISCOYACU');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1715, 176, 'SACANCHE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1716, 176, 'SAPOSOA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1717, 176, 'TINGO DE SAPOSOA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1718, 177, 'ALONSO DE ALVARADO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1719, 177, 'BARRANQUITA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1720, 177, 'CAYNARACHI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1721, 177, 'CUÑUMBUQUI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1722, 177, 'LAMAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1723, 177, 'PINTO RECODO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1724, 177, 'RUMISAPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1725, 177, 'SAN ROQUE DE CUMBAZA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1726, 177, 'SHANAO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1727, 177, 'TABALOSOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1728, 177, 'ZAPATERO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1729, 178, 'CAMPANILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1730, 178, 'HUICUNGO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1731, 178, 'JUANJUI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1732, 178, 'PACHIZA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1733, 178, 'PAJARILLO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1734, 179, 'CALZADA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1735, 179, 'HABANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1736, 179, 'JEPELACIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1737, 179, 'MOYOBAMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1738, 179, 'SORITOR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1739, 179, 'YANTALO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1740, 180, 'BUENOS AIRES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1741, 180, 'CASPISAPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1742, 180, 'PICOTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1743, 180, 'PILLUANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1744, 180, 'PUCACACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1745, 180, 'SAN CRISTOBAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1746, 180, 'SAN HILARION');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1747, 180, 'SHAMBOYACU');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1748, 180, 'TINGO DE PONASA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1749, 180, 'TRES UNIDOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1750, 181, 'AWAJUN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1751, 181, 'ELIAS SOPLIN VARGAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1752, 181, 'NUEVA CAJAMARCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1753, 181, 'PARDO MIGUEL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1754, 181, 'POSIC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1755, 181, 'RIOJA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1756, 181, 'SAN FERNANDO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1757, 181, 'YORONGOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1758, 181, 'YURACYACU');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1759, 182, 'ALBERTO LEVEAU');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1760, 182, 'CACATACHI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1761, 182, 'CHAZUTA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1762, 182, 'CHIPURANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1763, 182, 'EL PORVENIR');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1764, 182, 'HUIMBAYOC');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1765, 182, 'JUAN GUERRA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1766, 182, 'LA BANDA DE SHILCAYO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1767, 182, 'MORALES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1768, 182, 'PAPAPLAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1769, 182, 'SAN ANTONIO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1770, 182, 'SAUCE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1771, 182, 'SHAPAJA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1772, 182, 'TARAPOTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1773, 183, 'NUEVO PROGRESO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1774, 183, 'POLVORA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1775, 183, 'SHUNTE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1776, 183, 'TOCACHE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1777, 183, 'UCHIZA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1778, 184, 'CAIRANI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1779, 184, 'CAMILACA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1780, 184, 'CANDARAVE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1781, 184, 'CURIBAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1782, 184, 'HUANUARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1783, 184, 'QUILAHUANI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1784, 185, 'ILABAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1785, 185, 'ITE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1786, 185, 'LOCUMBA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1787, 186, 'ALTO DE LA ALIANZA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1788, 186, 'CALANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1789, 186, 'CIUDAD NUEVA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1790, 186, 'GREGORIO ALBARRACIN LANCHIPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1791, 186, 'INCLAN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1792, 186, 'PACHIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1793, 186, 'PALCA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1794, 186, 'POCOLLAY');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1795, 186, 'SAMA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1796, 186, 'TACNA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1797, 187, 'ESTIQUE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1798, 187, 'ESTIQUE-PAMPA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1799, 187, 'HEROES ALBARRACIN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1800, 187, 'SITAJARA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1801, 187, 'SUSAPAYA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1802, 187, 'TARATA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1803, 187, 'TARUCACHI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1804, 187, 'TICACO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1805, 188, 'CASITAS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1806, 188, 'ZORRITOS');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1807, 189, 'CORRALES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1808, 189, 'LA CRUZ');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1809, 189, 'PAMPAS DE HOSPITAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1810, 189, 'SAN JACINTO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1811, 189, 'SAN JUAN DE LA VIRGEN');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1812, 189, 'TUMBES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1813, 190, 'AGUAS VERDES');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1814, 190, 'MATAPALO');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1815, 190, 'PAPAYAL');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1816, 190, 'ZARUMILLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1817, 191, 'RAYMONDI');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1818, 191, 'SEPAHUA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1819, 191, 'TAHUANIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1820, 191, 'YURUA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1821, 192, 'CALLERIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1822, 192, 'CAMPOVERDE');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1823, 192, 'IPARIA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1824, 192, 'MASISEA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1825, 192, 'NUEVA REQUENA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1826, 192, 'YARINACOCHA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1827, 193, 'CURIMANA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1828, 193, 'IRAZOLA');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1829, 193, 'PADRE ABAD');
# GO
INSERT INTO `distritos` (idDistrito, idProvincia, distrito) VALUES (1830, 194, 'PURUS');
# GO
COMMIT;
# GO
# Dumping Table Structure for provincias

#
CREATE TABLE `provincias` (
  `idProvincia` int(11) NOT NULL AUTO_INCREMENT,
  `idDepartamento` int(11) NOT NULL DEFAULT '0',
  `provincia` varchar(50) NOT NULL,
  PRIMARY KEY (`idProvincia`),
  KEY `departamentosprovincias` (`idDepartamento`),
  KEY `idDepartamento` (`idDepartamento`),
  KEY `idProvincia` (`idProvincia`),
  CONSTRAINT `FK_peru_departamentos_provincias` FOREIGN KEY (`idDepartamento`) REFERENCES `departamentos` (`idDepartamento`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=latin1;
# GO
#

# Dumping Data for provincias
#
BEGIN;
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (1, 1, 'BAGUA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (2, 1, 'BONGARA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (3, 1, 'CHACHAPOYAS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (4, 1, 'CONDORCANQUI');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (5, 1, 'LUYA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (6, 1, 'RODRIGUEZ DE MENDOZA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (7, 1, 'UTCUBAMBA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (8, 2, 'AIJA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (9, 2, 'ANTONIO RAYMONDI');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (10, 2, 'ASUNCION');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (11, 2, 'BOLOGNESI');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (12, 2, 'CARHUAZ');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (13, 2, 'CARLOS F.FITZCARRALD');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (14, 2, 'CASMA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (15, 2, 'CORONGO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (16, 2, 'HUARAZ');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (17, 2, 'HUARI');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (18, 2, 'HUARMEY');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (19, 2, 'HUAYLAS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (20, 2, 'MARISCAL LUZURIAGA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (21, 2, 'OCROS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (22, 2, 'PALLASCA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (23, 2, 'POMABAMBA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (24, 2, 'RECUAY');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (25, 2, 'SANTA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (26, 2, 'SIHUAS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (27, 2, 'YUNGAY');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (28, 3, 'ABANCAY');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (29, 3, 'ANDAHUAYLAS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (30, 3, 'ANTABAMBA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (31, 3, 'AYMARAES');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (32, 3, 'CHINCHEROS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (33, 3, 'COTABAMBAS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (34, 3, 'GRAU');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (35, 4, 'AREQUIPA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (36, 4, 'CAMANA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (37, 4, 'CARAVELI');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (38, 4, 'CASTILLA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (39, 4, 'CAYLLOMA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (40, 4, 'CONDESUYOS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (41, 4, 'ISLAY');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (42, 4, 'LA UNION');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (43, 5, 'CANGALLO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (44, 5, 'HUAMANGA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (45, 5, 'HUANCA SANCOS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (46, 5, 'HUANTA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (47, 5, 'LA MAR');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (48, 5, 'LUCANAS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (49, 5, 'PARINACOCHAS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (50, 5, 'PAUCAR DEL SARA SARA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (51, 5, 'SUCRE');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (52, 5, 'VICTOR FAJARDO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (53, 5, 'VILCASHUAMAN');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (54, 6, 'CAJABAMBA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (55, 6, 'CAJAMARCA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (56, 6, 'CELENDIN');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (57, 6, 'CHOTA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (58, 6, 'CONTUMAZA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (59, 6, 'CUTERVO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (60, 6, 'HUALGAYOC');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (61, 6, 'JAEN');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (62, 6, 'SAN IGNACIO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (63, 6, 'SAN MARCOS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (64, 6, 'SAN MIGUEL');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (65, 6, 'SAN PABLO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (66, 6, 'SANTA CRUZ');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (67, 7, 'ACOMAYO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (68, 7, 'ANTA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (69, 7, 'CALCA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (70, 7, 'CANAS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (71, 7, 'CANCHIS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (72, 7, 'CHUMBIVILCAS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (73, 7, 'CUSCO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (74, 7, 'ESPINAR');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (75, 7, 'LA CONVENCION');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (76, 7, 'PARURO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (77, 7, 'PAUCARTAMBO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (78, 7, 'QUISPICANCHI');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (79, 7, 'URUBAMBA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (80, 8, 'ACOBAMBA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (81, 8, 'ANGARAES');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (82, 8, 'CASTROVIRREYNA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (83, 8, 'CHURCAMPA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (84, 8, 'HUANCAVELICA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (85, 8, 'HUAYTARA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (86, 8, 'TAYACAJA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (87, 9, 'AMBO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (88, 9, 'DOS DE MAYO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (89, 9, 'HUACAYBAMBA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (90, 9, 'HUAMALIES');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (91, 9, 'HUANUCO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (92, 9, 'LAURICOCHA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (93, 9, 'LEONCIO PRADO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (94, 9, 'MARAÑON');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (95, 9, 'PACHITEA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (96, 9, 'PUERTO INCA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (97, 9, 'YAROWILCA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (98, 10, 'CHINCHA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (99, 10, 'ICA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (100, 10, 'NAZCA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (101, 10, 'PALPA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (102, 10, 'PISCO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (103, 11, 'CHANCHAMAYO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (104, 11, 'CHUPACA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (105, 11, 'CONCEPCION');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (106, 11, 'HUANCAYO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (107, 11, 'JAUJA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (108, 11, 'JUNIN');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (109, 11, 'SATIPO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (110, 11, 'TARMA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (111, 11, 'YAULI');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (112, 12, 'ASCOPE');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (113, 12, 'BOLIVAR');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (114, 12, 'CHEPEN');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (115, 12, 'GRAN CHIMU');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (116, 12, 'JULCAN');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (117, 12, 'OTUZCO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (118, 12, 'PACASMAYO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (119, 12, 'PATAZ');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (120, 12, 'SANCHEZ CARRION');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (121, 12, 'SANTIAGO DE CHUCO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (122, 12, 'TRUJILLO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (123, 12, 'VIRU');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (124, 13, 'CHICLAYO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (125, 13, 'FERREÑAFE');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (126, 13, 'LAMBAYEQUE');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (127, 14, 'BARRANCA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (128, 14, 'CAJATAMBO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (129, 14, 'CALLAO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (130, 14, 'CANTA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (131, 14, 'CAÑETE');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (132, 14, 'HUARAL');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (133, 14, 'HUAROCHIRI');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (134, 14, 'HUAURA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (135, 14, 'LIMA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (136, 14, 'OYON');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (137, 14, 'YAUYOS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (138, 15, 'ALTO AMAZONAS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (139, 15, 'LORETO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (140, 15, 'MARISCAL R.CASTILLA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (141, 15, 'MAYNAS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (142, 15, 'REQUENA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (143, 15, 'UCAYALI');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (144, 16, 'MANU');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (145, 16, 'TAHUAMANU');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (146, 16, 'TAMBOPATA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (147, 17, 'GENERAL SANCHEZ CERRO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (148, 17, 'ILO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (149, 17, 'MARISCAL NIETO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (150, 18, 'DANIEL ALCIDES CARRION');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (151, 18, 'OXAPAMPA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (152, 18, 'PASCO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (153, 19, 'AYABACA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (154, 19, 'HUANCABAMBA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (155, 19, 'MORROPON');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (156, 19, 'PAITA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (157, 19, 'PIURA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (158, 19, 'SECHURA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (159, 19, 'SULLANA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (160, 19, 'TALARA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (161, 20, 'AZANGARO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (162, 20, 'CARABAYA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (163, 20, 'CHUCUITO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (164, 20, 'EL COLLAO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (165, 20, 'HUANCANE');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (166, 20, 'LAMPA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (167, 20, 'MELGAR');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (168, 20, 'MOHO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (169, 20, 'PUNO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (170, 20, 'SAN ANTONIO DE PUTINA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (171, 20, 'SAN ROMAN');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (172, 20, 'SANDIA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (173, 20, 'YUNGUYO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (174, 21, 'BELLAVISTA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (175, 21, 'EL DORADO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (176, 21, 'HUALLAGA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (177, 21, 'LAMAS');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (178, 21, 'MARISCAL CACERES');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (179, 21, 'MOYOBAMBA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (180, 21, 'PICOTA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (181, 21, 'RIOJA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (182, 21, 'SAN MARTIN');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (183, 21, 'TOCACHE');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (184, 22, 'CANDARAVE');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (185, 22, 'JORGE BASADRE');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (186, 22, 'TACNA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (187, 22, 'TARATA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (188, 23, 'CONTRALMIRANTE VILLAR');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (189, 23, 'TUMBES');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (190, 23, 'ZARUMILLA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (191, 24, 'ATALAYA');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (192, 24, 'CORONEL PORTILLO');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (193, 24, 'PADRE ABAD');
# GO
INSERT INTO `provincias` (idProvincia, idDepartamento, provincia) VALUES (194, 24, 'PURUS');
# GO
COMMIT;
# GO
SET FOREIGN_KEY_CHECKS=1
