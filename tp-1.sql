create database laboratorio;
use laboratorio;
show tables;

CREATE TABLE clientes (
	numcli INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	representante INT NOT NULL,
	limitecredito FLOAT NULL
);

INSERT INTO clientes VALUES 
(1001, "Juan Alberto Paz", 106, 1300.00),
(1002,"Alvaro Sanz",101,1300.00),
(1003,"Jorge Lorens",105,1000.00),
(1004, "Antonio Canales", 101, 900.00),
(1005,"Juan Suárez",102,1300.00),
(1007,"Julián López",110,700.00),
(1008,"Julia Miguez",109,1100.00),
(1010,"Alberto Romero",103, 500.00),
(1011,"Carlos García",103,1000.00),
(1012,"Marta Alvarez",108,1000.00),
(1013,"Ana Marat",104,400.00),
(1014,"Cristina Caceres", 102,400.00),
(1015,"Antonio Guasch",101,400.00),
(1016,"Oscar Tarragos",106,700.00),
(1017,"Juan Alvarez",108,1200.00),
(1019,"Caludia Buena",109,500.00),
(1020,"Jose Marmol",102,1000.00),
(1021,"Vicente Tur",103,900.00),
(1022,"Juan Bottini",105,600.00),
(1023,"Pedro Soto",102,800.00),
(1024,"Juan Zapata",107,800.00);


CREATE TABLE empleados (
	numemp INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	edad INT NOT NULL,
	oficina INT NOT NULL,
	cargo VARCHAR(50) NOT NULL,
	contrato DATE NOT NULL,
	jefe INT NOT NULL,
	cuota DOUBLE NOT NULL,
	ventas DOUBLE NOT NULL
);

INSERT INTO empleados VALUES (101,"Andres Landri",45,12,"representante",'1995-06-12',104,6000.00,6100.00),
(102,"Alberto Juarez",48,21,"representante",'1995-06-12',108,7000.00,9500.00),
(103,"Juan Rovira",29,12,"representante",'2004-10-03',104,5500.00,5800.00),
(104,"José Gonzalez",40,12,"dir ventas",'1990-06-15',106,4000.00,2900.00),
(105,"Vicente Mari",35,13,"representante",'1992-04-12',104,7000.00,7450.00),
(106,"Luis Antonio",52,11,"dir general",'1990-06-14',null,5500.00,5990.00),
(107,"Germán Gutierrez",32,22,"representante",'1993-09-14',108,6000.00,3750.00),
(108,"Elsa Bustillo",31,21,"dir ventas",'1996-10-12',106,7000.00,7240.00),
(109,"Marta López",30,11,"representante",'2003-10-12',106,6000.00,7800.00),
(110,"Víctor Stangen",45,null,"representante",'2005-11-13',104,null,15200.00);


CREATE TABLE oficinas (
	oficina INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	ciudad VARCHAR(50) NOT NULL,
	region VARCHAR(10) NOT NULL,
	dir INT,
	objetivo DECIMAL(10,2),
	ventas DECIMAL(10,2) 
);


INSERT INTO oficinas VALUES 
(11,"La Plata","este",106,11500.00,13860.00),
(12,"Santa Fé","este",104,16000.00,14700.00),
(13,"Córdoba","este",105,7000.00,7360.00),
(21,"Morón","oeste",108,14500.00,16720.00),
(22,"San Miguel","oeste",108,6000.00,3720.00),
(23,"Cap. Fed.","centro",108, null, null),
(24,"Cap. Fed.","centro",108,5000.00,3000.00),
(26,"San Fernando", "norte", null, null, null),
(28,"La Plata","este", null, 18000.00, 0.00);



CREATE TABLE pedidos (
	codigo INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	numpedido INT NOT NULL,
	fechapedido DATE NOT NULL,
	clie INT NOT NULL,
	rep INT NOT NULL,
	fab VARCHAR(50) NOT NULL,
	producto VARCHAR(50) NOT NULL,
	cant INT NOT NULL,
	importe DECIMAL(10,2) NOT NULL
);

