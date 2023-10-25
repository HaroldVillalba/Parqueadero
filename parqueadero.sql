/*
Harold Manuel Villalba Aguirre-2261749
Julian Agudelo Pino-2261356
*/

CREATE DATABASE parqueadero;
USE parqueadero; 

CREATE TABLE precio(
    id SMALLINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    valor INT NOT NULL
);

CREATE TABLE categoria(
    id SMALLINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (155) NOT NULL,
    id_precio SMALLINT NOT NULL,
    FOREIGN KEY (id_precio) REFERENCES precio(id)
);

CREATE TABLE cliente(
    id SMALLINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (155) NOT NULL,
    apellido VARCHAR (155) NOT NULL,
    cedula VARCHAR (155) NOT NULL,
    telefono VARCHAR (155) NOT NULL
);

CREATE TABLE vehiculo(
    id SMALLINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    placa VARCHAR (155) NOT NULL,
    color VARCHAR (155) NOT NULL,
    marca VARCHAR (155) NOT NULL,
    id_categoria SMALLINT NOT NULL,
    id_cliente SMALLINT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id)
);

CREATE TABLE registro(
    id SMALLINT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    diaEntrada DATE NOT NULL,
    diaSalida DATE NOT NULL,
    id_vehiculo SMALLINT NOT NULL,
    FOREIGN KEY (id_vehiculo) REFERENCES vehiculo(id)
);

INSERT INTO precio (id, valor) values
(1, 15000),
(2, 8000),
(3, 30000),
(4, 50000),
(5, 20000),
(6, 40000);



INSERT INTO categoria (nombre, id_precio) values
("Automóvil", 1),
("Motocicleta", 2),
("Camión ligero", 3),
("Camión pesado", 4),
("Autobús", 4),
("Furgoneta", 3),
("Buseta", 5),
("Tráiler", 6),
("Remolque", 3),
("Vehículo todo terreno", 1);


INSERT INTO cliente (nombre, apellido, cedula, telefono) values
("Laura", "Sánchez", "678901234", "3667890123"),
("Jorge", "Gómez", "789012345", "3778901234"),
("Sofía", "Díaz", "890123456", "3889012345"	),
("Pedro", "Hernández", "901234567", "3990123456"),
("Andrea", "Fernández", "012345678", "3001234567"),
("José", "García", "112233445", "3112233445"),
("Marta", "López", "223344556", "3223344556"),
("Roberto", "Martínez", "334455667", "3334455667"),
("Elena", "Pérez", "445566778", "3445566778"),
("Fernando", "González", "556677889", "3556677889");

INSERT INTO vehiculo (placa, color, marca, id_categoria, id_cliente) VALUES
("ABC123", "Rojo", "Chevrolet", 4, 5),
("DEF456", "Azul", "Ford", 7, 2),
("GHI78P", "Negro", "BMW", 2, 9),
("JKL012", "Blanco", "Honda", 8, 7),
("MNO345", "Gris", "BMW", 3, 3),
("PQR678", "Verde", "Volkswagen", 5, 6),
("STU901", "Plateado", "BMW", 9, 8),
("VWX234", "Amarillo", "Mercedes-Benz", 1, 5),
("YZA567", "Beige", "Audi", 6, 10),
("BCD890", "Marrón", "Subaru", 10, 4),
("CDE123", "Rojo", "Ford", 1, 10),
("EFG456", "Azul", "Ford", 3, 8),
("GHI789", "Negro", "Toyota", 10, 2),
("IJK012", "Blanco", "Honda", 7, 3),
("KLM345", "Gris", "Nissan", 5, 1),
("MNO678", "Verde", "Volkswagen", 4, 6),
("OPQ901", "Plateado", "BMW", 8, 4),
("QRS234", "Amarillo", "Mercedes-Benz", 6, 7),
("STU56D", "Beige", "Audi", 2, 1),
("UVW890", "Marrón", "Subaru", 9, 5),
("WXY123", "Rojo", "Chevrolet", 5, 7),
("YZA456", "Azul", "Ford", 9, 8),
("BCD789", "Negro", "Toyota", 8, 1),
("DEF01B", "Blanco", "Honda", 2, 10),
("FGH345", "Gris", "Nissan", 10, 9),
("HIJ678", "Blanco", "Volkswagen", 1, 6),
("IJK901", "Plateado", "BMW", 6, 4),
("KLM234", "Gris", "Mercedes-Benz", 4, 10),
("MNO567", "Rojo", "Audi", 3, 6),
("OPQ890", "Marrón", "Mercedes-Benz", 7, 4),
("PQR123", "Rojo", "Chevrolet", 8, 10),
("STU456", "Azul", "Ford", 5, 1),
("UVW789", "Negro", "Toyota", 1, 5),
("XYZ012", "Blanco", "Honda", 9, 10),
("YZA345", "Gris", "Nissan", 6, 2),
("BCD678", "Verde", "Volkswagen", 3, 4),
("CDE901", "Plateado", "BMW", 10, 2),
("EFG23D", "Amarillo", "Mercedes-Benz", 2, 7),
("GHI567", "Beige", "Audi", 4, 9),
("IJK890", "Marrón", "Subaru", 1, 1);



