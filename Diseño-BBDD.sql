-- Diseño de la Base de Datos

CREATE DATABASE IF NOT EXIST CitasVeterinarias;

USE CitasVeterinarias;

CREATE TABLE cliente (
  dni int(8) primary key not null,
  nombre varchar(25),
  apellido1 varchar(25),
  apellido2 varchar(25),
  direccion varchar(100),
  telefono int(9),
  email varchar(50)
);

CREATE TABLE mascota (
  id_mascota int auto_increment primary key not null,
  nombre varchar(25),
  especie varchar(25),
  raza varchar(25),
  genero varchar(10),
  color varchar(25),
  fecha_nacimiento date,
  CONSTRAINT dni_propietario foreign key (dni) references cliente(dni)
);

CREATE TABLE citas (
  num_cita int auto_increment primary key not null,
  fecha date,
  hora time,
  causa varchar(200),
  foreign key (id_mascota) references mascota(id_mascota)
);

-- Datos de la tabla cliente
INSERT INTO clientes VALUES
(05674382, "Luis", "Gerard", "Montes", "calle cordoba, 14", 912334567, "luisgm@mail.com"),
(03748519, "Marta", "Garcia", "Lopez", "avenida andalucia, 23 4ºa", 651234098, "martitalagl@mail.es"),
(02391647, "Ana", "Morales", "Cordoba", "calle del cerro, 32 1ºc", 732451872, "anitamora@mail.com"),
(05862184, "Adan", "Gonzalez", "Ruiz", "calle del olvido, 1", 654712330, "adan87grrr@mail.com"),
(02648391, "Maria", "Lopez", "Perez", "avenida buena vista, 33", 675000981, "lamarilo@mail.com"),
(03657789, "Lola", "Diaz", "Adalbert", "calle cristo redentor, 46 2ºb", 700123665, "lolitalamasbonita@mail.com");

-- Datos de la tabla mascota
INSERT INTO mascota VALUES
("Angy", "perro", "chihuahua", "hembra", "marron", '2011-10-17', 05674382),
("Lily", "perro", "bulldog frances", "hembra", "blanco y negro", '2015-04-01', 03748519),
("Georgia", "perro", "chihuahua", "hembra", "blanco y marron", '2019-11-15', 02391647),
("Gnar", "gato", "birmano", "macho", "beis y marron", '2021-03-23', 05862184),
("Coco", "dragon barbudo", "pogona", "hembra", "crema", '2018-09-12', 02648391),
("Peluso", "huron", "americano", "macho", "beis", '2008-07-03', 03657789), 
("Mikita", "huron", "americano", "hembra", "marron oscuro", '2005-08-19', 03657789),
("Cersey", "gato", "persa", "hembra", "beis", '2020-12-05', 05862184);

INSERT INTO citas (fecha, hora, causa, id_mascota) VALUES