INSERT INTO pedidos VALUES
(1, 110036, '2004-01-02', 1007, 110, "arsi", "6000a", 9, 468.00),
(2, 110036, '2004-01-02', 1017, 106, "nosa", "3a22l", 7, 630.00),
(3, 112963, '2004-05-10', 1003, 105, "arsi", "6000b", 23, 56.35),
(4, 112968, '2004-01-11', 1002, 101, "arsi", "6000b",45, 110.25),
(5, 112975, '2004-02-11', 1011, 103, "nosa", "3a22m", 54, 378.00),
(6, 112979, '2004-10-12', 1014, 108, "arsi", "6000a", 12, 624.00),
(7, 112983, '2004-05-10', 1003, 105, "arsi", "6000b", 4, 9.80),
(8, 112987, '2004-01-01', 1003, 105, "arsi", "6000c", 11, 638.00),
(9, 112989, '2004-12-10', 1001, 106, "fraa", "114", 6, 28.80),
(10, 112992, '2004-04-15', 1016, 108, "arsi", "6000d", 21, 33.60),
(11, 112993, '2004-03-10', 1004, 102, "nosa", "2a45c", 25, 37.50),
(12, 112997, '2004-04-04', 1024, 107, "caos", "41003", 1, 2.25),
(13, 113003, '2004-02-05', 1008, 109, "sarm", "779c", 3, 111.00),
(14, 113007, '2004-01-01', 1012, 108, "sarm", "773c", 3, 54.00),
(15, 113012, '2004-05-05', 1011, 105, "arsi", "41003", 35, 78.75),
(16, 113013, '2004-08-06', 1016, 108, "caos", "41003", 1, 13.00),
(17, 113024, '2004-07-04', 1014, 108, "lisa", "xk47", 40, 280.00),
(18, 113027, '2004-02-05', 1003, 105, "arsi", "6000d", 54, 86.40),
(19, 113034, '2004-11-05', 1007, 110, "nosa", "2a45c", 8, 12.00),
(20, 113042, '2004-01-01', 1013, 101, "nosa", "3a22s", 5, 450.00),
(21, 113045, '2004-07-02', 1012, 108, "nosa", "3a22s", 14, 1260.00),
(22, 113048, '2004-02-02', 1020, 102, "sarm", "779c", 2, 74.00),
(23, 113049, '2004-04-04', 1016, 108, "lisa", "xk47", 2, 14.00),
(24, 113051, '2004-07-06', 1016, 108, "lisa", "xk47", 4, 28.00),
(25, 113055, '2004-04-01', 1008, 101, "arsi", "4100x", 6, 3.12),
(26, 113057, '2004-11-01', 1011, 103, "arsi", "4100x", 24, 12.48),
(27, 113058, '2004-07-04', 1008, 109, "fraa", 112, 10, 30.00),
(28, 113062, '2004-07-04', 1024, 107, "caos", "41003", 10, 130.00),
(29, 113065, '2004-06- 3', 1004, 102, "lisa", "xk47", 6, 42.00),
(30, 113069, '2004-08-01', 1010, 107, "sarm", "773c", 22, 396.00);


CREATE TABLE productos (
	idfab VARCHAR(50) NOT NULL,
	idproducto VARCHAR(50) PRIMARY KEY NOT NULL,
	descripcion VARCHAR(50) NOT NULL,
	precio DECIMAL(10,2) NOT NULL,
	existencias INT NOT NULL
);

INSERT INTO productos VALUES
("arsi", "41001", "tinta 50cc", 1.20, 277),
("arsi", "41003", "borratinta", 2.25, 207),
("arsi", "4100x", "art. 14", 0.52, 37),
("arsi", "6000a", "Estuche lujo", 52.00, 28),
("arsi", "6000b", "borratinta esp.", 2.45, 139),
("arsi", "6000c", "Estuche especial", 58.00, 25),
("arsi", "6000d", "grafito 20 g", 1.60, 167),
("caos", "41005", "borratinta x 6u", 13.00, 3),
("caos", "41089", "fibras fluo x 24u", 4.50, 78),
("caos", "41672", "fibras com.x24u.", 3.60, 0),
("fraa", "112", "Cuaderno 50h r.", 3.00, 115),
("fraa", "114", "cuaderno 86h c", 4.80, 15),
("lisa", "xk47", "resma carta", 7.00, 38),
("lisa", "xk48", "bloc carta", 2.65, 203),
("lisa", "xk48a", "cloc a4", 2.40, 37),
("nosa", "2a45c", "goma lapiz x 4u", 1.50, 210),
("nosa", "3a22l", "art. 15", 90.00, 12),
("nosa", "3a22m", "Caja 50 gomas l/t", 7.00, 14),
("nosa", "3a22s", "art. 16", 90.00, 12),
("sarm", "773c", "diccionario 1", 18.00, 28),
("sarm", "775c", "diccionario 2", 28.50, 5),
("sarm", "779c", "diccionario 3", 37.00, 0),
("sarm", "887h", "taco 1", 1.05, 223),
("sarm", "887p", "taco 2", 0.50, 24),
("sarm", "887x", "diccionario económico", 9.00, 3);