INSERT INTO registro (diaEntrada, diaSalida, id_vehiculo) VALUES
('2023-10-01', '2023-10-05', 1),
('2023-10-02', '2023-10-06', 2),
('2023-10-03', '2023-10-07', 3),
('2023-10-03', '2023-10-08', 4),
('2023-10-03', '2023-10-09', 5),
('2023-10-04', '2023-10-10', 36),
('2023-10-03', '2023-10-11', 7),
('2023-10-04', '2023-10-12', 8),
('2023-10-03', '2023-10-13', 9),
('2023-10-14', '2023-10-14', 20),
('2023-10-11', '2023-10-15', 11),
('2023-10-03', '2023-10-16', 12),
('2023-08-13', '2023-08-17', 13),
('2023-10-14', '2023-10-19', 18),
('2023-09-05', '2023-09-13', 23),
('2023-10-11', '2023-10-20', 16),
('2023-10-17', '2023-10-21', 17),
('2023-10-17', '2023-10-22', 25),
('2023-10-19', '2023-10-26', 19),
('2023-10-15', '2023-10-24', 23);


--Primer consulta

SELECT cliente.nombre AS Cliente, vehiculo.marca AS Marca, vehiculo.placa AS Placa
FROM cliente, vehiculo 
WHERE vehiculo.id_cliente=cliente.id
ORDER BY cliente.nombre;

--Segunda consulta

SELECT registro.diaEntrada as Fecha,categoria.nombre as Categoria, COUNT(categoria.id) AS Cantidad
FROM registro,vehiculo,categoria
WHERE registro.diaEntrada="2023-10-03" AND registro.id_vehiculo=vehiculo.id AND vehiculo.id_categoria=categoria.id
GROUP BY categoria.id;

--Terecera consulta

SELECT registro.diaEntrada AS Fecha, COUNT(registro.id_vehiculo) AS 'Vehiculos ingresados'
FROM registro
GROUP BY registro.diaEntrada;

-- Cuarta consulta 

SELECT vehiculo.color AS Color, COUNT(vehiculo.color) AS 'Vehiculos Encontrados'
FROM vehiculo
WHERE vehiculo.color LIKE 'Rojo';

SELECT vehiculo.color AS Color, COUNT(vehiculo.color) AS 'Vehiculos Encontrados'
FROM vehiculo
WHERE vehiculo.color LIKE 'Blanco';

SELECT vehiculo.marca AS Marca, COUNT(vehiculo.marca) AS 'Vehiculos Encontrados'
FROM vehiculo
WHERE vehiculo.marca LIKE 'BMW';

SELECT vehiculo.marca AS Marca, COUNT(vehiculo.marca) AS 'Vehiculos Encontrados'
FROM vehiculo
WHERE vehiculo.marca LIKE 'Nissan';

--Quinta consulta

SELECT registro.id_vehiculo AS Vehiculo, DATEDIFF(registro.diaSalida,registro.diaEntrada) AS Dias
FROM registro; --Para consultar los dias totales de todos los vehiculos

SELECT registro.diaEntrada AS Entrada, registro.diaSalida AS Salida,registro.id_vehiculo AS Vehiculo, DATEDIFF(registro.diaSalida,registro.diaEntrada) AS Dias
FROM registro
WHERE registro.id_vehiculo=12; --Para consultar los dias totales de un vehiculo en particular

SELECT registro.id_vehiculo AS Vehiculo, DATEDIFF(registro.diaSalida,registro.diaEntrada) AS Dias
FROM registro
WHERE registro.id_vehiculo=9; --Para consultar los dias totales de todos los vehiculos

--Sexta consulta

SELECT cliente.nombre AS Cliente, COUNT(registro.id) AS Vehiculos_Registrados
FROM registro,vehiculo,cliente
WHERE registro.diaSalida BETWEEN CURDATE() - INTERVAL 30 DAY AND CURDATE() AND registro.id_vehiculo=vehiculo.id AND vehiculo.id_cliente=cliente.id
GROUP BY cliente.nombre
ORDER BY Vehiculos_Registrados DESC
LIMIT 2;

--Septima consulta

SELECT registro.diaEntrada AS Dia, categoria.nombre AS Categoria, SUM(precio.valor) AS Total
FROM registro,vehiculo,categoria,precio
WHERE registro.id_vehiculo=vehiculo.id AND vehiculo.id_categoria=categoria.id AND categoria.id_precio=precio.id
GROUP BY registro.diaEntrada, categoria.nombre
ORDER BY categoria.nombre;

--Octava consulta

SELECT vehiculo.id, AVG(precio.valor) AS Promedio
FROM categoria, precio, registro, vehiculo
WHERE categoria.id_precio=precio.id AND registro.id_vehiculo=vehiculo.id AND vehiculo.id_categoria=categoria.id
AND registro.diaEntrada >= DATE_SUB(CURDATE(), INTERVAL 7 DAY)
GROUP BY vehiculo.id;
