SET NAMES 'UTF8MB4';
DROP DATABASE IF EXISTS hoteles;
CREATE DATABASE IF NOT EXISTS hoteles DEFAULT CHARACTER SET UTF8MB4;
USE hoteles;

-- Tabla hoteles
CREATE TABLE hoteles(
  id_htl          INTEGER NOT NULL AUTO_INCREMENT,
  nombre          VARCHAR(40) NOT NULL,
  direccion       VARCHAR(100) NOT NULL,
  telefono        VARCHAR(10) NOT NULL,
  correo          VARCHAR(30) NOT NULL,
  PRIMARY KEY(id_htl)
) DEFAULT CHARACTER SET UTF8MB4;

-- Tabla gerentes
CREATE TABLE gerentes(
  id_grt          INTEGER NOT NULL AUTO_INCREMENT,
  nombre          VARCHAR(80) NOT NULL,
  ap_paterno      VARCHAR(15) NOT NULL,
  ap_materno      VARCHAR(15) NOT NULL,
  telefono        VARCHAR(10) NOT NULL,
  id_htl          INTEGER,
  PRIMARY KEY(id_grt),
  CONSTRAINT Ya_hay_hotel_con_ese_gerente UNIQUE(id_htl),
  FOREIGN KEY(id_htl) REFERENCES hoteles(id_htl)
) DEFAULT CHARACTER SET UTF8MB4;

-- Tabla habitaciones
CREATE TABLE habitaciones(
  id_hbt          INTEGER NOT NULL AUTO_INCREMENT,
  piso            VARCHAR(10) NOT NULL,
  nombre          VARCHAR(30) NOT NULL,
  refrigerador    BOOLEAN NOT NULL,
  id_htl          INTEGER,
  PRIMARY KEY(id_hbt),
  FOREIGN KEY(id_htl) REFERENCES hoteles(id_htl)
) DEFAULT CHARACTER SET UTF8MB4;

-- Tabla misdatos
CREATE TABLE misdatos(
  id              INTEGER NOT NULL AUTO_INCREMENT,
  dato1           VARCHAR(255) NOT NULL,
  dato2           VARCHAR(255) NOT NULL,
  dato3           VARCHAR(255) NOT NULL,
  dato4           VARCHAR(255) NOT NULL,
  dato5           VARCHAR(255) NOT NULL,
  PRIMARY KEY(id)
) DEFAULT CHARACTER SET UTF8MB4;

-- Limpiar las tablas para evitar duplicaciones
TRUNCATE TABLE hoteles;
TRUNCATE TABLE habitaciones;
TRUNCATE TABLE gerentes;
TRUNCATE TABLE misdatos;

-- Reiniciar AUTO_INCREMENT
ALTER TABLE gerentes AUTO_INCREMENT = 1;
ALTER TABLE hoteles AUTO_INCREMENT = 1;
ALTER TABLE habitaciones AUTO_INCREMENT = 1;
ALTER TABLE misdatos AUTO_INCREMENT = 1;

-- Insertar datos en hoteles
INSERT INTO hoteles(nombre, direccion, telefono, correo) VALUES('H1', 'D1', '1111111111', 'c1');
INSERT INTO hoteles(nombre, direccion, telefono, correo) VALUES('H2', 'D2', '2222222222', 'c2');
INSERT INTO hoteles(nombre, direccion, telefono, correo) VALUES('H3', 'D3', '3333333333', 'c3');
INSERT INTO hoteles(nombre, direccion, telefono, correo) VALUES('H4', 'D4', '4444444444', 'c4');
INSERT INTO hoteles(nombre, direccion, telefono, correo) VALUES('H5', 'D5', '5555555555', 'c5');
INSERT INTO hoteles(nombre, direccion, telefono, correo) VALUES('H6', 'D6', '6666666666', 'c6');

-- Insertar datos en gerentes
INSERT INTO gerentes(nombre, ap_paterno, ap_materno, telefono, id_htl) VALUES('G1', 'AP1', 'Ap1', '1111111111', 1);
INSERT INTO gerentes(nombre, ap_paterno, ap_materno, telefono, id_htl) VALUES('G2', 'AP2', 'Ap2', '2222222222', 2);
INSERT INTO gerentes(nombre, ap_paterno, ap_materno, telefono, id_htl) VALUES('G3', 'AP3', 'Ap3', '3333333333', 3);

-- Insertar datos en habitaciones
INSERT INTO habitaciones(piso, nombre, refrigerador, id_htl) VALUES('p1', 'p1', TRUE, 1);
INSERT INTO habitaciones(piso, nombre, refrigerador, id_htl) VALUES('p2', 'p2', TRUE, 1);
INSERT INTO habitaciones(piso, nombre, refrigerador, id_htl) VALUES('p3', 'p3', TRUE, 2);
INSERT INTO habitaciones(piso, nombre, refrigerador, id_htl) VALUES('p4', 'p4', TRUE, 2);
INSERT INTO habitaciones(piso, nombre, refrigerador, id_htl) VALUES('p5', 'p5', TRUE, 3);
INSERT INTO habitaciones(piso, nombre, refrigerador, id_htl) VALUES('p6', 'p6', TRUE, 3);
